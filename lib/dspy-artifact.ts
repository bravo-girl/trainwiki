/** Runtime-neutral parser for TrainWiki's portable DSPy JSON artifact. */

export const DSPY_ARTIFACT_SCHEMA_VERSION = 1 as const;

const MAX_STRING_LENGTH = 20_000;
const MAX_COLLECTION_LENGTH = 256;
const MAX_JSON_DEPTH = 10;
const FORBIDDEN_KEYS = new Set(["__proto__", "constructor", "prototype"]);
const SECRET_KEY_FRAGMENTS = [
  "api_key",
  "apikey",
  "authorization",
  "bearer",
  "credential",
  "password",
  "secret",
  "token",
] as const;

export type DspyArtifactMode = "deterministic-baseline" | "dspy-optimized";
export type DspyOptimizerName = "none" | "bootstrap" | "gepa";

export interface DspySignatureField {
  name: string;
  type: string;
  description: string;
}

export interface DspyProgramDemo {
  inputs: Record<string, unknown>;
  outputs: Record<string, unknown>;
}

export interface DspyPortableProgram {
  task:
    | "query_plan"
    | "rank_evidence"
    | "grounded_answer"
    | "extract_learning_candidate";
  signatureName:
    | "QueryPlan"
    | "RankEvidence"
    | "GroundedAnswer"
    | "ExtractLearningCandidate";
  instructions: string;
  inputFields: DspySignatureField[];
  outputFields: DspySignatureField[];
  inputSchema: Record<string, unknown>;
  outputSchema: Record<string, unknown>;
  demos: DspyProgramDemo[];
}

export interface DspyArtifact {
  schemaVersion: typeof DSPY_ARTIFACT_SCHEMA_VERSION;
  artifactId: string;
  artifactVersion: string;
  programVersion: string;
  createdAt: string;
  mode: DspyArtifactMode;
  runtime: {
    provider: "groq";
    model: "openai/gpt-oss-120b";
    dspyModel: "groq/openai/gpt-oss-120b";
    dspyVersion: "3.2.1";
  };
  corpus: {
    datasetVersion: string;
    repository: string;
    commit: string;
    scope: string;
    sourceSnapshot: Array<{
      path: string;
      sourceId: string;
      sourceVersionId: string;
      sourceSha256: string;
    }>;
  };
  retrieval: {
    algorithm: "deterministic-lexical-v1";
    maxQueryTerms: number;
    maxCandidates: number;
    maxEvidence: number;
    minimumScore: number;
    weights: {
      exactPhrase: number;
      title: number;
      heading: number;
      body: number;
      sourceRecency: number;
    };
    aliasExpansion: Record<string, string[]>;
  };
  programs: {
    queryPlan: DspyPortableProgram;
    rankEvidence: DspyPortableProgram;
    groundedAnswer: DspyPortableProgram;
    extractLearningCandidate: DspyPortableProgram;
  };
  qualityGates: {
    retrieval: { metric: string; minimum: number };
    grounding: {
      citationCoverageMinimum: number;
      invalidReferenceRateMaximum: number;
      abstainWhenUnsupported: boolean;
    };
    learning: {
      requiresVerifiedEvidence: boolean;
      publishesAutomatically: boolean;
    };
  };
  build: {
    datasetDigest: string;
    configDigest: string;
    programDigest: string;
    optimizer: DspyOptimizerName;
    networkUsed: boolean;
    randomSeed: number;
  };
}

export class DspyArtifactError extends Error {
  constructor(message: string) {
    super(message);
    this.name = "DspyArtifactError";
  }
}

function fail(path: string, message: string): never {
  throw new DspyArtifactError(`${path}: ${message}`);
}

function assertRecord(
  value: unknown,
  path: string,
): asserts value is Record<string, unknown> {
  if (value === null || typeof value !== "object" || Array.isArray(value)) {
    fail(path, "expected an object");
  }
}

function assertExactKeys(
  value: Record<string, unknown>,
  keys: readonly string[],
  path: string,
): void {
  const expected = new Set(keys);
  for (const key of Object.keys(value)) {
    if (FORBIDDEN_KEYS.has(key)) {
      fail(`${path}.${key}`, "forbidden object key");
    }
    if (!expected.has(key)) {
      fail(`${path}.${key}`, "unknown field");
    }
  }
  for (const key of keys) {
    if (!Object.prototype.hasOwnProperty.call(value, key)) {
      fail(`${path}.${key}`, "required field is missing");
    }
  }
}

function assertString(
  value: unknown,
  path: string,
  options: { nonEmpty?: boolean; pattern?: RegExp } = {},
): asserts value is string {
  if (typeof value !== "string") {
    fail(path, "expected a string");
  }
  if (value.length > MAX_STRING_LENGTH) {
    fail(path, `string exceeds ${MAX_STRING_LENGTH} characters`);
  }
  if (options.nonEmpty && value.length === 0) {
    fail(path, "must not be empty");
  }
  if (options.pattern && !options.pattern.test(value)) {
    fail(path, "has an invalid format");
  }
}

function assertBoolean(value: unknown, path: string): asserts value is boolean {
  if (typeof value !== "boolean") {
    fail(path, "expected a boolean");
  }
}

function assertNumber(
  value: unknown,
  path: string,
  options: { minimum?: number; maximum?: number; integer?: boolean } = {},
): asserts value is number {
  if (typeof value !== "number" || !Number.isFinite(value)) {
    fail(path, "expected a finite number");
  }
  if (options.integer && !Number.isInteger(value)) {
    fail(path, "expected an integer");
  }
  if (options.minimum !== undefined && value < options.minimum) {
    fail(path, `must be at least ${options.minimum}`);
  }
  if (options.maximum !== undefined && value > options.maximum) {
    fail(path, `must be at most ${options.maximum}`);
  }
}

function assertLiteral<T extends string>(
  value: unknown,
  allowed: readonly T[],
  path: string,
): asserts value is T {
  if (typeof value !== "string" || !allowed.includes(value as T)) {
    fail(path, `expected one of ${allowed.join(", ")}`);
  }
}

function assertArray(value: unknown, path: string): asserts value is unknown[] {
  if (!Array.isArray(value)) {
    fail(path, "expected an array");
  }
  if (value.length > MAX_COLLECTION_LENGTH) {
    fail(path, `array exceeds ${MAX_COLLECTION_LENGTH} entries`);
  }
}

function assertJsonValue(value: unknown, path: string, depth = 0): void {
  if (depth > MAX_JSON_DEPTH) {
    fail(path, `nesting exceeds ${MAX_JSON_DEPTH} levels`);
  }
  if (
    value === null ||
    typeof value === "boolean" ||
    (typeof value === "number" && Number.isFinite(value))
  ) {
    return;
  }
  if (typeof value === "string") {
    assertString(value, path);
    return;
  }
  if (Array.isArray(value)) {
    assertArray(value, path);
    value.forEach((item, index) => assertJsonValue(item, `${path}[${index}]`, depth + 1));
    return;
  }
  assertRecord(value, path);
  if (Object.keys(value).length > MAX_COLLECTION_LENGTH) {
    fail(path, `object exceeds ${MAX_COLLECTION_LENGTH} fields`);
  }
  for (const [key, child] of Object.entries(value)) {
    if (FORBIDDEN_KEYS.has(key)) {
      fail(`${path}.${key}`, "forbidden object key");
    }
    assertJsonValue(child, `${path}.${key}`, depth + 1);
  }
}

function assertSecretFree(value: unknown, path = "artifact"): void {
  if (Array.isArray(value)) {
    value.forEach((item, index) => assertSecretFree(item, `${path}[${index}]`));
    return;
  }
  if (value !== null && typeof value === "object") {
    for (const [rawKey, child] of Object.entries(value)) {
      const key = rawKey.toLocaleLowerCase("en-US").replaceAll("-", "_");
      if (SECRET_KEY_FRAGMENTS.some((fragment) => key.includes(fragment))) {
        fail(`${path}.${rawKey}`, "secret-like key is forbidden");
      }
      assertSecretFree(child, `${path}.${rawKey}`);
    }
    return;
  }
  if (typeof value === "string" && (value.startsWith("gsk_") || value.startsWith("Bearer "))) {
    fail(path, "secret-like value is forbidden");
  }
}

function assertFields(value: unknown, path: string): void {
  assertArray(value, path);
  const names = new Set<string>();
  value.forEach((field, index) => {
    const fieldPath = `${path}[${index}]`;
    assertRecord(field, fieldPath);
    assertExactKeys(field, ["name", "type", "description"], fieldPath);
    assertString(field.name, `${fieldPath}.name`, {
      nonEmpty: true,
      pattern: /^[a-z][a-z0-9_]*$/,
    });
    assertString(field.type, `${fieldPath}.type`, { nonEmpty: true });
    assertString(field.description, `${fieldPath}.description`, { nonEmpty: true });
    if (names.has(field.name)) {
      fail(`${fieldPath}.name`, "duplicate field name");
    }
    names.add(field.name);
  });
}

function assertProgram(
  value: unknown,
  path: string,
  task: DspyPortableProgram["task"],
  signatureName: DspyPortableProgram["signatureName"],
): void {
  assertRecord(value, path);
  assertExactKeys(
    value,
    [
      "task",
      "signatureName",
      "instructions",
      "inputFields",
      "outputFields",
      "inputSchema",
      "outputSchema",
      "demos",
    ],
    path,
  );
  if (value.task !== task) {
    fail(`${path}.task`, `expected ${task}`);
  }
  if (value.signatureName !== signatureName) {
    fail(`${path}.signatureName`, `expected ${signatureName}`);
  }
  assertString(value.instructions, `${path}.instructions`, { nonEmpty: true });
  assertFields(value.inputFields, `${path}.inputFields`);
  assertFields(value.outputFields, `${path}.outputFields`);
  for (const schemaName of ["inputSchema", "outputSchema"] as const) {
    const schemaPath = `${path}.${schemaName}`;
    assertRecord(value[schemaName], schemaPath);
    assertJsonValue(value[schemaName], schemaPath);
    if (value[schemaName].type !== "object") fail(`${schemaPath}.type`, "expected object schema");
    assertRecord(value[schemaName].properties, `${schemaPath}.properties`);
    assertArray(value[schemaName].required, `${schemaPath}.required`);
  }
  assertArray(value.demos, `${path}.demos`);
  value.demos.forEach((demo, index) => {
    const demoPath = `${path}.demos[${index}]`;
    assertRecord(demo, demoPath);
    assertExactKeys(demo, ["inputs", "outputs"], demoPath);
    assertRecord(demo.inputs, `${demoPath}.inputs`);
    assertRecord(demo.outputs, `${demoPath}.outputs`);
    assertJsonValue(demo.inputs, `${demoPath}.inputs`);
    assertJsonValue(demo.outputs, `${demoPath}.outputs`);
  });
}

function assertSourceSnapshot(value: unknown, path: string): void {
  assertArray(value, path);
  value.forEach((source, index) => {
    const sourcePath = `${path}[${index}]`;
    assertRecord(source, sourcePath);
    assertExactKeys(
      source,
      ["path", "sourceId", "sourceVersionId", "sourceSha256"],
      sourcePath,
    );
    assertString(source.path, `${sourcePath}.path`, { nonEmpty: true });
    assertString(source.sourceId, `${sourcePath}.sourceId`, {
      pattern: /^src_[a-f0-9]{20}$/,
    });
    assertString(source.sourceVersionId, `${sourcePath}.sourceVersionId`, {
      pattern: /^sv_[a-f0-9]{24}$/,
    });
    assertString(source.sourceSha256, `${sourcePath}.sourceSha256`, {
      pattern: /^[a-f0-9]{64}$/,
    });
  });
}

function assertUnitInterval(value: unknown, path: string): void {
  assertNumber(value, path, { minimum: 0, maximum: 1 });
}

function deepFreeze<T>(value: T): Readonly<T> {
  if (value !== null && typeof value === "object" && !Object.isFrozen(value)) {
    Object.freeze(value);
    for (const child of Object.values(value)) {
      deepFreeze(child);
    }
  }
  return value;
}

export function parseDspyArtifact(value: unknown): Readonly<DspyArtifact> {
  assertJsonValue(value, "artifact");
  assertSecretFree(value);
  assertRecord(value, "artifact");
  assertExactKeys(
    value,
    [
      "schemaVersion",
      "artifactId",
      "artifactVersion",
      "programVersion",
      "createdAt",
      "mode",
      "runtime",
      "corpus",
      "retrieval",
      "programs",
      "qualityGates",
      "build",
    ],
    "artifact",
  );
  if (value.schemaVersion !== DSPY_ARTIFACT_SCHEMA_VERSION) {
    fail("artifact.schemaVersion", `expected ${DSPY_ARTIFACT_SCHEMA_VERSION}`);
  }
  assertString(value.artifactId, "artifact.artifactId", { nonEmpty: true });
  assertString(value.artifactVersion, "artifact.artifactVersion", {
    nonEmpty: true,
    pattern: /^\d+\.\d+\.\d+(?:-[a-z0-9.-]+)?$/,
  });
  assertString(value.programVersion, "artifact.programVersion", {
    nonEmpty: true,
    pattern: /^[a-z0-9][a-z0-9.-]*$/,
  });
  assertString(value.createdAt, "artifact.createdAt", {
    pattern: /^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z$/,
  });
  assertLiteral(value.mode, ["deterministic-baseline", "dspy-optimized"], "artifact.mode");

  assertRecord(value.runtime, "artifact.runtime");
  assertExactKeys(
    value.runtime,
    ["provider", "model", "dspyModel", "dspyVersion"],
    "artifact.runtime",
  );
  if (value.runtime.provider !== "groq") fail("artifact.runtime.provider", "expected groq");
  if (value.runtime.model !== "openai/gpt-oss-120b")
    fail("artifact.runtime.model", "expected openai/gpt-oss-120b");
  if (value.runtime.dspyModel !== "groq/openai/gpt-oss-120b")
    fail("artifact.runtime.dspyModel", "expected groq/openai/gpt-oss-120b");
  if (value.runtime.dspyVersion !== "3.2.1")
    fail("artifact.runtime.dspyVersion", "expected 3.2.1");

  assertRecord(value.corpus, "artifact.corpus");
  assertExactKeys(
    value.corpus,
    ["datasetVersion", "repository", "commit", "scope", "sourceSnapshot"],
    "artifact.corpus",
  );
  assertString(value.corpus.datasetVersion, "artifact.corpus.datasetVersion", { nonEmpty: true });
  assertString(value.corpus.repository, "artifact.corpus.repository", { nonEmpty: true });
  assertString(value.corpus.commit, "artifact.corpus.commit", {
    pattern: /^[a-f0-9]{40}$/,
  });
  assertString(value.corpus.scope, "artifact.corpus.scope", { nonEmpty: true });
  assertSourceSnapshot(value.corpus.sourceSnapshot, "artifact.corpus.sourceSnapshot");

  assertRecord(value.retrieval, "artifact.retrieval");
  assertExactKeys(
    value.retrieval,
    [
      "algorithm",
      "maxQueryTerms",
      "maxCandidates",
      "maxEvidence",
      "minimumScore",
      "weights",
      "aliasExpansion",
    ],
    "artifact.retrieval",
  );
  if (value.retrieval.algorithm !== "deterministic-lexical-v1")
    fail("artifact.retrieval.algorithm", "unsupported retrieval algorithm");
  assertNumber(value.retrieval.maxQueryTerms, "artifact.retrieval.maxQueryTerms", {
    integer: true,
    minimum: 1,
    maximum: 32,
  });
  assertNumber(value.retrieval.maxCandidates, "artifact.retrieval.maxCandidates", {
    integer: true,
    minimum: 1,
    maximum: 128,
  });
  assertNumber(value.retrieval.maxEvidence, "artifact.retrieval.maxEvidence", {
    integer: true,
    minimum: 1,
    maximum: 16,
  });
  assertNumber(value.retrieval.minimumScore, "artifact.retrieval.minimumScore", {
    minimum: 0,
    maximum: 100,
  });
  assertRecord(value.retrieval.weights, "artifact.retrieval.weights");
  assertExactKeys(
    value.retrieval.weights,
    ["exactPhrase", "title", "heading", "body", "sourceRecency"],
    "artifact.retrieval.weights",
  );
  for (const key of ["exactPhrase", "title", "heading", "body", "sourceRecency"] as const) {
    assertNumber(value.retrieval.weights[key], `artifact.retrieval.weights.${key}`, {
      minimum: 0,
      maximum: 20,
    });
  }
  assertRecord(value.retrieval.aliasExpansion, "artifact.retrieval.aliasExpansion");
  for (const [alias, expansions] of Object.entries(value.retrieval.aliasExpansion)) {
    assertString(alias, `artifact.retrieval.aliasExpansion.${alias}`, { nonEmpty: true });
    assertArray(expansions, `artifact.retrieval.aliasExpansion.${alias}`);
    const seen = new Set<string>();
    expansions.forEach((expansion, index) => {
      assertString(expansion, `artifact.retrieval.aliasExpansion.${alias}[${index}]`, {
        nonEmpty: true,
      });
      const normalized = expansion.toLocaleLowerCase("de-DE");
      if (seen.has(normalized))
        fail(`artifact.retrieval.aliasExpansion.${alias}[${index}]`, "duplicate expansion");
      seen.add(normalized);
    });
  }

  assertRecord(value.programs, "artifact.programs");
  assertExactKeys(
    value.programs,
    ["queryPlan", "rankEvidence", "groundedAnswer", "extractLearningCandidate"],
    "artifact.programs",
  );
  assertProgram(value.programs.queryPlan, "artifact.programs.queryPlan", "query_plan", "QueryPlan");
  assertProgram(
    value.programs.rankEvidence,
    "artifact.programs.rankEvidence",
    "rank_evidence",
    "RankEvidence",
  );
  assertProgram(
    value.programs.groundedAnswer,
    "artifact.programs.groundedAnswer",
    "grounded_answer",
    "GroundedAnswer",
  );
  assertProgram(
    value.programs.extractLearningCandidate,
    "artifact.programs.extractLearningCandidate",
    "extract_learning_candidate",
    "ExtractLearningCandidate",
  );

  assertRecord(value.qualityGates, "artifact.qualityGates");
  assertExactKeys(
    value.qualityGates,
    ["retrieval", "grounding", "learning"],
    "artifact.qualityGates",
  );
  assertRecord(value.qualityGates.retrieval, "artifact.qualityGates.retrieval");
  assertExactKeys(
    value.qualityGates.retrieval,
    ["metric", "minimum"],
    "artifact.qualityGates.retrieval",
  );
  assertString(value.qualityGates.retrieval.metric, "artifact.qualityGates.retrieval.metric", {
    nonEmpty: true,
  });
  assertUnitInterval(value.qualityGates.retrieval.minimum, "artifact.qualityGates.retrieval.minimum");
  assertRecord(value.qualityGates.grounding, "artifact.qualityGates.grounding");
  assertExactKeys(
    value.qualityGates.grounding,
    ["citationCoverageMinimum", "invalidReferenceRateMaximum", "abstainWhenUnsupported"],
    "artifact.qualityGates.grounding",
  );
  assertUnitInterval(
    value.qualityGates.grounding.citationCoverageMinimum,
    "artifact.qualityGates.grounding.citationCoverageMinimum",
  );
  assertUnitInterval(
    value.qualityGates.grounding.invalidReferenceRateMaximum,
    "artifact.qualityGates.grounding.invalidReferenceRateMaximum",
  );
  assertBoolean(
    value.qualityGates.grounding.abstainWhenUnsupported,
    "artifact.qualityGates.grounding.abstainWhenUnsupported",
  );
  assertRecord(value.qualityGates.learning, "artifact.qualityGates.learning");
  assertExactKeys(
    value.qualityGates.learning,
    ["requiresVerifiedEvidence", "publishesAutomatically"],
    "artifact.qualityGates.learning",
  );
  assertBoolean(
    value.qualityGates.learning.requiresVerifiedEvidence,
    "artifact.qualityGates.learning.requiresVerifiedEvidence",
  );
  assertBoolean(
    value.qualityGates.learning.publishesAutomatically,
    "artifact.qualityGates.learning.publishesAutomatically",
  );

  assertRecord(value.build, "artifact.build");
  assertExactKeys(
    value.build,
    [
      "datasetDigest",
      "configDigest",
      "programDigest",
      "optimizer",
      "networkUsed",
      "randomSeed",
    ],
    "artifact.build",
  );
  assertString(value.build.datasetDigest, "artifact.build.datasetDigest", {
    pattern: /^sha256:[a-f0-9]{64}$/,
  });
  assertString(value.build.configDigest, "artifact.build.configDigest", {
    pattern: /^sha256:[a-f0-9]{64}$/,
  });
  assertString(value.build.programDigest, "artifact.build.programDigest", {
    pattern: /^sha256:[a-f0-9]{64}$/,
  });
  assertLiteral(value.build.optimizer, ["none", "bootstrap", "gepa"], "artifact.build.optimizer");
  assertBoolean(value.build.networkUsed, "artifact.build.networkUsed");
  assertNumber(value.build.randomSeed, "artifact.build.randomSeed", { integer: true });
  if (value.mode === "deterministic-baseline") {
    if (value.build.optimizer !== "none")
      fail("artifact.build.optimizer", "baseline artifacts must use none");
    if (value.build.networkUsed)
      fail("artifact.build.networkUsed", "baseline artifacts must be network-free");
  }

  return deepFreeze(value as unknown as DspyArtifact);
}

export function parseDspyArtifactJson(source: string): Readonly<DspyArtifact> {
  let value: unknown;
  try {
    value = JSON.parse(source);
  } catch (error) {
    const message = error instanceof Error ? error.message : "unknown JSON error";
    throw new DspyArtifactError(`artifact: invalid JSON (${message})`);
  }
  return parseDspyArtifact(value);
}
