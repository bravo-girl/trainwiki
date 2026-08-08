const MAX_LEARNING_QUESTION_CHARS = 800;
const MAX_EVIDENCE_REFS = 8;
const UUID_PATTERN =
  /^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const UNSAFE_CHARACTERS =
  /[\u0000-\u001f\u007f\u202a-\u202e\u2066-\u2069]/g;

const REDACTIONS: ReadonlyArray<[RegExp, string]> = [
  [/\b[A-Z0-9._%+\-]+@[A-Z0-9.\-]+\.[A-Z]{2,}\b/gi, "[E-Mail entfernt]"],
  [/(?<!\w)(?:\+|00)\s*\d(?:[\s()./\-]*\d){6,}/g, "[Telefon entfernt]"],
  [
    /\b(?:gsk_|gh[pousr]_|github_pat_|sk-(?:proj-)?|Bearer\s+)[A-Za-z0-9_\-.]{12,}\b/gi,
    "[Geheimnis entfernt]",
  ],
  [
    /\b(?:api[_ -]?key|access[_ -]?token|password|passwort)\s*[:=]\s*[^\s,;]{6,}/gi,
    "[Geheimnis entfernt]",
  ],
];

export type LearningAnswerStatus = "grounded" | "no_evidence";

export interface LearningEvidenceRef {
  chunkId: string;
  chunkContentSha: string;
  pagePath: string;
  sourceId: string;
  sourceVersionId: string;
  sourceSha256: string;
  heading?: string;
}

export interface LearningObservationInput {
  turnId: string;
  question: string;
  answer?: string;
  answerStatus: LearningAnswerStatus;
  evidenceRefs: readonly LearningEvidenceRef[];
  programVersion?: string;
}

export interface LearningPreparedStatementLike {
  bind(...values: Array<string | number | null>): LearningPreparedStatementLike;
  run(): Promise<{ meta?: { changes?: number } }>;
}

export interface LearningDatabaseLike {
  prepare(query: string): LearningPreparedStatementLike;
}

export interface LearningObservationResult {
  recorded: boolean;
  candidateId?: string;
  questionFingerprint?: string;
  redacted?: boolean;
  reason?: "invalid_turn_id" | "empty_question" | "invalid_evidence";
}

const cleanIdentifier = (value: unknown, maximum = 500) => {
  if (typeof value !== "string") return "";
  return value
    .normalize("NFKC")
    .replace(UNSAFE_CHARACTERS, " ")
    .replace(/\s+/g, " ")
    .trim()
    .slice(0, maximum);
};

export const minimizeLearningQuestion = (value: string) => {
  let text = cleanIdentifier(value, MAX_LEARNING_QUESTION_CHARS);
  let redacted = false;

  for (const [pattern, replacement] of REDACTIONS) {
    pattern.lastIndex = 0;
    if (pattern.test(text)) {
      redacted = true;
      pattern.lastIndex = 0;
      text = text.replace(pattern, replacement);
    }
  }

  text = text.replace(/\s+/g, " ").trim();
  return { text, redacted };
};

const sha256 = async (value: string) => {
  const digest = await crypto.subtle.digest(
    "SHA-256",
    new TextEncoder().encode(value),
  );
  return Array.from(new Uint8Array(digest), (byte) =>
    byte.toString(16).padStart(2, "0"),
  ).join("");
};

const normalizeEvidenceRefs = (
  refs: readonly LearningEvidenceRef[],
): LearningEvidenceRef[] | null => {
  const normalized: LearningEvidenceRef[] = [];
  const seen = new Set<string>();

  for (const ref of refs.slice(0, MAX_EVIDENCE_REFS)) {
    const next: LearningEvidenceRef = {
      chunkId: cleanIdentifier(ref.chunkId, 300),
      chunkContentSha: cleanIdentifier(ref.chunkContentSha, 128).toLowerCase(),
      pagePath: cleanIdentifier(ref.pagePath, 500),
      sourceId: cleanIdentifier(ref.sourceId, 300),
      sourceVersionId: cleanIdentifier(ref.sourceVersionId, 300),
      sourceSha256: cleanIdentifier(ref.sourceSha256, 128).toLowerCase(),
      ...(ref.heading
        ? { heading: cleanIdentifier(ref.heading, 300) }
        : {}),
    };

    if (
      !next.chunkId ||
      !/^[a-f0-9]{64}$/i.test(next.chunkContentSha) ||
      !next.pagePath ||
      !next.sourceId ||
      !next.sourceVersionId ||
      !/^[a-f0-9]{64}$/i.test(next.sourceSha256)
    ) {
      return null;
    }

    const key = `${next.chunkId}\n${next.sourceVersionId}`;
    if (!seen.has(key)) {
      seen.add(key);
      normalized.push(next);
    }
  }

  return normalized;
};

export async function recordLearningObservation(
  database: LearningDatabaseLike,
  input: LearningObservationInput,
): Promise<LearningObservationResult> {
  if (!UUID_PATTERN.test(input.turnId)) {
    return { recorded: false, reason: "invalid_turn_id" };
  }

  const minimized = minimizeLearningQuestion(input.question);
  if (!minimized.text) {
    return { recorded: false, reason: "empty_question" };
  }

  const evidenceRefs = normalizeEvidenceRefs(input.evidenceRefs);
  if (
    !evidenceRefs ||
    (input.answerStatus === "grounded" && evidenceRefs.length === 0) ||
    (input.answerStatus === "no_evidence" && evidenceRefs.length !== 0)
  ) {
    return { recorded: false, reason: "invalid_evidence" };
  }

  const type = input.answerStatus === "grounded" ? "faq" : "missing_page";
  const normalizedTarget =
    evidenceRefs.length > 0
      ? Array.from(new Set(evidenceRefs.map((ref) => ref.pagePath)))
          .sort((left, right) => left.localeCompare(right, "de"))
          .join("|")
          .slice(0, 2_000)
      : "wiki:unresolved";
  const questionFingerprint = await sha256(
    minimized.text.normalize("NFKC").toLocaleLowerCase("de-DE"),
  );
  const candidateDigest = await sha256(
    `${type}\n${normalizedTarget}\n${questionFingerprint}`,
  );
  const candidateId = `learn_${candidateDigest.slice(0, 24)}`;
  const observationId = `observation_${input.turnId.replaceAll("-", "").toLowerCase()}`;
  const answerFingerprint = input.answer
    ? await sha256(cleanIdentifier(input.answer, 8_000))
    : null;
  const programVersion = cleanIdentifier(input.programVersion, 200) || null;
  const proposal = {
    question: minimized.text,
    recommendation:
      type === "faq"
        ? "Als mögliche dauerhafte Frage-Antwort-Synthese prüfen."
        : "Fehlende oder schwer auffindbare Quelle prüfen.",
    userContentIsEvidence: false,
    redacted: minimized.redacted,
  };
  const risk = type === "faq" ? "medium" : "low";
  const confidence = type === "faq" ? 0.5 : 0;

  const response = await database
    .prepare(
      `INSERT INTO learning_candidate_observations
        (id,candidate_id,candidate_type,normalized_target,question_fingerprint,
         proposal_json,evidence_refs_json,answer_fingerprint,answer_status,
         program_version,risk,confidence)
       VALUES (?,?,?,?,?,?,?,?,?,?,?,?)
       ON CONFLICT(id) DO NOTHING`,
    )
    .bind(
      observationId,
      candidateId,
      type,
      normalizedTarget,
      questionFingerprint,
      JSON.stringify(proposal),
      JSON.stringify(evidenceRefs),
      answerFingerprint,
      input.answerStatus,
      programVersion,
      risk,
      confidence,
    )
    .run();

  return {
    recorded: (response.meta?.changes ?? 0) > 0,
    candidateId,
    questionFingerprint,
    redacted: minimized.redacted,
  };
}
