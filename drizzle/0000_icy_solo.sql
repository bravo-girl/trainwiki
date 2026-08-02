CREATE TABLE `audit_events` (
	`id` text PRIMARY KEY NOT NULL,
	`actor` text NOT NULL,
	`action` text NOT NULL,
	`resource_type` text NOT NULL,
	`resource_id` text,
	`details_json` text NOT NULL,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL
);
--> statement-breakpoint
CREATE INDEX `audit_events_resource_created_idx` ON `audit_events` (`resource_type`,`resource_id`,`created_at`);--> statement-breakpoint
CREATE INDEX `audit_events_actor_created_idx` ON `audit_events` (`actor`,`created_at`);--> statement-breakpoint
CREATE TABLE `conversations` (
	`id` text PRIMARY KEY NOT NULL,
	`subject_ref` text NOT NULL,
	`user_id` text,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	`deleted_at` text,
	`wiki_commit` text NOT NULL,
	FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON UPDATE no action ON DELETE set null
);
--> statement-breakpoint
CREATE INDEX `conversations_subject_created_idx` ON `conversations` (`subject_ref`,`created_at`);--> statement-breakpoint
CREATE INDEX `conversations_user_created_idx` ON `conversations` (`user_id`,`created_at`);--> statement-breakpoint
CREATE TABLE `feedback` (
	`id` text PRIMARY KEY NOT NULL,
	`answer_message_id` text NOT NULL,
	`type` text NOT NULL,
	`comment` text,
	`moderation_status` text NOT NULL,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	FOREIGN KEY (`answer_message_id`) REFERENCES `messages`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE INDEX `feedback_answer_idx` ON `feedback` (`answer_message_id`);--> statement-breakpoint
CREATE INDEX `feedback_moderation_created_idx` ON `feedback` (`moderation_status`,`created_at`);--> statement-breakpoint
CREATE TABLE `job_events` (
	`id` text PRIMARY KEY NOT NULL,
	`job_id` text NOT NULL,
	`from_state` text,
	`to_state` text NOT NULL,
	`message` text NOT NULL,
	`details_json` text NOT NULL,
	`actor` text NOT NULL,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	FOREIGN KEY (`job_id`) REFERENCES `jobs`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE INDEX `job_events_job_created_idx` ON `job_events` (`job_id`,`created_at`);--> statement-breakpoint
CREATE TABLE `jobs` (
	`id` text PRIMARY KEY NOT NULL,
	`type` text NOT NULL,
	`state` text NOT NULL,
	`attempt` integer DEFAULT 0 NOT NULL,
	`idempotency_key` text NOT NULL,
	`source_version_id` text,
	`requested_by` text NOT NULL,
	`progress` integer DEFAULT 0 NOT NULL,
	`error_code` text,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	`started_at` text,
	`finished_at` text,
	`lease_until` text,
	FOREIGN KEY (`source_version_id`) REFERENCES `source_versions`(`id`) ON UPDATE no action ON DELETE set null,
	CONSTRAINT "jobs_attempt_nonnegative" CHECK("jobs"."attempt" >= 0),
	CONSTRAINT "jobs_progress_range" CHECK("jobs"."progress" >= 0 AND "jobs"."progress" <= 100)
);
--> statement-breakpoint
CREATE UNIQUE INDEX `jobs_active_success_idempotency_unique` ON `jobs` (`type`,`idempotency_key`) WHERE "jobs"."state" NOT IN ('failed', 'cancelled', 'rejected');--> statement-breakpoint
CREATE INDEX `jobs_state_created_idx` ON `jobs` (`state`,`created_at`);--> statement-breakpoint
CREATE INDEX `jobs_source_version_idx` ON `jobs` (`source_version_id`);--> statement-breakpoint
CREATE INDEX `jobs_lease_idx` ON `jobs` (`state`,`lease_until`);--> statement-breakpoint
CREATE TABLE `learning_candidates` (
	`id` text PRIMARY KEY NOT NULL,
	`type` text NOT NULL,
	`status` text NOT NULL,
	`origin` text NOT NULL,
	`normalized_target` text NOT NULL,
	`question_fingerprint` text NOT NULL,
	`frequency` integer DEFAULT 1 NOT NULL,
	`proposal_json` text NOT NULL,
	`evidence_refs_json` text NOT NULL,
	`risk` text NOT NULL,
	`confidence` real NOT NULL,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	`reviewed_by` text,
	CONSTRAINT "learning_candidates_frequency_positive" CHECK("learning_candidates"."frequency" > 0),
	CONSTRAINT "learning_candidates_confidence_range" CHECK("learning_candidates"."confidence" >= 0 AND "learning_candidates"."confidence" <= 1)
);
--> statement-breakpoint
CREATE UNIQUE INDEX `learning_candidates_dedupe_unique` ON `learning_candidates` (`type`,`normalized_target`,`question_fingerprint`);--> statement-breakpoint
CREATE INDEX `learning_candidates_review_queue_idx` ON `learning_candidates` (`status`,`risk`,`created_at`);--> statement-breakpoint
CREATE TABLE `messages` (
	`id` text PRIMARY KEY NOT NULL,
	`conversation_id` text NOT NULL,
	`role` text NOT NULL,
	`sanitized_text` text NOT NULL,
	`model` text,
	`program_version` text,
	`input_tokens` integer,
	`output_tokens` integer,
	`latency_ms` integer,
	`answer_status` text,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	FOREIGN KEY (`conversation_id`) REFERENCES `conversations`(`id`) ON UPDATE no action ON DELETE cascade,
	CONSTRAINT "messages_input_tokens_nonnegative" CHECK("messages"."input_tokens" IS NULL OR "messages"."input_tokens" >= 0),
	CONSTRAINT "messages_output_tokens_nonnegative" CHECK("messages"."output_tokens" IS NULL OR "messages"."output_tokens" >= 0),
	CONSTRAINT "messages_latency_nonnegative" CHECK("messages"."latency_ms" IS NULL OR "messages"."latency_ms" >= 0)
);
--> statement-breakpoint
CREATE INDEX `messages_conversation_created_idx` ON `messages` (`conversation_id`,`created_at`);--> statement-breakpoint
CREATE TABLE `outbox` (
	`id` text PRIMARY KEY NOT NULL,
	`topic` text NOT NULL,
	`payload_json` text NOT NULL,
	`state` text NOT NULL,
	`attempt` integer DEFAULT 0 NOT NULL,
	`available_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	`lease_until` text,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	`processed_at` text,
	CONSTRAINT "outbox_attempt_nonnegative" CHECK("outbox"."attempt" >= 0)
);
--> statement-breakpoint
CREATE INDEX `outbox_dispatch_idx` ON `outbox` (`state`,`available_at`);--> statement-breakpoint
CREATE INDEX `outbox_lease_idx` ON `outbox` (`state`,`lease_until`);--> statement-breakpoint
CREATE TABLE `quota_counters` (
	`id` text PRIMARY KEY NOT NULL,
	`scope` text NOT NULL,
	`subject_key` text NOT NULL,
	`metric` text NOT NULL,
	`window_start` text NOT NULL,
	`window_end` text NOT NULL,
	`value` integer DEFAULT 0 NOT NULL,
	`updated_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	CONSTRAINT "quota_counters_value_nonnegative" CHECK("quota_counters"."value" >= 0)
);
--> statement-breakpoint
CREATE UNIQUE INDEX `quota_counters_window_unique` ON `quota_counters` (`scope`,`subject_key`,`metric`,`window_start`,`window_end`);--> statement-breakpoint
CREATE INDEX `quota_counters_expiry_idx` ON `quota_counters` (`window_end`);--> statement-breakpoint
CREATE TABLE `source_versions` (
	`id` text PRIMARY KEY NOT NULL,
	`source_id` text NOT NULL,
	`sha256` text NOT NULL,
	`size_bytes` integer NOT NULL,
	`media_type` text NOT NULL,
	`original_filename` text,
	`raw_release_tag` text,
	`raw_asset_id` text,
	`normalized_repo_path` text,
	`converter_name` text NOT NULL,
	`converter_version` text NOT NULL,
	`fetch_time` text,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	`supersedes_version_id` text,
	`manifest_json` text NOT NULL,
	FOREIGN KEY (`source_id`) REFERENCES `sources`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`supersedes_version_id`) REFERENCES `source_versions`(`id`) ON UPDATE no action ON DELETE set null,
	CONSTRAINT "source_versions_size_nonnegative" CHECK("source_versions"."size_bytes" >= 0)
);
--> statement-breakpoint
CREATE UNIQUE INDEX `source_versions_source_sha_unique` ON `source_versions` (`source_id`,`sha256`);--> statement-breakpoint
CREATE INDEX `source_versions_source_created_idx` ON `source_versions` (`source_id`,`created_at`);--> statement-breakpoint
CREATE TABLE `sources` (
	`id` text PRIMARY KEY NOT NULL,
	`kind` text NOT NULL,
	`title` text NOT NULL,
	`canonical_url` text,
	`language` text NOT NULL,
	`license` text,
	`visibility` text NOT NULL,
	`status` text NOT NULL,
	`created_by` text NOT NULL,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	`current_version_id` text,
	FOREIGN KEY (`current_version_id`) REFERENCES `source_versions`(`id`) ON UPDATE no action ON DELETE set null
);
--> statement-breakpoint
CREATE INDEX `sources_status_created_idx` ON `sources` (`status`,`created_at`);--> statement-breakpoint
CREATE INDEX `sources_created_by_idx` ON `sources` (`created_by`);--> statement-breakpoint
CREATE TABLE `users` (
	`id` text PRIMARY KEY NOT NULL,
	`identity_provider` text NOT NULL,
	`external_subject` text NOT NULL,
	`email` text,
	`display_name` text,
	`role` text NOT NULL,
	`status` text NOT NULL,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	`last_seen_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `users_provider_subject_unique` ON `users` (`identity_provider`,`external_subject`);--> statement-breakpoint
CREATE INDEX `users_status_role_idx` ON `users` (`status`,`role`);--> statement-breakpoint
CREATE TABLE `wiki_changes` (
	`id` text PRIMARY KEY NOT NULL,
	`job_id` text NOT NULL,
	`base_commit` text NOT NULL,
	`branch` text NOT NULL,
	`head_commit` text,
	`pull_request_url` text,
	`risk` text NOT NULL,
	`status` text NOT NULL,
	`summary` text NOT NULL,
	`validation_json` text NOT NULL,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	`reviewed_by` text,
	`reviewed_at` text,
	`reviewed_head_commit` text,
	FOREIGN KEY (`job_id`) REFERENCES `jobs`(`id`) ON UPDATE no action ON DELETE cascade,
	CONSTRAINT "wiki_changes_reviewed_commit_matches_head" CHECK("wiki_changes"."reviewed_head_commit" IS NULL OR "wiki_changes"."reviewed_head_commit" = "wiki_changes"."head_commit")
);
--> statement-breakpoint
CREATE INDEX `wiki_changes_status_created_idx` ON `wiki_changes` (`status`,`created_at`);--> statement-breakpoint
CREATE INDEX `wiki_changes_job_idx` ON `wiki_changes` (`job_id`);--> statement-breakpoint
CREATE TABLE `wiki_chunks` (
	`id` text PRIMARY KEY NOT NULL,
	`page_path` text NOT NULL,
	`ordinal` integer NOT NULL,
	`heading_path` text NOT NULL,
	`text` text NOT NULL,
	`token_count` integer NOT NULL,
	`source_refs_json` text NOT NULL,
	`content_sha` text NOT NULL,
	FOREIGN KEY (`page_path`) REFERENCES `wiki_pages`(`path`) ON UPDATE no action ON DELETE cascade,
	CONSTRAINT "wiki_chunks_ordinal_nonnegative" CHECK("wiki_chunks"."ordinal" >= 0),
	CONSTRAINT "wiki_chunks_token_count_nonnegative" CHECK("wiki_chunks"."token_count" >= 0)
);
--> statement-breakpoint
CREATE UNIQUE INDEX `wiki_chunks_page_ordinal_unique` ON `wiki_chunks` (`page_path`,`ordinal`);--> statement-breakpoint
CREATE INDEX `wiki_chunks_content_sha_idx` ON `wiki_chunks` (`content_sha`);--> statement-breakpoint
CREATE TABLE `wiki_pages` (
	`path` text PRIMARY KEY NOT NULL,
	`title` text NOT NULL,
	`summary` text NOT NULL,
	`commit_sha` text NOT NULL,
	`content_sha` text NOT NULL,
	`updated_at` text NOT NULL,
	`metadata_json` text NOT NULL
);
--> statement-breakpoint
CREATE INDEX `wiki_pages_commit_idx` ON `wiki_pages` (`commit_sha`);--> statement-breakpoint
CREATE INDEX `wiki_pages_updated_idx` ON `wiki_pages` (`updated_at`);