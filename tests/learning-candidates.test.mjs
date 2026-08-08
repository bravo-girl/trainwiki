import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import { DatabaseSync } from "node:sqlite";
import test from "node:test";

import {
  minimizeLearningQuestion,
  recordLearningObservation,
} from "../lib/learning-candidates.ts";

async function applyMigration(db, filename) {
  const sql = await readFile(new URL(`../drizzle/${filename}`, import.meta.url), "utf8");
  for (const statement of sql.split("--> statement-breakpoint")) {
    if (statement.trim()) db.exec(statement);
  }
}

function d1Adapter(db) {
  return {
    prepare(sql) {
      const statement = db.prepare(sql);
      let values = [];
      return {
        bind(...nextValues) {
          values = nextValues;
          return this;
        },
        async run() {
          const result = statement.run(...values);
          return { meta: { changes: Number(result.changes) } };
        },
      };
    },
  };
}

const HASH_A = "a".repeat(64);
const HASH_B = "b".repeat(64);

test("redacts direct contact data and secret-shaped values", () => {
  const result = minimizeLearningQuestion(
    "Schreibe an anna@example.org; API_KEY=gsk_12345678901234567890 oder +49 171 1234567",
  );

  assert.equal(result.redacted, true);
  assert.doesNotMatch(result.text, /anna@example|gsk_|171 123/i);
  assert.match(result.text, /entfernt/);
});

test("records idempotent observations and increments only for distinct turns", async () => {
  const db = new DatabaseSync(":memory:");
  db.exec("PRAGMA foreign_keys=ON");
  await applyMigration(db, "0000_icy_solo.sql");
  await applyMigration(db, "0001_wooden_grim_reaper.sql");
  await applyMigration(db, "0004_learning_observations.sql");
  const database = d1Adapter(db);
  const base = {
    question: "Was bedeutet der Company Code?",
    answer: "Eine belegte Antwort [1].",
    answerStatus: "grounded",
    evidenceRefs: [
      {
        chunkId: "chunk-a",
        chunkContentSha: HASH_A,
        pagePath: "wiki/sources/company-code.md",
        sourceId: "source-a",
        sourceVersionId: "version-a",
        sourceSha256: HASH_B,
        heading: "Definition",
      },
    ],
    programVersion: "test-v1",
  };

  const first = await recordLearningObservation(database, {
    ...base,
    turnId: "11111111-1111-4111-8111-111111111111",
  });
  const replay = await recordLearningObservation(database, {
    ...base,
    turnId: "11111111-1111-4111-8111-111111111111",
  });
  const secondTurn = await recordLearningObservation(database, {
    ...base,
    question: "  WAS bedeutet der Company Code? ",
    turnId: "22222222-2222-4222-8222-222222222222",
  });

  assert.equal(first.recorded, true);
  assert.equal(replay.recorded, false);
  assert.equal(secondTurn.recorded, true);
  assert.equal(
    db.prepare("SELECT count(*) AS count FROM learning_candidate_observations").get().count,
    2,
  );
  const candidate = db.prepare(
    "SELECT type,status,origin,frequency FROM learning_candidates",
  ).get();
  assert.deepEqual({ ...candidate }, {
    type: "faq",
    status: "collecting",
    origin: "public_chat",
    frequency: 2,
  });
  assert.equal(db.prepare("SELECT count(*) AS count FROM wiki_pages").get().count, 0);
  assert.equal(db.prepare("SELECT count(*) AS count FROM wiki_changes").get().count, 0);
  db.close();
});

test("stores unanswered questions only as source requests and rejects invalid evidence", async () => {
  const db = new DatabaseSync(":memory:");
  await applyMigration(db, "0000_icy_solo.sql");
  await applyMigration(db, "0001_wooden_grim_reaper.sql");
  await applyMigration(db, "0004_learning_observations.sql");
  const database = d1Adapter(db);

  const gap = await recordLearningObservation(database, {
    turnId: "33333333-3333-4333-8333-333333333333",
    question: "Welche neue Quelle fehlt?",
    answerStatus: "no_evidence",
    evidenceRefs: [],
  });
  const invalid = await recordLearningObservation(database, {
    turnId: "44444444-4444-4444-8444-444444444444",
    question: "Ist diese Evidenz gültig?",
    answerStatus: "grounded",
    evidenceRefs: [],
  });

  assert.equal(gap.recorded, true);
  assert.equal(invalid.recorded, false);
  assert.equal(invalid.reason, "invalid_evidence");
  const candidate = db.prepare(
    "SELECT type,normalized_target,confidence FROM learning_candidates",
  ).get();
  assert.deepEqual({ ...candidate }, {
    type: "missing_page",
    normalized_target: "wiki:unresolved",
    confidence: 0,
  });
  db.close();
});
