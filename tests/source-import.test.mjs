import assert from "node:assert/strict";
import test from "node:test";
import { checkSourceImport } from "../lib/source-import.ts";

const HASH_A = "a".repeat(64);
const HASH_B = "b".repeat(64);

function fakeDatabase(rows) {
  const calls = [];
  return {
    calls,
    prepare(query) {
      const call = { query, values: [] };
      calls.push(call);
      return {
        bind(...values) {
          call.values = values;
          return this;
        },
        async all() {
          return { results: rows };
        },
      };
    },
  };
}

test("source import check uses bound identities and accepts an unseen source", async () => {
  const database = fakeDatabase([]);
  assert.deepEqual(
    await checkSourceImport(database, [{ type: "raw_sha256", hash: HASH_A }]),
    { status: "new" },
  );
  assert.match(database.calls[0].query, /identity_type = \?/);
  assert.deepEqual(database.calls[0].values, ["raw_sha256", HASH_A]);
});

test("definitive raw match wins over a normalized match", async () => {
  const database = fakeDatabase([
    { identity_type: "raw_sha256", source_id: "source-a", source_version_id: "version-a", title: "A" },
    { identity_type: "normalized_sha256", source_id: "source-b", source_version_id: "version-b", title: "B" },
  ]);
  assert.deepEqual(
    await checkSourceImport(database, [
      { type: "raw_sha256", hash: HASH_A },
      { type: "normalized_sha256", hash: HASH_B },
    ]),
    {
      status: "duplicate",
      sourceId: "source-a",
      sourceVersionId: "version-a",
      title: "A",
      matchedBy: ["raw_sha256"],
    },
  );
});

test("conflicting definitive identities fail closed", async () => {
  const database = fakeDatabase([
    { identity_type: "canonical_url", source_id: "source-a", title: "A" },
    { identity_type: "raw_sha256", source_id: "source-b", title: "B" },
  ]);
  assert.deepEqual(
    await checkSourceImport(database, [
      { type: "canonical_url", hash: HASH_A },
      { type: "raw_sha256", hash: HASH_B },
    ]),
    {
      status: "conflict",
      sourceIds: ["source-a", "source-b"],
      matchedBy: ["canonical_url", "raw_sha256"],
    },
  );
});

test("ambiguous normalized content requires review", async () => {
  const database = fakeDatabase([
    { identity_type: "normalized_sha256", source_id: "source-a", title: "A" },
    { identity_type: "normalized_sha256", source_id: "source-b", title: "B" },
  ]);
  const result = await checkSourceImport(database, [
    { type: "normalized_sha256", hash: HASH_A },
  ]);
  assert.deepEqual(result, {
    status: "conflict",
    sourceIds: ["source-a", "source-b"],
    matchedBy: ["normalized_sha256"],
  });
});

test("invalid client identities are rejected before querying", async () => {
  const database = fakeDatabase([]);
  await assert.rejects(
    checkSourceImport(database, [{ type: "raw_sha256", hash: "not-a-hash" }]),
    /Quellenidentit/,
  );
  assert.equal(database.calls.length, 0);
});
