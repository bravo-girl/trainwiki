import type { Metadata } from "next";
import { getRuntimeBinding } from "@/lib/runtime-env";
import { getAdminSession } from "../admin-auth";
import { AdminLogin } from "../components/AdminLogin";
import {
  AdminWorkspace,
  type AdminLearningProposal,
} from "../components/AdminWorkspace";

export const dynamic = "force-dynamic";

export const metadata: Metadata = {
  title: "TrainWiki",
  description: "Quellen, Lernvorschläge und Wiki-Gesundheit kontrolliert verwalten.",
};

type LearningCandidateRow = {
  id?: unknown;
  type?: unknown;
  status?: unknown;
  frequency?: unknown;
  proposal_json?: unknown;
  created_at?: unknown;
  open_count?: unknown;
};

type AdminD1Statement = {
  all<T = LearningCandidateRow>(): Promise<{ results?: T[] }>;
};

type AdminD1Database = {
  prepare(query: string): AdminD1Statement;
};

type LearningProposalResult = {
  proposals: AdminLearningProposal[];
  openCount: number;
};

const EMPTY_LEARNING_PROPOSALS: LearningProposalResult = {
  proposals: [],
  openCount: 0,
};

const TYPE_LABELS: Record<string, string> = {
  faq: "Wiederkehrende Frage",
  missing_page: "Fehlende Wissensquelle",
  // Transitional labels for candidates created by an earlier development build.
  faq_signal: "Wiederkehrende Frage",
  source_request: "Fehlende Wissensquelle",
};

const STATUS_LABELS: Record<string, string> = {
  collecting: "Sammelt Hinweise",
  pending: "Zur Prüfung",
  review: "In Prüfung",
};

const UNSAFE_DISPLAY_CHARACTERS =
  /[\u0000-\u001f\u007f\u202a-\u202e\u2066-\u2069]/g;

function safeDisplayText(value: unknown, maximum: number): string {
  if (typeof value !== "string") return "";

  return value
    .normalize("NFKC")
    .replace(UNSAFE_DISPLAY_CHARACTERS, " ")
    .replace(/\b[A-Z0-9._%+\-]+@[A-Z0-9.\-]+\.[A-Z]{2,}\b/gi, "[Kontakt entfernt]")
    .replace(/(?<!\w)(?:\+|00)\s*\d(?:[\s()./\-]*\d){6,}/g, "[Kontakt entfernt]")
    .replace(/\b(?:gsk_|gh[pousr]_|github_pat_|sk-(?:proj-)?)[A-Za-z0-9_.\-]{8,}\b/gi, "[Zugangsdaten entfernt]")
    .replace(/\b(?:api[_ -]?key|access[_ -]?token|password|passwort)\s*[:=]\s*[^\s,;]{6,}/gi, "[Zugangsdaten entfernt]")
    .replace(/\b[a-f0-9]{32,}\b/gi, "[Kennung ausgeblendet]")
    .replace(/\s+/g, " ")
    .trim()
    .slice(0, maximum);
}

function parseProposal(value: unknown): {
  question: string;
  recommendation: string;
} {
  let parsed: unknown = value;

  if (typeof value === "string") {
    if (value.length > 16_000) return { question: "", recommendation: "" };
    try {
      parsed = JSON.parse(value);
    } catch {
      return { question: "", recommendation: "" };
    }
  }

  if (!parsed || typeof parsed !== "object" || Array.isArray(parsed)) {
    return { question: "", recommendation: "" };
  }

  const proposal = parsed as Record<string, unknown>;
  return {
    question: safeDisplayText(proposal.question, 500),
    recommendation: safeDisplayText(proposal.recommendation, 400),
  };
}

function positiveInteger(value: unknown, fallback = 1): number {
  const numeric = typeof value === "number" ? value : Number(value);
  return Number.isSafeInteger(numeric) && numeric > 0 ? numeric : fallback;
}

function formatCreatedAt(value: unknown): string {
  if (typeof value !== "string" || value.length > 40) return "Zeitpunkt unbekannt";
  const normalized = /^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$/.test(value)
    ? `${value.replace(" ", "T")}Z`
    : value;
  const timestamp = Date.parse(normalized);
  if (!Number.isFinite(timestamp)) return "Zeitpunkt unbekannt";

  return new Intl.DateTimeFormat("de-DE", {
    dateStyle: "medium",
    timeStyle: "short",
    timeZone: "Europe/Berlin",
  }).format(timestamp);
}

async function loadLearningProposals(): Promise<LearningProposalResult> {
  const database = getRuntimeBinding<AdminD1Database>("DB");
  if (!database || typeof database.prepare !== "function") {
    return EMPTY_LEARNING_PROPOSALS;
  }

  try {
    const response = await database
      .prepare(
        `SELECT
           id, type, status, frequency, proposal_json, created_at,
           (SELECT COUNT(*) FROM learning_candidates
             WHERE status IN ('collecting', 'pending', 'review')) AS open_count
         FROM learning_candidates
         WHERE status IN ('collecting', 'pending', 'review')
         ORDER BY
           CASE status WHEN 'review' THEN 0 WHEN 'pending' THEN 1 ELSE 2 END,
           frequency DESC,
           created_at DESC
         LIMIT 50`,
      )
      .all<LearningCandidateRow>();

    const rows = Array.isArray(response.results) ? response.results : [];
    const seenIds = new Set<string>();
    const proposals: AdminLearningProposal[] = [];

    for (const row of rows) {
      const id = typeof row.id === "string" ? row.id.trim().slice(0, 200) : "";
      if (!id || seenIds.has(id)) continue;

      const proposal = parseProposal(row.proposal_json);
      const type = typeof row.type === "string" ? row.type : "";
      const status = typeof row.status === "string" ? row.status : "";
      seenIds.add(id);
      proposals.push({
        id: `candidate-${proposals.length + 1}`,
        title: proposal.question || "Lernhinweis ohne lesbare Fragestellung",
        recommendation:
          proposal.recommendation || "Inhalt und Quellenlage manuell prüfen.",
        typeLabel: TYPE_LABELS[type] || "Lernhinweis",
        statusLabel: STATUS_LABELS[status] || "Zur Prüfung",
        frequency: positiveInteger(row.frequency),
        createdAtLabel: formatCreatedAt(row.created_at),
      });
    }

    return {
      proposals,
      openCount: rows.length
        ? positiveInteger(rows[0]?.open_count, proposals.length)
        : 0,
    };
  } catch {
    return EMPTY_LEARNING_PROPOSALS;
  }
}

export default async function AdminPage() {
  const admin = await getAdminSession();
  const learning = admin
    ? await loadLearningProposals()
    : EMPTY_LEARNING_PROPOSALS;

  return (
    <div className="site-frame">
      {admin ? (
        <AdminWorkspace
          adminName={admin.sub}
          learningProposalCount={learning.openCount}
          learningProposals={learning.proposals}
        />
      ) : (
        <AdminLogin />
      )}
    </div>
  );
}
