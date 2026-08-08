CREATE UNIQUE INDEX `source_identities_raw_sha_unique`
ON `source_identities` (`identity_type`,`identity_hash`)
WHERE `identity_type` = 'raw_sha256';
--> statement-breakpoint
PRAGMA optimize;
