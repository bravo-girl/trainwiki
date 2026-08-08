# TrainWiki Markdown Profile 1.0

## 1. Status, Zweck und Einordnung

Dieses Dokument ist der normative Dateivertrag für die Raw- und Wiki-Schicht
des TrainWiki. Es legt Pfade, Kennungen, Frontmatter, Body-Struktur, Links,
Zitationen, `index.md`, `log.md` und deterministische Validierung fest.

Das Profil übernimmt nützliche Konventionen aus dem Open Knowledge Format
(OKF) 0.2: UTF-8-Markdown mit YAML-Frontmatter, strukturierte Provenienz,
getrennte Erzeugungs- und Prüfsignale, stabile Claim-nahe Quellenkennungen und
menschenlesbare Dateien. Es ist jedoch bewusst ein **OKF-inspiriertes
TrainWiki-Profil und keine Behauptung vollständiger OKF-0.2-Konformität**.

Die Abweichungen sind beabsichtigt:

- TrainWiki verwendet `status` als Publikationszustand einschließlich
  `approved`; OKF 0.2 verwendet das Feld als Lifecycle mit anderen Werten.
- TrainWiki stellt strengere Pflichtfelder, Pfadregeln, Zitations- und
  Linkprüfungen auf als ein allgemeiner OKF-Consumer.
- `wiki/index.md` besitzt TrainWiki-Metadaten; OKF erlaubt dort nur eine engere
  Versionsdeklaration.
- `wiki/log.md` ist chronologisch append-only und verwendet vollständige
  RFC-3339-Zeitstempel; OKF beschreibt datumsgruppierte Einträge in umgekehrter
  Reihenfolge.

Die fachlichen, sicherheitsrelevanten und Review-Invarianten bleiben in
[`llm-wiki.md`](./llm-wiki.md) maßgeblich. Technische Speicher-, API- und
Jobverträge stehen in [`spec.md`](./spec.md). Das Arbeitsverfahren für Agenten
steht in [`AGENTS.md`](./AGENTS.md).

## 2. Normative Sprache und Versionierung

Die Schlüsselwörter **MUSS**, **DARF NICHT**, **SOLL**, **SOLL NICHT** und
**KANN** haben die Bedeutung aus `llm-wiki.md`.

Dieses Dokument definiert:

- `trainwiki/wiki-page@1` für kuratierte Wiki-Seiten;
- `trainwiki/normalized-source@1` für normalisiertes Staging-Markdown;
- `trainwiki/source-manifest@1` für Quellmanifeste;
- `trainwiki/index@1` und `trainwiki/log@1` für die reservierten Wiki-Dateien.

Eine inkompatible Änderung benötigt eine neue Major-Version, eine Migration,
Fixtures und ein eigenes Schema-Review. Unbekannte zusätzliche
Frontmatter-Felder sind nur zulässig, wenn sie dokumentiert, namespaced und vom
Parser verlustfrei erhalten werden. Neue Dateien MÜSSEN die aktuelle Version
verwenden. Vor Version 1 erzeugte Bootstrap-Artefakte gelten als Legacy und
dürfen nicht als Vorlage für neue Seiten dienen.

## 3. Kanonische Verzeichnisstruktur

```text
sources/
  manifests/                       # Manifest je unveränderlicher Quellversion
  normalized/                      # verlustarmes Staging je Normalisierung
  assets/                          # kleine, gehashte und referenzierte Assets
  quarantine/                      # keine öffentliche Retrievalquelle

wiki/
  index.md                         # Katalog des freigegebenen Wikis
  log.md                           # append-only fachliche Timeline
  entities/                        # type: entity
  concepts/                        # type: concept
  sources/                         # type: source-summary
  syntheses/                       # type: synthesis
  questions/                       # type: question

proposals/                         # unfreigegebene Änderungen, nie Retrievalquelle
```

Originale und Web-Snapshots liegen entsprechend `llm-wiki.md` außerhalb der
normalen Git-Historie in einem zugriffsgeschützten, content-adressierten
Speicher. `sources/normalized/` ist Teil der Raw-Schicht. Eine Datei unter
`wiki/sources/` ist dagegen eine abgeleitete, kuratierte Quellzusammenfassung
und DARF NICHT lediglich eine zweite Kopie des normalisierten Rohtexts sein.

## 4. Kennungen, Dateinamen und Versionen

### 4.1 Stabile Kennungen

- `source_id` identifiziert eine logische Quelle und bleibt bei Rename,
  Verschiebung und neuer Erfassung erhalten.
- `source_version_id` identifiziert den unveränderlichen Inhalt eines Originals
  oder Snapshots. Es ist an `source_id` und dessen vollständigen SHA-256-Hash
  gebunden.
- `normalization_id` identifiziert die Ausgabe aus Quellversion, Konvertername,
  Konverterversion, Profil und Schema-Version.
- `id` identifiziert eine Wiki-Seite unabhängig von ihrem Pfad. Ein Rename oder
  Move ändert diese ID nicht.
- `operation_id` identifiziert genau eine fachliche Ingest-, Learn-, Lint- oder
  Schemaoperation und bleibt über Retries stabil.

Kennungen MÜSSEN innerhalb ihres Geltungsbereichs eindeutig sein. Eine kurze
Hashdarstellung darf nur Anzeigezwecken dienen; die vollständigen Hashes bleiben
im Manifest erhalten.

### 4.2 Pfade und Slugs

- Wiki-Dateien verwenden lowercase `kebab-case.md`.
- Ein Slug ist Anzeige und Pfadbestandteil, keine Identität.
- Pfade dürfen keine absoluten Dateisystempfade, `..`, Backslashes,
  Steuerzeichen oder percent-kodierte Traversalbestandteile enthalten.
- Kollisionen werden über die stabile ID und eine deterministische,
  dokumentierte Slugregel gelöst, nicht über die zufällige Importreihenfolge.
- `index.md` und `log.md` sind reserviert und keine normalen Wiki-Seiten.

## 5. Normalisierte Quellversion

Normalisiertes Staging ist möglichst verlustarm. Es verbessert Struktur und
Lesbarkeit, synthetisiert aber keine Aussagen über mehrere Quellen und ergänzt
keine Fakten. Sein Frontmatter folgt logisch diesem Vertrag:

```yaml
---
schema_version: "trainwiki/normalized-source@1"
source_id: "src_01..."
source_version_id: "sv_01..."
normalization_id: "norm_01..."
source_sha256: "<64 hex>"
normalized_sha256: "<64 hex>"
original_filename: "beispiel.pdf"
origin_type: "upload"
origin: "beispiel.pdf"
media_type: "application/pdf"
language: "de"
captured_at: "2026-08-02T10:00:00Z"
converter:
  name: "converter-name"
  version: "1.2.3"
  profile: "default-de-v1"
license: "unknown"
visibility: "public"
warnings: []
---
```

Regeln:

- `origin_type` ist `upload`, `url` oder `initial_markdown`.
- Für URLs enthält das Manifest zusätzlich angeforderte URL, finale URL,
  Abrufzeit, Antwortmetadaten und Snapshotreferenz.
- `captured_at` beschreibt die erste Erfassung dieser Version und bleibt bei
  Retries unverändert. Eine Job-Ausführungszeit gehört nicht in dieses
  content-gehashte Dokument.
- Locator-Marker wie PDF-Seite, Überschriftspfad, Tabellenbereich, XPath,
  JSON Pointer oder YAML-Schlüsselpfad bleiben erhalten.
- Aktives HTML, Skripte, Makros, Formelausführung, externe Entitäten und
  ausführbare eingebettete Inhalte sind verboten.
- Ein vorhandenes Normalisierungsartefakt wird nicht überschrieben. Eine neue
  Konverter-, Profil- oder Schemafassung erhält eine neue `normalization_id`.

Das zugehörige Manifest unter `sources/manifests/` ist die vollständige
maschinenlesbare Provenienz und MUSS mindestens die Felder aus Abschnitt 7.1
von `llm-wiki.md` sowie den Idempotenzschlüssel enthalten. Das Markdown darf
auf das Manifest verweisen, ersetzt es aber nicht.

## 6. Kuratierte Wiki-Seite

Jede nicht reservierte Datei unter `wiki/` MUSS UTF-8-Markdown mit LF und einem
parsebaren YAML-Frontmatterblock sein. Die Reihenfolge der Schlüssel wird
kanonisch gehalten, damit Diffs stabil bleiben.

### 6.1 Pflicht-Frontmatter

```yaml
---
schema_version: "trainwiki/wiki-page@1"
id: "concept:retrieval-augmented-generation"
title: "Retrieval-Augmented Generation"
description: "Kurze, eigenständig verständliche Beschreibung."
type: "concept"
status: "approved"
visibility: "public"
aliases:
  - "RAG"
tags:
  - "llm"
  - "retrieval"
created_at: "2026-08-02T10:00:00Z"
updated_at: "2026-08-02T10:30:00Z"
generated:
  by: "process:trainwiki-dspy/program-version"
  at: "2026-08-02T10:30:00Z"
verified:
  - by: "human:admin-id"
    at: "2026-08-02T10:35:00Z"
sources:
  - id: "rag-source-1"
    resource: "/sources/normalized/example.md"
    source_id: "src_01..."
    source_version_id: "sv_01..."
    content_sha256: "<64 hex>"
    locator:
      kind: "pdf"
      page: 12
depends_on:
  - "concept:language-model"
supersedes: []
reviewed_by: "admin-id"
reviewed_at: "2026-08-02T10:35:00Z"
---
```

Pflichtfelder sind `schema_version`, `id`, `title`, `description`, `type`,
`status`, `visibility`, `aliases`, `tags`, `created_at`, `updated_at`,
`generated`, `sources`, `depends_on` und `supersedes`.

Für `status: approved` sind zusätzlich `reviewed_by`, `reviewed_at` und
mindestens ein `verified`-Ereignis mit `human:`-Akteur Pflicht. Das Review muss
den veröffentlichten Commit betreffen. `verified` allein erteilt weder
Freigabe noch öffentliche Sichtbarkeit.

### 6.2 Zulässige Werte

| Feld | Zulässige Werte |
|---|---|
| `type` | `entity`, `concept`, `source-summary`, `synthesis`, `question` |
| `status` | `draft`, `in-review`, `approved`, `deprecated` |
| `visibility` | `public`, `private`, `restricted` |

Auf dem freigegebenen öffentlichen Stand sind nur `status: approved` und
`visibility: public` öffentlich abrufbar. `draft` und `in-review` gehören auf
Vorschlagszweige beziehungsweise in Reviewartefakte. `deprecated` bleibt für
Historie und Links erhalten, wird aber nicht als aktueller Fakt bevorzugt.

Die Werte von `status` sind eine bewusste TrainWiki-Abweichung vom gleichnamigen
OKF-0.2-Lifecycle-Feld. Ein späterer OKF-Export MUSS sie explizit abbilden und
darf keine direkte Feldgleichheit vortäuschen.

### 6.3 Feldregeln

- `id` beginnt passend zum Typ mit `entity:`, `concept:`, `source:`,
  `synthesis:` oder `question:`.
- `title` ist der sichtbare Titel; die erste H1 im Body muss ihm entsprechen.
- `description` ist ein einzelner, für Index und Retrieval geeigneter Satz.
- `aliases` und `tags` sind deduplizierte, deterministisch sortierte Listen.
- `created_at` bleibt unverändert; `updated_at` und `generated.at` ändern sich
  nur bei einer fachlich bedeutenden Inhaltsänderung, nicht bei einem Retry.
- `generated.by` verwendet `process:<id>` oder `<producer>/<version>`.
- `verified` ist eine Liste von `{by, at}`. Menschliche Prüfung verwendet
  `human:<id>`, automatisierte Prüfung `process:<id>`.
- `sources` ist die kanonische Claim-Provenienz. Jede Eintragung besitzt eine
  innerhalb der Seite stabile `id`, eine auflösbare `resource`, Quell- und
  Versions-ID, vollständigen Inhaltshash und einen präzisen Locator.
- `depends_on` und `supersedes` enthalten stabile Wiki-IDs, keine Dateinamen.
- Ein optionales `stale_after` verwendet das Datum `YYYY-MM-DD`. Stale Inhalte
  werden sichtbar markiert und geprüft, nicht still gelöscht.

Zusätzliche Felder müssen unter `trainwiki:` namespaced werden, sofern sie nicht
durch eine neue Profilversion in dieses Dokument aufgenommen wurden.

## 7. Body-Struktur

Der Body beginnt mit genau einer H1, die `title` entspricht. Danach gilt diese
Reihenfolge, soweit der Abschnitt fachlich anwendbar ist:

```markdown
# Titel

## Kurzfassung

## Belegte Aussagen

## Beziehungen

## Widersprüche und Unsicherheiten

## Offene Fragen

## Quellen
```

Regeln:

1. `Kurzfassung` umfasst normalerweise zwei bis drei eigenständig verständliche
   Sätze und enthält keine unbelegte Tatsachenbehauptung.
2. Jede überprüfbare Tatsachenbehauptung trägt eine Claim-nahe Fußnote.
3. Synthesen nennen alle Quellen, aus denen die Schlussfolgerung abgeleitet
   wurde, und kennzeichnen die Schlussfolgerung als Synthese.
4. Quelle, Interpretation, Unsicherheit und Empfehlung werden sprachlich
   getrennt.
5. Direkte Zitate sind kurz, exakt, markiert und besitzen einen präzisen
   Locator. Lizenz- und Urheberrechtsregeln gelten unabhängig davon.
6. Zeitgebundene Aussagen nennen Gültigkeitszeitraum oder Stichtag.
7. Volltranscripte und Raw-Dumps gehören in die Raw-Schicht, nicht in eine
   kuratierte Topic- oder Konzeptseite.
8. Rohes HTML, Skripte, Iframes, Eventhandler und unsichere eingebettete Inhalte
   sind verboten.

`## Quellen` ist nur eine automatisch ableitbare, menschenlesbare Darstellung.
Die strukturierte `sources`-Liste im Frontmatter ist kanonisch; beide dürfen
nicht unabhängig gepflegt werden.

## 8. Claim-nahe Zitationen

Eine Aussage verwendet eine Markdown-Fußnote, deren Label exakt einer
`sources[].id` derselben Seite entspricht:

```markdown
Die dokumentierte Frist endet am 31. Dezember 2026.[^deadline-decision]

[^deadline-decision]: Delegierter Beschluss, Seite 12.
```

Die Fußnotenbeschreibung ist Anzeige, nicht Identität. Der Resolver liest
`sources`, prüft `source_version_id`, `content_sha256` und `locator` und erzeugt
erst dann einen anklickbaren Quellenverweis.

- Jede verwendete Fußnoten-ID MUSS genau eine `sources`-Eintragung besitzen.
- Jede `sources`-Eintragung SOLL mindestens einen Claim stützen; ungenutzte
  Einträge sind ein Lint-Hinweis.
- Modellgenerierte oder vom Nutzer vorgegebene Quellen-URLs werden verworfen,
  wenn sie nicht zur serverseitigen Evidence-Map gehören.
- Nicht auflösbare, private oder nicht freigegebene Belege machen einen
  öffentlichen Claim ungültig.

## 9. Beziehungen, Links und Widersprüche

### 9.1 Links

Kanonisch sind Standard-Markdown-Links, keine Obsidian-`[[Wikilinks]]`:

```markdown
Siehe [Language Model](../concepts/language-model.md).
```

Der sichtbare Link darf relativ oder Wiki-root-relativ sein. Der Linter löst
ihn gegen `wiki/` auf und prüft zusätzlich die stabile Ziel-ID. Tote, außerhalb
von `wiki/` führende oder mehrdeutige interne Links blockieren die
Veröffentlichung. Externe Links in einer Wiki-Seite sind keine Provenienz,
solange sie nicht zusätzlich als freigegebene Quelle erfasst sind.

### 9.2 Widersprüche

Ein Widerspruch enthält mindestens:

- eine stabile Konfliktkennung;
- Status `unresolved`, `resolved` oder `superseded`;
- beide beziehungsweise alle Positionen mit je eigener Claim-Zitation;
- zeitlichen und begrifflichen Geltungsbereich;
- bei Auflösung Entscheidung, Begründung, Prüfer und Zeitpunkt.

Eine neue Quelle darf einen bestehenden, belegten Claim nicht still
überschreiben. Topic-Seiten zeigen den aktuellen geprüften Stand; abweichende
Evidenz bleibt bis zur Entscheidung sichtbar. Git und `wiki/log.md` bewahren die
Änderungshistorie.

## 10. Reservierte Dateien

### 10.1 `wiki/index.md`

`wiki/index.md` folgt `trainwiki/index@1`. Es enthält TrainWiki-Frontmatter:

```yaml
---
schema_version: "trainwiki/index@1"
id: "system:wiki-index"
title: "TrainWiki-Index"
type: "index"
status: "approved"
updated_at: "2026-08-02T10:30:00Z"
---
```

Der Body listet jede freigegebene Wiki-Seite genau einmal mit Standard-Link,
Typ und `description`. Einträge sind nach Typ und anschließend deterministisch
nach Titel sortiert. Quarantäne- und Vorschlagsartefakte werden höchstens als
Anzahl ohne vertrauliche Titel, Pfade oder Snippets erwähnt. Der Index wird nur
bei einer tatsächlichen Änderung des freigegebenen Korpus aktualisiert.

### 10.2 `wiki/log.md`

`wiki/log.md` folgt `trainwiki/log@1`, besitzt kein Frontmatter und ist
chronologisch append-only. Jede Operation verwendet eine Überschrift:

```markdown
## [2026-08-02T10:30:00Z] ingest | op_01... | src_01...
```

Danach folgen kurze Bullet-Einträge zu Änderung, Review, Warnungen und
Korpus-Hash. Bestehende Einträge werden nicht editiert, umsortiert oder
gelöscht. Ein Retry derselben erfolgreichen `operation_id` erzeugt keinen
zweiten Eintrag. Git ist der exakte technische Änderungsnachweis; das Log ist
die kompakte fachliche Timeline.

## 11. Determinismus und Idempotenz

Der Idempotenzschlüssel einer Normalisierung umfasst mindestens:

```text
source_version_id
+ source_sha256
+ converter_name
+ converter_version
+ conversion_profile
+ schema_version
```

Für Wiki-Patches kommen Basis-Commit, DSPy-Programmversion und fachlicher
Operationstyp hinzu.

Bei identischem Schlüssel gelten folgende Invarianten:

- identischer Output-Hash oder vollständiger No-op;
- keine neue Source-, Versions-, Job-, Event-, Wiki-, Index- oder Logidentität;
- keine Änderung allein durch aktuelle Uhrzeit, zufällige Reihenfolge,
  temporären Pfad oder Slugkollision;
- keine Überschreibung eines früheren Normalisierungsartefakts;
- deterministische UTF-8-/LF-Ausgabe, Schlüsselreihenfolge und Listenordnung.

Ein Import erzeugt alle Artefakte zunächst in einem isolierten Stagingbereich.
Die gemeinsame Tabelle `source_identities` verbindet Bootstrap- und App-Importe.
Kanonische URL und SHA-256 der unveränderten Rohbytes sind global eindeutig;
ein erneuter Import derselben Quelle ist damit ein idempotenter No-op. Der Hash
des normalisierten Inhalts dient zusätzlich zur Erkennung, bleibt aber wegen
legitimer, getrennt zu belegender Provenienzen mehrdeutig zulässig. Ein
schreibender App-Import darf Client-Hashes nur zur Vorprüfung verwenden: Er muss
die empfangenen Bytes serverseitig hashen und die Identität zusammen mit der
Quellversion atomar in D1 anlegen.
Erst wenn Hash-, Schema-, Sicherheits- und Provenienzprüfungen vollständig
bestanden sind, werden die zusammengehörigen Änderungen atomar veröffentlicht.

## 12. Quarantäne, Sichtbarkeit und Entzug

- Klassifizierung, Lizenz-, Secret- und Datenschutzprüfung erfolgen vor jedem
  öffentlichen Raw-, Wiki- oder Index-Write.
- `sources/quarantine/` ist weder öffentliche Quelle noch Retrievalkorpus.
- Unbekannte Sichtbarkeit und unbekannte Lizenz werden fail-closed behandelt.
- Eine später als privat, rechtswidrig oder sensibel erkannte Quelle wird über
  einen eigenen auditierten Entzugsprozess gesperrt. Abhängige Claims werden
  als zu prüfen markiert und aus öffentlichem Retrieval entfernt.
- Ein normaler Bootstrap-Retry darf keine veröffentlichte Raw-Version löschen
  oder deren Historie umschreiben.
- Git-Historie, Backups, Suchindizes, Caches und externe Assets müssen in einem
  Entzugsvorgang ausdrücklich berücksichtigt werden.

## 13. Lint und Freigabe

### 13.1 Harte Fehler

Ein Patch darf nicht veröffentlicht werden bei:

- fehlendem oder ungültigem Frontmatter;
- unbekannter Schema-Major-Version;
- fehlendem Pflichtfeld oder unzulässigem Typ, Status oder Pfad;
- doppelter ID, Alias- oder Slugkollision;
- totem oder mehrdeutigem internen Link;
- Claim ohne auflösbare Quellen-ID, Quellversion, Hash oder Locator;
- nicht freigegebener beziehungsweise nicht sichtbarer Quelle für einen
  öffentlichen Claim;
- still überschriebenem Widerspruch;
- Mutation einer vorhandenen Raw-Version;
- unsicherem HTML, Script, Prompt-Injection-Übernahme oder Secretfund;
- inkonsistentem `index.md` oder nicht append-only geändertem `log.md`;
- fehlendem Review des tatsächlich veröffentlichten Commitstands.

### 13.2 Hinweise mit Reviewpflicht

- möglicherweise veralteter Claim oder überschrittenes `stale_after`;
- ungenutzte Quelle oder verwaiste Seite;
- überlange Seite, mögliche Dublette oder fehlende Querverbindung;
- niedrige Extraktionsqualität, OCR oder unpräziser Locator;
- unbekannte Lizenz beziehungsweise ungeklärte Nutzungsrechte;
- zusätzliche namespaced Metadaten, die ein Consumer nicht kennt.

### 13.3 Abnahmetest der Idempotenz

Ein Fixture-Import wird zweimal mit identischen Eingaben und Konfigurationen
ausgeführt. Nach dem zweiten Lauf müssen gelten:

1. kein Git-Diff;
2. identische Artefakt-, Manifest- und Korpus-Hashes;
3. identische Anzahl von Quellen, Versionen, Wiki-Seiten und Indexzeilen;
4. kein neuer Log-, Job-, Event- oder Outboxeintrag;
5. keine Änderung an Erfassungs- oder Reviewzeiten.

Eine geänderte Originaldatei erzeugt eine neue `source_version_id`. Ein reiner
Konverter-, Profil- oder Schemawechsel erzeugt nur eine neue
`normalization_id`. Beide Fälle überschreiben keine ältere Fassung.

## 14. Legacy- und Migrationsregeln

Vor Einführung dieses Profils erzeugte Bootstrap-Seiten können Pflichtfelder
wie `schema_version`, `type`, `description`, `generated`, `verified` und
strukturierte `sources` noch nicht besitzen. Für sie gilt:

- Sie bleiben lesbar, sind aber kein Muster für neue Inhalte.
- Eine Migration erfolgt als eigener, prüfbarer Patch mit unverändertem
  Originalhash und stabilen Source-/Wiki-IDs.
- Raw-Normalisierungen werden nicht in-place umgeschrieben. Eine notwendige
  neue Darstellung erhält eine neue `normalization_id`.
- Eine Datei unter `wiki/sources/`, die nur Raw-Markdown spiegelt, wird durch
  eine echte `source-summary` ersetzt oder aus der kuratierten Wiki-Projektion
  entfernt; die Raw-Fassung bleibt erhalten.
- Bis zur Migration muss der Linter Legacy explizit melden. Er darf fehlende
  Felder nicht still erfinden und keinen Legacy-Claim ohne nachweisbare Quelle
  höher einstufen.
