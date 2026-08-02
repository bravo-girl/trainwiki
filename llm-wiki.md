# TrainWiki: normative LLM-Wiki-Architektur

## 1. Status und Zweck

Dieses Dokument definiert die fachlichen und sicherheitsrelevanten Regeln des TrainWiki. Es konkretisiert das von Andrej Karpathy beschriebene Muster einer persistenten, vom LLM gepflegten Markdown-Wiki: Unveränderliche Quellen bilden die Beweisgrundlage, die Wiki-Schicht enthält die fortlaufend gepflegte Synthese, und eine Schema-Schicht diszipliniert alle Operationen. Die Wiki soll Wissen nicht bei jeder Frage neu aus Rohdokumenten zusammensetzen, sondern es nachvollziehbar und kumulativ weiterentwickeln.

Die Schlüsselwörter **MUSS**, **DARF NICHT**, **SOLL**, **SOLL NICHT** und **KANN** sind normativ:

- **MUSS / DARF NICHT:** zwingende Anforderung;
- **SOLL / SOLL NICHT:** Standard, von dem nur mit dokumentierter Begründung abgewichen werden darf;
- **KANN:** zulässige Option.

Die Schema-Schicht besteht für dieses Projekt aus zwei versionierten Dokumenten:

- `llm-wiki.md` definiert Wissensmodell, Provenienz, Lern-, Sicherheits- und Reviewregeln.
- `spec.md` definiert die konkrete technische Umsetzung: APIs, Datenmodelle, Jobzustände, Komponenten, Deployment und Abnahmekriterien.

Bei Widersprüchen gelten die strengere Sicherheitsregel und die Provenienzregeln dieses Dokuments. Eine technische Änderung in `spec.md` DARF diese Invarianten nicht abschwächen. Änderungen an einem der beiden Schema-Dokumente MÜSSEN wie Code geprüft und versioniert werden; sie dürfen nicht durch eine öffentliche Chatfrage ausgelöst oder automatisch gemergt werden.

## 2. Ziele und Nicht-Ziele

TrainWiki MUSS:

1. eine vorhandene Erstmenge von Markdown-Rohquellen und Weblinks idempotent einlesen können;
2. neue Dateien und URLs über eine geschützte Admin-Oberfläche annehmen;
3. PDF, Webseiten/HTML, Weblinks, DOCX, XLSX, XML, JSON und YAML über einen austauschbaren externen Konverter nach Markdown normalisieren;
4. aus den normalisierten Quellen eine strukturierte, verlinkte und zitierfähige Markdown-Wiki pflegen;
5. öffentliche Fragen ausschließlich gegen die freigegebene Wiki und ihre freigegebenen Quellen beantworten;
6. aus belegten, nützlichen Synthesen Lernvorschläge erzeugen, ohne Modellantworten selbst zur Wahrheit zu erklären;
7. jede inhaltliche Aussage bis zu einer unveränderlichen Quellversion zurückverfolgbar machen;
8. Änderungen als überprüfbaren Git-Diff bereitstellen und Rücknahme ermöglichen;
9. bei fehlender oder widersprüchlicher Evidenz transparent abbrechen beziehungsweise Unsicherheit zeigen;
10. innerhalb kostenloser Kontingente sparsam mit LLM-, Speicher- und Konvertierungsaufrufen umgehen.

TrainWiki ist ausdrücklich nicht:

- ein System, das aus anonymen Aussagen automatisch Fakten macht;
- ein selbstmodifizierender Agent mit direktem Schreibzugriff auf `main`;
- ein Ersatz für die Originaldateien;
- ein allgemeiner Webcrawler oder eine ungeprüfte Internetsuchmaschine;
- ein Vektorindex, dessen Treffer ohne Quellenbeleg als Wissen gelten;
- ein Trainingssystem, das Groq-Modelle feinabstimmt. „Lernen“ bedeutet hier: geprüfte, persistente Wiki-Änderungen.

## 3. Unverhandelbare Invarianten

1. **Rohquellen sind unveränderlich.** Eine Änderung erzeugt eine neue Quellversion; niemals wird eine alte Version überschrieben.
2. **Nur Quellen sind Beweise.** Wiki-Seiten, Chatfragen, Chatantworten, Retrieval-Scores und LLM-Ausgaben sind keine Primärquellen.
3. **Produktion liest nur freigegebenes Wissen.** Offene Vorschläge, fehlgeschlagene Ingests und unveröffentlichte Admin-Uploads dürfen nicht in öffentliche Antworten gelangen.
4. **Das Modell besitzt keine Schreibberechtigung.** Es erzeugt strukturierte Vorschläge. Nur der Orchestrator darf nach Validierung Dateien verändern; nur der Reviewprozess darf in die freigegebene Wiki übernehmen.
5. **Keine anonymen Wiki-Schreibvorgänge.** Öffentliche Nutzer können fragen und optional Feedback geben. Beides darf höchstens ein nicht freigegebenes Lernsignal erzeugen.
6. **Keine erfundenen Zitate.** Zitationskennungen und Links stammen aus dem Retrieval-/Provenienzsystem, nicht aus frei generiertem Modelltext.
7. **Abstention vor Halluzination.** Reicht die Evidenz nicht aus, MUSS das System dies sagen und darf die Lücke nicht mit Modellwissen auffüllen.
8. **Abgeleitete Indizes sind ersetzbar.** Suche, Embeddings, Graph- und Cachetabellen dürfen jederzeit aus freigegebenem Markdown und Manifesten neu aufgebaut werden.
9. **Alle dauerhaften Änderungen sind auditierbar.** Operation, Quellversion, Programm-/Promptversion, Modellkennung, Prüfer und Git-Commit müssen zuordenbar sein.
10. **Quellinhalt ist untrusted data.** Anweisungen in Dateien oder Webseiten dürfen niemals Systemregeln, Tools, Geheimnisse oder Schreibrechte beeinflussen.

## 4. Zielarchitektur und Vertrauensgrenzen

```text
Öffentlicher Browser                 Admin-Browser (authentifiziert + autorisiert)
         |                                          |
         v                                          v
  Öffentliche Chat-UI                         Geschützte Admin-UI
         |                                          |
         +---------------- Web/API-Gateway ----------+
                              |
            +-----------------+-------------------+
            |                 |                   |
            v                 v                   v
       Query-Service      Ingest/Review       Job-/Audit-Service
            |             Orchestrator              |
            v                 |                      v
     DSPy-Orchestrator        +----> externer Konverter
            |                 |
            v                 +----> Raw-Objektspeicher
        GroqCloud             +----> Git-Arbeitsbranch/PR
            |                 +----> Betriebsdatenbank/Queue
            v
 freigegebene Wiki + Suchindex + Provenienzregister
```

Die Trennung zwischen Chat und Administration ist eine serverseitige Autorisierungsgrenze, nicht lediglich eine andere URL oder ausgeblendete Schaltfläche.

### 4.1 Öffentliche Chat-Oberfläche

Die Chat-Oberfläche MUSS anonym oder mit optionaler Anmeldung lesend funktionieren. Sie darf:

- Fragen senden;
- gestreamte Antworten und verifizierte Quellen anzeigen;
- Unsicherheiten, Konflikte und fehlende Evidenz sichtbar machen;
- Feedback zu einer Antwort übermitteln.

Sie DARF NICHT:

- Dateien oder Quellen in die Wiki übernehmen;
- Wiki-Dateien, Quellmanifeste, Schema oder Prompts verändern;
- API-Schlüssel oder privilegierte Endpunkte sehen;
- offene Admin-Vorschläge durchsuchen;
- durch Prompttext Schreib-, Netzwerk- oder Git-Tools aufrufen.

### 4.2 Geschützte Admin-Oberfläche

Die Admin-Oberfläche MUSS serverseitig eine explizite Rollen- oder Allowlist-Prüfung durchführen. Eine bloße Identität ohne nachgewiesene Admin-Berechtigung reicht nicht. Sie MUSS mindestens anbieten:

- Datei-Upload und URL-Erfassung;
- Metadaten wie Titel, Sprache, Lizenz, Vertrauensklasse und Tags;
- Konvertierungsvorschau einschließlich Warnungen und Quell-Locators;
- Ingest-Status, Wiederholung und Abbruch;
- Wiki-Diff, erkannte Widersprüche und Lint-Befunde;
- Freigeben, Ablehnen, Korrektur anfordern und Zurückrollen;
- Ansicht von Lernvorschlägen aus Chatantworten;
- Auditprotokoll und Kontingentverbrauch.

Jede schreibende Admin-Aktion MUSS gegen CSRF, Replay und fehlende Autorisierung geschützt sein. Kritische Aktionen SOLLEN eine erneute Bestätigung verlangen.

## 5. Die drei kanonischen Schichten

### 5.1 Raw-Schicht: Beweisgrundlage

Die Raw-Schicht enthält Originale, unveränderliche normalisierte Darstellungen und Metadaten. Sie ist die Quelle der Wahrheit für alle Tatsachenbehauptungen.

Sie besteht physisch aus:

1. **Originalobjekt:** exakt hochgeladene Datei beziehungsweise erfasster Web-Snapshot;
2. **Quellmanifest:** Identität, Herkunft, Hash, Zeit, Medientyp, Lizenz, Konverter und Verarbeitungshistorie;
3. **Staging-Markdown:** möglichst verlustarme 1:1-Normalisierung des Originals, noch ohne themenübergreifende LLM-Synthese;
4. **Extrahierte Assets:** notwendige Bilder oder Anhänge, jeweils mit Hash und Bezug zum Original.

Staging ist eine technische Unterebene der Raw-Schicht und keine vierte Wissensautorität. Der Konverter darf Lesbarkeit herstellen, aber keine neuen Fakten ergänzen oder mehrere Quellen synthetisieren.

Für jede logische Quelle MUSS es eine stabile `source_id` geben. Jede Erfassung oder Änderung erzeugt eine unveränderliche `source_version`, die mindestens durch den SHA-256-Hash des kanonischen Inhalts identifiziert wird. Derselbe Hash MUSS idempotent erkannt werden. Bei einer URL MUSS jede erneute Erfassung als neue Version behandelt werden, sobald sich der Inhalt geändert hat.

Ein URL-Datensatz MUSS mindestens die angeforderte URL, die finale URL nach Redirects, Abrufzeit, Inhalts-Hash, relevanten Antwort-Metadaten und den gespeicherten Snapshot enthalten. Eine URL ohne Snapshot ist kein reproduzierbarer Beleg.

Binäre Originale SOLLEN wegen Repositorygröße und Datenschutz in einem privaten, content-adressierten Objektspeicher liegen. Im Git-Repository liegen die kleinen, prüfbaren Manifeste und normalisierten Markdown-Dateien. Die Erstinitialisierung aus bereits vorhandenen Markdown-Dateien folgt denselben Hash-, Manifest- und Reviewregeln.

### 5.2 Wiki-Schicht: gepflegte Synthese

Die Wiki-Schicht besteht ausschließlich aus freigegebenen, menschenlesbaren Markdown-Seiten. Sie enthält:

- Entitäten, Konzepte und Themen;
- Quellzusammenfassungen;
- Vergleiche und belegte Synthesen über mehrere Quellen;
- Widersprüche, Unsicherheiten und offene Fragen;
- Querverweise und explizite Abhängigkeiten;
- `index.md` als inhaltsorientierten Katalog;
- `log.md` als chronologisches, append-only Operationsprotokoll.

Das LLM pflegt diese Schicht inhaltlich, besitzt sie aber nicht technisch: Es darf nur Patches vorschlagen. Eine Seite darf eine Quelle zusammenfassen, aber nie den Status eines Originals vortäuschen. Veraltete Aussagen werden nicht stillschweigend gelöscht; sie werden korrigiert, als überholt markiert oder mit der neuen Quelle und Begründung nachvollziehbar ersetzt.

`wiki/index.md` MUSS jede freigegebene Seite mit Link, Seitentyp und Kurzbeschreibung aufführen und bei jedem Merge aktualisiert werden. `wiki/log.md` MUSS append-only sein und Einträge in maschinenlesbarer Form enthalten, zum Beispiel:

```markdown
## [2026-08-02T10:30:00Z] ingest | op_01... | src_01... | PR #42
```

Git-Historie ist der exakte Änderungsnachweis; `log.md` ist die kompakte fachliche Timeline und ersetzt Git nicht.

### 5.3 Schema-Schicht: Verhaltensvertrag

Die Schema-Schicht wird von Menschen verantwortet und vom System vor jeder Ingest-, Learn- und Lint-Operation geladen. Sie definiert:

- erlaubte Seitentypen und Verzeichnisse;
- Benennung, Frontmatter und Linkkonventionen;
- Quellen- und Zitationsregeln;
- Ingest-, Query-, Learn-, Review- und Lintabläufe;
- Sicherheitsgrenzen und Modellberechtigungen;
- DSPy-Signaturen, Metriken und Versionspolitik auf konzeptioneller Ebene;
- die Kriterien für Freigabe, Abstention und Rollback.

Schema-Änderungen haben einen großen Wirkungsradius. Sie MÜSSEN über einen eigenen Review mit benanntem Schema-Owner erfolgen. Ein Optimizer oder LLM darf Schema-Dateien analysieren und Änderungsvorschläge erstellen, aber niemals selbst veröffentlichen.

## 6. Logische Verzeichnisstruktur

Die konkrete Ablage wird in `spec.md` festgelegt. Fachlich MUSS mindestens folgende Struktur erkennbar sein:

```text
llm-wiki.md                         # normative Wissens- und Sicherheitsregeln
spec.md                             # technische Spezifikation und Umsetzungsplan

sources/
  manifests/                       # ein versioniertes Markdown-Manifest je Quelle
  normalized/                      # unveränderliches Staging-Markdown je Quellversion
  assets/                          # kleine, referenzierte Assets; große Originale extern

wiki/
  index.md                         # Katalog aller freigegebenen Seiten
  log.md                           # append-only Operationsübersicht
  entities/                        # Personen, Organisationen, Produkte, Orte usw.
  concepts/                        # Begriffe, Methoden, Themen
  sources/                         # menschenlesbare Quellzusammenfassungen
  syntheses/                       # Vergleiche und Multi-Source-Synthesen
  questions/                       # dauerhaft wertvolle, belegte Frageergebnisse

proposals/                         # optional lokal; produktiv vorzugsweise Git-Branches/PRs
tests/
  wiki/                            # Schema-, Retrieval- und Provenienzfixtures
```

Originale im Objektspeicher folgen logisch dem Muster:

```text
originals/{source_id}/{source_version}/{safe_filename}
```

Dateinamen dürfen keine Identität ersetzen. Stabile IDs bleiben bei Umbenennung oder Verschiebung einer Seite erhalten. Slugs MÜSSEN normalisiert und kollisionsfrei sein.

## 7. Quellmanifest und Konvertierungsvertrag

### 7.1 Quellmanifest

Jede Quellversion MUSS ein Manifest mit mindestens folgenden Feldern besitzen:

- `source_id`: stabile logische Quellenkennung;
- `source_version`: unveränderliche Versionskennung;
- `content_sha256`: Hash des gespeicherten Originals beziehungsweise Snapshots;
- `normalized_sha256`: Hash des normalisierten Markdown;
- `title`, `media_type`, `language`;
- `origin_type`: `upload`, `url` oder `initial_markdown`;
- `origin`: Originalname oder URL, sicher für die Anzeige normalisiert;
- `captured_at`: UTC-Zeit der Erfassung;
- `converter_name`, `converter_version`, `conversion_profile`;
- `license` und optionale Zugriffsklasse;
- `conversion_warnings` und Verweise auf Assets;
- `state`: beispielsweise `received`, `converted`, `proposed`, `approved`, `rejected` oder `failed`.

Manifeste sind append-only bezüglich Quellversionen. Korrekturen an Metadaten MÜSSEN auditierbar sein und dürfen Hash-/Herkunftsdaten nicht unbemerkt ersetzen.

### 7.2 Externer Konverter

Die Anwendung MUSS Quelldaten über einen austauschbaren Konverter-Adapter nach Markdown überführen. Der konkrete externe Anbieter beziehungsweise das Open-Source-Werkzeug wird in `spec.md` konfiguriert und darf nicht in die Wissenslogik eingebaut sein.

Der Adapter MUSS logisch folgende Eingaben annehmen:

- kurzlebigen, minimal berechtigten Zugriff auf genau ein Original;
- deklarierter und erkannter Medientyp;
- Quell- und Versionskennung;
- Sprache und ein formatabhängiges Konvertierungsprofil;
- harte Größen-, Zeit-, Seiten- und Assetlimits.

Er MUSS mindestens liefern:

- `markdown` ohne ausführbare aktive Inhalte;
- Locator-Mapping vom Markdown zurück zum Original;
- extrahierte Metadaten und Assetreferenzen;
- Name und exakte Version des Konverters;
- Warnungen, Auslassungen und Vertrauenswert der Extraktion;
- einen deterministischen Ergebnis-Hash.

Formatspezifische Mindestanforderungen:

- **PDF:** Seitenmarker und, soweit möglich, Absatz-/Tabellen-Locators erhalten; OCR als solche kennzeichnen.
- **Webseite/HTML/URL:** Titel, kanonische und finale URL, Abrufzeit und Abschnittsanker erhalten; Navigation und Werbung von Inhalt unterscheiden, ohne den Snapshot zu verwerfen.
- **DOCX:** Überschriftenhierarchie, Listen, Tabellen, Fußnoten und Links erhalten; Makros niemals ausführen.
- **XLSX:** Blattname und Zellbereich für jede Tabelle erhalten; Formeln und angezeigte Werte unterscheidbar machen; Makros und externe Datenverbindungen niemals ausführen.
- **XML:** Struktur und XPath-artige Locators erhalten; externe Entitäten und DTD-Verarbeitung deaktivieren.
- **JSON:** stabile Überschriften beziehungsweise Codeblöcke und JSON-Pointer-Locators erzeugen.
- **YAML:** Dokumentgrenzen und Schlüsselpfade erhalten; keine Tags oder Konstruktoren ausführen.

Konverterausgabe ist weiterhin untrusted data. Sie MUSS vor Speicherung normalisiert, gegen Größenlimits geprüft, auf gefährliches HTML bereinigt und gegen das erwartete Schema validiert werden. Konvertierungsfehler dürfen nicht durch erfundene Inhalte „repariert“ werden. Das Original bleibt erhalten, der Job erhält `failed` oder `needs_review`, und der Admin sieht die konkrete Warnung.

## 8. Normatives Wiki-Seitenschema

Jede Wiki-Seite MUSS YAML-Frontmatter besitzen. Mindestbeispiel:

```yaml
---
id: concept:retrieval-augmented-generation
title: Retrieval-Augmented Generation
type: concept
status: approved
aliases: [RAG]
tags: [retrieval, llm]
created_at: 2026-08-02T10:00:00Z
updated_at: 2026-08-02T10:30:00Z
source_versions:
  - src_01abc@sha256:0123...
depends_on:
  - source:src_01abc@sha256:0123...
  - concept:language-model
supersedes: []
reviewed_by: admin-id
reviewed_at: 2026-08-02T10:35:00Z
---
```

Zulässige `type`-Werte MÜSSEN zentral in `spec.md` festgelegt werden und mindestens `entity`, `concept`, `source-summary`, `synthesis` und `question` abdecken. `status: approved` darf nur auf dem freigegebenen Branch vorkommen.

Der Body SOLL in dieser Reihenfolge aufgebaut sein:

```markdown
# Titel

## Kurzfassung
## Belegte Aussagen
## Beziehungen
## Widersprüche und Unsicherheiten
## Offene Fragen
## Quellen
```

Regeln für Seiteninhalte:

1. Jede überprüfbare Tatsachenbehauptung MUSS mindestens eine Claim-nahe Quellenreferenz tragen.
2. Eine Synthese MUSS alle Quellen nennen, aus denen die Schlussfolgerung abgeleitet wurde, und als Synthese erkennbar sein.
3. Ein Widerspruch MUSS beide Positionen, deren Quellen und den Status `unresolved`, `resolved` oder `superseded` enthalten.
4. Quelle, Interpretation und Unsicherheit dürfen nicht sprachlich vermischt werden.
5. Direkte Zitate MÜSSEN kurz, exakt, als Zitat markiert und mit Locator versehen sein; Lizenz- und Urheberrechtsregeln bleiben einzuhalten.
6. Wikilinks verweisen über stabile IDs oder eindeutig auflösbare Slugs. Tote Links sind Lint-Fehler.
7. Nahezu gleiche Seiten dürfen nicht angelegt werden. Vor `create` MUSS ein Alias-/Titel-/ID- und Retrieval-Abgleich erfolgen.
8. Eine Seite wird neu angelegt, wenn ein eigenständig verlinkbares Konzept oder eine Entität entsteht; neue Attribute oder Evidenz zu einem bestehenden Gegenstand aktualisieren dessen bestehende Seite.

## 9. Provenienz- und Zitationsmodell

Die vollständige Nachweiskette lautet:

```text
Answer-Satz / Wiki-Claim
  -> claim_id
  -> source_id + source_version
  -> Locator im normalisierten Markdown
  -> Locator im Original/Snapshot
  -> content_sha256 + captured_at
```

Ein Locator MUSS formatspezifisch präzise sein, zum Beispiel:

- PDF: Seite und Absatz/Tabelle;
- DOCX/HTML/Markdown: Überschriftspfad und Absatzanker;
- XLSX: Blatt und Zellbereich;
- XML: XPath;
- JSON: JSON Pointer;
- YAML: Dokumentnummer und Schlüsselpfad;
- Webseite: Snapshot-Version, Abschnitt und finale URL.

Der Query-Service MUSS die zulässige Citation-Map aus den tatsächlich abgerufenen Evidenzstellen erzeugen. Das LLM darf nur Kennungen aus dieser Map verwenden. Nach der Generierung MUSS jede Zitation programmgesteuert auf Existenz, Quellversion und Locator geprüft werden. Nicht auflösbare Zitate machen die Antwort ungültig und erzwingen eine begrenzte Reparatur oder Abstention.

Ein Quellenlink in der UI SOLL, sofern Zugriff und Lizenz es erlauben, die relevante Stelle im gespeicherten Snapshot oder in einer sicheren Vorschau öffnen. Private Quellen dürfen niemals durch öffentliche URLs, Snippets oder Fehlermeldungen offengelegt werden.

## 10. Operation `Ingest`

`Ingest` übernimmt neue Beweise in Raw und schlägt daraus Wiki-Änderungen vor. Die Operation MUSS folgende Zustandsfolge einhalten:

1. **Annehmen:** Nur ein autorisierter Admin kann Datei oder URL einreichen.
2. **Validieren:** Dateisignatur, Medientyp, Größe, URL-Sicherheit, Lizenzmetadaten und Kontingent prüfen.
3. **Versionieren:** `source_id`, `source_version`, Hash und `operation_id` vergeben; Duplikate idempotent erkennen.
4. **Raw speichern:** Original/Snapshot unveränderlich ablegen, bevor LLM-Verarbeitung beginnt.
5. **Konvertieren:** externen Konverter über den Adapter aufrufen und Staging-Markdown plus Locators speichern.
6. **Vorprüfen:** Ausgabe validieren, gefährliche Inhalte neutralisieren, Warnungen bewerten und Manifest ergänzen.
7. **Analysieren:** DSPy extrahiert Claims, Entitäten, Themen, Zeitbezug, Widerspruchskandidaten und relevante bestehende Wiki-Seiten in strukturierter Form.
8. **Planen:** Vorhandene Seiten und Aliasse abrufen; `create`, `update`, `supersede` und `no-op` begründen.
9. **Patch erzeugen:** Änderungen in einem isolierten Arbeitsbranch erstellen; `index.md` und `log.md` mitführen.
10. **Prüfen:** deterministischen Lint, Provenienzprüfung, Linkprüfung und semantischen Support-/Widerspruchscheck ausführen.
11. **Review:** Diff, Quellenstellen und Warnungen im Admin-Bereich anzeigen.
12. **Veröffentlichen:** Nach Freigabe konfliktfrei mergen, anschließend Suchindex und Caches aus dem neuen Commit neu aufbauen.

Eine große Erstinitialisierung SOLL in kleinen, nachvollziehbaren Batches erfolgen. Eine einzelne problematische Quelle darf nicht den gesamten Import blockieren. Jede Quellversion bleibt separat auditierbar. Parallel laufende Jobs dürfen dieselbe Wiki-Seite nicht unbemerkt überschreiben; bei abweichendem Basis-Commit ist Rebase, Neuplanung oder manueller Konfliktentscheid erforderlich.

Der Standardmodus verlangt menschliche Freigabe jeder inhaltlichen Änderung. Eine spätere Auto-Merge-Policy KANN ausschließlich für explizit freigegebene, risikoarme Quellenklassen eingerichtet werden, wenn alle deterministischen und semantischen Prüfungen bestanden sind und kein Widerspruch, keine Löschung und keine Schemaänderung enthalten ist. Chat-abgeleitete Lernvorschläge dürfen nie automatisch gemergt werden.

## 11. Operation `Query`

`Query` beantwortet Fragen aus dem freigegebenen Wissensstand. Ablauf:

1. Eingabe normalisieren, Missbrauch begrenzen und Prompt-Injection als Nutzerdaten behandeln.
2. Sprache, Absicht, Entitäten, Zeitbezug und benötigte Evidenz über ein DSPy-Modul bestimmen.
3. `wiki/index.md`, Metadatenindex und lexikalische Suche abfragen.
4. Kandidatenseiten und explizite Abhängigkeiten/Querverweise laden.
5. Evidenzpassagen reranken und ein begrenztes, zitierbares Kontextpaket erstellen.
6. Antwort über DSPy und Groq erzeugen; nur die übergebene Evidence-Map ist als Faktenbasis zulässig.
7. Zitate, Claim-Support, Widersprüche und Abdeckung verifizieren.
8. Antwortstatus, Quellen, Wissensstand/Commit und Unsicherheit an die UI liefern.
9. Asynchron prüfen, ob die belegte Synthese als `Learn`-Vorschlag wertvoll ist.

Der Chatverlauf darf zur Auflösung von Pronomen und Nutzerabsicht verwendet werden, nicht als Evidenz. Eine frühere Modellantwort darf nie als Quelle in den Kontext zurückkehren, außer als ausdrücklich untrusted Gesprächshistorie.

Jede Antwort MUSS einen der fachlichen Zustände tragen:

- `supported`: alle wesentlichen Aussagen sind belegt;
- `partial`: nur ein klar markierter Teil ist belegt;
- `conflicted`: freigegebene Quellen widersprechen sich und beide Sichtweisen werden gezeigt;
- `insufficient`: es gibt keine ausreichende Evidenz;
- `unavailable`: technische Abhängigkeit ist nicht verfügbar.

Bei `partial`, `conflicted` oder `insufficient` MUSS die UI den Status deutlich und nicht nur in Metadaten zeigen.

## 12. Operation `Learn`

`Learn` bedeutet, dass eine wertvolle, bereits belegte Synthese aus einer Query als dauerhafter Wiki-Vorschlag erhalten bleibt. Dies realisiert Karpathys Idee, dass auch gute Fragen und Analysen die Wissensbasis verdichten.

Ein Lernvorschlag DARF nur entstehen, wenn:

- die Antwort mindestens den Status `supported` oder einen eindeutig abgrenzbaren belegten Teil besitzt;
- alle vorgeschlagenen Claims auf bereits freigegebene Quellversionen zeigen;
- gegenüber bestehenden Seiten ein tatsächlicher Mehrwert besteht, etwa neue Synthese, Vergleich, Verbindung oder besserer Überblick;
- der Vorschlag keine Nutzerpräferenz oder unbestätigte Behauptung als Fakt übernimmt;
- Query-, Retrieval-, Modell-, DSPy-Programm- und Quellenversionen protokolliert werden.

Ein Lernvorschlag MUSS als isolierter Git-Diff beziehungsweise Reviewobjekt erstellt werden. Er darf niemals direkt aus dem Requestpfad der öffentlichen Antwort in `main` schreiben. Wiederholte Fragen oder positives Feedback können die Reviewpriorität erhöhen, aber nicht die Wahrheit oder Freigabe bestimmen.

Das System DARF NICHT lernen aus:

- dem Wortlaut seiner eigenen Antwort als Beleg;
- anonym eingegebenen Tatsachenbehauptungen;
- Modellvermutungen, nicht abgerufenen Trainingsdaten oder erfundenen Quellen;
- geheimen, personenbezogenen oder credential-artigen Inhalten, die nicht ausdrücklich als zugelassene private Quelle aufgenommen wurden;
- einer abgelehnten oder noch offenen Quellversion.

Wenn eine Frage eine echte Wissenslücke offenlegt, SOLL `Learn` stattdessen eine offene Frage oder Quellenanforderung vorschlagen. Erst ein anschließender Admin-Ingest kann daraus belegtes Wissen machen.

## 13. Operation `Lint`

`Lint` hält die Wiki konsistent. Es MUSS auf jedem inhaltlichen Pull Request und regelmäßig auf dem freigegebenen Stand laufen.

Deterministische Prüfungen umfassen mindestens:

- gültiges Frontmatter und erlaubte Seitentypen;
- eindeutige IDs, Slugs und Aliasse;
- auflösbare Wikilinks und Citation-IDs;
- vorhandene Quellversionen und passende Hashes;
- Claim-nahe Zitationen;
- konsistentes `index.md` und parsebares append-only `log.md`;
- keine direkte Änderung an Raw-Versionen;
- keine unzulässigen HTML-/Script-Inhalte;
- keine versehentlich eingecheckten Geheimnisse;
- keine Überschreitung definierter Größen- und Kontextgrenzen.

Semantische Prüfungen umfassen mindestens:

- widersprüchliche Claims zwischen Seiten oder Quellen;
- möglicherweise überholte Aussagen nach neuer Quellversion;
- Dubletten und Alias-Kollisionen;
- verwaiste Seiten und fehlende Querverweise;
- wichtige erwähnte Konzepte ohne eigene Seite;
- Synthesen, die stärker formuliert sind als ihre Evidenz;
- Prompt-Injection-Fragmente oder Anweisungen, die irrtümlich als Wissen übernommen wurden;
- offene Datenlücken und sinnvolle neue Quellenfragen.

Mechanische Korrekturen wie Formatierung oder eindeutig reparierbare interne Links KÖNNEN nach Policy automatisch gepatcht werden. Inhaltliche Korrekturen, Konfliktauflösungen, Claim-Löschungen und neue Aussagen MÜSSEN als Reviewvorschlag erscheinen.

## 14. Retrievalstrategie und Fallbacks

### 14.1 Standardretrieval

Für kleine und mittlere Wikis gilt „Markdown zuerst“:

1. `index.md` und strukturierte Metadaten;
2. lexikalische Volltextsuche/BM25 über freigegebene Seiten;
3. Alias-, Entitäts- und Tagabgleich;
4. Traversierung expliziter `depends_on`- und Wikilinks um höchstens eine kontrollierte Zahl von Hops;
5. DSPy-Reranking gegen die konkrete Frage.

Ein Embedding- oder Hybridindex KANN ergänzt werden, sobald gemessene Recall-Probleme dies rechtfertigen. Er bleibt ein regenerierbarer Cache. Ein semantischer Score ist niemals Provenienz. Die Einführung richtet sich nach Evaluation und Latenz, nicht allein nach einer willkürlichen Seitenzahl.

### 14.2 Evidenzreihenfolge

Die Query verwendet in dieser Reihenfolge:

1. freigegebene Wiki-Seiten;
2. deren explizit referenzierte, freigegebene Staging-Passagen;
3. eine gezielte Suche in allen freigegebenen normalisierten Quellen, wenn die Wiki nicht genügt;
4. Abstention beziehungsweise Admin-Vorschlag für eine neue Quelle.

Eine offene Websuche ist standardmäßig deaktiviert. Wenn sie später explizit aktiviert wird, gelten Treffer zunächst als neue, ungeprüfte Raw-Kandidaten. Sie dürfen erst nach Snapshot, Manifest, Ingest und Freigabe in eine öffentliche Faktenantwort einfließen.

### 14.3 Technische Fallbacks

- Ist Groq nicht verfügbar oder das freie Kontingent erschöpft, darf die Anwendung keine scheinbare LLM-Antwort vortäuschen. Sie SOLL relevante freigegebene Seiten/Passagen als Suchergebnis anzeigen und `unavailable` melden.
- Ist DSPy vorübergehend nicht verfügbar, SOLL derselbe lesende Suchfallback greifen.
- Schlägt der Konverter fehl, bleibt das Original erhalten und der Admin erhält eine wiederholbare Fehlermeldung; die Quelle bleibt für Query gesperrt.
- Schlägt Git/Review fehl, bleibt der Vorschlag in der Queue; der freigegebene Wissensstand ändert sich nicht.
- Liefert Retrieval widersprüchliche Evidenz, zeigt die Antwort beide Positionen mit Status `conflicted`; sie entscheidet nicht ohne Quelle.

## 15. DSPy- und Groq-Verantwortung

DSPy ist die programmierbare Orchestrierungs- und Optimierungsschicht, Groq der austauschbare Remote-Inference-Provider. Der Groq-Zugang erfolgt ausschließlich serverseitig; kein Browser erhält den API-Schlüssel. Die öffentliche Laufzeit besitzt keine ChatGPT-/SIWC-Abhängigkeit. Das aktuelle Betriebsprofil pinnt `openai/gpt-oss-20b`, während der Provideradapter Modellkennung und Fähigkeiten von der Wissenslogik getrennt hält, damit ein späterer, ausdrücklich freigegebener Modellwechsel möglich bleibt.

Die DSPy-Anwendung SOLL mindestens folgende getrennte Module besitzen:

- `RouteQuestion`: Absicht, Sprache, Entitäten und Evidenzbedarf;
- `PlanRetrieval`: Suchbegriffe, Seiten- und Quellkandidaten;
- `RerankEvidence`: Relevanz und Diversität der Belege;
- `AnswerWithCitations`: Antwort nur aus einer unveränderlichen Evidence-Map;
- `AssessSupport`: Satz-/Claim-Support, Vollständigkeit und Abstention;
- `AnalyzeSource`: Claims, Entitäten, Zeitbezug und Widerspruchskandidaten;
- `PlanWikiPatch`: bestehende Seiten versus neue Seite, Abhängigkeiten und Patchplan;
- `VerifyWikiPatch`: Evidenzdeckung, Duplikate und Regelkonformität;
- `ProposeLearning`: dauerhaften Mehrwert einer Query-Synthese bewerten;
- `LintWiki`: semantische Konsistenzprobleme vorschlagen.

LLM-Ausgaben MÜSSEN typisiert beziehungsweise gegen ein Anwendungsschema validiert werden. Strukturierte Provider-Ausgabe darf genutzt werden, ersetzt jedoch nicht die anwendungsseitige Prüfung. Fehlerhafte Ausgabe führt zu höchstens einer eng begrenzten Reparaturstrategie und danach zu sicherem Abbruch; keine unendlichen Agentenschleifen.

DSPy-Optimierung MUSS offline beziehungsweise in einem kontrollierten Admin-Workflow auf versionierten Beispielen erfolgen. Geeignete Metriken sind:

- Retrieval Recall auf bekannten Belegen;
- Citation Precision und Citation Coverage;
- Anteil vollständig gestützter Claims;
- korrekte Abstention bei fehlender Evidenz;
- Widerspruchserkennung;
- Patchpräzision und unnötige Seitenänderungen;
- Latenz, Tokenverbrauch und Zahl der Modellaufrufe.

Ein optimiertes DSPy-Programm MUSS versioniert, evaluiert und freigegeben werden. Live-Chats dürfen weder Prompts noch Optimizerzustand automatisch verändern. Für jeden LLM-Aufruf SOLLEN `operation_id`, Modell-ID, DSPy-Programmversion, relevante Eingabe-Hashes, Token-/Latenzmetrik und Ergebnisstatus protokolliert werden, ohne unnötig personenbezogene Inhalte zu speichern.

Quellen: [DSPy-Dokumentation](https://dspy.ai/), [Groq OpenAI-Kompatibilität](https://console.groq.com/docs/openai), [Groq Structured Outputs](https://console.groq.com/docs/structured-outputs).

## 16. Git-, Review- und Veröffentlichungsmodell

Der freigegebene Branch `main` repräsentiert ausschließlich veröffentlichtes Wissen. Direkte Pushes durch Webanwendung, LLM oder anonyme Nutzer sind verboten.

Vorschläge SOLLEN nach Operation getrennte Branches verwenden:

```text
ingest/{operation_id}
learn/{operation_id}
lint/{operation_id}
schema/{operation_id}
```

Jeder inhaltliche Commit MUSS mindestens Operationstyp, `operation_id`, betroffene Quellversionen und erzeugende Programmversion referenzieren. Der Review zeigt:

- semantische Zusammenfassung;
- exakten Markdown-Diff;
- hinzugefügte/entfernte Claims;
- Quellstellen neben jeder Änderung;
- erkannte Konflikte, Warnungen und Lintstatus;
- erwartete Auswirkungen auf Index und abhängige Seiten.

Beim Merge MUSS geprüft werden, ob sich die Basis oder eine betroffene Seite seit der Planung geändert hat. Optimistic Concurrency Control ist Pflicht: kein stilles Last-Write-Wins. Nach Merge werden Git-Commit, Reviewer und Zeit im Audit verknüpft. Rollback erfolgt als neuer Revert-Commit; Raw und Audit werden nicht gelöscht.

Schemaänderungen erfordern einen benannten Owner. Löschungen, Konfliktauflösungen und Änderungen an Sicherheits-/Lernregeln SOLLEN eine strengere Reviewstufe als additive, gut belegte Änderungen erhalten.

## 17. Betriebsdaten und Source of Truth

Die Autoritäten sind klar getrennt:

- **Objektspeicher:** Originale und Web-Snapshots;
- **Git `main`:** freigegebene Manifeste, Staging-Markdown, Wiki und Schema;
- **Betriebsdatenbank:** Jobs, Nutzerrollen, Reviewstatus, Quoten und Auditverknüpfungen;
- **Suchindex/Embeddings/Graph/Cache:** vollständig abgeleitete, regenerierbare Daten.

Ein Datenbankstatus darf Git nicht als Wahrheit überschreiben. Ein erfolgreich markierter Job ohne passenden Commit ist inkonsistent und MUSS durch Reconciliation erkannt werden. Jede asynchrone Operation MUSS eine idempotente `operation_id` besitzen. Retries dürfen weder Quellen duplizieren noch Patches mehrfach veröffentlichen.

## 18. Sicherheitsregeln

### 18.1 Prompt-Injection und Toolgrenzen

- Quellen- und Nutzertext MUSS deutlich als Daten abgegrenzt werden.
- Darin enthaltene Anweisungen werden nie ausgeführt und nie in System-/Developer-Instruktionen umgewandelt.
- Das LLM erhält keine direkten Datei-, Git-, Datenbank-, Netzwerk- oder Secret-Tools.
- Toolaufrufe werden durch feste Anwendungspfade erzeugt, allowlist-validiert und mit Minimalrechten ausgeführt.
- Modelltext darf keine URL eigenmächtig abrufen; URL-Ingest ist eine separate Adminoperation.

### 18.2 Upload- und URL-Sicherheit

- Medientyp MUSS anhand Inhaltssignatur geprüft werden; Dateiendung allein genügt nicht.
- Größen-, Seiten-, Entpack-, Zeit- und Konvertierungslimits sind verpflichtend.
- Aktive Inhalte, Office-Makros, externe Formelbezüge, XML-Entitäten und YAML-Konstruktoren dürfen nicht ausgeführt werden.
- URL-Abrufe erlauben nur definierte Schemes und Ports, prüfen jede DNS-Auflösung und jeden Redirect und blockieren Loopback-, Link-local-, private und Cloud-Metadaten-Netze (SSRF-Schutz).
- Ausgehende Requests erhalten einen identifizierbaren User-Agent, Timeout, Redirectlimit und Antwortgrößenlimit.
- HTML/Markdown wird vor Anzeige gegen Stored XSS bereinigt; Links erhalten sichere Attribute.

### 18.3 Secrets, Datenschutz und Zugriff

- API-Schlüssel, Git-Credentials und Speicher-Tokens liegen nur in serverseitigen Secrets und werden niemals geloggt oder an den Konverter weitergegeben, außer als kurzlebige, objektgebundene Berechtigung.
- Adminrollen werden serverseitig geprüft und nach Least Privilege vergeben.
- Private Quellen sind in Retrieval, Cache, Logs, Fehlermeldungen und Citation-Links strikt von öffentlichen Quellen getrennt.
- Chatprotokolle SOLLEN standardmäßig minimiert und mit definierter Aufbewahrung versehen werden.
- Credential-artige Inhalte dürfen nicht in Wiki, Lernvorschläge oder LLM-Kontext gelangen; Funde werden blockiert und dem Admin gemeldet.
- Löschanforderungen werden als kontrollierter Prozess behandelt: Git-Historie, Backups und externe Provider müssen in der Datenschutzpolicy ausdrücklich berücksichtigt werden.

### 18.4 Missbrauch und Kostenkontrolle

- Öffentliche Query-Endpunkte benötigen IP-/Sitzungs-Ratelimits, maximale Eingabe- und Ausgabelänge sowie begrenzte Parallelität.
- Retrieval und Caching erfolgen vor dem LLM-Aufruf; identische sichere Queries KÖNNEN wiederverwendet werden.
- Ingest-, Learn- und Lint-Jobs besitzen harte Budgets für Modellaufrufe, Tokens, Laufzeit und Retries.
- Ein erschöpftes Freikontingent führt zu einem transparenten Fallback, niemals zur Offenlegung eines Adminschlüssels oder zur Ausführung eines Modells im Browser.

## 19. Qualitäts- und Freigaberegeln

Vor einem produktiven Merge MUSS eine Änderung folgende Gates bestehen:

1. Frontmatter-, Link- und Verzeichnis-Schema gültig;
2. jede neue/geänderte Tatsachenbehauptung von einer vorhandenen Quellversion gestützt;
3. jede Zitation bis zum Original-Locator auflösbar;
4. keine Modellaussage als Quelle;
5. keine ungeklärte Duplikatseite;
6. Widersprüche sichtbar statt still überschrieben;
7. `index.md`, Abhängigkeiten und `log.md` konsistent;
8. keine Raw-Mutation, Schema-Nebenänderung oder Secret-Leakage;
9. deterministische Tests und relevante DSPy-Evaluation bestanden;
10. erforderlicher Review abgeschlossen.

Für Query-Releases MUSS ein versioniertes Evaluationsset mindestens abdecken:

- direkte Ein-Quellen-Fragen;
- Multi-Source- und Multi-Hop-Fragen;
- Fragen ohne Antwort in den Quellen;
- widersprüchliche und veraltete Quellen;
- Alias-/Mehrdeutigkeitsfälle;
- Prompt-Injection in Frage und Quelle;
- private versus öffentliche Quellen;
- ungültige oder erfundene Citation-IDs;
- Provider-/Kontingentausfall.

## 20. Skalierung ohne Architekturbruch

Das System startet bewusst ohne zwingende Vektordatenbank. `index.md`, Frontmatter, Volltextsuche und explizite Links sind transparent, günstig und gut zu prüfen. Mit zunehmender Größe kann die Implementierung stufenweise erweitern:

1. regenerierbarer Volltextindex;
2. Entity-/Aliasindex und Abhängigkeitsgraph;
3. hybride Suche aus BM25 und Embeddings mit Reranking;
4. inkrementelle Neuindizierung betroffener Seiten;
5. getrennte Archive für selten genutzte Quellen.

Keine Stufe ändert die Wissensautorität: Markdown, Manifeste, Raw-Hashes und Git-Review bleiben maßgeblich. Ein neuer Retriever MUSS gegen das bestehende Evaluationsset nachweisbar bessere Evidenzabdeckung liefern, bevor er den Standard ersetzt.

## 21. Architekturentscheidungen in Kurzform

- Die Wiki ist ein **persistentes, kumulatives Artefakt**, nicht lediglich RAG über Rohdateien.
- RAG bleibt als **Retrievalmechanismus über die bereits synthetisierte Wiki** und als Raw-Fallback erhalten.
- Raw ist **append-only und content-adressiert**; Konvertierung erzeugt eine nachvollziehbare Markdown-Stagingversion.
- Die öffentliche Chatseite ist **read-only**; die Adminseite steuert Quellen, Jobs und Reviews.
- Antworten können **Lernvorschläge**, niemals direkte Wissensänderungen erzeugen.
- DSPy strukturiert und optimiert die Programme; Groq liefert Inference; beide erhalten **keine direkte Schreibmacht**.
- Jede Behauptung benötigt eine **maschinenprüfbare Provenienzkette**.
- Git-Branches, Prüfungen und menschliche Freigabe schützen die veröffentlichte Wiki vor kumulativen Modellfehlern.
- Bei Unsicherheit, Konflikt oder Ausfall gilt **sichtbarer Fallback statt Halluzination**.

## 22. Referenzen

- Andrej Karpathy: [LLM Wiki – A pattern for building personal knowledge bases using LLMs](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)
- [DSPy-Dokumentation](https://dspy.ai/)
- [Groq: OpenAI Compatibility](https://console.groq.com/docs/openai)
- [Groq: Structured Outputs](https://console.groq.com/docs/structured-outputs)
