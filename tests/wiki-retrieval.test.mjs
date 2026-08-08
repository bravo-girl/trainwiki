import assert from "node:assert/strict";
import test from "node:test";

import {
  buildEvidenceBlock,
  expandWikiQuery,
  MAX_EVIDENCE_BLOCK_LENGTH,
  MAX_QUERY_TERMS,
  normalizeWikiQuery,
  retrieveWikiEvidence,
  sanitizePublicSourceUrl,
} from "../lib/wiki-retrieval.ts";

const CONTENT_SHA = "a".repeat(64);
const SOURCE_SHA = "b".repeat(64);

const withIdentity = (row) => ({
  content_sha: CONTENT_SHA,
  source_id: "source-test",
  source_version_id: "source-test-v1",
  source_sha256: SOURCE_SHA,
  ...row,
});

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
  assert.deepEqual(normalizeWikiQuery("IM im Einsatz"), ["einsatz"]);
});

test("expands corpus-backed aliases without letting short generic aliases trigger", () => {
  const aliases = {
    CC: ["Company Code", "RICS-Code"],
    EIU: ["Eisenbahninfrastrukturunternehmen", "IM"],
  };

  assert.deepEqual(expandWikiQuery("Was ist der CC?", aliases, 8), [
    "cc",
    "company",
    "code",
    "rics",
  ]);
  assert.deepEqual(
    expandWikiQuery("Erkläre den Company Code", aliases, 8),
    ["erkläre", "company", "code", "cc", "rics"],
  );
  assert.deepEqual(expandWikiQuery("im Fahrplan", aliases, 8), ["fahrplan"]);
  assert.deepEqual(expandWikiQuery("IM", aliases, 8), [
    "eiu",
    "eisenbahninfrastrukturunternehmen",
    "im",
  ]);
});

test("uses placeholders, bounded result bindings and public active sources", async () => {
  const database = new FakeD1([
    withIdentity({
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
    }),
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
  assert.match(database.sql, /JOIN source_versions AS source_version/);
  assert.match(database.sql, /source\.visibility = 'public'/);
  assert.match(database.sql, /source\.status = 'active'/);
  assert.match(database.sql, /source\.current_version_id = json_extract/);
  assert.match(database.sql, /WHERE wt\.term IN \(\?, \?, \?, \?, \?, \?\)/);
  assert.doesNotMatch(database.sql, /DROP TABLE/);
  assert.deepEqual(database.bindings.slice(0, -1), result.terms);
  assert.equal(database.bindings.at(-1), 24);
  assert.equal(result.chunks.length, 1);
  assert.equal(result.sources[0].number, 1);
});

test("reranks exact title matches and keeps evidence diverse across pages", async () => {
  const database = new FakeD1([
    withIdentity({
      id: "generic-1",
      page_path: "wiki/sources/generic.md",
      ordinal: 0,
      heading_path: "Codes",
      text: "Company und Code kommen getrennt in einem langen Text vor.",
      title: "Allgemeines",
      metadata_json: "{}",
      source_refs_json: "[]",
      score: 20,
      matched_terms: 2,
    }),
    withIdentity({
      id: "generic-2",
      page_path: "wiki/sources/generic.md",
      ordinal: 1,
      heading_path: "Weitere Codes",
      text: "Noch mehr Inhalt zum Company Code.",
      title: "Allgemeines",
      metadata_json: "{}",
      source_refs_json: "[]",
      score: 18,
      matched_terms: 2,
    }),
    withIdentity({
      id: "generic-3",
      page_path: "wiki/sources/generic.md",
      ordinal: 2,
      heading_path: "Anhang",
      text: "Company Code im Anhang.",
      title: "Allgemeines",
      metadata_json: "{}",
      source_refs_json: "[]",
      score: 17,
      matched_terms: 2,
    }),
    withIdentity({
      id: "exact",
      page_path: "wiki/sources/company-code.md",
      ordinal: 0,
      heading_path: "Company Code",
      text: "Der Company Code identifiziert ein Unternehmen.",
      title: "Company Code",
      metadata_json: "{}",
      source_refs_json: "[]",
      score: 2,
      matched_terms: 2,
    }),
  ]);

  const result = await retrieveWikiEvidence(database, "Company Code", {
    maxResults: 3,
  });

  assert.equal(result.chunks[0].id, "exact");
  assert.equal(result.chunks.length, 3);
  assert.ok(result.chunks.some((chunk) => chunk.path.endsWith("company-code.md")));
});

test("reads canonical URLs from metadata or source references and rejects unsafe URLs", async () => {
  const database = new FakeD1([
    withIdentity({
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
    }),
    withIdentity({
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
    }),
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
    withIdentity({
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
    }),
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

test("bounds the complete evidence prompt while preserving all citation numbers", () => {
  const chunks = Array.from({ length: 8 }, (_, index) => ({
    id: `chunk-${index}`,
    contentSha: CONTENT_SHA,
    title: `Quelle ${index} ${"T".repeat(300)}`,
    path: `wiki/sources/${"p".repeat(500)}-${index}.md`,
    heading: `Abschnitt ${"H".repeat(300)}`,
    text: `${"langer Evidenztext ".repeat(400)}\n${"zweite Zeile ".repeat(200)}`,
    sourceId: "source-test",
    sourceVersionId: "source-test-v1",
    sourceSha256: SOURCE_SHA,
    score: 1,
    matchedTerms: 1,
    canonicalUrl: `https://example.org/${"u".repeat(1_000)}`,
  }));

  const evidenceBlock = buildEvidenceBlock(chunks);

  assert.ok(evidenceBlock.length <= MAX_EVIDENCE_BLOCK_LENGTH);
  for (let number = 1; number <= chunks.length; number += 1) {
    assert.match(evidenceBlock, new RegExp(`^\\[${number}\\]$`, "m"));
  }
  assert.doesNotMatch(evidenceBlock, /^URL:/m);
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
