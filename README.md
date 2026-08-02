# TrainWiki

TrainWiki ist ein quellengebundener, lernender Chatbot nach dem LLM-Wiki-Muster von Andrej Karpathy. Das System hält Rohquellen unveränderlich, pflegt daraus eine verlinkte Markdown-Wissensbasis und lernt aus Chats ausschließlich über belegte, überprüfbare Änderungsvorschläge.

## Verbindliche Projektdokumente

- [`llm-wiki.md`](./llm-wiki.md) definiert das Wissensmodell, Provenienz, Lernregeln, Sicherheitsgrenzen und Wiki-Konventionen.
- [`spec.md`](./spec.md) definiert Zielarchitektur, Daten- und API-Verträge, DSPy-Module, Gratisbetrieb und Umsetzungsphasen.

Beide Dateien bilden gemeinsam die Schema-Schicht des Wikis und müssen bei jeder fachlichen Änderung berücksichtigt werden.

## Aktueller Stand

- Öffentliche, schlanke Mobile-first-Chat-Website unter `/chat`, ohne Anmeldung und ohne sichtbare Angaben zum technischen Unterbau
- Serverseitiger Groq-Adapter für das feste Modell `openai/gpt-oss-20b`; der API-Schlüssel bleibt im Worker
- Quellengebundenes D1-Retrieval mit nummerierten Belegen und ausdrücklicher Enthaltung ohne ausreichende Evidenz
- sichere Darstellung von Modellantworten als GitHub-Flavored Markdown; rohes HTML wird verworfen
- Export eines Frage-Antwort-Paars oder der gesamten aktuellen Sitzung als Markdown, eigenständiges HTML oder über den Druckdialog als PDF
- D1-gestützte Limits von vier Fragen pro Minute und 20 Fragen pro Tag je pseudonymisiertem Client sowie 25/Minute und 900/Tag global
- Geschützte Admin-Website unter `/admin`, ohne ChatGPT/SIWC; ein GitHub-PAT wird einmalig gegen den freigegebenen GitHub-Login geprüft und nicht gespeichert
- Quellen-, Job- und Lernvorschlagsansichten im Adminbereich
- Admin-Eingang für PDF, DOCX, XLSX, XML, JSON, YAML, Markdown und URLs
- additive D1-Migrationen für Betriebsdaten, Retrieval und Quoten
- reproduzierbarer Bootstrap-Import aus `../input`: aktuell 21 öffentliche Quellen, 282 Abschnitte und 12.229 Suchterme; zwei gekennzeichnete PDFs sind quarantänisiert
- Zielarchitektur und phasenweiser Umsetzungsplan in `spec.md`

Der Chat-Endpunkt ist implementiert, benötigt im Hosting aber das Secret `GROQ_API_KEY`. Ohne passenden Wiki-Beleg antwortet er bewusst ohne Modellaufruf; mit Beleg und fehlendem Secret liefert er `503`, statt einen Schlüssel im Browser zu verwenden. Die Admin-Uploads und nachgelagerten Konvertierungs-/Ingest-Jobs zeigen weiterhin den geplanten Ablauf mit Prototypdaten; sie übertragen noch keine Dateien.

## Lokale Entwicklung

Voraussetzung ist Node.js `>=22.13.0`.

```bash
npm install
npm run dev
```

Produktionsbuild:

```bash
npm run build
```

Bootstrap-Import von Markdown und PDF (Original-PDFs bleiben außerhalb von Git):

```bash
python scripts/bootstrap_input.py --input ../input --repo .
```

Die reproduzierbaren Markdown-Dateien, Manifeste und der abgeleitete D1-Seed liegen unter `sources/`, `wiki/sources/` und `drizzle/`. Die Quarantäneentscheidung ist in `sources/quarantine/bootstrap-review.json` dokumentiert.

## Laufzeitkonfiguration

Die Namen stehen ohne geheime Werte in [`.env.example`](./.env.example):

- `GROQ_API_KEY`: Groq-Secret, ausschließlich serverseitig
- `TRAINWIKI_ADMIN_GITHUB_LOGIN`: einziger zugelassener GitHub-Login
- `TRAINWIKI_ADMIN_SESSION_SECRET`: zufälliges Secret mit mindestens 32 Zeichen für die signierte, acht Stunden gültige Admin-Session

Für die Admin-Anmeldung genügt ein fein begrenzter GitHub-PAT, mit dem GitHub den Login über `GET /user` ausweist. TrainWiki speichert den PAT weder in D1 noch im Cookie; nach erfolgreicher Prüfung enthält der Browser nur die signierte `HttpOnly`-Session.

## Zielbetrieb ohne Kreditkarte

- Cloudflare Worker Free: Webanwendung, API, D1 und leichtes Retrieval
- GroqCloud Free: LLM-Inferenz
- GitHub: kanonisches Markdown-Wiki, Rohobjekt-Releases und Actions-Jobs
- Cloudflare `toMarkdown`/Browser Run: primäre Konvertierung
- MarkItDown/Docling in GitHub Actions: formatabhängige Fallbacks
- DSPy in GitHub Actions: Signaturen, Optimierung, Evaluation und exportierte Laufzeitartefakte

Die jeweils aktuellen Limits und verifizierten Primärquellen stehen in [`spec.md`](./spec.md#22-verifizierte-plattformgrundlagen-stand-2026-08-02).
