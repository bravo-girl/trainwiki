# TrainWiki

TrainWiki ist ein quellengebundener, lernender Chatbot nach dem LLM-Wiki-Muster von Andrej Karpathy. Das System hält Rohquellen unveränderlich, pflegt daraus eine verlinkte Markdown-Wissensbasis und lernt aus Chats ausschließlich über belegte, überprüfbare Änderungsvorschläge.

## Verbindliche Projektdokumente

- [`llm-wiki.md`](./llm-wiki.md) definiert das Wissensmodell, Provenienz, Lernregeln, Sicherheitsgrenzen und Review-Invarianten.
- [`schema.md`](./schema.md) definiert das konkrete Markdown-, Frontmatter-, Pfad-, Link-, Zitations-, Index- und Logformat.
- [`spec.md`](./spec.md) definiert Zielarchitektur, Daten- und API-Verträge, DSPy-Module, Gratisbetrieb und Umsetzungsphasen.
- [`AGENTS.md`](./AGENTS.md) setzt diese Verträge in Arbeitsregeln für Agenten um; [`CLAUDE.md`](./CLAUDE.md) ist ein kurzer Adapter darauf.

`llm-wiki.md`, `schema.md` und `spec.md` bilden gemeinsam die normative Projektdokumentation. Ihre Zuständigkeiten und Konfliktregel stehen in `AGENTS.md`; keine der Dateien darf Sicherheits- oder Provenienzregeln aus `llm-wiki.md` abschwächen.

## Aktueller Stand

- Öffentliche, schlanke Mobile-first-Chat-Website unter `/chat`, ohne Anmeldung und ohne sichtbare Angaben zum technischen Unterbau
- Serverseitiger Groq-Adapter für das feste Modell `openai/gpt-oss-20b`; der API-Schlüssel bleibt im Worker
- Quellengebundenes D1-Retrieval mit nummerierten Belegen und ausdrücklicher Enthaltung ohne ausreichende Evidenz
- portables, strikt validiertes DSPy-Artefakt für Query-/Ranking-/Antwortverträge; die Worker-Laufzeit benötigt weder Python noch WASM
- DSPy-gestützte Alias-Erweiterung und deterministisches Reranking mit einem versionierten Retrieval-Qualitätstest gegen den realen Bootstrap-Korpus
- sichere Darstellung von Modellantworten als GitHub-Flavored Markdown; rohes HTML wird verworfen
- Export eines Frage-Antwort-Paars oder der gesamten aktuellen Sitzung als Markdown, eigenständiges HTML oder über den Druckdialog als PDF
- D1-gestützte Limits von vier Fragen pro Minute und 20 Fragen pro Tag je pseudonymisiertem Client sowie 25/Minute und 900/Tag global
- Geschützte Admin-Website unter `/admin`, ohne ChatGPT/SIWC; ein GitHub-PAT wird einmalig gegen den freigegebenen GitHub-Login geprüft und nicht gespeichert
- Quellen-, Job- und echte Lernvorschlagsansichten im Adminbereich
- datensparsame, idempotente Lernbeobachtungen: Wiederholte Fragen erhöhen nur die Review-Priorität; Chat-Inhalte werden niemals automatisch als Wiki-Wissen veröffentlicht
- Admin-Eingang für PDF, DOCX, XLSX, XML, JSON, YAML, Markdown und URLs
- additive D1-Migrationen für Betriebsdaten, Retrieval und Quoten
- reproduzierbarer Bootstrap-Import aus `../input`: aktuell 21 öffentliche Quellen, 282 Abschnitte und 12.229 Suchterme; zwei gekennzeichnete PDFs sind quarantänisiert
- Zielarchitektur und phasenweiser Umsetzungsplan in `spec.md`

Der Chat-Endpunkt ist implementiert, benötigt im Hosting aber das Secret `GROQ_API_KEY`. Ohne passenden Wiki-Beleg antwortet er bewusst ohne Modellaufruf; mit Beleg und fehlendem Secret liefert er `503`, statt einen Schlüssel im Browser zu verwenden. Die Admin-Oberfläche prüft Datei-Hashes und kanonische URLs vor dem Vormerken gegen dieselben Quellenidentitäten wie der Bootstrap-Import. Die nachgelagerten Konvertierungs-/Ingest-Jobs bleiben ein Prototyp und übertragen noch keine Dateien. Ein späterer schreibender App-Import muss den Rohdatei-Hash serverseitig erneut berechnen und die Identität in derselben D1-Transaktion beanspruchen.

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

Schnelle lokale Qualitätsprüfung (ESLint prüft nur Quellverzeichnisse und
verwendet einen in Git ignorierten Inhalts-Cache):

```bash
npm run lint
npm test
```

`npm test` baut genau einmal und führt danach die Node-Tests aus. Für einen
cachefreien CI-Lint existiert `npm run lint:ci`. Der GitHub-Workflow startet nur
bei relevanten Code-, Test-, Wiki- oder Quelldateien, checkt nur einen Commit
aus, verwendet den npm-Downloadcache, verwirft überholte Läufe und lädt keine
Build-Artefakte hoch.

Bootstrap-Import von Markdown und PDF (Original-PDFs bleiben außerhalb von Git):

```bash
python scripts/bootstrap_input.py --input ../input --repo .
```

Die reproduzierbaren Markdown-Dateien und Manifeste liegen unter `sources/` und `wiki/sources/`. Bereits veröffentlichte Migrationen bleiben unverändert; ein neuer, abgeleiteter D1-Seed wird unter `outputs/bootstrap/<import-key>/seed.sql` erzeugt und erst nach Review als eigene additive Migration übernommen. Die Quarantäneentscheidung ist in `sources/quarantine/bootstrap-review.json` dokumentiert.

DSPy wird ausschließlich im kontrollierten Offline-/Actions-Workflow ausgeführt. Installation, Evaluation, Optimierung und Aktivierungsregeln stehen in [`optimizer/README.md`](./optimizer/README.md). Ein neues Artefakt wird nur aktiviert, wenn es auf dem held-out Satz besser ist und alle deterministischen Sicherheits- und Retrieval-Gates erfüllt.

## Quellenrecherche

Die detaillierte Prüfung aller Einträge aus `../quellen.txt`, reproduzierbare
Hashes und die daraus abgeleiteten Architekturentscheidungen stehen im
[Quellenreview vom 8. August 2026](./docs/research/source-review-2026-08-08.md).
Webseiten und verfügbare YouTube-Untertitel werden ausschließlich unter dem in
Git ignorierten `work/research/` erfasst. Vorhandene hash-geprüfte Captures
werden standardmäßig ohne Download wiederverwendet; `--refresh` führt bei
Webseiten eine bedingte HTTP-Anfrage mit ETag beziehungsweise Last-Modified aus.
Automatisch erzeugte Untertitel sind Recherchehilfen und werden ohne Rechte-
und Inhaltsreview nicht als Wiki-Evidenz veröffentlicht.

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
