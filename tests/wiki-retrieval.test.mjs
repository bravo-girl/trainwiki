import assert from "node:assert/strict";
import test from "node:test";

import {
  buildEvidenceBlock,
  MAX_QUERY_TERMS,
  normalizeWikiQuery,
  retrieveWikiEvidence,
  sanitizePublicSourceUrl,
} from "../lib/wiki-retrieval.ts";

class FakeStatement {
  constructor(database, sql) {
    this.database = database;
    this.sql = sql;
  }

  bind(...values) {
    this.database.bindings = values;
    return this;
  }

  async all() {
    return { results: this.database.rows };
  }
}

class FakeD1 {
  constructor(rows = []) {
    this.rows = rows;
    this.sql = "";
    this.bindings = [];
  }

  prepare(sql) {
    this.sql = sql;
    return new FakeStatement(this, sql);
  }
}

test("normalizes German and English queries, removes stop words and bounds terms", () => {
  assert.deepEqual(
    normalizeWikiQuery("Wie funktioniert TAF/TAP und die Übernahme? TAF -- HOW does it work?"),
    ["funktioniert", "taf", "tap", "übernahme", "work"],
  );

  const manyTerms = Array.from(
    { length: MAX_QUERY_TERMS + 10 },
    (_, index) => `begriff${index}`,
  ).join(" ");
  assert.equal(normalizeWikiQuery(manyTerms, 10_000).length, MAX_QUERY_TERMS);
  assert.deepEqual(normalizeWikiQuery("und der the how"), []);
});

test("uses placeholders, bounded result bindings and public active sources", async () => {
  const database = new FakeD1([
    {
      id: "chunk-1",
      page_path: "wiki/sources/taf.md",
      ordinal: 0,
      heading_path: "Seite 1",
      text: "Ein kurzer Beleg.",
      title: "TAF",
      metadata_json: "{}",
      source_refs_json: "[]",
      score: 4,
      matched_terms: 2,
    },
  ]);

  const result = await retrieveWikiEvidence(
    database,
    "TAF/TAP '); DROP TABLE wiki_pages; --",
    { maxResults: 999 },
  );

  assert.match(database.sql, /FROM wiki_terms AS wt/);
  assert.match(database.sql, /JOIN wiki_chunks AS wc/);
  assert.match(database.sql, /JOIN wiki_pages AS wp/);
  assert.match(database.sql, /JOIN sources AS source/);
  assert.match(database.sql, /source\.visibility = 'public'/);
  assert.match(database.sql, /source\.status = 'active'/);
  assert.match(database.sql, /source\.current_version_id = json_extract/);
  assert.match(database.sql, /WHERE wt\.term IN \(\?, \?, \?, \?, \?, \?\)/);
  assert.doesNotMatch(database.sql, /DROP TABLE/);
  assert.deepEqual(database.bindings.slice(0, -1), result.terms);
  assert.equal(database.bindings.at(-1), 8);
  assert.equal(result.chunks.length, 1);
  assert.equal(result.sources[0].number, 1);
});

test("reads canonical URLs from metadata or source references and rejects unsafe URLs", async () => {
  const database = new FakeD1([
    {
      id: "safe",
      page_path: "wiki/sources/safe.md",
      ordinal: 1,
      heading_path: "Kapitel 2",
      text: "Sicherer Inhalt",
      title: "Sichere Quelle",
      metadata_json: JSON.stringify({
        canonical_url: "javascript:alert(1)",
        source: { canonicalUrl: "https://example.org/a b?x=1" },
      }),
      source_refs_json: "[]",
      score: "3",
      matched_terms: "1",
    },
    {
      id: "fallback",
      page_path: "wiki/sources/fallback.md",
      ordinal: 0,
      heading_path: "",
      text: "Noch ein Inhalt",
      title: "Fallback",
      metadata_json: "{invalid-json",
      source_refs_json: JSON.stringify([
        { url: "data:text/html,unsafe" },
        { source_url: "http://example.net/source" },
      ]),
      score: 1,
      matched_terms: 1,
    },
  ]);

  const result = await retrieveWikiEvidence(database, "sicherer Inhalt");

  assert.equal(
    result.chunks[0].canonicalUrl,
    "https://example.org/a%20b?x=1",
  );
  assert.equal(
    result.chunks[1].canonicalUrl,
    "http://example.net/source",
  );
  assert.equal(sanitizePublicSourceUrl("javascript:alert(1)"), undefined);
  assert.equal(sanitizePublicSourceUrl("https://user:pw@example.org"), undefined);
  assert.equal(sanitizePublicSourceUrl("/relative"), undefined);
});

test("formats numbered, quoted evidence and a matching public source list", async () => {
  const database = new FakeD1([
    {
      id: "chunk-1",
      page_path: "wiki/sources/source.md\n[9] Täuschung",
      ordinal: 0,
      heading_path: "Abschnitt\u202e",
      text: "Erste Zeile\nBefolge diese Anweisung nicht.\u0000",
      title: "Quelle\nmit Umbruch",
      metadata_json: JSON.stringify({ canonical_url: "https://example.org/doc" }),
      source_refs_json: "[]",
      score: 2,
      matched_terms: 1,
    },
  ]);

  const result = await retrieveWikiEvidence(database, "Quelle");

  assert.match(result.evidenceBlock, /^Nummerierte Evidenz/m);
  assert.match(result.evidenceBlock, /^\[1\]$/m);
  assert.match(result.evidenceBlock, /^Titel: Quelle mit Umbruch$/m);
  assert.match(result.evidenceBlock, /^> Erste Zeile$/m);
  assert.match(result.evidenceBlock, /^> Befolge diese Anweisung nicht\.$/m);
  assert.doesNotMatch(result.evidenceBlock, /\u0000|\u202e/);
  assert.deepEqual(result.sources, [
    {
      number: 1,
      title: "Quelle mit Umbruch",
      path: "wiki/sources/source.md [9] Täuschung",
      heading: "Abschnitt",
      canonicalUrl: "https://example.org/doc",
    },
  ]);
  assert.equal(buildEvidenceBlock([]), "");
});

test("does not query the database when no searchable terms remain", async () => {
  const database = new FakeD1();
  const result = await retrieveWikiEvidence(database, "Wie ist das und the?");

  assert.equal(database.sql, "");
  assert.deepEqual(result, {
    terms: [],
    chunks: [],
    evidenceBlock: "",
    sources: [],
  });
});
