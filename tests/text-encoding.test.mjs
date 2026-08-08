import assert from "node:assert/strict";
import test from "node:test";

import { repairCommonMojibake } from "../lib/text-encoding.ts";

test("repairs single and repeated UTF-8 mojibake in German source labels", () => {
  assert.equal(
    repairCommonMojibake("Neue Trassenpreise fÃ¼r 2025 und 2026 beantragt"),
    "Neue Trassenpreise für 2025 und 2026 beantragt",
  );
  assert.equal(
    repairCommonMojibake("PrÃƒÂ¼fung Ã¢â‚¬â€œ Ãƒâ€žnderung Ã¢â‚¬Â¦"),
    "Prüfung – Änderung …",
  );
  assert.equal(
    repairCommonMojibake(
      "Marktsegment Nacht: Abgabe von Wagenlisten fÃƒÂ¼r ZÃƒÂ¼ge mit Verkehrstagen ab dem Fahrplanjahr 2027 nur noch ÃƒÂ¼ber den Rechnungsbahnhof möglich",
    ),
    "Marktsegment Nacht: Abgabe von Wagenlisten für Züge mit Verkehrstagen ab dem Fahrplanjahr 2027 nur noch über den Rechnungsbahnhof möglich",
  );
  assert.equal(repairCommonMojibake("Bereits korrekt: Züge für München"), "Bereits korrekt: Züge für München");
});
