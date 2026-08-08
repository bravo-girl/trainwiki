ALTER TABLE `source_versions` ADD `normalized_sha256` text;
--> statement-breakpoint
CREATE INDEX `source_versions_normalized_sha_idx` ON `source_versions` (`normalized_sha256`);
--> statement-breakpoint
CREATE TABLE `source_identities` (
	`identity_type` text NOT NULL,
	`identity_hash` text NOT NULL,
	`source_id` text NOT NULL,
	`source_version_id` text,
	`metadata_json` text DEFAULT '{}' NOT NULL,
	`created_at` text DEFAULT CURRENT_TIMESTAMP NOT NULL,
	CONSTRAINT `source_identities_pk` PRIMARY KEY(`identity_type`,`identity_hash`,`source_id`),
	FOREIGN KEY (`source_id`) REFERENCES `sources`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`source_version_id`) REFERENCES `source_versions`(`id`) ON UPDATE no action ON DELETE cascade,
	CONSTRAINT `source_identities_type_allowed` CHECK(`identity_type` IN ('canonical_url', 'normalized_sha256', 'raw_sha256')),
	CONSTRAINT `source_identities_hash_format` CHECK(length(`identity_hash`) = 64 AND `identity_hash` = lower(`identity_hash`) AND `identity_hash` NOT GLOB '*[^0-9a-f]*')
);
--> statement-breakpoint
CREATE INDEX `source_identities_source_idx` ON `source_identities` (`source_id`);
--> statement-breakpoint
CREATE INDEX `source_identities_version_idx` ON `source_identities` (`source_version_id`);
--> statement-breakpoint
CREATE UNIQUE INDEX `source_identities_canonical_url_unique`
ON `source_identities` (`identity_type`,`identity_hash`)
WHERE `identity_type` = 'canonical_url';
--> statement-breakpoint
CREATE TRIGGER `source_identities_version_same_source_insert`
BEFORE INSERT ON `source_identities`
FOR EACH ROW
WHEN NEW.`source_version_id` IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM `source_versions`
    WHERE `id` = NEW.`source_version_id` AND `source_id` = NEW.`source_id`
  )
BEGIN
  SELECT RAISE(ABORT, 'source identity version must belong to the same source');
END;
--> statement-breakpoint
CREATE TRIGGER `source_identities_version_same_source_update`
BEFORE UPDATE OF `source_id`, `source_version_id` ON `source_identities`
FOR EACH ROW
WHEN NEW.`source_version_id` IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM `source_versions`
    WHERE `id` = NEW.`source_version_id` AND `source_id` = NEW.`source_id`
  )
BEGIN
  SELECT RAISE(ABORT, 'source identity version must belong to the same source');
END;
--> statement-breakpoint
CREATE TRIGGER `source_identities_identity_immutable`
BEFORE UPDATE OF `identity_type`, `identity_hash`, `source_id`, `source_version_id` ON `source_identities`
FOR EACH ROW
WHEN NEW.`identity_type` IS NOT OLD.`identity_type`
  OR NEW.`identity_hash` IS NOT OLD.`identity_hash`
  OR NEW.`source_id` IS NOT OLD.`source_id`
  OR NEW.`source_version_id` IS NOT OLD.`source_version_id`
BEGIN
  SELECT RAISE(ABORT, 'source identity mapping is immutable');
END;
--> statement-breakpoint
INSERT INTO `source_identities`
  (`identity_type`,`identity_hash`,`source_id`,`source_version_id`,`metadata_json`,`created_at`)
SELECT
  'raw_sha256', lower(`sha256`), `source_id`, `id`,
  json_object('backfilled_from', 'source_versions.sha256'), `created_at`
FROM `source_versions`;
--> statement-breakpoint
UPDATE `source_versions`
SET `normalized_sha256` = lower(json_extract(`manifest_json`, '$.normalized_sha256'))
WHERE `normalized_sha256` IS NULL
  AND length(json_extract(`manifest_json`, '$.normalized_sha256')) = 64
  AND lower(json_extract(`manifest_json`, '$.normalized_sha256'))
      NOT GLOB '*[^0-9a-f]*';
--> statement-breakpoint
WITH `bootstrap_normalized`(`version_id`,`normalized_sha256`) AS (
  VALUES
    ('sv_ee9fc6b3ca6f222446aef1bb','6f9374549aa7339e6c8e0655477ac6f91fae79fee7391e4033e1a0a5b952c710'),
    ('sv_51fb412fc4f0d41650cb55bf','daa4d8e870f689a51764d980e10aa769e347a381d3d4a1cc30e57d7898bfd51e'),
    ('sv_e519d2e39261121ea3f27952','3dbb09ceb66f9f7999813d89471e025806efa3f8d0ec45bc656d8475e48c629a'),
    ('sv_c0cdd67495939c10345fbc12','cae117e243401d941e992896498a6e83cf35f458715ccc5199a8660257b87615'),
    ('sv_eea6b839bbd8c7cb46a03b73','1c3abeedc18493bcc73122b4bcd3e8d9b4025ba4547b4e73c2e5da86fc71dbee'),
    ('sv_8b33fdc8de9e5fb970f80c2f','95db98c6c47898fc3145139e086bb67c7547e36f20dbe6d8b43441aa02dbc8f3'),
    ('sv_66fe54f6cac1cc941df10fd8','7db785f776d34cb5c781736993ba8f3928b2c03b6e8b6fff3956e3c7e10da8b2'),
    ('sv_c88a5b74e140e9fe73443e98','e78666ffc6c51fcf488e8a18d3a827bdb6a63564bc3f3bbd875c2294cfdd2c2d'),
    ('sv_c7063d63a8af5e6fac38fb2c','5b2099e9c62191e2e6ff25602bfe83452aad24027ee6189565cf8a6402606123'),
    ('sv_1eeb0a97a58e3ea642480851','9f98e995f66cec9d6f71a50e824d0ccdde3e78cc35f739192e74958a961b2a41'),
    ('sv_4faec1ad62208a667b5fd534','92c3d9c918b964e120bc38a9760c77356738b169587236b013f80c5fa2bbfafd'),
    ('sv_ad7a22df2cd5529c685aa7d1','964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500'),
    ('sv_20848958c0b6e9f3ebfd7441','0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8'),
    ('sv_7c053a98498b96504a8dc7de','ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6'),
    ('sv_12227c0c6672e3e4736d2c8b','ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e'),
    ('sv_abacab26d0837e86a436bb01','0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7'),
    ('sv_0c0b08c0adcc9c32c1dcad55','c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8'),
    ('sv_0194b5a78c0a2db74d1b0421','bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741'),
    ('sv_edb2bc1e9f24d50e73b6b8c5','365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f'),
    ('sv_44fe2d3163612d9c0a1e9803','8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692'),
    ('sv_7c633488c07b24cabd17e8b9','2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065')
)
UPDATE `source_versions`
SET `normalized_sha256` = (
  SELECT `normalized_sha256` FROM `bootstrap_normalized`
  WHERE `version_id` = `source_versions`.`id`
)
WHERE `id` IN (SELECT `version_id` FROM `bootstrap_normalized`)
  AND `normalized_sha256` IS NULL;
--> statement-breakpoint
INSERT INTO `source_identities`
  (`identity_type`,`identity_hash`,`source_id`,`source_version_id`,`metadata_json`,`created_at`)
SELECT
  'normalized_sha256', `normalized_sha256`, `source_id`, NULL,
  json_object('backfilled_from', 'source_versions.normalized_sha256'), `created_at`
FROM `source_versions`
WHERE `normalized_sha256` IS NOT NULL;
--> statement-breakpoint
INSERT INTO `source_identities`
  (`identity_type`,`identity_hash`,`source_id`,`source_version_id`,`metadata_json`,`created_at`)
SELECT 'canonical_url','8063b35fbcb7d5c3d6709f290338181d321eb3c675d316e3659c55f08091a0cf',`id`,NULL,json_object('canonical_url',`canonical_url`),`created_at` FROM `sources` WHERE `id`='src_a17ac4dcb38672799aa4'
UNION ALL SELECT 'canonical_url','5510ed8c9dcde4d3d4609dac20e7a9ca12ae71f53db26274c2f3b768eadaa6f7',`id`,NULL,json_object('canonical_url',`canonical_url`),`created_at` FROM `sources` WHERE `id`='src_d2976558d7a33946b943'
UNION ALL SELECT 'canonical_url','35583daff6ca12837aec28a7111df630b7742de97686679c3028497ef26909fe',`id`,NULL,json_object('canonical_url',`canonical_url`),`created_at` FROM `sources` WHERE `id`='src_b1e36372becf6e4cd12f'
UNION ALL SELECT 'canonical_url','45f34c6ebb7d8bb503ff41d295235f8bf7d611d34ffa922f146106497b2511d6',`id`,NULL,json_object('canonical_url',`canonical_url`),`created_at` FROM `sources` WHERE `id`='src_ef37beb95dff453ad8f1'
UNION ALL SELECT 'canonical_url','5bcb13e403dc83edc3667b59e7b873fdde68a7719fe35c7e19d33dd6b63a16f1',`id`,NULL,json_object('canonical_url',`canonical_url`),`created_at` FROM `sources` WHERE `id`='src_828f1b79362a62ea820f'
UNION ALL SELECT 'canonical_url','89a22ff47944d0df11158682faf0e6d9dc9c6cbc56622e9e78ce1eaa38e7c14f',`id`,NULL,json_object('canonical_url',`canonical_url`),`created_at` FROM `sources` WHERE `id`='src_f99e066f37874620df4e'
UNION ALL SELECT 'canonical_url','6ea600bb078f32c2c0efa960fc40afb41b36bc6c1a496abae9a6124a9528dd29',`id`,NULL,json_object('canonical_url',`canonical_url`),`created_at` FROM `sources` WHERE `id`='src_a731ecf1b5573c6eba01'
UNION ALL SELECT 'canonical_url','31ef22f7f38a67d6a17242230cd46d2f69fb9c8f0b46d2a14e4a4cc61757b1a7',`id`,NULL,json_object('canonical_url',`canonical_url`),`created_at` FROM `sources` WHERE `id`='src_154242f98906f347d53b'
UNION ALL SELECT 'canonical_url','a4e4421cb0803b18e89e95d54a6ca76527debce7f202fcc3cf04166f0b26d9bd',`id`,NULL,json_object('canonical_url',`canonical_url`),`created_at` FROM `sources` WHERE `id`='src_444523b5c3ad495650b5'
UNION ALL SELECT 'canonical_url','0b85f7c845d9323f0c8ed5fa1fd5d1e2a4e2a0692a180e601c6c097bdc380559',`id`,NULL,json_object('canonical_url',`canonical_url`),`created_at` FROM `sources` WHERE `id`='src_0ed972984c152ac37d60';
