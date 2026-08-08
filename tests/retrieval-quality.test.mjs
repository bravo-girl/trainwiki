import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import { DatabaseSync } from "node:sqlite";
import test from "node:test";

import { parseDspyArtifact } from "../lib/dspy-artifact.ts";
import { retrieveWikiEvidence } from "../lib/wiki-retrieval.ts";

async function applyMigration(database, filename) {
  const source = await readFile(
    new URL(`../drizzle/${filename}`, import.meta.url),
    "utf8",
  );
  database.exec("BEGIN");
  try {
    for (const statement of source.split("--> statement-breakpoint")) {
      if (statement.trim()) database.exec(statement);
    }
    database.exec("COMMIT");
  } catch (error) {
    database.exec("ROLLBACK");
    throw error;
  }
}

function asD1(database) {
  return {
    prepare(source) {
      const statement = database.prepare(source);
      let bindings = [];
      return {
        bind(...values) {
          bindings = values;
          return this;
        },
        async all() {
          return { results: statement.all(...bindings) };
        },
      };
    },
  };
}

test("portable DSPy retrieval profile meets its corpus recall gate", async () => {
  const database = new DatabaseSync(":memory:");
  database.exec("PRAGMA foreign_keys=ON");
  try {
    for (const migration of [
      "0000_icy_solo.sql",
      "0001_wooden_grim_reaper.sql",
      "0002_bootstrap_taf_tap.sql",
      "0003_source_identities.sql",
      "0004_learning_observations.sql",
      "0005_source_import_dedupe.sql",
      "0006_bootstrap_input_20260808.sql",
    ]) {
      await applyMigration(database, migration);
    }

    const artifact = parseDspyArtifact(
      JSON.parse(
        await readFile(
          new URL(
            "../optimizer/artifacts/trainwiki-taf-tap-baseline-v1.json",
            import.meta.url,
          ),
          "utf8",
        ),
      ),
    );
    const options = {
      maxTerms: artifact.retrieval.maxQueryTerms,
      maxCandidates: artifact.retrieval.maxCandidates,
      maxResults: artifact.retrieval.maxEvidence,
      minimumScore: artifact.retrieval.minimumScore,
      aliasExpansion: artifact.retrieval.aliasExpansion,
      weights: artifact.retrieval.weights,
    };
    const cases = [
      ["Was ist CC?", "wiki/sources/flyer-company-code-data.md"],
      ["Braucht ein EVU ein eigenes CI?", "wiki/sources/flyer-common-interface-data.md"],
      ["Wer vergibt PRID und PAID?", "wiki/sources/flyer-taf-tap-identifikatoren-data.md"],
      ["Was sind PLC und SLC?", "wiki/sources/flyer-location-coding-data.md"],
      ["Welche Angaben transportieren TCM und PTCM?", "wiki/sources/flyer-tcm-ptcm-data.md"],
      ["Was ist der Unterschied zwischen TAF und TAP?", "wiki/sources/uber-taf-tap-tsi.md"],
    ];

    let hits = 0;
    for (const [question, expectedPath] of cases) {
      const result = await retrieveWikiEvidence(asD1(database), question, options);
      hits += Number(result.chunks.some((chunk) => chunk.path === expectedPath));
    }

    const recallAtSix = hits / cases.length;
    assert.equal(hits, cases.length, "all six curated alias/search cases must retrieve their source");
    assert.ok(
      recallAtSix >= artifact.qualityGates.retrieval.minimum,
      `recall@6 ${recallAtSix.toFixed(3)} misses the configured gate`,
    );
  } finally {
    database.close();
  }
});
