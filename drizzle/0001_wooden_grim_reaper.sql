CREATE TABLE `wiki_terms` (
	`chunk_id` text NOT NULL,
	`term` text NOT NULL,
	`frequency` integer NOT NULL,
	FOREIGN KEY (`chunk_id`) REFERENCES `wiki_chunks`(`id`) ON UPDATE no action ON DELETE cascade,
	CONSTRAINT "wiki_terms_frequency_positive" CHECK("wiki_terms"."frequency" > 0)
);
--> statement-breakpoint
CREATE UNIQUE INDEX `wiki_terms_chunk_term_unique` ON `wiki_terms` (`chunk_id`,`term`);--> statement-breakpoint
CREATE INDEX `wiki_terms_term_frequency_idx` ON `wiki_terms` (`term`,`frequency`);--> statement-breakpoint

CREATE TRIGGER `sources_current_version_same_source_insert`
BEFORE INSERT ON `sources`
FOR EACH ROW
WHEN NEW.`current_version_id` IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM `source_versions`
    WHERE `id` = NEW.`current_version_id` AND `source_id` = NEW.`id`
  )
BEGIN
  SELECT RAISE(ABORT, 'current source version must belong to the same source');
END;--> statement-breakpoint

CREATE TRIGGER `sources_current_version_same_source_update`
BEFORE UPDATE OF `id`, `current_version_id` ON `sources`
FOR EACH ROW
WHEN NEW.`current_version_id` IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM `source_versions`
    WHERE `id` = NEW.`current_version_id` AND `source_id` = NEW.`id`
  )
BEGIN
  SELECT RAISE(ABORT, 'current source version must belong to the same source');
END;--> statement-breakpoint

CREATE TRIGGER `source_versions_supersedes_same_source_insert`
BEFORE INSERT ON `source_versions`
FOR EACH ROW
WHEN NEW.`supersedes_version_id` IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM `source_versions`
    WHERE `id` = NEW.`supersedes_version_id` AND `source_id` = NEW.`source_id`
  )
BEGIN
  SELECT RAISE(ABORT, 'predecessor version must belong to the same source');
END;--> statement-breakpoint

CREATE TRIGGER `source_versions_supersedes_same_source_update`
BEFORE UPDATE OF `source_id`, `supersedes_version_id` ON `source_versions`
FOR EACH ROW
WHEN NEW.`supersedes_version_id` IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM `source_versions`
    WHERE `id` = NEW.`supersedes_version_id` AND `source_id` = NEW.`source_id`
  )
BEGIN
  SELECT RAISE(ABORT, 'predecessor version must belong to the same source');
END;--> statement-breakpoint

CREATE TRIGGER `source_versions_identity_immutable`
BEFORE UPDATE OF `id`, `source_id` ON `source_versions`
FOR EACH ROW
WHEN NEW.`id` <> OLD.`id` OR NEW.`source_id` <> OLD.`source_id`
BEGIN
  SELECT RAISE(ABORT, 'source version identity is immutable');
END;--> statement-breakpoint

CREATE TRIGGER `wiki_changes_exact_review_insert`
BEFORE INSERT ON `wiki_changes`
FOR EACH ROW
WHEN NEW.`status` IN ('approved', 'publishing', 'succeeded')
  AND (
    NEW.`head_commit` IS NULL
    OR NEW.`reviewed_head_commit` IS NULL
    OR NEW.`reviewed_by` IS NULL
    OR NEW.`reviewed_at` IS NULL
    OR NEW.`reviewed_head_commit` <> NEW.`head_commit`
  )
BEGIN
  SELECT RAISE(ABORT, 'publishing requires an exact reviewed commit');
END;--> statement-breakpoint

CREATE TRIGGER `wiki_changes_exact_review_update`
BEFORE UPDATE OF `status`, `head_commit`, `reviewed_head_commit`, `reviewed_by`, `reviewed_at`
ON `wiki_changes`
FOR EACH ROW
WHEN NEW.`status` IN ('approved', 'publishing', 'succeeded')
  AND (
    NEW.`head_commit` IS NULL
    OR NEW.`reviewed_head_commit` IS NULL
    OR NEW.`reviewed_by` IS NULL
    OR NEW.`reviewed_at` IS NULL
    OR NEW.`reviewed_head_commit` <> NEW.`head_commit`
  )
BEGIN
  SELECT RAISE(ABORT, 'publishing requires an exact reviewed commit');
END;
