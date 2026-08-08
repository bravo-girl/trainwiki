import { sql } from "drizzle-orm";
import {
  type AnySQLiteColumn,
  check,
  index,
  integer,
  real,
  sqliteTable,
  text,
  primaryKey,
  uniqueIndex,
} from "drizzle-orm/sqlite-core";

type JsonValue =
  | null
  | boolean
  | number
  | string
  | JsonValue[]
  | { [key: string]: JsonValue };

export type UserRole = "reader" | "editor" | "admin" | "service";

export type SourceIdentityType =
  | "canonical_url"
  | "normalized_sha256"
  | "raw_sha256";

export type JobType =
  | "bootstrap_inventory"
  | "fetch_url"
  | "convert_source"
  | "ingest_source"
  | "build_wiki_patch"
  | "validate_wiki_patch"
  | "publish_wiki_patch"
  | "reindex_wiki"
  | "extract_learning_candidates"
  | "lint_wiki"
  | "optimize_dspy_program"
  | "purge_data";

export type JobState =
  | "received"
  | "validated"
  | "queued"
  | "leased"
  | "running"
  | "awaiting_review"
  | "approved"
  | "publishing"
  | "succeeded"
  | "retry_wait"
  | "failed"
  | "cancelled"
  | "rejected";

export const users = sqliteTable(
  "users",
  {
    id: text("id").primaryKey(),
    identityProvider: text("identity_provider").notNull(),
    externalSubject: text("external_subject").notNull(),
    email: text("email"),
    displayName: text("display_name"),
    role: text("role").$type<UserRole>().notNull(),
    status: text("status").notNull(),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
    lastSeenAt: text("last_seen_at").notNull().default(sql`CURRENT_TIMESTAMP`),
  },
  (table) => [
    uniqueIndex("users_provider_subject_unique").on(
      table.identityProvider,
      table.externalSubject,
    ),
    index("users_status_role_idx").on(table.status, table.role),
  ],
);

export const sources = sqliteTable(
  "sources",
  {
    id: text("id").primaryKey(),
    kind: text("kind").notNull(),
    title: text("title").notNull(),
    canonicalUrl: text("canonical_url"),
    language: text("language").notNull(),
    license: text("license"),
    visibility: text("visibility").notNull(),
    status: text("status").notNull(),
    createdBy: text("created_by").notNull(),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
    // Same-source membership is additionally enforced by D1 triggers because
    // SQLite cannot SET NULL only one column of a composite foreign key.
    currentVersionId: text("current_version_id").references(
      (): AnySQLiteColumn => sourceVersions.id,
      { onDelete: "set null" },
    ),
  },
  (table) => [
    index("sources_status_created_idx").on(table.status, table.createdAt),
    index("sources_created_by_idx").on(table.createdBy),
  ],
);

export const sourceVersions = sqliteTable(
  "source_versions",
  {
    id: text("id").primaryKey(),
    sourceId: text("source_id")
      .notNull()
      .references(() => sources.id, { onDelete: "cascade" }),
    sha256: text("sha256").notNull(),
    normalizedSha256: text("normalized_sha256"),
    sizeBytes: integer("size_bytes").notNull(),
    mediaType: text("media_type").notNull(),
    originalFilename: text("original_filename"),
    rawReleaseTag: text("raw_release_tag"),
    rawAssetId: text("raw_asset_id"),
    normalizedRepoPath: text("normalized_repo_path"),
    converterName: text("converter_name").notNull(),
    converterVersion: text("converter_version").notNull(),
    fetchTime: text("fetch_time"),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
    // The D1 migration trigger rejects predecessor links across sources.
    supersedesVersionId: text("supersedes_version_id").references(
      (): AnySQLiteColumn => sourceVersions.id,
      { onDelete: "set null" },
    ),
    manifestJson: text("manifest_json", { mode: "json" })
      .$type<JsonValue>()
      .notNull(),
  },
  (table) => [
    uniqueIndex("source_versions_source_sha_unique").on(
      table.sourceId,
      table.sha256,
    ),
    index("source_versions_source_created_idx").on(
      table.sourceId,
      table.createdAt,
    ),
    index("source_versions_normalized_sha_idx").on(table.normalizedSha256),
    check("source_versions_size_nonnegative", sql`${table.sizeBytes} >= 0`),
  ],
);

export const sourceIdentities = sqliteTable(
  "source_identities",
  {
    identityType: text("identity_type").$type<SourceIdentityType>().notNull(),
    identityHash: text("identity_hash").notNull(),
    sourceId: text("source_id")
      .notNull()
      .references(() => sources.id, { onDelete: "cascade" }),
    sourceVersionId: text("source_version_id").references(
      () => sourceVersions.id,
      { onDelete: "cascade" },
    ),
    metadataJson: text("metadata_json", { mode: "json" })
      .$type<JsonValue>()
      .notNull()
      .default(sql`'{}'`),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
  },
  (table) => [
    primaryKey({
      name: "source_identities_pk",
      columns: [table.identityType, table.identityHash, table.sourceId],
    }),
    uniqueIndex("source_identities_canonical_url_unique")
      .on(table.identityType, table.identityHash)
      .where(sql`${table.identityType} = 'canonical_url'`),
    uniqueIndex("source_identities_raw_sha_unique")
      .on(table.identityType, table.identityHash)
      .where(sql`${table.identityType} = 'raw_sha256'`),
    index("source_identities_source_idx").on(table.sourceId),
    index("source_identities_version_idx").on(table.sourceVersionId),
    check(
      "source_identities_type_allowed",
      sql`${table.identityType} IN ('canonical_url', 'normalized_sha256', 'raw_sha256')`,
    ),
    check(
      "source_identities_hash_format",
      sql`length(${table.identityHash}) = 64 AND ${table.identityHash} = lower(${table.identityHash}) AND ${table.identityHash} NOT GLOB '*[^0-9a-f]*'`,
    ),
  ],
);

export const jobs = sqliteTable(
  "jobs",
  {
    id: text("id").primaryKey(),
    type: text("type").$type<JobType>().notNull(),
    state: text("state").$type<JobState>().notNull(),
    attempt: integer("attempt").notNull().default(0),
    idempotencyKey: text("idempotency_key").notNull(),
    sourceVersionId: text("source_version_id").references(
      () => sourceVersions.id,
      { onDelete: "set null" },
    ),
    requestedBy: text("requested_by").notNull(),
    progress: integer("progress").notNull().default(0),
    errorCode: text("error_code"),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
    startedAt: text("started_at"),
    finishedAt: text("finished_at"),
    leaseUntil: text("lease_until"),
  },
  (table) => [
    uniqueIndex("jobs_active_success_idempotency_unique")
      .on(table.type, table.idempotencyKey)
      .where(sql`${table.state} NOT IN ('failed', 'cancelled', 'rejected')`),
    index("jobs_state_created_idx").on(table.state, table.createdAt),
    index("jobs_source_version_idx").on(table.sourceVersionId),
    index("jobs_lease_idx").on(table.state, table.leaseUntil),
    check("jobs_attempt_nonnegative", sql`${table.attempt} >= 0`),
    check(
      "jobs_progress_range",
      sql`${table.progress} >= 0 AND ${table.progress} <= 100`,
    ),
  ],
);

export const jobEvents = sqliteTable(
  "job_events",
  {
    id: text("id").primaryKey(),
    jobId: text("job_id")
      .notNull()
      .references(() => jobs.id, { onDelete: "cascade" }),
    fromState: text("from_state").$type<JobState>(),
    toState: text("to_state").$type<JobState>().notNull(),
    message: text("message").notNull(),
    detailsJson: text("details_json", { mode: "json" })
      .$type<JsonValue>()
      .notNull(),
    actor: text("actor").notNull(),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
  },
  (table) => [index("job_events_job_created_idx").on(table.jobId, table.createdAt)],
);

export const wikiChanges = sqliteTable(
  "wiki_changes",
  {
    id: text("id").primaryKey(),
    jobId: text("job_id")
      .notNull()
      .references(() => jobs.id, { onDelete: "cascade" }),
    baseCommit: text("base_commit").notNull(),
    branch: text("branch").notNull(),
    headCommit: text("head_commit"),
    pullRequestUrl: text("pull_request_url"),
    risk: text("risk").notNull(),
    status: text("status").notNull(),
    summary: text("summary").notNull(),
    validationJson: text("validation_json", { mode: "json" })
      .$type<JsonValue>()
      .notNull(),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
    reviewedBy: text("reviewed_by"),
    reviewedAt: text("reviewed_at"),
    reviewedHeadCommit: text("reviewed_head_commit"),
  },
  (table) => [
    index("wiki_changes_status_created_idx").on(table.status, table.createdAt),
    index("wiki_changes_job_idx").on(table.jobId),
    check(
      "wiki_changes_reviewed_commit_matches_head",
      sql`${table.reviewedHeadCommit} IS NULL OR ${table.reviewedHeadCommit} = ${table.headCommit}`,
    ),
  ],
);

export const wikiPages = sqliteTable(
  "wiki_pages",
  {
    path: text("path").primaryKey(),
    title: text("title").notNull(),
    summary: text("summary").notNull(),
    commitSha: text("commit_sha").notNull(),
    contentSha: text("content_sha").notNull(),
    updatedAt: text("updated_at").notNull(),
    metadataJson: text("metadata_json", { mode: "json" })
      .$type<JsonValue>()
      .notNull(),
  },
  (table) => [
    index("wiki_pages_commit_idx").on(table.commitSha),
    index("wiki_pages_updated_idx").on(table.updatedAt),
  ],
);

export const wikiChunks = sqliteTable(
  "wiki_chunks",
  {
    id: text("id").primaryKey(),
    pagePath: text("page_path")
      .notNull()
      .references(() => wikiPages.path, { onDelete: "cascade" }),
    ordinal: integer("ordinal").notNull(),
    headingPath: text("heading_path").notNull(),
    text: text("text").notNull(),
    tokenCount: integer("token_count").notNull(),
    sourceRefsJson: text("source_refs_json", { mode: "json" })
      .$type<JsonValue>()
      .notNull(),
    contentSha: text("content_sha").notNull(),
  },
  (table) => [
    uniqueIndex("wiki_chunks_page_ordinal_unique").on(
      table.pagePath,
      table.ordinal,
    ),
    index("wiki_chunks_content_sha_idx").on(table.contentSha),
    check("wiki_chunks_ordinal_nonnegative", sql`${table.ordinal} >= 0`),
    check("wiki_chunks_token_count_nonnegative", sql`${table.tokenCount} >= 0`),
  ],
);

export const wikiTerms = sqliteTable(
  "wiki_terms",
  {
    chunkId: text("chunk_id")
      .notNull()
      .references(() => wikiChunks.id, { onDelete: "cascade" }),
    term: text("term").notNull(),
    frequency: integer("frequency").notNull(),
  },
  (table) => [
    uniqueIndex("wiki_terms_chunk_term_unique").on(table.chunkId, table.term),
    index("wiki_terms_term_frequency_idx").on(table.term, table.frequency),
    check("wiki_terms_frequency_positive", sql`${table.frequency} > 0`),
  ],
);

export const conversations = sqliteTable(
  "conversations",
  {
    id: text("id").primaryKey(),
    subjectRef: text("subject_ref").notNull(),
    userId: text("user_id").references(() => users.id, {
      onDelete: "set null",
    }),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
    deletedAt: text("deleted_at"),
    wikiCommit: text("wiki_commit").notNull(),
  },
  (table) => [
    index("conversations_subject_created_idx").on(
      table.subjectRef,
      table.createdAt,
    ),
    index("conversations_user_created_idx").on(table.userId, table.createdAt),
  ],
);

export const messages = sqliteTable(
  "messages",
  {
    id: text("id").primaryKey(),
    conversationId: text("conversation_id")
      .notNull()
      .references(() => conversations.id, { onDelete: "cascade" }),
    role: text("role").$type<"user" | "assistant">().notNull(),
    sanitizedText: text("sanitized_text").notNull(),
    model: text("model"),
    programVersion: text("program_version"),
    inputTokens: integer("input_tokens"),
    outputTokens: integer("output_tokens"),
    latencyMs: integer("latency_ms"),
    answerStatus: text("answer_status"),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
  },
  (table) => [
    index("messages_conversation_created_idx").on(
      table.conversationId,
      table.createdAt,
    ),
    check(
      "messages_input_tokens_nonnegative",
      sql`${table.inputTokens} IS NULL OR ${table.inputTokens} >= 0`,
    ),
    check(
      "messages_output_tokens_nonnegative",
      sql`${table.outputTokens} IS NULL OR ${table.outputTokens} >= 0`,
    ),
    check(
      "messages_latency_nonnegative",
      sql`${table.latencyMs} IS NULL OR ${table.latencyMs} >= 0`,
    ),
  ],
);

export const feedback = sqliteTable(
  "feedback",
  {
    id: text("id").primaryKey(),
    answerMessageId: text("answer_message_id")
      .notNull()
      .references(() => messages.id, { onDelete: "cascade" }),
    type: text("type").notNull(),
    comment: text("comment"),
    moderationStatus: text("moderation_status").notNull(),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
  },
  (table) => [
    index("feedback_answer_idx").on(table.answerMessageId),
    index("feedback_moderation_created_idx").on(
      table.moderationStatus,
      table.createdAt,
    ),
  ],
);

export const learningCandidates = sqliteTable(
  "learning_candidates",
  {
    id: text("id").primaryKey(),
    type: text("type").notNull(),
    status: text("status").notNull(),
    origin: text("origin").notNull(),
    normalizedTarget: text("normalized_target").notNull(),
    questionFingerprint: text("question_fingerprint").notNull(),
    frequency: integer("frequency").notNull().default(1),
    proposalJson: text("proposal_json", { mode: "json" })
      .$type<JsonValue>()
      .notNull(),
    evidenceRefsJson: text("evidence_refs_json", { mode: "json" })
      .$type<JsonValue>()
      .notNull(),
    risk: text("risk").notNull(),
    confidence: real("confidence").notNull(),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
    reviewedBy: text("reviewed_by"),
  },
  (table) => [
    uniqueIndex("learning_candidates_dedupe_unique").on(
      table.type,
      table.normalizedTarget,
      table.questionFingerprint,
    ),
    index("learning_candidates_review_queue_idx").on(
      table.status,
      table.risk,
      table.createdAt,
    ),
    check("learning_candidates_frequency_positive", sql`${table.frequency} > 0`),
    check(
      "learning_candidates_confidence_range",
      sql`${table.confidence} >= 0 AND ${table.confidence} <= 1`,
    ),
  ],
);

export const learningCandidateObservations = sqliteTable(
  "learning_candidate_observations",
  {
    id: text("id").primaryKey(),
    // No foreign key here: the AFTER INSERT trigger creates or updates the
    // aggregate candidate after the immutable observation has been accepted.
    candidateId: text("candidate_id").notNull(),
    candidateType: text("candidate_type").notNull(),
    normalizedTarget: text("normalized_target").notNull(),
    questionFingerprint: text("question_fingerprint").notNull(),
    proposalJson: text("proposal_json", { mode: "json" })
      .$type<JsonValue>()
      .notNull(),
    evidenceRefsJson: text("evidence_refs_json", { mode: "json" })
      .$type<JsonValue>()
      .notNull(),
    answerFingerprint: text("answer_fingerprint"),
    answerStatus: text("answer_status")
      .$type<"grounded" | "no_evidence">()
      .notNull(),
    programVersion: text("program_version"),
    risk: text("risk").notNull(),
    confidence: real("confidence").notNull(),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
  },
  (table) => [
    index("learning_observations_candidate_created_idx").on(
      table.candidateId,
      table.createdAt,
    ),
    index("learning_observations_fingerprint_idx").on(
      table.candidateType,
      table.normalizedTarget,
      table.questionFingerprint,
    ),
    check(
      "learning_observations_answer_status",
      sql`${table.answerStatus} IN ('grounded', 'no_evidence')`,
    ),
    check(
      "learning_observations_confidence_range",
      sql`${table.confidence} >= 0 AND ${table.confidence} <= 1`,
    ),
    check(
      "learning_observations_proposal_json",
      sql`json_valid(${table.proposalJson})`,
    ),
    check(
      "learning_observations_evidence_json",
      sql`json_valid(${table.evidenceRefsJson})`,
    ),
  ],
);

export const quotaCounters = sqliteTable(
  "quota_counters",
  {
    id: text("id").primaryKey(),
    scope: text("scope").notNull(),
    subjectKey: text("subject_key").notNull(),
    metric: text("metric").notNull(),
    windowStart: text("window_start").notNull(),
    windowEnd: text("window_end").notNull(),
    value: integer("value").notNull().default(0),
    updatedAt: text("updated_at").notNull().default(sql`CURRENT_TIMESTAMP`),
  },
  (table) => [
    uniqueIndex("quota_counters_window_unique").on(
      table.scope,
      table.subjectKey,
      table.metric,
      table.windowStart,
      table.windowEnd,
    ),
    index("quota_counters_expiry_idx").on(table.windowEnd),
    check("quota_counters_value_nonnegative", sql`${table.value} >= 0`),
  ],
);

export const auditEvents = sqliteTable(
  "audit_events",
  {
    id: text("id").primaryKey(),
    actor: text("actor").notNull(),
    action: text("action").notNull(),
    resourceType: text("resource_type").notNull(),
    resourceId: text("resource_id"),
    detailsJson: text("details_json", { mode: "json" })
      .$type<JsonValue>()
      .notNull(),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
  },
  (table) => [
    index("audit_events_resource_created_idx").on(
      table.resourceType,
      table.resourceId,
      table.createdAt,
    ),
    index("audit_events_actor_created_idx").on(table.actor, table.createdAt),
  ],
);

export const outbox = sqliteTable(
  "outbox",
  {
    id: text("id").primaryKey(),
    topic: text("topic").notNull(),
    payloadJson: text("payload_json", { mode: "json" })
      .$type<JsonValue>()
      .notNull(),
    state: text("state").notNull(),
    attempt: integer("attempt").notNull().default(0),
    availableAt: text("available_at").notNull().default(sql`CURRENT_TIMESTAMP`),
    leaseUntil: text("lease_until"),
    createdAt: text("created_at").notNull().default(sql`CURRENT_TIMESTAMP`),
    processedAt: text("processed_at"),
  },
  (table) => [
    index("outbox_dispatch_idx").on(table.state, table.availableAt),
    index("outbox_lease_idx").on(table.state, table.leaseUntil),
    check("outbox_attempt_nonnegative", sql`${table.attempt} >= 0`),
  ],
);
