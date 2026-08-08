import assert from "node:assert/strict";
import { createHash } from "node:crypto";
import { readFile, readdir } from "node:fs/promises";
import { DatabaseSync } from "node:sqlite";
import test from "node:test";
import { retrieveWikiEvidence } from "../lib/wiki-retrieval.ts";

const bootstrapInputMigrations = (await readdir(new URL("../drizzle/", import.meta.url)))
  .filter((filename) => /_bootstrap_input_20260808_part\d+\.sql$/.test(filename))
  .sort();

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
  const immutableBootstrapMigration = await readFile(
    new URL("../drizzle/0002_bootstrap_taf_tap.sql", import.meta.url),
  );
  assert.equal(
    createHash("sha256").update(immutableBootstrapMigration).digest("hex"),
    "d9417d94251400f2e334463d2b5eab06a2092bd158a1833f99d908ea2e19f367",
  );
  assert.equal(bootstrapInputMigrations.length, 14);
  const initialInputHash = createHash("sha256");
  for (const filename of bootstrapInputMigrations) {
    initialInputHash.update(
      await readFile(new URL(`../drizzle/${filename}`, import.meta.url)),
    );
  }
  assert.equal(
    initialInputHash.digest("hex"),
    "d3a300ad06fe004713ef09f7a27a9cf59c1b001797f82935b83e761e25bb98b5",
  );

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
      ('version-a', 'source-a', '${"a".repeat(64)}', 10, 'text/markdown', 'test', '1', '{}');
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
      ('version-b', 'source-b', '${"b".repeat(64)}', 10, 'text/markdown', 'test', '1', '{}');
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
        ('version-cross', 'source-a', '${"c".repeat(64)}', 10, 'text/markdown',
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

  await applyMigration(db, "0002_bootstrap_taf_tap.sql");
  await applyMigration(db, "0003_source_identities.sql");
  await applyMigration(db, "0004_learning_observations.sql");
  await applyMigration(db, "0005_source_import_dedupe.sql");
  for (const migration of bootstrapInputMigrations) {
    await applyMigration(db, migration);
  }

  assert.equal(
    db.prepare("SELECT count(*) AS count FROM sources WHERE created_by = 'bootstrap'").get().count,
    42,
  );
  assert.equal(
    db.prepare("SELECT count(*) AS count FROM wiki_pages WHERE json_extract(metadata_json, '$.bootstrap') = 1").get().count,
    42,
  );
  assert.equal(db.prepare("SELECT count(*) AS count FROM wiki_chunks").get().count, 592);
  assert.equal(db.prepare("SELECT count(*) AS count FROM wiki_terms").get().count, 26_340);
  assert.equal(
    db.prepare(
      "SELECT count(*) AS count FROM source_versions WHERE normalized_sha256 IS NOT NULL",
    ).get().count,
    42,
  );
  assert.equal(
    db.prepare(
      "SELECT count(*) AS count FROM source_identities WHERE identity_type = 'canonical_url'",
    ).get().count,
    19,
  );
  assert.equal(
    db.prepare(
      "SELECT count(*) AS count FROM (SELECT identity_hash FROM source_identities WHERE identity_type = 'raw_sha256' GROUP BY identity_hash HAVING count(*) > 1)",
    ).get().count,
    0,
  );
  assert.equal(
    db.prepare("SELECT count(*) AS count FROM source_versions WHERE original_filename LIKE 'Kickoff-Ende-zu-Ende-%' OR original_filename = 'TAF-TAP-TSI-Dialog-24-Juni-2026-Terminunterlage-data.pdf'").get().count,
    0,
  );
  assert.deepEqual(db.prepare("PRAGMA foreign_key_check").all(), []);

  const retrievalDb = {
    prepare(sql) {
      const statement = db.prepare(sql);
      let boundValues = [];
      return {
        bind(...values) {
          boundValues = values;
          return this;
        },
        async all() {
          return { results: statement.all(...boundValues) };
        },
      };
    },
  };
  const evidence = await retrieveWikiEvidence(
    retrievalDb,
    "Was ist der Company Code und wofür wird er verwendet?",
  );
  assert.ok(evidence.chunks.length > 0);
  assert.match(evidence.chunks[0].title, /Company Code/i);
  assert.match(evidence.evidenceBlock, /^Nummerierte Evidenz/m);

  db.exec(`
    INSERT INTO wiki_pages
      (path, title, summary, commit_sha, content_sha, updated_at, metadata_json)
    VALUES
      ('wiki/private.md', 'Private Quelle', 'Privat', 'test', 'private-page',
       CURRENT_TIMESTAMP,
       json_object('source_id', 'source-a', 'source_version_id', 'version-a'));
    INSERT INTO wiki_chunks
      (id, page_path, ordinal, heading_path, text, token_count,
       source_refs_json, content_sha)
    VALUES
      ('private-chunk', 'wiki/private.md', 0, 'Privat', 'Geheimbegriff', 1,
       '{}', 'private-chunk');
    INSERT INTO wiki_terms (chunk_id, term, frequency)
    VALUES ('private-chunk', 'geheimbegriff', 1);
  `);
  const privateEvidence = await retrieveWikiEvidence(
    retrievalDb,
    "Geheimbegriff",
  );
  assert.deepEqual(privateEvidence.chunks, []);

  db.close();
});
