# TrainWiki – Produktspezifikation und Umsetzungsplan

**Status:** Entwurf 0.1  
**Stand:** 2. August 2026  
**Produktziel:** Ein dauerhaft kostenlos betreibbarer, quellengestützter Chatbot, der eine von einem LLM gepflegte Markdown-Wissensbasis nutzt und kontrolliert erweitert.

## 1. Zweck und normative Dokumente

Diese Spezifikation konkretisiert das Produkt, die technische Architektur, die Schnittstellen und den Umsetzungsplan. Das Dokument [`llm-wiki.md`](./llm-wiki.md) ist die normative Grundlage für Aufbau, Pflegekonventionen und Arbeitsweise des Wikis. Seine konzeptionellen Inhalte werden hier nicht wiederholt.

Die Zuständigkeiten sind getrennt:

- `llm-wiki.md` definiert, wie Quellen, Wiki-Seiten, Querverweise, Index, Protokoll und Pflegeoperationen fachlich behandelt werden.
- `spec.md` definiert Produktverhalten, Komponenten, Datenhaltung, APIs, Sicherheit, Qualität, Betrieb und Lieferphasen.
- Implementierte Schemas, Migrationen und API-Typen müssen aus diesen beiden Dokumenten ableitbar sein.
- Widersprechen sich beide Dokumente, darf die Software keine Seite stillschweigend bevorzugen. Der Konflikt wird als offene Architekturentscheidung dokumentiert und vor dem nächsten Release aufgelöst.

## 2. Leitentscheidungen

1. **Markdown und Git sind die kanonische Wissensbasis.** D1, Suchindizes und Caches sind abgeleitete beziehungsweise betriebliche Daten und müssen aus Git wiederherstellbar sein.
2. **Rohquellen sind unveränderlich.** Jede Änderung erzeugt eine neue, über SHA-256 identifizierte Version.
3. **Das System lernt kontrolliert, nicht selbstreferenziell.** Eine Modellantwort ist niemals ihre eigene Quelle. Aus Chats entstehen zunächst Lernkandidaten; sachliche Änderungen benötigen belegbare Evidenz und anfangs immer eine Freigabe.
4. **DSPy strukturiert und optimiert die LLM-Programme.** Es ersetzt weder Quellenhaltung noch Berechtigungen, Jobsteuerung oder Git-Versionierung.
5. **Der Betrieb bleibt hart kostenbegrenzt.** Es gibt keinen automatischen Wechsel in kostenpflichtige Tarife und keine Komponente, die für den Regelbetrieb eine Kreditkarte voraussetzt.
6. **Große oder rechenintensive Arbeiten laufen asynchron.** Datei-Konvertierung, Ingest, Wiki-Patches, Lint und DSPy-Optimierung gehören nicht in den Request-Pfad des Web-Frontends.
7. **Nachvollziehbarkeit ist wichtiger als maximale Automatisierung.** Jede veröffentlichte Aussage muss auf Quellen und jede Wiki-Änderung auf einen Job, ein Modell/Programm und einen Git-Commit zurückführbar sein.
8. **Die öffentliche Laufzeit hängt nicht von ChatGPT ab.** Chat und Admin verwenden weder ChatGPT-Inferenz noch SIWC. Modellaufrufe laufen serverseitig über Groq mit der festen Modellkennung `openai/gpt-oss-20b`.

## 3. Ziele

### 3.1 Fachliche Ziele

- Fragen in natürlicher Sprache anhand des gepflegten Wikis beantworten.
- Antworten mit überprüfbaren Quellenangaben und Links auf relevante Wiki-Seiten liefern.
- Eine vorhandene Erstbefüllung aus Markdown-Dateien und Markdown-Linklisten reproduzierbar importieren.
- Weitere Quellen über eine Admin-Oberfläche hinzufügen: Markdown, PDF, HTML/Webseiten, URLs, DOCX, XLSX, XML, JSON und YAML.
- Quelldaten über einen getrennten Konvertierungsdienst in normalisiertes Markdown überführen.
- Aus neuen Quellen bestehende Wiki-Seiten aktualisieren, bei Bedarf neue Seiten anlegen sowie Widersprüche, veraltete Aussagen und fehlende Verknüpfungen sichtbar machen.
- Aus der tatsächlichen Chatnutzung neue Fragen, nützliche Synthesen, Begriffsvarianten und Wissenslücken als überprüfbare Lernkandidaten gewinnen.
- Änderungen vor Veröffentlichung als verständlichen Diff anzeigen, freigeben, ablehnen und zurückrollen können.
- Den Zustand von Quellen, Jobs, Wiki und externen Freikontingenten in der Admin-Oberfläche sichtbar machen.

### 3.2 Technische Ziele

- Öffentlich nutzbare Chat-Website und geschützte Admin-Website in einer responsiven Webanwendung.
- Server-seitige Geheimnisverwaltung; kein API-Schlüssel gelangt in Browser-Bundles oder Git.
- Idempotente, wiederaufnehmbare Verarbeitung mit expliziten Jobzuständen.
- Git-basierter Audit-Trail für publiziertes Wissen und D1-basierter Audit-Trail für Betriebsereignisse.
- Wiederherstellung des veröffentlichten Wikis und des Suchindexes aus dem Git-Repository.
- Austauschbare Adapter für LLM, Konverter, Blob-Speicher und Git-Provider.
- Funktion auf modernen Mobilgeräten ohne lokale Modellausführung und ausdrücklich ohne WASM-Inferenz.

## 4. Nichtziele

- Training oder Fine-Tuning eigener Modellgewichte im laufenden Betrieb.
- Ungeprüftes Übernehmen von Chatantworten, Nutzerbehauptungen oder fremden Webseiten in den veröffentlichten Wissensbestand.
- Vollständiger Webcrawler, Suchmaschine oder Internetarchivierung.
- Garantierter 24/7-Betrieb ohne Cold Starts auf kostenlosen Plattformen.
- Ablage vertraulicher, personenbezogener oder lizenzrechtlich ungeklärter Massendaten in einem öffentlichen Gratis-Repository.
- Perfekte Layout-Rekonstruktion komplexer PDFs, Tabellenkalkulationen oder dynamischer Webseiten.
- Ausführung von Makros, eingebettetem JavaScript, Formeln oder Code aus Quelldateien.
- Vektordatenbank als Voraussetzung des MVP. Sie bleibt eine spätere Skalierungsoption.
- Mehrmandantenbetrieb und öffentliche Selbstregistrierung von Administratoren im MVP.

## 5. Rollen und Berechtigungen

### 5.1 Besucher

- Darf chatten, Quellen einer Antwort öffnen und Feedback geben.
- Darf keine Rohquellen, internen Prompts, unveröffentlichten Patches oder Admin-Metadaten sehen.
- Wird per IP-/Sitzungs-Limit und Missbrauchsschutz begrenzt.

### 5.2 Angemeldeter Leser (optional)

- Hat die Rechte eines Besuchers.
- Kann eigene Gesprächsverläufe wieder öffnen und personenbezogene Gesprächsdaten löschen.
- Diese Rolle ist für das MVP nicht erforderlich, darf aber im Datenmodell vorgesehen werden.

### 5.3 Redakteur

- Darf Quellen einreichen, Konvertierungen prüfen, Jobs starten und Lernkandidaten bearbeiten.
- Darf keine Benutzer, Secrets oder globale Sicherheitsregeln verwalten.
- Darf in der ersten Produktphase keine inhaltlichen Änderungen ohne Freigabe eines Administrators veröffentlichen.

### 5.4 Administrator

- Darf Quellen, Jobs, Wiki-Patches, Freigaben, Rücknahmen, Rollen, Kontingente und Systemeinstellungen verwalten.
- Jede schreibende Aktion wird mit stabiler Benutzer-ID protokolliert.

### 5.5 Dienstidentität

- GitHub Actions, Konverter, DSPy-Jobs und Reindex-Worker verwenden jeweils getrennte, minimal berechtigte Tokens.
- Dienstidentitäten dürfen nur die für ihren Ablauf erforderlichen Endpunkte und Speicherpräfixe verwenden.

## 6. Nutzererlebnis

### 6.1 Chat-Website

Die Chat-Seite ist die öffentliche Hauptansicht und für Mobilgeräte optimiert. Sie enthält:

- Eine bewusst schlanke Einspaltenansicht, die auf kleinen Bildschirmen beginnt und keine Anbieter-, Modell-, Hardware- oder Laufzeitdetails offenlegt.
- Produktname, kurze Erklärung der Wissensbasis und sichtbaren Aktualitätsstand des Wikis.
- Texteingabe mit Absenden- und Abbrechen-Funktion.
- Streaming-Anzeige für Status und Antwort; interne Gedankengänge werden nicht ausgegeben.
- Quellenleiste pro Antwort mit Wiki-Seite, Originalquelle, Fundstelle und Abrufdatum.
- Kennzeichnung `belegt`, `teilweise belegt` oder `nicht ausreichend belegt`.
- Verständliche Enthaltung, wenn die abgerufenen Belege nicht ausreichen.
- Verweise auf verwandte Wiki-Seiten.
- Feedback `hilfreich`, `nicht hilfreich`, `Quelle falsch` und optionaler Kommentar.
- Hinweis, wenn ein Feedback oder eine Frage als Lernkandidat vorgeschlagen wurde; es erfolgt keine direkte Veröffentlichung.
- Fehlerzustände für Cold Start, Freikontingent erschöpft, Wartung und Zeitüberschreitung.
- Export des jeweiligen Frage-Antwort-Paars oder aller Paare der aktuellen Browser-Sitzung als Markdown, eigenständiges HTML oder druckbares PDF; der PDF-Export nutzt den nativen Druckdialog und benötigt keine schwere Client-Bibliothek.
- Tastaturbedienung, semantische Überschriften, ausreichende Kontraste und Screenreader-taugliche Statusmeldungen.

Der Standard-Antwortablauf lautet:

1. Frage normalisieren und sicherheitsrelevant klassifizieren.
2. Passende Wiki-Seiten und belegende Quellenausschnitte abrufen.
3. Antwort mit Quellenbindung erzeugen.
4. Aussagen gegen die mitgelieferten Belege prüfen.
5. Antwort, Quellen und Unsicherheit ausgeben.
6. Asynchron mögliche Lernkandidaten aus Nutzerfrage, Nutzerfeedback und belegter Synthese ableiten.

### 6.2 Admin-Website

Die Admin-Seite ist nicht über bloßes Verbergen geschützt, sondern verlangt eine serverseitig geprüfte Sitzung. Im Single-Admin-MVP wird ein eingegebener GitHub-PAT genau einmal über die GitHub-API geprüft: Der dort ausgewiesene Login muss exakt `TRAINWIKI_ADMIN_GITHUB_LOGIN` entsprechen. Der PAT wird nicht gespeichert und nicht in das Session-Cookie übernommen. Danach gilt ausschließlich ein mit `TRAINWIKI_ADMIN_SESSION_SECRET` HMAC-signiertes, `HttpOnly`, `Secure`, `SameSite=Strict` und acht Stunden kurzlebiges Host-Cookie. Fehlt eine der beiden Konfigurationen, bleibt der Adminzugang fail-closed. Die öffentlich erreichbare Chat-Seite benötigt keine Anmeldung. Die Admin-Seite bietet folgende Bereiche:

#### Übersicht

- Anzahl und Zustand von Quellen, unveröffentlichten Änderungen, fehlgeschlagenen Jobs und offenen Lernkandidaten.
- Letzter erfolgreicher Ingest, Lint und Suchindex-Abgleich.
- Verbrauch der konfigurierten Tages-/Minutenlimits für LLM, Hosting, Git und Konverter.
- Warnungen bei Abweichung zwischen Git-Stand und abgeleitetem Index.

#### Quellen

- Drag-and-drop sowie Dateiauswahl für unterstützte Dateitypen.
- URL-Eingabe für eine einzelne Webseite; kein rekursiver Crawl im MVP.
- Mehrere Markdown-Dateien oder eine Markdown-Linkliste als Bootstrap-Import.
- Pflichtfelder beziehungsweise Hinweise zu Titel, Sprache, Lizenz/Nutzungsrecht, Sichtbarkeit und optionaler Beschreibung.
- Vorprüfung von Dateityp, Größe, Hash und Duplikaten vor Start eines Jobs.
- Anzeige von Original, normalisiertem Markdown, Konvertierungswarnungen und stabilen Fundstellen.
- Neue Version einer vorhandenen Quelle statt Überschreiben.

#### Jobs

- Filterbare Liste mit Fortschritt, aktuellem Zustand, Ereignissen und Fehlermeldung.
- Wiederholen, abbrechen und – soweit sicher – ab einem Checkpoint fortsetzen.
- Keine Schaltfläche darf denselben Job bei Doppelklick doppelt ausführen; schreibende Requests sind idempotent.

#### Änderungen und Lernen

- Diff aller betroffenen Wiki-Seiten mit Belegen pro Änderung.
- Kennzeichnung neuer, geänderter, widersprüchlicher und als veraltet vorgeschlagener Aussagen.
- Freigeben, teilweise freigeben, überarbeiten, ablehnen und begründet zurückstellen.
- Lernkandidaten nach Typ, Evidenz, Häufigkeit und Risiko priorisieren.
- Link auf Commit beziehungsweise Pull Request und Möglichkeit zur kontrollierten Rücknahme.

#### Wiki-Gesundheit

- Tote Links, verwaiste Seiten, nicht belegte Aussagen, doppelte Themen, widersprüchliche Aussagen und veraltete Abhängigkeiten.
- Lint-Lauf manuell starten und geplanten Laufstatus ansehen.
- Suchtest mit Anzeige der tatsächlich gefundenen Seiten und Scores.

## 7. Zielarchitektur

### 7.1 Komponenten

| Komponente | Verantwortung | Primäre kostenlose Ausführung | Alternative/Fallback |
|---|---|---|---|
| Webanwendung | Chat- und Admin-UI, serverseitige Routen | vinext auf Cloudflare Workers Free | statisches Chat-Frontend auf GitHub Pages plus derselbe Worker als API |
| Web-BFF | Auth, Rate-Limits, D1, Retrieval, Streaming, API-Orchestrierung | Cloudflare Worker Free | anderer kostenloser Edge-/Function-Hoster ohne Kartenpflicht |
| DSPy-Programmierung | Signaturen, Optimierung, Evaluation und Export portabler Laufzeitartefakte | natives Python in GitHub Actions | lokale, manuell gestartete Python-Ausführung |
| Online-Programmlaufzeit | getestetes DSPy-Artefakt laden, strukturierte Groq-Aufrufe und Validatoren ausführen | TypeScript im Cloudflare Worker, ohne Python und ohne WASM | Retrieval-only-Degradation |
| LLM | Generierung und Prüfentscheidungen mit festem Modell `openai/gpt-oss-20b`; keine ChatGPT-Abhängigkeit | GroqCloud Free über serverseitigen API-Schlüssel | kein automatischer kostenpflichtiger Fallback; bei Ausfall Retrieval-only/Fehlerzustand |
| Konverter | Dateien und URLs in normalisiertes Markdown umwandeln | Cloudflare Workers AI `toMarkdown` und Browser Run `/markdown` | MarkItDown, bei OCR/komplexem Layout Docling, jeweils in GitHub Actions |
| Ingest-/Lint-Worker | Wiki-Patches, Validierung, DSPy-Optimierung, Git-PRs | GitHub Actions | stateless Python-Jobrunner |
| Betriebsdaten | Benutzer, Quellenmetadaten, Jobs, Chatmetadaten, Kandidaten, Index | Cloudflare D1 Free | SQLite-kompatibler Store |
| Rohobjekte | Originaldateien und Web-Snapshots | versionierte GitHub-Release-Assets je Import-Charge | R2 nur als optionale spätere Erweiterung mit Zahlungsmittel |
| Wissensbasis | veröffentlichte Wiki-Seiten, Regeln, Provenienzmanifeste | GitHub-Repository | anderer Git-Provider |

### 7.2 Striktes Nullkosten-Profil

Die Anwendung hat ein konfigurierbares Deployment-Profil `STRICT_FREE_NO_CARD`:

- Vor dem Produktivbetrieb wird für jeden Anbieter durch einen manuellen Provisionierungstest bestätigt, dass keine Kreditkarte und keine kostenpflichtige Freischaltung erforderlich sind.
- R2 ist **keine** MVP-Abhängigkeit: Die Aktivierung verlangt eine R2-Subscription mit Checkout und passt deshalb nicht verlässlich zur strikten Ohne-Kreditkarte-Vorgabe.
- Originaldateien und Web-Snapshots werden als unveränderliche Assets einer GitHub-Draft-Release pro Import-Charge gespeichert. Das Manifest enthält Asset-ID, Hash und Charge. Normalisiertes Markdown liegt in Git und bleibt diffbar.
- Der Web-BFF streamt Uploads direkt zum GitHub-Asset-Endpunkt; Binärdaten werden weder als Base64 in D1 noch in reguläre Git-Commits geschrieben. Das MVP begrenzt Uploads auf 20 MiB, obwohl Plattformgrenzen höher liegen.
- Das öffentliche Repository macht Wiki und Release-Assets öffentlich. Für vertrauliche Quellen MUSS ein privates Repository verwendet werden; dann gelten die monatlichen GitHub-Actions-Minuten des Free-Tarifs statt der freien Standard-Runner-Nutzung öffentlicher Repositories.
- Kein API-Aufruf darf automatisch einen kostenpflichtigen Tarif, zusätzliche Kapazität oder ein bezahltes Modell aktivieren.
- Externe Limits sind Konfiguration, nicht fest im Code verdrahtet. Die bei Einrichtung tatsächlich sichtbaren Limits werden dokumentiert und regelmäßig geprüft.
- Sind Limits erschöpft, antwortet die Anwendung mit einem erklärten Warte-/Retrieval-only-Zustand statt kostenpflichtig auszuweichen.

### 7.3 Vertrauensgrenzen und Datenfluss

1. Der Browser kommuniziert nur mit dem Web-BFF.
2. Der BFF prüft Identität, Rolle, CSRF-Schutz, Rate-Limit und Nutzdaten.
3. Uploads werden unverändert als versionierte GitHub-Release-Assets abgelegt; D1 erhält nur Referenz, Hash, Status und Metadaten.
4. Der Konverter liest eine kurzlebige, eng begrenzte Objektreferenz und schreibt normalisiertes Markdown plus Manifest.
5. Der Ingest-Worker liest Quellversion, bestehendes Wiki und `llm-wiki.md`, erzeugt einen Patch und Validierungsbericht.
6. Freigegebene Änderungen werden atomar nach Git übernommen.
7. Ein erfolgreicher Merge aktualisiert den D1-Suchindex. Der Git-Commit bleibt die maßgebliche Versionskennung.
8. Der Chat ruft nur veröffentlichte Wiki-Versionen ab. Entwürfe werden nie versehentlich in öffentliche Antworten gemischt.
9. LLM-Aufrufe erhalten nur die minimal nötigen Ausschnitte; Rohdateien und Secrets werden nicht pauschal weitergereicht.

## 8. Quellenaufnahme und Markdown-Konvertierung

### 8.1 Gemeinsamer Konvertierungsvertrag

Der Konverter ist ein eigenständiges, austauschbares Tool hinter einem stabilen Vertrag. Die Referenzkette lautet:

1. **Cloudflare Workers AI `toMarkdown`:** Primärpfad für PDF, HTML, XML, DOCX, XLS/XLSX/XLSM/XLSB, ODT/ODS und CSV. Diese Konversion ist laut Anbieter für die meisten Formate kostenlos; bildbasierte Verarbeitung kann das Workers-AI-Freikontingent verbrauchen.
2. **Cloudflare Browser Run `/markdown`:** Primärpfad für öffentliche URLs, wenn eine echte Browserdarstellung nötig ist. Im Free-Tarif stehen derzeit zehn Browser-Minuten pro Tag und drei parallele Browser zur Verfügung.
3. **Deterministische Parser:** JSON und YAML werden ohne LLM validiert, kanonisch formatiert und mit JSON-Pointer beziehungsweise Schlüsselpfad in Markdown überführt. Beide Formate stehen nicht in der offiziellen `toMarkdown`-Formatliste.
4. **Microsoft MarkItDown:** Gepinnter, nativer Python-Fallback in GitHub Actions für leichte Dokumentkonversion und Qualitätsvergleich.
5. **Docling:** Nur für `needs_ocr`, komplexe Tabellen, problematische Lesereihenfolge oder Golden-Test-Fehler; wegen Ressourcenbedarf ebenfalls nur ereignisgesteuert in GitHub Actions.

Keines dieser Python-Werkzeuge läuft als dauerhafter Webdienst. Damit benötigt das MVP weder einen kostenpflichtigen Python-Host noch Pyodide/WebAssembly. Die konkrete Routenwahl bleibt datengetrieben: Golden-Tests können einen Format-/Profilpfad hoch- oder zurückstufen.

Logischer Eingang:

```json
{
  "job_id": "job_...",
  "source_id": "src_...",
  "source_version_id": "sv_...",
  "input": {
    "kind": "object|url|markdown",
    "uri": "kurzlebige Referenz oder erlaubte URL",
    "media_type": "application/pdf",
    "filename": "beispiel.pdf",
    "sha256": "...",
    "size_bytes": 12345
  },
  "profile": "default-de-v1",
  "callback": {
    "url": "https://.../api/v1/internal/conversions/callback",
    "token_ref": "ephemeral-token-id"
  }
}
```

Logisches Ergebnis:

```json
{
  "job_id": "job_...",
  "status": "succeeded|failed|needs_review",
  "converter": { "name": "...", "version": "...", "profile": "..." },
  "artifacts": [
    { "kind": "normalized_markdown", "uri": "...", "sha256": "..." },
    { "kind": "manifest", "uri": "...", "sha256": "..." }
  ],
  "statistics": {
    "characters": 0,
    "pages": 0,
    "tables": 0,
    "images": 0
  },
  "warnings": []
}
```

Der idempotente Schlüssel lautet mindestens `sha256(input) + converter_version + profile`. Derselbe Schlüssel darf keine zweite fachlich unterschiedliche Ausgabe erzeugen. Ein Werkzeugwechsel erzeugt eine neue Quellversion beziehungsweise Staging-Version, überschreibt aber kein früheres Artefakt.

### 8.2 Formatspezifische Anforderungen

| Eingabe | Mindestverhalten | Besondere Grenzen/Sicherheit |
|---|---|---|
| Markdown | Inhalt validieren, Frontmatter normalisieren, Links und vorhandene Überschriften erhalten | HTML/Script bereinigen; vorhandene Metadaten nicht ungeprüft als Systemanweisung interpretieren |
| PDF | Text, Überschriften, Listen und Tabellen bestmöglich erhalten; Seitenanker erzeugen; OCR als expliziter Fallback | verschlüsselte Dateien ablehnen; Seiten-/Pixel-/Laufzeitlimit gegen PDF- und OCR-Bomben |
| HTML-Datei/Webseite | Hauptinhalt, Titel, Autor, Datum und kanonische URL extrahieren; Snapshot-Zeit speichern | statisches HTML über `toMarkdown`; JavaScript nur im isolierten Browser-Run-Pfad, nie aus der Quelle im BFF ausführen |
| URL | genau eine erlaubte `http`-/`https`-Ressource abrufen, Redirects begrenzen und Snapshot hashen | SSRF-Schutz bei jedem Redirect; private Netze/Metadaten-Endpunkte sperren; Robots/Nutzungsrechte beachten |
| DOCX | Überschriften, Absätze, Listen, Tabellen, Fußnoten und Bildreferenzen erhalten | Makros und eingebettete Objekte nie ausführen; Archiveinträge und Dekompressionsgröße begrenzen |
| XLSX | pro Arbeitsblatt eine benannte Sektion; Zellbereiche und Tabellen mit stabilen Zellankern | Formeln nur als Text/Wert übernehmen, nie ausführen; große/leere Bereiche abschneiden und melden |
| XML | sichere Baum-/Tabellendarstellung mit Pfadankern | DTD, externe Entitäten und Netzwerkzugriff deaktivieren; Tiefe und Knotenzahl begrenzen |
| JSON | deterministische Schlüsselreihenfolge beziehungsweise nachvollziehbare Originalreihenfolge; große Arrays segmentieren | Tiefe, Elementzahl und Größe begrenzen; mögliche Secrets markieren |
| YAML | sichere, deterministische Darstellung und Dokumentgrenzen erhalten | ausschließlich Safe Loader; Aliase, Rekursion und Typ-Coercion begrenzen |

Jedes normalisierte Dokument enthält logisch: Quell-ID, Versions-ID, Originalname oder URL, Inhalts-Hash, Empfangs- und Abrufzeit, Medientyp, Sprache, Konverterversion, Lizenzangabe, Warnungen sowie stabile Fundstellen. Die genaue Markdown-/Frontmatter-Konvention wird in `llm-wiki.md` festgelegt.

### 8.3 Erstinitialisierung

- Der Bootstrap-Importer akzeptiert einen versionierten Satz vorhandener Markdown-Dateien und Markdown-Linklisten.
- Ein Dry-Run erstellt Inventar, Hashes, Duplikatgruppen, nicht erreichbare Links und geschätzten LLM-Bedarf, ohne Wiki-Seiten zu verändern.
- Die Verarbeitung erfolgt in kleinen, wiederholbaren Batches; ein Fehler stoppt nicht zwingend den Gesamtimport.
- Jede Quelldatei wird als eigene logische Quelle oder – bei klarer Linkliste – als Manifest mehrerer Quellen erfasst.
- Das Resultat jedes Batches ist ein eigener Patch beziehungsweise Pull Request. Dadurch bleiben Prüfung und Rücknahme handhabbar.
- Der Importbericht weist für jede Eingabe `übernommen`, `Duplikat`, `Warnung`, `abgelehnt` oder `fehlgeschlagen` aus.

## 9. Kontrolliertes Lernen im Betrieb

„Dazulernen“ bedeutet in diesem Produkt die Verbesserung des persistenten Markdown-Wikis und seiner Navigations-/Suchartefakte, nicht das Verändern von Modellgewichten.

### 9.1 Lernquellen

- Neu hinzugefügte und konvertierte Rohquellen.
- Wiederkehrende Nutzerfragen, soweit datenschutzkonform aggregiert.
- Korrektur- und Quellenfeedback von Nutzern.
- Neue, bereits durch bestehende Quellen belegte Synthesen aus einer Antwort.
- Ergebnisse von Lint-Läufen: Widerspruch, Lücke, veraltete Abhängigkeit, fehlender Link oder Dublette.

### 9.2 Evidenzregeln

- Assistententext ist keine Evidenz.
- Eine Nutzerfrage liefert Nachfrage- und Begriffssignale, aber keine sachliche Evidenz.
- Eine Nutzerkorrektur wird als unbestätigter Vorschlag oder neue Quelle gespeichert, bis sie belegt ist.
- Jede sachliche Änderung referenziert mindestens eine unveränderliche Quellversion und konkrete Fundstellen.
- Aussagen mit widersprüchlichen Belegen werden nicht still überschrieben, sondern als Konflikt zur Prüfung vorgelegt.
- Nur mechanische Änderungen wie eindeutig reparierbare Links dürfen nach erfolgreichen Tests automatisch veröffentlicht werden. Inhaltliche Auto-Merges sind im MVP deaktiviert.

### 9.3 Lernpipeline

1. Nach einer Antwort wird asynchron ein Kandidat vom Typ `faq`, `new_synthesis`, `alias`, `missing_page`, `contradiction`, `stale_claim` oder `user_correction` erzeugt.
2. Der Kandidat wird dedupliziert und erhält Evidenzlinks, Risiko, Häufigkeit und vorgeschlagene Zielseiten.
3. Ein DSPy-Modul plant einen minimalen Patch und nennt explizit unveränderte beziehungsweise betroffene Seiten.
4. Deterministische Prüfungen kontrollieren Schema, Links, Quellenanker, Dateipfade und Umfang.
5. Ein getrenntes Prüfmodul bewertet Belegtreue und Widersprüche.
6. Der Administrator sieht Kandidat, Quellen und Diff und entscheidet.
7. Nach Freigabe erfolgt ein atomarer Git-Commit; danach werden Index und Cache aktualisiert.

## 10. Datenmodell

### 10.1 Verantwortlichkeit der Speicher

- **Git:** kanonischer veröffentlichter Wissensstand, Schema-/Regeldokumente, provenance-fähige Markdown-Artefakte und nachvollziehbare Änderungen.
- **GitHub Release Assets:** unveränderte Binärdateien und Webseiten-Snapshots. Sie sind über Charge, Asset-ID und SHA-256 adressiert, aber nicht Bestandteil der normalen Git-Historie.
- **D1:** operative Metadaten, Zustandsmaschine, Rollen, Chats, Feedback, Lernkandidaten, abgeleiteter Suchindex, Quoten und Audit-Ereignisse.

### 10.2 D1-Entitäten

Die Namen sind logisch; konkrete Drizzle-Schemas dürfen technisch abweichen, müssen aber dieselben Invarianten abbilden.

#### `users`

- `id`, `external_subject`, `email_optional`, `display_name_optional`
- `role`, `status`, `created_at`, `last_seen_at`
- Eindeutigkeit auf `(identity_provider, external_subject)`.

#### `sources`

- `id`, `kind`, `title`, `canonical_url_optional`, `language`, `license_optional`
- `visibility`, `status`, `created_by`, `created_at`, `current_version_id_optional`
- Eine Quelle ist die stabile Identität; Inhalt liegt in `source_versions`.

#### `source_versions`

- `id`, `source_id`, `sha256`, `size_bytes`, `media_type`, `original_filename_optional`
- `raw_release_tag_optional`, `raw_asset_id_optional`, `normalized_repo_path_optional`, `converter_name`, `converter_version`
- `fetch_time_optional`, `created_at`, `supersedes_version_id_optional`, `manifest_json`
- Eindeutigkeit auf `(source_id, sha256)`; Inhalt ist unveränderlich. Einfache Fremdschlüssel sichern die Existenz der Versions-ID; D1-kompatible `BEFORE INSERT/UPDATE`-Trigger binden `current_version_id` und `supersedes_version_id` zusätzlich an dieselbe `source_id`.

#### `jobs` und `job_events`

- `jobs`: `id`, `type`, `state`, `attempt`, `idempotency_key`, `source_version_id_optional`, `requested_by`, `progress`, `error_code_optional`, `created_at`, `started_at`, `finished_at`, `lease_until_optional`.
- `job_events`: append-only `id`, `job_id`, `from_state`, `to_state`, `message`, `details_json`, `actor`, `created_at`.
- Eindeutigkeit auf `(type, idempotency_key)` für aktive/erfolgreiche Ausführungen.

#### `wiki_changes`

- `id`, `job_id`, `base_commit`, `branch`, `head_commit_optional`, `pull_request_url_optional`
- `risk`, `status`, `summary`, `validation_json`, `created_at`, `reviewed_by_optional`, `reviewed_at_optional`.
- Eine Freigabe muss genau den geprüften `head_commit` referenzieren. D1-Trigger blockieren `approved`, `publishing` und `succeeded`, solange Commit, Prüfer, Prüfzeit oder expliziter `reviewed_head_commit` fehlen beziehungsweise abweichen.

#### `wiki_pages` und `wiki_chunks`

- Abgeleitete Projektion des veröffentlichten Git-Stands.
- `wiki_pages`: `path`, `title`, `summary`, `commit_sha`, `content_sha`, `updated_at`, Metadaten.
- `wiki_chunks`: `id`, `page_path`, `ordinal`, `heading_path`, `text`, `token_count`, `source_refs_json`, `content_sha`.
- Optionaler Volltextindex nutzt SQLite FTS, sofern die Ziel-D1-Version dies unterstützt; andernfalls wird ein deterministischer Termindex geführt.
- `wiki_terms`: abgeleiteter deterministischer Fallbackindex aus `chunk_id`, normalisiertem `term` und positiver `frequency`; Eindeutigkeit auf `(chunk_id, term)` und Query-Index auf `(term, frequency)`.

#### `conversations`, `messages` und `feedback`

- Gespräch enthält pseudonyme Sitzungs-/Benutzerreferenz, Erstellzeit, Löschzeit und verwendeten Wiki-Commit.
- Nachricht enthält Rolle, bereinigten Text, Modell-/Programmversion, Token-/Latenzmetadaten und Antwortstatus.
- Vollständige Modellprompts, Secrets und interne Gedankengänge werden nicht gespeichert.
- Feedback referenziert Antwort, Typ, optionalen Kommentar und Moderationsstatus.

#### `learning_candidates`

- `id`, `type`, `status`, `origin`, `question_fingerprint`, `frequency`
- `proposal_json`, `evidence_refs_json`, `risk`, `confidence`, `created_at`, `reviewed_by_optional`.
- Eindeutige Deduplizierung über Typ, normalisiertes Ziel und Frage-/Inhaltsfingerprint.

#### `quota_counters`, `audit_events`, `outbox`

- Zeitfensterbasierte Zähler für Nutzer/IP/Provider und globale Tagesbudgets.
- Append-only Audit für Admin- und Dienstaktionen; sensible Nutzdaten werden minimiert.
- Transactional Outbox koppelt D1-Änderungen zuverlässig an externe Dispatch-, Callback- und Reindex-Ereignisse.

### 10.3 Rohobjektmodell mit GitHub Release Assets

Ein Bootstrap- oder Upload-Batch erhält eine unveränderliche Draft-Release nach diesem Muster:

```text
Tag: raw-2026-08-02-<charge_id>
Assets:
  <source_id>--<version_id>--<sanitized_filename>
  <source_id>--<version_id>--snapshot.html
  charge-manifest.json
```

- Der Dateiname ist nur Anzeige; `source_id`, `version_id`, GitHub-Asset-ID und SHA-256 bilden die Identität.
- Der Worker darf ausschließlich an eine vorab angelegte Draft-Release des erwarteten Repositorys streamen. Er besitzt kein allgemeines Git-Schreibtoken.
- Der Actions-Job lädt genau die im Job referenzierte Asset-ID, prüft den Hash und verwirft unerwartete Redirects, Größe oder MIME-Typen.
- Normalisiertes Markdown und das Quellmanifest werden im Ingest-Zweig unter `sources/normalized/` und `sources/manifests/` geschrieben. Dadurch bleiben sie diffbar und aus Git rekonstruierbar.
- Ein Originalasset darf nicht gelöscht oder ersetzt werden, solange eine freigegebene Aussage seine Quellversion referenziert. Löschung erfolgt nur als auditierter Datenschutz-/Lizenzvorgang mit Stalenzmarkierung aller abhängigen Claims.
- GitHub nennt keine Gesamtgrößen- oder Bandbreitenbegrenzung pro Release; das ist keine Zusage für unbegrenzten Objektspeicher. TrainWiki überwacht Volumen und wechselt bei realem Bedarf bewusst auf einen geeigneten Objektspeicher.
- Ein optionaler R2-Adapter darf später denselben logischen Vertrag implementieren, gehört aber nicht zu `STRICT_FREE_NO_CARD`.

### 10.4 Git-Modell

- `main` enthält ausschließlich veröffentlichte, validierte Wiki- und Regelstände.
- Ingest-/Lernarbeiten erfolgen auf kurzlebigen Zweigen wie `ingest/{job_id}` oder `learn/{candidate_id}`.
- Direkte inhaltliche Modell-Commits auf `main` sind gesperrt.
- Ein Patch basiert auf einem expliziten `base_commit`; bei zwischenzeitlichen Änderungen wird neu geplant oder ein Konflikt zur Prüfung erzeugt.
- Ein Commit ist fachlich atomar und trägt maschinenlesbare Trailer für Job-ID, Quellversionen, DSPy-Programmversion, Modell und Prüfer.
- Binäre Rohdateien gehören nicht in reguläre Git-Commits. Git enthält Referenzmanifeste und normalisiertes Markdown gemäß `llm-wiki.md`; Originale liegen als Release-Assets.
- Merge, Revert und erneuter Indexaufbau sind durch Admin-Audit und Git-Historie miteinander verknüpft.

## 11. Jobmodell

### 11.1 Jobtypen

- `bootstrap_inventory`
- `fetch_url`
- `convert_source`
- `ingest_source`
- `build_wiki_patch`
- `validate_wiki_patch`
- `publish_wiki_patch`
- `reindex_wiki`
- `extract_learning_candidates`
- `lint_wiki`
- `optimize_dspy_program`
- `purge_data`

### 11.2 Zustände

```text
received -> validated -> queued -> leased -> running
running -> awaiting_review -> approved -> publishing -> succeeded
running -> retry_wait -> queued
running -> failed
received|validated|queued|retry_wait|awaiting_review -> cancelled
validated|running|awaiting_review -> rejected
```

Für detaillierte UI-Anzeige kann `running` eine Phase wie `fetching`, `quarantining`, `converting`, `extracting`, `planning`, `drafting`, `verifying` oder `indexing` tragen. Die persistierte Hauptzustandsmaschine bleibt klein und eindeutig.

### 11.3 Invarianten

- Nur ein Worker mit gültigem Lease darf einen Job verändern.
- Heartbeats verlängern den Lease; nach Ablauf kann ein Job sicher übernommen werden.
- Wiederholungen verwenden dasselbe Idempotenzziel und neue Attempt-/Event-Einträge.
- Nicht wiederholbare Fehler, etwa verbotener Dateityp, führen direkt zu `failed` oder `rejected`.
- Netzwerk-/Providerfehler verwenden begrenztes exponentielles Backoff mit Jitter.
- Nach maximaler Versuchszahl bleibt der vollständige Diagnosebericht erhalten; Secrets und Quelldokumente werden aus Logs entfernt.
- Ein Callback muss signiert sein und Job-ID, Versuch, Ablaufzeit und Ergebnis-Hash binden.
- `succeeded` wird erst gesetzt, wenn alle vorgesehenen Artefakte verifiziert und die abhängigen Zustände atomar aktualisiert sind.

## 12. API-Verträge

Alle Endpunkte liegen unter `/api/v1`. JSON-Endpunkte verwenden `application/json`; Uploads nutzen direktes Streaming oder signierte Upload-URLs. Jede Antwort enthält `request_id`. Schreibende Endpunkte akzeptieren `Idempotency-Key`.

Einheitlicher Fehler:

```json
{
  "error": {
    "code": "QUOTA_EXHAUSTED",
    "message": "Das kostenlose Tageskontingent ist ausgeschöpft.",
    "retryable": true,
    "retry_after_seconds": 3600
  },
  "request_id": "req_..."
}
```

### 12.1 Chat

`POST /api/v1/chat`

```json
{
  "conversation_id": "optional",
  "message": "Frage des Nutzers",
  "locale": "de-DE",
  "stream": true
}
```

Die Streaming-Antwort verwendet Server-Sent Events mit den Typen:

- `meta`: Antwort-ID, verwendeter Wiki-Commit und Programmversion.
- `status`: nutzerverständlicher Arbeitsstatus.
- `token`: sichtbarer Antworttext.
- `citations`: strukturierte Quellen mit stabilen IDs, Titel, URL/Pfad und Fundstelle.
- `related_pages`: passende veröffentlichte Wiki-Seiten.
- `done`: Belegstatus, Verbrauch und Gesamtzeit.
- `error`: bereinigter Fehler ohne interne Prompts oder Stacktraces.

Der Server darf statt Streaming eine gleichwertige JSON-Antwort liefern. Die öffentliche API gibt keine Chain-of-Thought-Daten aus.

`POST /api/v1/answers/{answer_id}/feedback` akzeptiert Typ, optionalen Kommentar und optional eine konkret beanstandete Quellen-ID. Kommentare werden als untrusted input behandelt.

### 12.2 Admin-Quellen

- `POST /api/v1/admin/uploads`: Metadaten/Hash voranmelden; liefert Upload-ID, Strategie, Größenlimit und gegebenenfalls signierte URL.
- `PUT /api/v1/admin/uploads/{upload_id}/content`: Streaming-Fallback für kleine Dateien.
- `POST /api/v1/admin/sources`: Upload oder URL als neue Quelle beziehungsweise neue Version registrieren.
- `GET /api/v1/admin/sources`: paginierte, filterbare Liste.
- `GET /api/v1/admin/sources/{source_id}`: Versionen, Artefakte, Jobs und Abhängigkeiten.
- `POST /api/v1/admin/sources/{source_id}/process`: idempotenten Konvertierungs-/Ingest-Ablauf starten.
- `POST /api/v1/admin/sources/{source_id}/versions`: explizite neue Version anlegen.

Für URLs verlangt die API mindestens `url`, `title_optional`, `license_or_permission_optional` und `fetch_policy`. Die API liefert vor Verarbeitung die normalisierte Zieladresse zurück.

### 12.3 Admin-Jobs und Reviews

- `GET /api/v1/admin/jobs` und `GET /api/v1/admin/jobs/{job_id}`.
- `POST /api/v1/admin/jobs/{job_id}/retry`.
- `POST /api/v1/admin/jobs/{job_id}/cancel`.
- `GET /api/v1/admin/changes/{change_id}` liefert Diff, Belege und Prüfbericht.
- `POST /api/v1/admin/changes/{change_id}/approve` bindet die Freigabe an `head_commit`.
- `POST /api/v1/admin/changes/{change_id}/reject` verlangt eine Begründung.
- `POST /api/v1/admin/changes/{change_id}/publish` ist getrennt freigabepflichtig oder wird unmittelbar nach gültiger Freigabe durch eine Dienstidentität ausgeführt.
- `POST /api/v1/admin/commits/{sha}/revert` erzeugt wiederum einen prüfbaren Änderungsvorschlag.

### 12.4 Interne APIs

- `POST /api/v1/internal/conversions/callback`.
- `POST /api/v1/internal/jobs/{job_id}/heartbeat`.
- `POST /api/v1/internal/git/merged` zum Reindex nach verifiziertem Commit/Webhook.
- `GET /api/v1/internal/wiki/context` liefert einem autorisierten Actions-/DSPy-Job ausschließlich die benötigten veröffentlichten Ausschnitte.

Interne Endpunkte verlangen HMAC oder kurzlebige Diensttokens mit Replay-Schutz. Netzwerkposition allein gilt nicht als Authentifizierung.

## 13. DSPy-Architektur

### 13.1 Laufzeitmodell

- DSPy und die verwendeten Python-Abhängigkeiten werden versionsgenau gepinnt.
- Ingest, Lint, Kandidatenbildung, Evaluation und Optimierung laufen nativ in Python als kurzlebige GitHub-Actions-Jobs.
- DSPy exportiert nach erfolgreicher Evaluation ein projektspezifisches, portables JSON-Artefakt mit Signaturversion, Instruktionen, Demonstrationen, Modellkonfiguration, Ein-/Ausgabeschema und Prüfsumme.
- Der Online-Pfad lädt ausschließlich ein freigegebenes Artefakt und führt es im TypeScript-BFF gegen Groqs OpenAI-kompatible API aus. Der Browser sieht weder Artefakt-Interna noch Schlüssel. Python, Pyodide und WebAssembly sind im Online-Pfad ausgeschlossen.
- Ein Konformitätstest führt dieselben Fixtures einmal mit DSPy/Python und einmal mit dem TypeScript-Adapter aus. Abweichende Eingaben, Ausgabeschemas oder Validatorergebnisse blockieren die Veröffentlichung des Artefakts.
- Diese Trennung bedeutet: DSPy programmiert und optimiert das System; der Worker ist seine schlanke, providergebundene Produktionslaufzeit. Ein permanenter „DSPy-Chatdienst“ ist im strikten Gratisprofil bewusst nicht vorgesehen.

### 13.2 Module und Verträge

| Modul | Wesentliche Eingaben | Strukturierte Ausgaben |
|---|---|---|
| `ClassifyQuery` | Frage, Gesprächskurzfassung | Absicht, Sprache, Risiko, benötigte Suchstrategie |
| `RewriteForRetrieval` | Frage, erlaubter Gesprächskontext | eigenständige Suchfrage, Begriffe, Entitäten |
| `SelectWikiPages` | Suchfrage, Index-/Trefferkandidaten | gerankte Seiten-IDs mit Begründungscode |
| `RerankEvidence` | Frage, Textausschnitte, Quellenanker | Top-k Ausschnitte, Relevanz, Diversität |
| `AnswerWithEvidence` | Frage, belegter Kontext, Stilregeln | Antwortabschnitte mit Quellen-IDs und Enthaltungsstatus |
| `VerifyAnswer` | Antwort, Aussagen, Quellen | pro Aussage `supported`, `partial`, `unsupported`, `contradicted` |
| `ExtractSourceFacts` | normalisiertes Markdown und Manifest | Aussagen, Entitäten, Zeitbezug, Fundstellen |
| `PlanWikiChange` | neue Fakten, bestehende Seiten, Regeln | minimale Menge anzulegender/zu ändernder Seiten |
| `DraftWikiPatch` | Plan, Quellen, aktuelle Dateiinhalte | strukturierte Dateioperationen und Quellenbindungen |
| `DetectContradictions` | neue Aussagen, bestehende Aussagen | Konfliktpaare, zeitliche/semantische Einordnung |
| `ExtractLearningCandidate` | Frage, Nutzerfeedback, belegte Antwort | Typ, Nutzen, Evidenz, Zielseiten, Risiko |
| `JudgeWikiChange` | Patch, Belege, Regeln, Lintbericht | Freigabeempfehlung, Fehler, Unsicherheit |

Alle Module verwenden typisierte Signaturen. Parserfehler, fehlende Quellen-IDs oder unbekannte Dateioperationen führen zu einem sicheren Fehlschlag statt zu freiem Text, das direkt ausgeführt wird.

### 13.3 Optimierung

- Ein kuratierter Entwicklungs- und Testsatz deckt einfache Faktenfragen, Multi-Hop-Fragen, widersprüchliche Quellen, zeitabhängige Aussagen, unbeantwortbare Fragen, Prompt-Injection und deutschsprachige Formulierungen ab.
- Ein DSPy-Optimizer darf nur gegen diesen versionierten Trainings-/Entwicklungssatz arbeiten und erzeugt ein neues Programm-Artefakt.
- Vor Aktivierung muss das Artefakt die Qualitäts- und Kosten-Gates auf einem getrennten Testsatz erfüllen.
- Modell, Temperatur, Tokenlimit, Signaturversion, Demonstrationen und Optimizer-Konfiguration werden gemeinsam versioniert.
- Es gibt kein automatisches Produktivschalten allein aufgrund eines LLM-Judges; deterministische Prüfungen und ein menschlicher Freigabeschritt bleiben erforderlich.

## 14. Retrieval und Antwortbildung

### 14.1 MVP

- Der veröffentlichte Wiki-Index und die Seitenmetadaten bilden die erste Suchstufe.
- D1 hält Seiten und überschaubare, überschriftenbasierte Chunks als abgeleiteten Index.
- Keyword-/Volltextsuche liefert Kandidaten; DSPy rerankt höchstens eine kleine Kandidatenmenge.
- Pro Antwort werden standardmäßig höchstens sechs Ausschnitte und ein begrenzter Gesprächskontext an das Modell gegeben.
- Direkte Rohquellen-Ausschnitte werden nur ergänzend geladen, wenn eine Wiki-Seite sie referenziert oder eine genaue Belegprüfung dies erfordert.
- Die ausgegebenen URLs und Fundstellen stammen aus Server-Metadaten, nicht aus frei generiertem Modelltext.

### 14.2 Skalierung

- Bis zu einigen hundert Wiki-Seiten bleibt der sichtbare Index der primäre Navigationsmechanismus.
- Ab messbar unzureichendem Recall darf eine hybride Suche ergänzt werden.
- Embeddings beziehungsweise ein Vektorindex werden erst eingeführt, wenn ein festgehaltener Evaluationssatz einen relevanten Qualitätsgewinn gegenüber Volltext plus Reranking zeigt.
- Jeder zusätzliche Index bleibt vollständig aus Git rekonstruierbar und darf nicht zur neuen Wissensquelle werden.

## 15. Qualitätsziele und Metriken

### 15.1 Antwortqualität

- **Citation coverage:** Anteil überprüfbarer sachlicher Aussagen mit mindestens einer Quellen-ID; Release-Ziel mindestens 98 %, kritische Aussagen 100 %.
- **Citation correctness:** Anteil korrekt zugeordneter Fundstellen in einer menschlich geprüften Stichprobe; Ziel mindestens 95 %.
- **Groundedness:** Keine Aussage darf als sicher formuliert werden, wenn `VerifyAnswer` sie als `unsupported` oder `contradicted` markiert.
- **Abstention quality:** Unbeantwortbare Testfragen werden in mindestens 90 % der Fälle als nicht ausreichend belegt erkannt.
- **Retrieval recall@6:** Mindestens 90 % auf dem kuratierten Golden-Set; Multi-Hop-Fragen werden separat gemessen.
- **Kritische Halluzinationen:** null im Release-Testset.

### 15.2 Ingest- und Wiki-Qualität

- 100 % der normalisierten Dokumente besitzen Hash, Provenienz und stabile Fundstellen oder eine explizite Warnung, warum diese fehlen.
- 100 % der veröffentlichten sachlichen Patch-Operationen referenzieren mindestens eine Quellversion.
- Linkintegrität mindestens 99 %; verbleibende Ausnahmen sind dokumentiert.
- Ein erneuter Lauf mit identischem Konvertierungsschlüssel erzeugt denselben Artefakt-Hash.
- Kein erfolgreicher Job hinterlässt Git, D1 und Index in widersprüchlichem Zustand.
- Duplikat-, Widerspruchs- und Stalenzquote werden gemessen; es gibt zunächst keine unrealistischen Nullziele, sondern eine vollständig sichtbare Review-Warteschlange.

### 15.3 Produkt- und Betriebsqualität

- Warmer p95-Wert bis zum ersten sichtbaren Antworttext: Ziel unter 5 Sekunden; vollständige typische Antwort unter 15 Sekunden.
- Cold Starts werden separat gemessen und in der UI kenntlich gemacht.
- Verfügbarkeit wird als Best-Effort des Gratisbetriebs kommuniziert, nicht als SLA beworben.
- Alle Kernabläufe sind bei 360 px Breite bedienbar.
- Keine kritischen WCAG-2.2-AA-Verstöße in automatisierten und manuellen Kernpfadprüfungen.
- Monatliche Quotenprognose und tatsächlicher Verbrauch bleiben unter den konfigurierten harten Limits.

## 16. Sicherheit, Datenschutz und Rechte

### 16.1 Authentifizierung und Autorisierung

- Admin-Endpunkte prüfen die serverseitig gelieferte Identität und eine explizite Allowlist/Rolle bei jedem Request.
- Das Single-Admin-MVP prüft einen GitHub-PAT nur für den zugehörigen Login, verwirft ihn sofort und setzt anschließend ausschließlich eine HMAC-signierte Host-Cookie-Session; der Groq-Key ist kein Admin-Credential.
- ChatGPT-/SIWC-Header, Client-Header oder die bloße Sichtbarkeit einer UI verleihen niemals Adminrechte.
- UI-Ausblendung ist keine Zugriffskontrolle.
- Zustandsändernde Browseranfragen benötigen SameSite-Cookies, Origin-Prüfung und CSRF-Schutz.
- CORS ist standardmäßig same-origin; interne APIs erlauben keine Browser-Origin.
- Diensttokens sind getrennt, rotierbar, minimal berechtigt und niemals im Repository gespeichert.

### 16.2 Upload- und Parser-Sicherheit

- Dateityp wird anhand Magic Bytes und Parserergebnis geprüft, nicht nur anhand Endung oder Browser-MIME.
- Dateiname und Archivpfade werden normalisiert; Path Traversal, Symlinks und absolute Pfade sind verboten.
- Archive, PDFs, XML und YAML besitzen harte Grenzen für dekomprimierte Größe, Tiefe, Knoten, Seiten, Bilder und Laufzeit.
- Makros, Formeln, JavaScript, externe XML-Entitäten und eingebettete Programme werden nie ausgeführt.
- Aktive Inhalte werden vor Vorschau und Veröffentlichung bereinigt.
- Optionaler Malware-Scan darf ergänzt werden; bis dahin werden nicht unterstützte aktive Formate abgelehnt und Rohdownloads nur Admins angeboten.

### 16.3 URL-Sicherheit

- Nur `http` und `https`; keine `file:`, `data:`, `ftp:`, Browser-internen oder Cloud-Metadaten-Schemata.
- DNS-Auflösung und Ziel-IP werden vor Abruf und nach jedem Redirect geprüft. Loopback, Link-local, private Netze und Metadatenbereiche sind gesperrt.
- Anzahl Redirects, Downloadgröße, Zeit, Content-Type und Parallelität sind begrenzt.
- Fetcher identifiziert sich angemessen, respektiert rechtliche/nutzungsbezogene Einschränkungen und speichert Abrufzeit sowie finale URL.

### 16.4 Prompt Injection und Ausgabe

- Quelldokumente gelten vollständig als untrusted data. Darin enthaltene Handlungsanweisungen dürfen Systemregeln und Tool-Berechtigungen nicht verändern.
- LLM-Module erhalten klare Datenbegrenzungen und keine allgemeinen Shell-, Git- oder Netzwerkrechte.
- Dateioperationen werden gegen ein strukturiertes Schema und erlaubte Pfade validiert.
- Wiki-Markdown wird vor HTML-Ausgabe sanitisiert; unsichere Links und eingebettetes HTML sind gesperrt.
- Modellgenerierte Quellen-URLs werden verworfen; nur serverseitig bekannte Quellen-IDs werden gerendert.

### 16.5 Datenschutz und Aufbewahrung

- Öffentlicher Chat verlangt keine personenbezogenen Daten.
- IP-bezogene Rate-Limit-Schlüssel werden gehasht und kurzlebig gespeichert.
- Gesprächsinhalte haben eine dokumentierte Standard-Aufbewahrungsfrist und können früher gelöscht werden; aggregierte Lernsignale dürfen keinen rekonstruierbaren Personenbezug enthalten.
- Vor LLM-Aufrufen kann ein konfigurierbarer PII-/Secret-Filter Inhalte maskieren.
- Provider-Datenflüsse und deren Aufbewahrungsoptionen werden vor Produktivstart dokumentiert.
- Quellen benötigen dokumentierte Berechtigung/Lizenz. Löschen oder Sperren einer Quelle markiert abhängige Wiki-Aussagen als zu prüfen und entfernt sie nicht unbemerkt.

## 17. Betrieb und Quoten

### 17.1 Konservative Produktlimits für das MVP

Die tatsächlichen Werte sind konfigurierbar und werden an die kleinste externe Freigrenze angepasst. Startwerte:

- Besucher: maximal 4 Chatrequests pro Minute, 20 pro Tag und pseudonymer Kennung/IP-Bucket, eine parallele Anfrage.
- Angemeldete Admins: maximal zwei parallele Jobs und ein inhaltsverändernder Wiki-Job zur selben Zeit.
- Upload: standardmäßig 20 MiB pro Datei, höchstens 100 Dateien pro Bootstrap-Batch.
- URL: eine Seite pro Auftrag, maximal 10 MiB Download, fünf Redirects, kein rekursives Crawling.
- LLM-Kontext: maximal 12.000 Eingabetokens, 1.024 Ausgabetokens und sechs Evidenzausschnitte pro normaler Antwort.
- Tagesbudget: globaler harter Request-/Token-Cutoff unterhalb des tatsächlich verfügbaren Groq-Free-Limits.
- Konvertierung: geringe Parallelität; rechenintensive OCR-Jobs werden serialisiert oder zur manuellen Planung zurückgestellt.

### 17.2 Degradationsverhalten

- LLM-Kontingent erschöpft: keine verdeckte Ersatzabrechnung; vorhandene relevante Wiki-Seiten können als Suchergebnis ausgegeben werden.
- DSPy-Artefakt fehlt oder ist ungültig: Worker verwendet die letzte verifizierte Version; existiert keine, bleibt nur Retrieval-only.
- Git-Provider gestört: Lesen aus dem letzten D1-Index bleibt möglich, Schreiben wird sicher angehalten.
- D1-Index inkonsistent: Chat pinnt den letzten verifizierten Commit oder geht in Wartungsmodus.
- GitHub-Asset-Ablage oder Actions-Quote nicht verfügbar: neue Uploads werden vor Übertragung angehalten; veröffentlichter Chat bleibt lesend verfügbar.
- Konverter ausgefallen: Quelle und Job bleiben unverändert wiederaufnehmbar; kein unvollständiges Dokument gelangt ins Wiki.

### 17.3 Beobachtbarkeit

- Strukturierte Logs mit `request_id`, `job_id`, anonymisierter Identität, Komponente, Dauer und Fehlercode.
- Metriken: Anfragen, Tokens, Providerfehler, Latenzen, Cachetreffer, Retrieval-Scores, Jobdauer/-fehler, Review-Warteschlange und externe Quoten.
- Keine Rohdokumente, vollständigen Chatprompts, Auth-Header oder Secrets in Logs.
- Admin-Dashboard zeigt letzte erfolgreiche Sicherung, Git-/Index-Commit, Dead-Letter-Jobs und Quotenwarnungen.
- Täglicher leichter Gesundheitscheck und regelmäßiger Wiki-Lint dürfen nur innerhalb eines verbleibenden Budgets laufen.

### 17.4 Sicherung und Wiederherstellung

- Git ist die Sicherung des veröffentlichten Wikis; Branch-Schutz und mindestens ein dokumentierter Klon/Export schützen vor versehentlichem Verlust.
- D1 wird regelmäßig exportiert, soweit die Gratisplattform dies zulässt; Chatdaten können notfalls verloren gehen, veröffentlichte Wissensdaten nicht.
- Release-Asset-IDs, Manifeste und Inhalts-Hashes ermöglichen Integritätsprüfung; Rohdatenaufbewahrung folgt Lizenz- und Löschregeln.
- Ein Disaster-Recovery-Test baut einen leeren D1-Suchindex aus einem festgelegten Git-Commit neu auf.

## 18. Teststrategie

### 18.1 Unit-Tests

- MIME-/Magic-Byte-Erkennung, Hashing, Dateinamen- und Pfadnormalisierung.
- URL-Validierung inklusive Redirect, IPv4/IPv6, DNS-Rebinding-Simulation und verbotenen Adressbereichen.
- Sichere Parserkonfiguration für XML, YAML, Archive und Tabellenformeln.
- Zustandsübergänge, Lease, Retry, Idempotenz und Quotenberechnung.
- Rollenprüfung, CSRF, signierte Callbacks und Tokenablauf.
- Quellenanker, Citation-Rendering und Markdown-Sanitizing.
- Patchschema und erlaubte Dateioperationen.

### 18.2 Golden- und Konvertertests

Für jedes unterstützte Format existieren mindestens:

- eine kleine normale Datei,
- eine Datei mit Tabellen/Struktur,
- eine fehlerhafte oder gefährliche Datei,
- eine Datei mit Umlauten und nicht-englischem Text,
- ein erwartetes normalisiertes Markdown beziehungsweise explizite tolerierte Abweichungen.

Die Tests prüfen Textvollständigkeit, Überschriften, Tabellen, stabile Fundstellen, Warnungen, deterministische Hashes und sichere Ablehnung.

### 18.3 Integrations- und Vertragstests

- BFF mit lokalem D1-Adapter, simuliertem Release-Asset-Adapter und Git-Testrepository.
- Konverter-Dispatch, signierter Callback, Retry und doppelte Zustellung.
- Groq-/LLM-Adapter mit aufgezeichneten strukturellen Fixtures; echte Smoke-Tests nur budgetbegrenzt.
- Git-Konflikt zwischen `base_commit` und Veröffentlichung.
- Merge-Webhook bis zum vollständigen Reindex.
- Wiederherstellung des Index aus Git.

### 18.4 DSPy-Evaluation

- Versionierter Datensatz mit Frage, erwarteten relevanten Seiten, zulässigen Aussagen, Pflichtzitaten und erwarteter Enthaltung.
- Separate Entwicklung, Test und adversariale Tests; kein Optimieren auf dem Release-Testset.
- Vergleich jeder Programmversion gegen die aktive Baseline bezüglich Qualität, Latenz und Tokenkosten.
- Injection-Fälle in Quellen, widersprüchliche Quellen und irreführende Nutzervorgaben sind Pflichtfälle.

### 18.5 End-to-End- und Sicherheitstests

- Chatfrage → Retrieval → Antwort → Quellenanzeige → Feedback → Lernkandidat.
- Upload jedes Formats → Konvertierung → Vorschau → Wiki-Diff → Freigabe → Git-Merge → Reindex → belegte Chatantwort.
- Ablehnung und Wiederholung eines Jobs sowie Revert eines veröffentlichten Patches.
- Unautorisierter Zugriff auf sämtliche Admin- und internen Endpunkte.
- Upload-/URL-Angriffe, XSS in Markdown, Prompt Injection, Replay und Rate-Limit-Umgehung.
- Mobile Bedienung, Tastatur, Screenreader-Kernpfad und visuelle Regression der Chat-/Admin-Seiten.

## 19. Phasenweiser Umsetzungsplan

### Phase 0 – Randbedingungen und technische Spikes

**Lieferumfang**

- `llm-wiki.md` und diese Spezifikation als freigegebene Arbeitsgrundlage.
- Inventar der initialen Markdown-Daten und Links: Anzahl, Gesamtgröße, Sprachen, Lizenzstatus, Dubletten und Sonderfälle.
- Ohne-Kreditkarte-Provisionierungstest für Cloudflare Workers/D1/Workers AI/Browser Run, GitHub und Groq.
- Kleine Spikes für Groq über DSPy, D1-Suche, Git-Patch/PR und je eine repräsentative PDF-/DOCX-/XLSX-Konvertierung.
- Upload-Spike: Worker streamt eine Testdatei in ein GitHub-Release-Asset, `toMarkdown` konvertiert sie und der Hash bleibt durchgängig nachvollziehbar.

**Abnahme**

- Kein ausgewählter Pflichtdienst verlangt ein Zahlungsmittel.
- Eine deutsche Testfrage läuft serverseitig über DSPy/Groq, ohne API-Schlüssel im Browser.
- Die repräsentativen Dateien werden mit überprüfbaren Fundstellen in Markdown konvertiert.
- Offene Providerlimits und Risiken sind als Konfiguration/Entscheidung erfasst.

### Phase 1 – Fundament, Auth und Speicher

**Lieferumfang**

- Umgebungsvalidierung, Secret-Verträge und lokale Entwicklungsadapter.
- D1-Schema/Migrationen für Identität, Quellen, Jobs, Ereignisse, Änderungen, Index und Audit.
- GitHub-Release-Asset-Adapter für immutable Originale; R2 bleibt ein nicht benötigter optionaler Adapter.
- Git-Adapter mit Branch-/Commit-/PR-Operationen und Commit-Trailern.
- Admin-Allowlist, Rollenprüfung, CSRF und interner Dienstauthentifizierung.

**Abnahme**

- Migrationen laufen leer und wiederholbar durch.
- Ein Testartefakt kann abgelegt, per Hash geprüft und ohne öffentliche URL abgerufen werden.
- Ein Dienst kann einen Testzweig/Patch erstellen, aber nicht direkt unkontrolliert auf `main` schreiben.
- Unautorisierte Admin- und interne Requests werden durchgehend abgewiesen.

### Phase 2 – Externer Konverter und Quellenverwaltung

**Lieferumfang**

- Versionierter Konverter-Workflow mit gemeinsamem Ein-/Ausgabevertrag.
- Adapter für Markdown, PDF, HTML/URL, DOCX, XLSX, XML, JSON und YAML.
- Admin-Seiten für Upload/URL, Quellenliste, Detailansicht, Versionen, Vorschau und Jobstatus.
- Vollständige Zustandsmaschine mit Idempotenz, Lease, Retry, Callback und Abbruch.
- Golden-Testkorpus und Sicherheitsgrenzen.

**Abnahme**

- Jede unterstützte Beispielquelle gelangt reproduzierbar zu normalisiertem Markdown oder einer klar begründeten sicheren Ablehnung.
- Doppelte Uploads und Callbacks erzeugen keine doppelten Quellversionen.
- Administrator sieht Originalmetadaten, Markdown-Vorschau, Warnungen und Fundstellen.
- Gefährliche XML/YAML/Archive, interne URLs und aktive Inhalte bestehen die Negativtests nicht.

### Phase 3 – Bootstrap und Wiki-Pflege

**Lieferumfang**

- Dry-Run-Inventar und Batch-Importer für initiale Markdown- und PDF-Dateien sowie Markdown-Linklisten.
- Visuelle Sicherheitsprüfung für PDF-Bestände, Quarantäne ausdrücklich intern/vertraulich gekennzeichneter Gesamtdokumente und Datenminimierung direkter Kontaktdaten vor dem öffentlichen Index.
- DSPy-Module für Extraktion, Änderungsplanung, Patch, Widerspruch und Prüfung.
- Git-basierter Review-Ablauf mit Diffs und Teil-/Gesamtfreigabe.
- Deterministischer Wiki-Linter und Aufbau des D1-Suchindexes.
- Admin-Ansichten für Änderungen und Wiki-Gesundheit.

**Abnahme**

- Der vereinbarte Initialbestand ist vollständig bilanziert; jeder Fehler ist einzeln sichtbar und wiederholbar.
- Ein neuer Beleg aktualisiert im Test genau die vorgesehenen Seiten, Quellenbindungen und Navigationsartefakte gemäß `llm-wiki.md`.
- Eine widersprüchliche Quelle wird nicht still als Wahrheit übernommen.
- Ein freigegebener Patch ist von Quelle bis Git-Commit nachvollziehbar und per Revert rücknehmbar.
- Der D1-Index lässt sich ausschließlich aus dem veröffentlichten Git-Stand neu erstellen.

### Phase 4 – Chat-MVP

**Lieferumfang**

- Mobile Chat-Website mit Streaming, Abbruch, Quellenleiste, verwandten Seiten, Unsicherheit und Fehlerzuständen.
- Retrieval aus veröffentlichtem Wiki, DSPy-Reranking, belegte Antwort und Verifikation.
- Groq-Quota-Guard, Rate-Limits, Caching und Retrieval-only-Degradation.
- Feedback-Endpunkt und minimale Gesprächsverwaltung.
- Versionierter DSPy-Evaluationssatz und Baseline-Bericht.

**Abnahme**

- Eine Antwort verwendet ausschließlich den im `meta`-Event genannten veröffentlichten Wiki-Commit.
- Jede ausgegebene Quellenverknüpfung stammt aus Server-Metadaten und öffnet die richtige Fundstelle beziehungsweise Wiki-Seite.
- Unbeantwortbare und widersprüchliche Golden-Fragen werden sichtbar zurückhaltend behandelt.
- API-Schlüssel, interne Prompts und Gedankengänge sind weder Netzwerkantwort noch Browser-Bundle zu entnehmen.
- Definierte Qualitäts-, Mobil- und Barrierefreiheitsgates sind erfüllt.

### Phase 5 – Lernschleife aus dem Betrieb

**Lieferumfang**

- Asynchrone Extraktion und Deduplizierung von Lernkandidaten.
- Admin-Inbox mit Evidenz, Häufigkeit, Risiko, Zielseiten und Diff.
- Patch-/Review-/Publish-Ablauf für FAQ, Synthese, Alias, Lücke, Widerspruch, Stalenz und Korrektur.
- Schutz gegen Self-Echo: Modellantwort und Nutzerfrage werden nicht als Sachquelle akzeptiert.

**Abnahme**

- Eine wiederkehrende Frage erzeugt höchstens einen aggregierten Kandidaten.
- Ein belegter, freigegebener Kandidat verbessert das Wiki und wird nach Reindex in einer neuen Antwort genutzt.
- Ein unbelegter Nutzerhinweis bleibt unveröffentlicht und ist eindeutig als solcher markiert.
- Ablehnung, spätere Neubewertung und vollständiger Audit-Trail funktionieren.

### Phase 6 – Härtung und öffentlicher Gratisbetrieb

**Lieferumfang**

- Sicherheits-, Last-, Recovery- und Quotenprüfungen.
- Dashboards/Alarme für Providerlimits, Jobs, Indexdrift und Wiki-Gesundheit.
- Datenschutz-/Löschablauf, Quellenrecht-Hinweise und Betriebsdokumentation.
- Zeitgesteuerter Lint innerhalb des Gratisbudgets.
- Runbooks für Provider-Ausfall, erschöpfte Quote, kompromittiertes Token, fehlerhaften Ingest und Revert.

**Abnahme**

- Ein vollständiger Wiederherstellungstest aus Git ist protokolliert.
- Das System überschreitet in einem repräsentativen Testzeitraum keine harte Gratisgrenze und kann keine automatische Zahlung auslösen.
- Kritische Sicherheits- und Datenschutzbefunde sind geschlossen.
- Ausfälle aller externen Komponenten führen zu den spezifizierten sicheren Degradationszuständen.

### Phase 7 – Optionale Skalierung

Diese Phase startet nur bei gemessenem Bedarf.

- Hybride Suche/Embeddings, wenn der Recall der einfachen Suche das Gate verfehlt.
- Page-Level-Leases und feinere Konfliktauflösung bei paralleler Redaktion.
- Automatische Veröffentlichung ausschließlich mechanischer, formal beweisbarer Reparaturen.
- Weitere Dateitypen, OCR-/Bildanalyse oder geplante Website-Aktualisierung.
- Mehrere Wissensräume oder private Daten erst nach eigener Sicherheits-/Kostenarchitektur.

**Abnahme**

- Jede zusätzliche Komponente verbessert eine benannte Metrik signifikant, bleibt rekonstruierbar und erfüllt weiterhin das gewählte Kostenprofil.

## 20. Gesamtabnahme des MVP

Das MVP gilt als erreicht, wenn alle folgenden Bedingungen gemeinsam erfüllt sind:

1. Chat- und Admin-Website sind aus dem Repository reproduzierbar gebaut und ohne Kreditkarte deploybar.
2. Der vorhandene initiale Markdown-/Linkbestand wurde bilanziert und die vereinbarten gültigen Quellen wurden übernommen.
3. PDF, Webseite/URL, DOCX, XLSX, XML, JSON, YAML und Markdown durchlaufen den externen Konverter mit Provenienz und sicheren Fehlerfällen.
4. Eine neue Quelle erzeugt keinen direkten Wiki-Schreibzugriff, sondern einen nachvollziehbaren, prüfbaren Patch.
5. Freigabe veröffentlicht atomar nach Git; D1-Index und Chat referenzieren anschließend exakt diesen Commit.
6. Antworten besitzen korrekte Quellen, behandeln fehlende Evidenz zurückhaltend und bestehen die festgelegten Qualitätsgates.
7. Aus einem Chat kann ein Lernkandidat entstehen; erst Evidenzprüfung und Freigabe machen daraus dauerhaftes Wissen.
8. Rohquellen bleiben unverändert und anhand ihres Hashes prüfbar.
9. Keine geheimen Schlüssel oder Adminfunktionen sind im Client zugänglich.
10. Quoten-, Ausfall-, Retry-, Revert-, Lösch- und Recovery-Abläufe sind getestet und dokumentiert.

## 21. Offene Entscheidungen vor Phase 1

- Ist das Wiki öffentlich, während Rohquellen teilweise privat bleiben, oder sind alle Inhalte öffentlich?
- Welche maximale Einzeldateigröße und Gesamtmenge hat der initiale Bestand tatsächlich?
- Welche Sprachen außer Deutsch müssen Extraktion, Suche und Antwort abdecken?
- Darf ein öffentliches GitHub-Repository verwendet werden, um unbegrenztere öffentliche Actions-Kontingente zu nutzen?
- Sollen Rohquellen im aktuell öffentlichen Repository ebenfalls öffentlich sein, oder muss `trainwiki` vor dem ersten echten Upload privat werden?
- Welche Quelllizenzen erlauben Speicherung von Originaldatei, normalisiertem Text und öffentlicher Synthese?
- Soll der Admin eine einzelne Person bleiben oder ist ein Vier-Augen-Prinzip für risikoreiche Änderungen erforderlich?

Diese Entscheidungen ändern nicht die fachliche Kernarchitektur. Sie wählen konkrete Adapter, Grenzwerte und Sichtbarkeitsregeln innerhalb der oben definierten Verträge.

## 22. Verifizierte Plattformgrundlagen (Stand 2026-08-02)

Diese Links sind volatil und MÜSSEN vor jeder Produktionsfreigabe erneut geprüft werden:

- [Cloudflare Workers – Free-Limits](https://developers.cloudflare.com/workers/platform/limits/): 100.000 Requests/Tag, 10 ms CPU pro Request, 128 MB Speicher und 100 MB Request-Body im Cloudflare-Free-Plan.
- [Cloudflare D1 – Preise und Freikontingent](https://developers.cloudflare.com/d1/platform/pricing/): 5 Millionen gelesene Zeilen/Tag, 100.000 geschriebene Zeilen/Tag und 5 GB Gesamtspeicher; [D1-Limits](https://developers.cloudflare.com/d1/platform/limits/) begrenzen eine Free-Datenbank auf 500 MB.
- [Cloudflare Markdown Conversion](https://developers.cloudflare.com/workers-ai/features/markdown-conversion/) und [unterstützte Formate](https://developers.cloudflare.com/workers-ai/features/markdown-conversion/supported-formats/): `toMarkdown` ist für die meisten Dokumentkonversionen kostenlos; JSON/YAML sind nicht in der Formatliste.
- [Cloudflare Browser Run `/markdown`](https://developers.cloudflare.com/browser-run/quick-actions/markdown-endpoint/) und [Free-Kontingent](https://developers.cloudflare.com/changelog/post/2025-07-28-br-pricing/): zehn Browser-Minuten/Tag und drei parallele Browser.
- [Groq Free Rate Limits](https://console.groq.com/docs/rate-limits/): für `openai/gpt-oss-20b` derzeit 30 RPM, 1.000 RPD, 8.000 TPM und 200.000 TPD; die Laufzeitkonfiguration verwendet niedrigere harte Projektlimits.
- [GitHub Actions Billing](https://docs.github.com/en/actions/concepts/billing-and-usage): Standard-Runner sind für öffentliche Repositories kostenlos; private Free-Repositories verwenden das monatliche Inklusivkontingent.
- [GitHub Release Assets](https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases): maximal 1.000 Assets je Release und weniger als 2 GiB je Asset; TrainWiki begrenzt wesentlich konservativer.
- [Hugging Face Spaces](https://huggingface.co/docs/hub/spaces-overview): neue Gradio-/Docker-Spaces erfordern inzwischen einen bezahlten Plan; deshalb ist Hugging Face keine Pflichtkomponente.
- [Microsoft MarkItDown](https://github.com/microsoft/markitdown) und [Docling](https://github.com/docling-project/docling): MIT-lizenzierte, native Python-Fallbacks in GitHub Actions.
