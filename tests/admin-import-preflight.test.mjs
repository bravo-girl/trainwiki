import assert from "node:assert/strict";
import { createHmac } from "node:crypto";
import { readFile } from "node:fs/promises";
import { DatabaseSync } from "node:sqlite";
import test from "node:test";

const adminSecret = "test-only-admin-session-secret-32-characters";
process.env.TRAINWIKI_ADMIN_GITHUB_LOGIN = "bravo-girl";
process.env.TRAINWIKI_ADMIN_SESSION_SECRET = adminSecret;

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

function createAdminCookie(now = Date.now()) {
  const issuedAt = Math.floor(now / 1_000);
  const payload = Buffer.from(
    JSON.stringify({ sub: "bravo-girl", iat: issuedAt, exp: issuedAt + 8 * 60 * 60 }),
  ).toString("base64url");
  const signature = createHmac("sha256", adminSecret).update(payload).digest("base64url");
  return `__Host-trainwiki_admin=${payload}.${signature}`;
}

function asD1(db) {
  return {
    prepare(query) {
      const statement = db.prepare(query);
      let values = [];
      return {
        bind(...nextValues) {
          values = nextValues;
          return this;
        },
        async all() {
          return { results: statement.all(...values).map((row) => ({ ...row })) };
        },
      };
    },
  };
}

async function callImport(database, payload, options = {}) {
  const workerUrl = new URL("../dist/server/index.js", import.meta.url);
  workerUrl.searchParams.set("test", `${process.pid}-${Date.now()}-${Math.random()}`);
  const { default: worker } = await import(workerUrl.href);
  return worker.fetch(
    new Request("http://localhost/api/admin/imports/preflight", {
      method: "POST",
      headers: {
        "content-type": "application/json",
        origin: options.origin ?? "http://localhost",
        ...(options.authenticated === false ? {} : { cookie: createAdminCookie() }),
      },
      body: JSON.stringify(payload),
    }),
    {
      ASSETS: { fetch: async () => new Response("Not found", { status: 404 }) },
      DB: database,
    },
    { waitUntil() {}, passThroughOnException() {} },
  );
}

test("app preflight recognizes sources imported by the bootstrap path", async () => {
  const db = new DatabaseSync(":memory:");
  db.exec("PRAGMA foreign_keys=ON");
  for (const migration of [
    "0000_icy_solo.sql",
    "0001_wooden_grim_reaper.sql",
    "0002_bootstrap_taf_tap.sql",
    "0003_source_identities.sql",
    "0005_source_import_dedupe.sql",
    "0006_bootstrap_input_20260808_part1.sql",
    "0007_bootstrap_input_20260808_part2.sql",
    "0008_bootstrap_input_20260808_part3.sql",
    "0009_bootstrap_input_20260808_part4.sql",
  ]) {
    await applyMigration(db, migration);
  }
  const database = asD1(db);
  const raw = db.prepare(`
    SELECT sv.sha256, sv.original_filename, sv.size_bytes, sv.source_id
    FROM source_versions AS sv
    INNER JOIN sources AS s ON s.id = sv.source_id
    WHERE s.created_by = 'bootstrap'
    ORDER BY sv.id LIMIT 1
  `).get();
  const fileResponse = await callImport(database, {
    kind: "file",
    filename: raw.original_filename ?? "bootstrap-source.md",
    sizeBytes: raw.size_bytes,
    rawSha256: raw.sha256,
  });
  assert.equal(fileResponse.status, 200);
  const fileResult = await fileResponse.json();
  assert.equal(fileResult.status, "duplicate");
  assert.equal(fileResult.sourceId, raw.source_id);
  assert.deepEqual(fileResult.matchedBy, ["raw_sha256"]);

  const web = db.prepare(`
    SELECT canonical_url, id AS source_id
    FROM sources
    WHERE created_by = 'bootstrap' AND canonical_url IS NOT NULL
    ORDER BY id LIMIT 1
  `).get();
  const urlResponse = await callImport(database, { kind: "url", url: web.canonical_url });
  assert.equal(urlResponse.status, 200);
  const urlResult = await urlResponse.json();
  assert.equal(urlResult.status, "duplicate");
  assert.equal(urlResult.sourceId, web.source_id);
  assert.deepEqual(urlResult.matchedBy, ["canonical_url"]);

  const newResponse = await callImport(database, {
    kind: "file",
    filename: "new.md",
    sizeBytes: 3,
    rawSha256: "f".repeat(64),
  });
  assert.equal(newResponse.status, 200);
  assert.deepEqual(await newResponse.json(), { status: "new" });
  assert.deepEqual(db.prepare("PRAGMA foreign_key_check").all(), []);
  db.close();
});

test("app preflight requires an admin session and same-origin request", async () => {
  const neverQuery = {
    prepare() {
      throw new Error("database must not be queried");
    },
  };
  const payload = { kind: "url", url: "https://example.com/source" };
  assert.equal(
    (await callImport(neverQuery, payload, { authenticated: false })).status,
    401,
  );
  assert.equal(
    (await callImport(neverQuery, payload, { origin: "https://attacker.invalid" })).status,
    403,
  );
});
