import assert from "node:assert/strict";
import test from "node:test";

import { validateAnswerCitations } from "../lib/citation-validation.ts";

test("accepts valid citations, removes duplicates and preserves order", () => {
  assert.deepEqual(
    validateAnswerCitations("Aussage [2]. Ergänzung [1] und erneut [2].", [1, 2, 3]),
    { valid: true, citedNumbers: [2, 1] },
  );
});

test("rejects missing, unavailable and mixed valid/invalid citations", () => {
  assert.deepEqual(validateAnswerCitations("Aussage ohne Beleg.", [1]), {
    valid: false,
    citedNumbers: [],
  });
  assert.deepEqual(validateAnswerCitations("Falscher Beleg [9].", [1, 2]), {
    valid: false,
    citedNumbers: [],
  });
  assert.deepEqual(validateAnswerCitations("Gemischt [1] und [999].", [1]), {
    valid: false,
    citedNumbers: [],
  });
});
