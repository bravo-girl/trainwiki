import assert from "node:assert/strict";
import test from "node:test";

import { repairCommonMojibake } from "../lib/text-encoding.ts";

test("repairs common UTF-8 mojibake in German source labels", () => {
  assert.equal(
    repairCommonMojibake("Neue Trassenpreise fÃ¼r 2025 und 2026 beantragt"),
    "Neue Trassenpreise für 2025 und 2026 beantragt",
  );
  assert.equal(repairCommonMojibake("PrÃ¼fung â€“ Ã„nderung â€¦"), "Prüfung – Änderung …");
});
