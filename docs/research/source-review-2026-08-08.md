# Quellenreview für TrainWiki

Stand: 8. August 2026

## Auftrag, Methode und Sicherheitsstatus

Geprüft wurden alle 13 Einträge aus `../quellen.txt`: drei Webseiten, fünf
YouTube-Videos und fünf GitHub-Repositories. Externe Inhalte wurden als nicht
vertrauenswürdige Daten behandelt. Keine Quelle, kein Transkript und keine
Modellanweisung wurde automatisch in `wiki/` veröffentlicht.

Webseiten wurden als Rohantwort plus Manifest unter dem von Git ignorierten
`work/research/web/` erfasst. YouTube wurde ausschließlich über verfügbare
Untertitel erfasst; Video und Audio wurden nicht heruntergeladen. Alle fünf
Untertitelspuren sind automatisch erzeugt und daher vor einer fachlichen oder
rechtlichen Freigabe manuell gegen das Video zu prüfen. GitHub-Repositories
wurden über Metadaten und Dokumentation am angegebenen Commit untersucht, nicht
geklont und nicht als Abhängigkeit installiert.

Git-Uploads und -Downloads verbrauchen keine LLM-Tokens. Sie verbrauchen
Netzwerk, Actions-Zeit und bei einer Agentenanalyse indirekt Kontext. Die
Optimierung trennt deshalb drei Budgets: Groq-Modellkontext, lokale
Werkzeugausgabe und Git-/HTTP-Transfer.

## Ergebnis in Kurzform

Sofort übernommen:

- Markdown und freigegebene Quellen bleiben die Wahrheit; D1-Suche, Indizes und
  spätere Graphen sind vollständig rekonstruierbare Ableitungen.
- Retrieval bleibt deterministisch und günstig. Die sechs besten Belege bleiben
  für Recall@6 erhalten, aber ihr gemeinsames Modellpaket ist hart begrenzt.
- Das Modell erhält nur die neuesten vollständigen Gesprächsnachrichten; eine
  alte Modellantwort wird nie Evidenz.
- URLs bleiben in der serverseitig validierten Quellenliste und werden nicht
  wiederholt in den Groq-Kontext kopiert.
- Konflikte, fehlende Belege, verwaiste Seiten, Stalenz und Provenienz bleiben
  explizite Lint-/Review-Fälle.
- Forschungsdownloads sind hash-geprüft und standardmäßig offline aus dem
  lokalen Cache wiederverwendbar.
- ESLint prüft nur echten Quellcode und verwendet lokal einen Inhalts-Cache.
- GitHub CI arbeitet mit flachem Checkout, Pfadfiltern, npm-Cache, abgebrochenen
  überholten Läufen und ohne Artefakt-Upload.

Später nur nach Messung evaluieren:

- hybride BM25-/Vektorsuche nach dem `qmd`-Muster, wenn das Golden-Set einen
  Recall-Fehler der heutigen Suche zeigt;
- ein abgeleiteter, typisierter Link-/Codegraph nach `gbrain`/`graphify`, wenn
  echte Multi-Hop-Fragen davon profitieren;
- ein neues DSPy-Artefakt nur durch budgetierte Offline-Optimierung, held-out
  Evaluation und menschliche Freigabe.

Nicht übernommen:

- keine zusätzlichen lokalen Embedding-/Reranker-Modelle im Worker oder im
  Standard-Checkout;
- kein automatisches Überschreiben bei Widersprüchen, keine rekursive
  Zusammenfassung und keine automatische Veröffentlichung aus Chats;
- kein Umgehen von Berechtigungs-, TLS-, Lizenz- oder Review-Prüfungen;
- kein Hosten über einen zusätzlichen proprietären Wissensdienst, solange Git,
  D1 und die bestehende Anwendung den Zweck im Gratisbetrieb erfüllen.

## Reproduzierbare Captures

### Webseiten

| Quelle | Capture | Bytes | SHA-256 |
|---|---:|---:|---|
| [codecentric: Wissensmanagement mit KI](https://www.codecentric.de/wissens-hub/blog/wissensmanagement-mit-ki-andrej-karpathys-llm-wiki) | 2026-08-08 12:07 UTC | 338.603 | `d3e0554dfb606c2ecf65a27d52f23f37132d6464cd1ba4f79839bd2aeec2e0f9` |
| [Hjarni: LLM wiki CLAUDE.md template](https://hjarni.com/blog/llm-wiki-claude-md-template) | 2026-08-08 12:08 UTC | 62.385 | `3495c27346bccdf6741ccf2615792e945ad19950e3056330a15e56542a54a3f6` |
| [Hermes Agent: LLM Wiki](https://hermes-agent.nousresearch.com/docs/user-guide/skills/bundled/research/research-llm-wiki) | 2026-08-08 12:08 UTC | 98.617 | `059d3d85cab3fa2f50125a359ca6873ec7eaacc5226e8e33e797288929cf97d9` |

Die Captures sind Arbeitsmaterial, noch keine veröffentlichte Wiki-Quelle. Für
eine Veröffentlichung fehlen je Quelle noch Rechte-/Lizenzentscheidung,
inhaltliche Freigabe, stabiler Locator und Source-Manifest im normativen Format.

### YouTube-Untertitel

| ID und Titel | Sprache | Segmente | SHA-256 |
|---|---:|---:|---|
| [`8GVMzK8xc4U` – LLM Wiki Tutorial: Build a Personal Knowledge Base From Scratch](https://www.youtube.com/watch?v=8GVMzK8xc4U) | en, automatisch | 299 | `c93f9de247f007af75b8fb11d89774a5b45eaf7b19f57d5b97b3e57eaa37ba0a` |
| [`u2b6Gfpe_U4` – RAG, Hybrid-Suche oder Wiki?](https://www.youtube.com/watch?v=u2b6Gfpe_U4) | de, automatisch | 478 | `6b2e380eac8099f96ad0f8820f720b108f0817ceefbf52bfc19b5857502c1e0d` |
| [`NsHorhkXct0` – DSPy erklärt: LLMs programmieren statt prompten](https://www.youtube.com/watch?v=NsHorhkXct0) | de, automatisch | 799 | `e600cab07c5894671c7be49a0871216f39af8a692efbf9279b61c5fd369e0d9c` |
| [`mHSOsy_usAg` – Der echte Weg zum Second Brain](https://www.youtube.com/watch?v=mHSOsy_usAg) | de, automatisch | 1.289 | `45bcee0f7693c2fd4db7b78b197197e66a4d7d5db33c12b1cb538fcb92ba68e7` |
| [`MN7itWrUlic` – Der einfachste Einstieg in Second Brains](https://www.youtube.com/watch?v=MN7itWrUlic) | de, automatisch | 938 | `0b142f675135d62194a9dc58e788fad1b831fc483ebfbaafc2ce68c65a81eac2` |

Die Markdown-Captures enthalten Zeitmarken. Aussagen aus automatischen
Untertiteln bleiben bis zur manuellen Video- und Rechteprüfung unfreigegeben.

### GitHub-Repositories

| Repository | geprüfter Branch/Commit | Lizenz | Entscheidung |
|---|---|---|---|
| [`garrytan/gbrain`](https://github.com/garrytan/gbrain) | `master` / `3257758492daea69b24d065181440da834abe2a0` | MIT | Muster für deterministische Linkkanten, Zitate und Lückenanalyse; keine Abhängigkeit |
| [`tobi/qmd`](https://github.com/tobi/qmd) | `main` / `e428df76bc0274d9e93eb7ca3e95673315c42e90` | MIT | Hybrid-Retrieval als spätere, eval-gesteuerte Option; keine lokalen Modelle im MVP |
| [`obra/superpowers`](https://github.com/obra/superpowers) | `main` / `44c9b2d6e889982ac18c27d05a19fefe335194e1` | MIT | Design-/Test-/Review-Disziplin für Agenten; keine Runtime-Abhängigkeit |
| [`Graphify-Labs/graphify`](https://github.com/Graphify-Labs/graphify) | `v8` / `3d19463484ebcf773b399ddad9fd3363b2ab3bff` | Apache-2.0 | Provenienzmarkierte, abgeleitete Graphen später prüfen; nicht zur Wahrheit machen |
| [`stanfordnlp/dspy`](https://github.com/stanfordnlp/dspy) | `main` / `9bca784d114641d25b6745e79df0c3f533576708` | MIT | Bestehenden Offline-Optimizer mit Eval- und Budget-Gates beibehalten; Version 3.2.1 ist gepinnt |

## Einzelbewertung aller 13 Quellen

### 1. codecentric – Wissensmanagement mit KI

Der Artikel erklärt das LLM-Wiki für Einsteiger als persistente, kuratierte
Wissensbasis. Er trennt Quellen, Wiki und Schema, benennt `ingest`, `query` und
`lint` und nutzt Index plus Log zur Orientierung und Nachvollziehbarkeit.
Markdown wird als menschenlesbar und tokenarm begründet. Der Praxisbericht zeigt
außerdem, dass Schema und Regeln iterativ verbessert werden müssen: Quellenlinks
wurden erst nach einer sichtbaren Lücke ergänzt, Widersprüche wurden ausdrücklich
statt still überschrieben und die drei Operationen später in Skills ausgelagert.

Für TrainWiki bestätigt das die bestehende Trennung und die kurze
Agentenanweisung. Nicht übernommen wird das direkte Schreiben eines
Coding-Agenten in ein persönliches Wiki: TrainWiki verlangt strukturierte
Vorschläge, Provenienzvalidierung und menschliches Review.

### 2. YouTube `8GVMzK8xc4U` – LLM-Wiki-Tutorial

Das Tutorial konkretisiert `raw/`, `wiki/`, Schema, Index und Log, YAML-
Frontmatter, Kebab-Dateinamen, Links sowie begrenzte Chunks. Genannt werden
Status, Vertrauen, Tags und Aliase. Beim demonstrierten Ingest fehlten zunächst
Relationen; die Regeln mussten nachgeschärft werden. Das ist ein nützlicher
Hinweis gegen die Annahme, ein einmaliger Prompt sei ausreichend.

TrainWiki übernimmt daraus keine fremde Vorlage wörtlich. Die vorhandenen
Schemas sind strenger: unveränderliche Quellversionen, Citation-Map,
Reviewstatus und Lint-Gates bleiben maßgeblich. Kleine, nicht an beliebigen
Code-/Tabellenstellen getrennte Ausschnitte stützen die neue Kontextbegrenzung.

### 3. Hjarni – CLAUDE.md-Template

Die Quelle empfiehlt eine kurze Anweisung mit drei Aufgaben: Ablage/Namen,
Schreibregeln und Wartungsschleife. `index.md` dient als Karte, Topic-Seiten als
aktueller synthetisierter Stand, Source-Seiten als Rohbeleg und `log.md` als
Auditspur. Widersprüche sollen sichtbar werden, nicht die ältere Aussage
überschreiben. Zeitgebundene Werte, Geheimnisse und vollständige Transkripte
gehören nicht in langlebige Topic-Seiten.

Übernommen werden kurze Arbeitsregeln, inkrementelle Pflege und explizite
Konflikte. Nicht übernommen wird der Hjarni-MCP-Hostingdienst: Er ist eine
Produktoption der Quelle und für die bestehende Git-/D1-Architektur weder nötig
noch als dauerhaft kostenloser Kernbestandteil abgesichert.

### 4. Hermes Agent – gebündelte LLM-Wiki-Skill-Dokumentation

Die Dokumentation der MIT-lizenzierten Skill-Version 2.1.0 beschreibt
Orientierung über Schema, Index und jüngstes Log, unveränderliche Rohquellen,
Source-SHA-Drift, Bulk-Ingest, Query, Lint, Seiten-/Tag-Grenzen und sichtbare
Widersprüche. Besonders brauchbar ist das Bulk-Prinzip: einmal suchen, alle
betroffenen Seiten bearbeiten und Index/Log nur einmal konsistent aktualisieren.

TrainWiki übernimmt die Idee für spätere Ingest-Jobs, nicht für den öffentlichen
Chat. Der vorhandene Orchestrator muss weiterhin alle Patches validieren; ein
Skill erhält keine direkte Veröffentlichungsberechtigung.

### 5. YouTube `u2b6Gfpe_U4` – RAG, Hybrid-Suche oder Wiki

Das Video trennt Architekturentscheidungen nach Änderungsrate, Fragetyp,
Kosten und Fehlermodus. BM25 hilft bei exakten Kennungen, Embeddings bei
Paraphrasen; Chunking und Metadatenfilter bleiben entscheidend. Vollkontext ist
nur für kleine Korpora sinnvoll, weil irrelevanter Kontext Antworten
verschlechtert. Ein Wiki verlagert Synthesearbeit in den Ingest, ersetzt aber
Retrieval und Originalprüfung nicht. Vorgeschlagen wird die Suchleiter Index →
Wiki → hybride Rohsuche → Originalverifikation.

TrainWiki behält lexikalische Vorselektion plus deterministisches Reranking.
Hybrid-Retrieval wird erst eingeführt, wenn feste reale Fragen einen
Recall@6-Fehler zeigen. Scores gelten nie als Beleg; die Source-Version bleibt
maßgeblich.

### 6. `garrytan/gbrain`

Das Projekt kombiniert Markdown-Wissen mit Synthese, Zitationen und
Lückenanalyse. Ein relevanter Entwurfspunkt ist, Linkkanten deterministisch aus
vorhandenen Verweisen abzuleiten, ohne dafür Modellaufrufe auszugeben. Es trennt
rohe Suche von einer teureren Denk-/Synthesestufe und empfiehlt, zuerst im
eigenen Wissensbestand zu suchen.

TrainWiki übernimmt das Brain-first-Prinzip bereits durch D1/Wiki-Retrieval und
Abstention. Projekt-Benchmarkwerte werden nicht als unabhängig bestätigt. Eine
Graphschicht kommt nur als rekonstruierbarer Index infrage.

### 7. `tobi/qmd`

`qmd` dokumentiert lokale BM25-, Vektor- und Hybridmodi. Die Vollpipeline
gewichtet die Originalfrage stärker, ergänzt Query-Varianten, fusioniert
Treffer und rerankt sie. Die Dokumentation nennt ungefähr 900-Token-Chunks mit
15 Prozent Überlappung, SQLite-FTS und erklärbare Score-Ausgaben. Das ist ein
guter Evaluationskandidat für exakte Begriffe gegenüber Paraphrasen.

Nicht eingebaut werden die lokalen Embedding-/Reranker-Modelle: Sie würden
mehrere Gigabyte Download und eine ungeeignete Worker-Laufzeit verursachen.
Zuerst wird das vorhandene Golden-Set erweitert; nur ein gemessener Gewinn
rechtfertigt einen optionalen Offline-Index.

### 8. `obra/superpowers`

Das Repository betont Designklärung vor Implementierung, kleine explizite
Aufgaben, Test-first-Arbeit, YAGNI/DRY und Review zwischen Schritten. Diese
Regeln verbessern vor allem den Entwicklungsprozess und nicht die öffentliche
Antwortarchitektur.

Übernommen werden überprüfbare Pläne, kleine Diffs und Tests für Budgetgrenzen.
TrainWiki installiert das Framework nicht und führt keine fremden Agentenregeln
automatisch aus.

### 9. `Graphify-Labs/graphify`

Graphify erzeugt lokale AST-/Dokumentgraphen und unterscheidet deterministisch
extrahierte von inferierten Kanten. Der Graph ist eine Navigationsebene; für
Dokumentsemantik kann eine zusätzliche Modellpassage nötig sein. Das passt zur
TrainWiki-Invariante, dass ein Graph nie die Quellautorität übernimmt.

Ein Graph wird derzeit nicht ergänzt: Der bestehende Markdown-Linkindex ist
kleiner und ausreichend. Eine spätere Umsetzung muss jede Kante als
`extracted` oder `inferred` samt Quellversion kennzeichnen und vollständig neu
erzeugbar sein.

### 10. YouTube `NsHorhkXct0` – DSPy erklärt

Das Video stellt Signaturen und Module an die Stelle manueller Promptpflege und
behandelt Optimizer als eval-gesteuerte, einmalige beziehungsweise
modellabhängig zu wiederholende Arbeit. Beispiele, Goldlabels, strukturierte
Extraktion und Traces sind entscheidend; Optimierung selbst verbraucht Tokens.

TrainWiki erfüllt den Kern bereits mit portablen Signaturen, gepinntem DSPy,
versionierten Datasets und einem TypeScript-Runtime-Artefakt. Neu bestätigt wird
die harte Trennung: kein Optimizer im Chat, kleine Call-Budgets und erneute
Evaluation bei Modell-/Promptänderung.

### 11. `stanfordnlp/dspy`

Das offizielle Projekt beschreibt LLM-Anwendungen als Programme aus Signaturen
und Modulen, deren Prompts oder Gewichte gegen Metriken optimiert werden. Für
TrainWiki relevant sind reproduzierbare Evaluationssätze, modulare Verträge und
versionierte Optimierung statt laufender Promptmanipulation.

Die bestehende Pinning-Entscheidung `dspy==3.2.1` bleibt. Der Worker lädt nur
validiertes JSON und weder Python noch Pickle. Kandidaten werden nicht allein
aufgrund eines LLM-Judges aktiviert.

### 12. YouTube `mHSOsy_usAg` – Second Brain ohne Programmieren

Das Video ordnet Referenzen als Komponente, Muster oder Benchmark ein. Es
empfiehlt deterministische Verarbeitung, Markdown als Wahrheit, rekonstruierbare
Graphen, einen kompakten Index aus Titel/Pfad/Größe/Links/Tags und die Suchleiter
Index → Wiki → lokale Suche → einzelne Datei → Antwort. Als größte Verschwendung
wird wiederholtes Suchen und erneutes Einlesen langer Verläufe beschrieben.
Genannte Einsparwerte sind ein anekdotischer Eigenversuch und kein belastbarer
Benchmark.

Direkt übernommen sind die verkürzte Historie, das begrenzte Evidenzpaket und
lokale Cache-Wiederverwendung. `qmd` bleibt eine optionale Komponente, nicht die
neue Wahrheit.

### 13. YouTube `MN7itWrUlic` – Einstieg in Second Brains

Die Quelle erläutert unveränderliche Rohdaten, synthetisierte Wiki-Seiten,
Agentenanweisungen und Indexnavigation. Sie warnt indirekt vor langen Chats als
wiederholtem Kontext. Häufig wechselnde Werte sollen nicht als dauerhafte
statische Behauptung gespeichert werden, sondern auf eine aktuelle Quelle oder
Routine verweisen; private und berufliche Wissensräume sollten getrennt sein.

Diese Stalenz- und Trennungsregeln passen zum vorhandenen Source-/Visibility-
Modell. Eine im Video vorkommende Empfehlung, Berechtigungsabfragen zu umgehen,
wird ausdrücklich verworfen; TrainWiki lockert keine Sicherheitsgrenze für
Bequemlichkeit.

## Daraus umgesetzte technische Budgets

- Maximal sechs Retrieval-Belege bleiben erhalten, damit das bestehende
  Recall@6-Gate unverändert bleibt.
- Der gesamte Evidenzblock ist auf 12.000 Zeichen, jeder Auszug zusätzlich auf
  1.600 Zeichen begrenzt. Lange Metadaten werden gekürzt; validierte URLs zeigt
  nur die UI-Quellenliste.
- An Groq gehen höchstens vier vollständige Verlaufsnachrichten mit zusammen
  3.000 Zeichen. Eine abgetrennte Assistentenantwort am Anfang wird entfernt.
- Die Ausgabe ist auf 512 Tokens statt 1.024 begrenzt; Reasoning bleibt `low`
  und wird nicht ausgegeben.
- Die festen Systemregeln stehen vor der variablen Evidenz. Dadurch kann Groqs
  automatisches Prefix-Caching helfen, ohne dass TrainWiki sich darauf verlässt.
- Der aktuelle Groq-Free-Plan nennt für `openai/gpt-oss-20b` 8.000 Tokens pro
  Minute und 200.000 pro Tag. Zeichenlimits sind keine exakten Tokenlimits;
  Provider-Nutzung muss deshalb gemessen und bei Grenznähe weiter reduziert
  werden.

## Transfer- und Werkzeugbudgets

- `.gitattributes` normalisiert Text auf LF und verhindert dadurch unnötige
  Voll-Datei-Diffs zwischen Windows und Linux.
- Binärformate sind explizit als binär markiert und gehören weiterhin nicht als
  Arbeitscapture in Git.
- Die GitHub-Qualitätsprüfung läuft auf `main`-Pushes und Pull Requests, nicht
  doppelt auf jedem Feature-Branch-Push. Pfadfilter vermeiden reine
  Dokumentationsläufe außerhalb des Produktkorpus.
- Checkout verwendet `fetch-depth: 1`; npm nutzt Lockfile und Downloadcache;
  Audit-/Funding-Netzaufrufe und Build-Artefakt-Uploads entfallen.
- Lokales ESLint scannt nicht mehr Repository, `.venv`, Builds und
  Forschungsdaten, sondern nur die JavaScript-/TypeScript-Quellen. Der
  Inhalts-Cache übersteht reine Zeitstempeländerungen nach Git-Operationen.
- `research_web.py` verwendet vorhandene hash-geprüfte Captures ohne Netzwerk.
  `--refresh` sendet ETag/Last-Modified. `research_youtube.py` lädt vorhandene
  valide Untertitel ebenfalls nicht erneut.

## Offene Freigaben und nächste Evaluation

1. Alle fünf Videos gegen Zeitmarken stichprobenartig anhören, automatische
   Transkriptfehler korrigieren und Nutzungsrecht dokumentieren.
2. Für die drei Webseiten Lizenz/Erlaubnis, endgültige URL, Abschnittslocators
   und Source-Manifeste prüfen. Erst danach dürfen daraus Wiki-Claims entstehen.
3. Für jedes GitHub-Projekt nur eigene Synthesen verwenden; bei Codeübernahme
   Lizenztext und Commitbindung erhalten.
4. Das Retrieval-Golden-Set um exakte Kennungen, Paraphrasen, Multi-Hop,
   widersprüchliche und unbeantwortbare Fragen erweitern.
5. Erst bei Recall@6 unter 0,90 einen isolierten `qmd`-/Hybridvergleich starten;
   Modellgröße, Download, Latenz und Tokenverbrauch gemeinsam messen.
6. Vor Aktivierung der neuen Chatbudgets Lint, Build, alle Node-Tests,
   Optimizer-Tests und Artefakt-Baselineprüfung erfolgreich ausführen.

## Reproduktionsbefehle

```text
.venv\Scripts\python.exe -m pip install -r scripts/requirements-research.txt
.venv\Scripts\python.exe scripts/research_web.py URL [URL ...]
.venv\Scripts\python.exe scripts/research_web.py --refresh URL [URL ...]
.venv\Scripts\python.exe scripts/research_youtube.py VIDEO_ID [VIDEO_ID ...]
```

Ohne `--refresh` entstehen bei unverändert vorhandenen, hash-geprüften Captures
keine HTTP- oder YouTube-Anfragen.
