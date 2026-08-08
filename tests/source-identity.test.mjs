import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import test from "node:test";
import {
  normalizeMarkdownContent,
  normalizedMarkdownSha256,
  normalizeSourceUrl,
  sourceIdentityHash,
} from "../lib/source-identity.ts";

const fixture = JSON.parse(
  await readFile(
    new URL("./fixtures/source-identity.json", import.meta.url),
    "utf8",
  ),
);

test("normalizes only safe, resource-preserving URL syntax", () => {
  for (const item of fixture.urls) {
    assert.equal(normalizeSourceUrl(item.input) ?? null, item.normalized);
  }

  assert.notEqual(
    normalizeSourceUrl("https://example.com/path"),
    normalizeSourceUrl("https://example.com/path/"),
  );
  assert.notEqual(
    normalizeSourceUrl("https://example.com/path?a=1&b=2"),
    normalizeSourceUrl("https://example.com/path?b=2&a=1"),
  );
});

test("normalizes Markdown independently of volatile provenance", async () => {
  const { first, equivalent, different } = fixture.markdown;
  assert.equal(normalizeMarkdownContent(first), normalizeMarkdownContent(equivalent));
  assert.equal(
    await normalizedMarkdownSha256(first),
    await normalizedMarkdownSha256(equivalent),
  );
  assert.notEqual(
    await normalizedMarkdownSha256(first),
    await normalizedMarkdownSha256(different),
  );
});

test("builds validated identity hashes", async () => {
  const raw = "a".repeat(64);
  assert.equal(await sourceIdentityHash("raw_sha256", raw.toUpperCase()), raw);
  assert.equal(await sourceIdentityHash("normalized_sha256", raw), raw);
  assert.match(
    await sourceIdentityHash("canonical_url", "HTTPS://EXAMPLE.COM:443"),
    /^[0-9a-f]{64}$/,
  );
  await assert.rejects(
    sourceIdentityHash("canonical_url", "file:///tmp/source"),
    /safe HTTP\(S\)/,
  );
  await assert.rejects(sourceIdentityHash("raw_sha256", "not-a-hash"), /SHA-256/);
});
