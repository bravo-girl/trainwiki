import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import test from "node:test";

import {
  DspyArtifactError,
  parseDspyArtifact,
  parseDspyArtifactJson,
} from "../lib/dspy-artifact.ts";

const artifactUrl = new URL(
  "../optimizer/artifacts/trainwiki-taf-tap-baseline-v1.json",
  import.meta.url,
);

async function fixture() {
  return JSON.parse(await readFile(artifactUrl, "utf8"));
}

test("parses the checked-in portable artifact without Python", async () => {
  const artifact = parseDspyArtifact(await fixture());

  assert.equal(artifact.programVersion, "taf-tap-program-v1");
  assert.equal(artifact.runtime.model, "openai/gpt-oss-20b");
  assert.equal(artifact.runtime.dspyModel, "groq/openai/gpt-oss-20b");
  assert.equal(artifact.build.networkUsed, false);
  assert.equal(artifact.retrieval.aliasExpansion.CC[1], "RICS-Code");
  assert.match(artifact.programs.groundedAnswer.instructions, /evidence/i);
  assert.deepEqual(
    artifact.programs.groundedAnswer.outputSchema.required,
    ["answer", "claim_evidence", "abstain"],
  );
  assert.ok(Object.isFrozen(artifact));
  assert.ok(Object.isFrozen(artifact.programs.groundedAnswer));
});

test("parses an artifact JSON string", async () => {
  const source = await readFile(artifactUrl, "utf8");
  assert.equal(parseDspyArtifactJson(source).schemaVersion, 1);
  assert.throws(() => parseDspyArtifactJson("{"), DspyArtifactError);
});

test("rejects unknown schema versions and missing programs", async () => {
  const wrongVersion = await fixture();
  wrongVersion.schemaVersion = 2;
  assert.throws(() => parseDspyArtifact(wrongVersion), /schemaVersion/);

  const missingProgram = await fixture();
  delete missingProgram.programs.groundedAnswer;
  assert.throws(() => parseDspyArtifact(missingProgram), /groundedAnswer/);
});

test("rejects secret material at any nesting depth", async () => {
  const artifact = await fixture();
  artifact.programs.queryPlan.demos[0].inputs.api_key = "gsk_not-a-real-key";
  assert.throws(() => parseDspyArtifact(artifact), /secret-like key/);
});

test("rejects malformed alias expansion and duplicate signature fields", async () => {
  const badAlias = await fixture();
  badAlias.retrieval.aliasExpansion.CI = "Common Interface";
  assert.throws(() => parseDspyArtifact(badAlias), /expected an array/);

  const duplicateField = await fixture();
  duplicateField.programs.queryPlan.inputFields.push({
    ...duplicateField.programs.queryPlan.inputFields[0],
  });
  assert.throws(() => parseDspyArtifact(duplicateField), /duplicate field name/);
});
