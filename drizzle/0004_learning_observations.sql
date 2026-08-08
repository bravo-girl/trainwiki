CREATE TABLE `learning_candidate_observations` (
	`id` text PRIMARY KEY NOT NULL,
	`candidate_id` text NOT NULL,
	`candidate_type` text NOT NULL,
	`normalized_target` text NOT NULL,
	`question_fingerprint` text NOT NULL,
	`proposal_json` text NOT NULL,
	`evidence_refs_json` text NOT NULL,
	`answer_fingerprint` text,
	`answer_status` text NOT NULL,
	`program_version` text,
	`risk` text NOT NULL,
	`confidence` real NOT NULL,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	CONSTRAINT `learning_observations_answer_status` CHECK(`answer_status` IN ('grounded', 'no_evidence')),
	CONSTRAINT `learning_observations_confidence_range` CHECK(`confidence` >= 0 AND `confidence` <= 1),
	CONSTRAINT `learning_observations_proposal_json` CHECK(json_valid(`proposal_json`)),
	CONSTRAINT `learning_observations_evidence_json` CHECK(json_valid(`evidence_refs_json`))
);
--> statement-breakpoint
CREATE INDEX `learning_observations_candidate_created_idx`
ON `learning_candidate_observations` (`candidate_id`,`created_at`);
--> statement-breakpoint
CREATE INDEX `learning_observations_fingerprint_idx`
ON `learning_candidate_observations` (`candidate_type`,`normalized_target`,`question_fingerprint`);
--> statement-breakpoint
CREATE TRIGGER `learning_observations_upsert_candidate`
AFTER INSERT ON `learning_candidate_observations`
BEGIN
  INSERT INTO `learning_candidates`
    (`id`,`type`,`status`,`origin`,`normalized_target`,`question_fingerprint`,
     `frequency`,`proposal_json`,`evidence_refs_json`,`risk`,`confidence`)
  VALUES
    (NEW.`candidate_id`,NEW.`candidate_type`,'collecting','public_chat',
     NEW.`normalized_target`,NEW.`question_fingerprint`,1,NEW.`proposal_json`,
     NEW.`evidence_refs_json`,NEW.`risk`,NEW.`confidence`)
  ON CONFLICT(`type`,`normalized_target`,`question_fingerprint`)
  DO UPDATE SET `frequency` = `learning_candidates`.`frequency` + 1;
END;
--> statement-breakpoint
PRAGMA optimize;
