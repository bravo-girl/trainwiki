# TrainWiki

TrainWiki ist ein quellengebundener, lernender Chatbot nach dem LLM-Wiki-Muster von Andrej Karpathy. Das System hält Rohquellen unveränderlich, pflegt daraus eine verlinkte Markdown-Wissensbasis und lernt aus Chats ausschließlich über belegte, überprüfbare Änderungsvorschläge.

## Verbindliche Projektdokumente

- [`llm-wiki.md`](./llm-wiki.md) definiert das Wissensmodell, Provenienz, Lernregeln, Sicherheitsgrenzen und Wiki-Konventionen.
- [`spec.md`](./spec.md) definiert Zielarchitektur, Daten- und API-Verträge, DSPy-Module, Gratisbetrieb und Umsetzungsphasen.

Beide Dateien bilden gemeinsam die Schema-Schicht des Wikis und müssen bei jeder fachlichen Änderung berücksichtigt werden.

## Aktueller Stand

- Interaktiver UI-Prototyp unter `/chat` und `/admin`
- responsive Chat-, Quellen- und Lernvorschlagsansichten
- Admin-Eingang für PDF, DOCX, XLSX, XML, JSON, YAML, Markdown und URLs
- Zielarchitektur und phasenweiser Umsetzungsplan dokumentiert
- D1 als logische Betriebsdatenbank vorgesehen
- Groq-, GitHub- und Konverterintegration folgen gemäß `spec.md`

Beispieldaten in den Oberflächen sind ausdrücklich als Prototypdaten gekennzeichnet. Uploads und Chatantworten werden in dieser ersten Version noch nicht an externe Dienste übertragen.

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

## Zielbetrieb ohne Kreditkarte

- Cloudflare Worker Free: Webanwendung, API, D1 und leichtes Retrieval
- GroqCloud Free: LLM-Inferenz
- GitHub: kanonisches Markdown-Wiki, Rohobjekt-Releases und Actions-Jobs
- Cloudflare `toMarkdown`/Browser Run: primäre Konvertierung
- MarkItDown/Docling in GitHub Actions: formatabhängige Fallbacks
- DSPy in GitHub Actions: Signaturen, Optimierung, Evaluation und exportierte Laufzeitartefakte

Die jeweils aktuellen Limits und verifizierten Primärquellen stehen in [`spec.md`](./spec.md#22-verifizierte-plattformgrundlagen-stand-2026-08-02).
