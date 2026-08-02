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

test("D1 migrations preserve data and enforce TrainWiki invariants", async () => {
  const db = new DatabaseSync(":memory:");
  db.exec("PRAGMA foreign_keys=ON");
  await applyMigration(db, "0000_icy_solo.sql");

  db.exec(`
    INSERT INTO sources
      (id, kind, title, language, visibility, status, created_by)
    VALUES ('source-a', 'file', 'Quelle A', 'de', 'private', 'active', 'admin');
    INSERT INTO source_versions
      (id, source_id, sha256, size_bytes, media_type, converter_name,
       converter_version, manifest_json)
    VALUES
      ('version-a', 'source-a', 'sha-a', 10, 'text/markdown', 'test', '1', '{}');
    UPDATE sources SET current_version_id = 'version-a' WHERE id = 'source-a';
  `);

  await applyMigration(db, "0001_wooden_grim_reaper.sql");

  assert.equal(
    db.prepare("SELECT count(*) AS count FROM source_versions").get().count,
    1,
  );
  assert.deepEqual(db.prepare("PRAGMA foreign_key_check").all(), []);
  assert.equal(
    db.prepare("SELECT count(*) AS count FROM sqlite_master WHERE name = 'wiki_terms'").get().count,
    1,
  );

  db.exec(`
    INSERT INTO sources
      (id, kind, title, language, visibility, status, created_by)
    VALUES ('source-b', 'file', 'Quelle B', 'de', 'private', 'active', 'admin');
    INSERT INTO source_versions
      (id, source_id, sha256, size_bytes, media_type, converter_name,
       converter_version, manifest_json)
    VALUES
      ('version-b', 'source-b', 'sha-b', 10, 'text/markdown', 'test', '1', '{}');
  `);

  assert.throws(
    () => db.exec("UPDATE sources SET current_version_id = 'version-b' WHERE id = 'source-a'"),
    /same source/,
  );
  assert.throws(
    () => db.exec(`
      INSERT INTO source_versions
        (id, source_id, sha256, size_bytes, media_type, converter_name,
         converter_version, supersedes_version_id, manifest_json)
      VALUES
        ('version-cross', 'source-a', 'sha-cross', 10, 'text/markdown',
         'test', '1', 'version-b', '{}');
    `),
    /same source/,
  );
  assert.throws(
    () => db.exec("UPDATE source_versions SET source_id = 'source-b' WHERE id = 'version-a'"),
    /identity is immutable/,
  );

  db.exec(`
    INSERT INTO jobs
      (id, type, state, idempotency_key, requested_by)
    VALUES ('job-a', 'build_wiki_patch', 'awaiting_review', 'job-a', 'admin');
  `);
  assert.throws(
    () => db.exec(`
      INSERT INTO wiki_changes
        (id, job_id, base_commit, branch, status, risk, summary, validation_json)
      VALUES
        ('change-a', 'job-a', 'base', 'proposal/a', 'approved', 'low', 'Test', '{}');
    `),
    /exact reviewed commit/,
  );

  assert.throws(
    () => db.exec(`
      INSERT INTO wiki_changes
        (id, job_id, base_commit, branch, head_commit, status, risk, summary,
         validation_json, reviewed_by, reviewed_at)
      VALUES
        ('change-b', 'job-a', 'base', 'proposal/b', 'head-b', 'approved', 'low',
         'Test', '{}', 'admin', CURRENT_TIMESTAMP);
    `),
    /exact reviewed commit/,
  );

  db.exec(`
    INSERT INTO wiki_changes
      (id, job_id, base_commit, branch, head_commit, status, risk, summary,
       validation_json, reviewed_by, reviewed_at, reviewed_head_commit)
    VALUES
      ('change-valid', 'job-a', 'base', 'proposal/valid', 'head-valid',
       'approved', 'low', 'Test', '{}', 'admin', CURRENT_TIMESTAMP, 'head-valid');
  `);

  db.close();
});
