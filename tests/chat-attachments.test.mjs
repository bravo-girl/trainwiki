import assert from "node:assert/strict";
import { DatabaseSync } from "node:sqlite";
import test from "node:test";
import { storeChatAttachment } from "../lib/chat-attachments.ts";

function databaseFixture() {
  const db = new DatabaseSync(":memory:");
  db.exec(`
    CREATE TABLE sources (id TEXT PRIMARY KEY, kind TEXT, title TEXT, canonical_url TEXT, language TEXT, license TEXT, visibility TEXT, status TEXT, created_by TEXT, created_at TEXT, current_version_id TEXT);
    CREATE TABLE source_versions (id TEXT PRIMARY KEY, source_id TEXT, sha256 TEXT UNIQUE, normalized_sha256 TEXT, size_bytes INTEGER, media_type TEXT, original_filename TEXT, normalized_repo_path TEXT, converter_name TEXT, converter_version TEXT, fetch_time TEXT, created_at TEXT, supersedes_version_id TEXT, manifest_json TEXT);
    CREATE TABLE source_identities (identity_type TEXT, identity_hash TEXT, source_id TEXT, source_version_id TEXT, metadata_json TEXT, created_at TEXT, PRIMARY KEY(identity_type, identity_hash, source_id));
    CREATE UNIQUE INDEX raw_unique ON source_identities(identity_type, identity_hash) WHERE identity_type='raw_sha256';
    CREATE TABLE wiki_pages (path TEXT PRIMARY KEY, title TEXT, summary TEXT, commit_sha TEXT, content_sha TEXT, updated_at TEXT, metadata_json TEXT);
    CREATE TABLE wiki_chunks (id TEXT PRIMARY KEY, page_path TEXT, ordinal INTEGER, heading_path TEXT, text TEXT, token_count INTEGER, source_refs_json TEXT, content_sha TEXT);
    CREATE TABLE wiki_terms (chunk_id TEXT, term TEXT, frequency INTEGER, PRIMARY KEY(chunk_id, term));
  `);
  const wrapper = {
    prepare(sql) {
      const statement = db.prepare(sql);
      let bindings = [];
      const api = {
        bind(...values) { bindings = values; return api; },
        async first() { return statement.get(...bindings) ?? null; },
        async run() { return statement.run(...bindings); },
      };
      return api;
    },
    async batch(statements) {
      db.exec("BEGIN");
      try {
        const results = [];
        for (const statement of statements) results.push(await statement.run());
        db.exec("COMMIT");
        return results;
      } catch (error) {
        db.exec("ROLLBACK");
        throw error;
      }
    },
  };
  return { db, wrapper };
}

test("chat documents are indexed once and reuse the global raw SHA identity", async () => {
  const { db, wrapper } = databaseFixture();
  const attachment = {
    filename: "hinweis.md",
    mediaType: "text/markdown",
    rawSha256: "a".repeat(64),
    text: "Wichtiger Hinweis zum Fahrplan und zur neuen Frist.",
  };
  const first = await storeChatAttachment(wrapper, attachment);
  const retry = await storeChatAttachment(wrapper, { ...attachment, filename: "kopie.md" });
  assert.equal(first.added, true);
  assert.equal(retry.added, false);
  assert.equal(retry.sourceId, first.sourceId);
  assert.equal(db.prepare("SELECT count(*) AS count FROM sources").get().count, 1);
  assert.equal(db.prepare("SELECT count(*) AS count FROM source_versions").get().count, 1);
  assert.equal(db.prepare("SELECT count(*) AS count FROM source_identities WHERE identity_type='raw_sha256'").get().count, 1);
  assert.ok(db.prepare("SELECT count(*) AS count FROM wiki_chunks").get().count >= 1);
  assert.ok(db.prepare("SELECT count(*) AS count FROM wiki_terms").get().count >= 1);
});
