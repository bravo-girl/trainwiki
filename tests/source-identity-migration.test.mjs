import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import { DatabaseSync } from "node:sqlite";
import test from "node:test";

async function applyMigration(db, filename) {
  const sql = await readFile(new URL(`../drizzle/${filename}`, import.meta.url), "utf8");
  db.exec("BEGIN");
  try {
    for (const statement of sql.split("--> statement-breakpoint")) {
      if (statement.trim()) db.exec(statement);
    }
    db.exec("COMMIT");
  } catch (error) {
    db.exec("ROLLBACK");
    throw error;
  }
}

test("source identity migrations globally claim raw bytes and URLs", async () => {
  const db = new DatabaseSync(":memory:");
  db.exec("PRAGMA foreign_keys=ON");
  await applyMigration(db, "0000_icy_solo.sql");
  await applyMigration(db, "0001_wooden_grim_reaper.sql");

  const digestA = "a".repeat(64);
  const digestB = "b".repeat(64);
  db.exec(`
    INSERT INTO sources
      (id,kind,title,language,visibility,status,created_by)
    VALUES
      ('source-a','file','A','de','public','active','test'),
      ('source-b','file','B','de','public','active','test');
    INSERT INTO source_versions
      (id,source_id,sha256,size_bytes,media_type,converter_name,converter_version,manifest_json)
    VALUES
      ('version-a','source-a','${digestA}',1,'text/markdown','test','1','{}'),
      ('version-b','source-b','${digestB}',1,'text/markdown','test','1','{}');
  `);

  await applyMigration(db, "0003_source_identities.sql");
  await applyMigration(db, "0005_source_import_dedupe.sql");
  assert.equal(
    db.prepare("SELECT normalized_sha256 FROM source_versions WHERE id='version-a'").get()
      .normalized_sha256,
    null,
  );
  assert.deepEqual(
    db.prepare(
      "SELECT identity_type,identity_hash,source_id,source_version_id FROM source_identities ORDER BY source_id",
    ).all().map((row) => ({ ...row })),
    [
      {
        identity_type: "raw_sha256",
        identity_hash: digestA,
        source_id: "source-a",
        source_version_id: "version-a",
      },
      {
        identity_type: "raw_sha256",
        identity_hash: digestB,
        source_id: "source-b",
        source_version_id: "version-b",
      },
    ],
  );

  assert.throws(
    () =>
      db.exec(`
        INSERT INTO source_identities
          (identity_type,identity_hash,source_id,source_version_id)
        VALUES ('raw_sha256','${"c".repeat(64)}','source-a','version-b');
      `),
    /same source/,
  );
  assert.throws(
    () =>
      db.exec(`
        INSERT INTO source_identities
          (identity_type,identity_hash,source_id,source_version_id)
        VALUES ('raw_sha256','${digestA}','source-b','version-b');
      `),
    /UNIQUE constraint failed/,
  );

  const normalizedHash = "e".repeat(64);
  db.exec(`
    INSERT INTO source_identities
      (identity_type,identity_hash,source_id,source_version_id)
    VALUES
      ('normalized_sha256','${normalizedHash}','source-a','version-a'),
      ('normalized_sha256','${normalizedHash}','source-b','version-b');
  `);
  assert.equal(
    db.prepare(
      "SELECT count(*) AS count FROM source_identities WHERE identity_type='normalized_sha256' AND identity_hash=?",
    ).get(normalizedHash).count,
    2,
  );

  const urlHash = "d".repeat(64);
  db.exec(`
    INSERT INTO source_identities
      (identity_type,identity_hash,source_id,metadata_json)
    VALUES ('canonical_url','${urlHash}','source-a','{}');
  `);
  assert.throws(
    () =>
      db.exec(`
        INSERT INTO source_identities
          (identity_type,identity_hash,source_id,metadata_json)
        VALUES ('canonical_url','${urlHash}','source-b','{}');
      `),
    /UNIQUE constraint failed/,
  );

  db.exec(`
    INSERT INTO source_identities
      (identity_type,identity_hash,source_id,source_version_id,metadata_json)
    VALUES ('raw_sha256','${digestA}','source-a','version-a','{"retry":true}')
    ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET
      source_id=excluded.source_id,
      source_version_id=excluded.source_version_id,
      metadata_json=excluded.metadata_json;
  `);
  assert.equal(
    db.prepare(
      "SELECT json_extract(metadata_json, '$.retry') AS retry FROM source_identities WHERE identity_hash=?",
    ).get(digestA).retry,
    1,
  );
  assert.deepEqual(db.prepare("PRAGMA foreign_key_check").all(), []);
});
