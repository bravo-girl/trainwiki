# TrainWiki DSPy-Optimizer

Dieses Verzeichnis enthält den kontrollierten Offline-Workflow für die
TrainWiki-DSPy-Programme. Python und DSPy laufen ausschließlich lokal oder in
einem ausdrücklich gestarteten CI-/Admin-Job. Die öffentliche Laufzeit lädt nur
ein geprüftes portables JSON-Artefakt; sie benötigt weder Python noch
WebAssembly.

Der Workflow verändert das Wiki nicht und aktiviert kein Artefakt automatisch.

## Voraussetzungen und Installation

- Eine unterstützte Python-3-Version und `venv`
- Für reine Offline-Schritte kein Providerkonto und kein API-Schlüssel
- Für ausdrücklich gestartete Groq-Läufe `GROQ_API_KEY` als Prozess- oder
  CI-Secret; niemals als CLI-Argument, in einer Datei oder im Git-Repository

Aus dem Repository-Stamm:

```text
python -m venv .venv
.venv\Scripts\python.exe -m pip install -r optimizer/requirements.txt
```

Die Abhängigkeit ist in `requirements.txt` auf `dspy==3.2.1` festgesetzt. Bei
macOS/Linux lautet der zweite Pfad `.venv/bin/python`. Die folgenden Beispiele
verwenden kurz `python` und setzen voraus, dass diese virtuelle Umgebung
aktiviert ist; alternativ ist jeweils ihr Interpreter direkt aufzurufen.

## Vollständig offline prüfen

Alle Optimizer-Tests einschließlich Dataset-, Metrik-, Budget- und
Artefaktprüfungen laufen ohne Netzwerk:

```text
python -m unittest discover -s optimizer/tests -p "test_*.py"
```

Der eingecheckte Baseline-Stand muss bytegleich aus Dataset und Konfiguration
erzeugbar sein:

```text
python -m optimizer.cli validate \
  optimizer/artifacts/trainwiki-taf-tap-baseline-v1.json \
  --require-baseline-match
```

Zur Inspektion kann die Baseline ohne Dateiänderung auf Standardausgabe erzeugt
werden:

```text
python -m optimizer.cli build --stdout
```

## Artefakte strikt validieren

Jeder Kandidat muss vor Evaluation oder Verwendung durch den portablen Loader:

```text
python -m optimizer.cli validate optimizer/artifacts/KANDIDAT.json
```

Die Prüfung verwirft unter anderem:

- unbekannte oder doppelte JSON-Felder, ungültiges UTF-8 und nicht endliche
  Zahlen;
- secret-artige Schlüssel oder Werte;
- abweichende Modell-, Retrieval-, Signatur- oder JSON-Schema-Verträge;
- unpassende Dataset-, Programm- oder Konfigurationsprüfsummen;
- manipulierte `programVersion`, untypisierte Demonstrationen und inkonsistente
  Optimizer-Metadaten.

Der Loader übernimmt ausschließlich Instruktionen und typisierte
Demonstrationen in neue DSPy-Programme. Er lädt keinen Pickle-Code, keine
Python-Module aus dem Artefakt und keine Zugangsdaten.

## Held-out evaluieren

Netzwerkzugriffe benötigen immer sowohl `--allow-network` als auch ein nur über
die Umgebung bereitgestelltes `GROQ_API_KEY`. Das Call-Budget wird unmittelbar
vor jedem LM-Request hart beansprucht. Da DSPy bei strukturierten Antworten vom
Chat- auf den JSON-Adapter zurückfallen kann, reserviert die Evaluation
konservativ bis zu zwei Requests pro Beispiel. Provider-Retries sind
deaktiviert.

Baseline auf einem held-out Testbeispiel:

```text
python -m optimizer.cli evaluate \
  --allow-network \
  --tasks grounded_answer \
  --split test \
  --max-examples-per-task 1 \
  --max-calls 2 \
  --max-output-tokens 700
```

Portablen Kandidaten gegen denselben Test auswerten:

```text
python -m optimizer.cli evaluate \
  --allow-network \
  --artifact optimizer/artifacts/trainwiki-taf-tap-bootstrap-candidate-v1.json \
  --tasks grounded_answer \
  --split test \
  --max-examples-per-task 1 \
  --max-calls 2 \
  --max-output-tokens 700
```

Bei `--artifact` ist `test` auch ohne explizites `--split` der Standard. Für
vergleichbare Ergebnisse sollen Split, Task, Beispielzahl, Modell,
Token-Grenze und Auswertungsmetrik zwischen Baseline und Kandidat identisch
bleiben.

## Optimierung ausdrücklich starten

Optimierung ist niemals Teil eines Builds oder Live-Chats. Sie benötigt eine
neue Ausgabedatei und darf die eingecheckte Baseline nicht überschreiben.

Kleiner BootstrapFewShot-Lauf:

```text
python -m optimizer.cli optimize \
  --allow-network \
  --optimizer bootstrap \
  --tasks grounded_answer \
  --max-examples-per-task 2 \
  --max-calls 8 \
  --max-output-tokens 700 \
  --artifact-version 1.0.0-bootstrap-candidate \
  --output optimizer/artifacts/trainwiki-taf-tap-bootstrap-candidate-v1.json
```

Kleiner GEPA-Lauf:

```text
python -m optimizer.cli optimize \
  --allow-network \
  --optimizer gepa \
  --tasks grounded_answer \
  --max-examples-per-task 2 \
  --max-calls 8 \
  --max-output-tokens 700 \
  --artifact-version 1.0.0-gepa-candidate \
  --output optimizer/artifacts/trainwiki-taf-tap-gepa-candidate-v1.json
```

Das Budget begrenzt Provider-Requests hart. Ein ausgeschöpftes Budget oder ein
Providerfehler beendet den Lauf ohne Kandidatenaktivierung; die öffentliche
Fehlermeldung enthält weder Exception-Details noch Secrets.

## Promotion und Aktivierung

Ein erfolgreich erzeugtes Artefakt ist nur ein Kandidat. Es darf erst nach
separatem Review aktiviert werden, wenn alle folgenden Bedingungen erfüllt
sind:

1. Die strikte Artefaktvalidierung und alle Offline-Tests sind erfolgreich.
2. Der Kandidat verbessert die Baseline auf einem getrennten held-out Test bei
   identischer Konfiguration. Ein Gleichstand oder Rückschritt reicht nicht.
3. Retrieval Recall@6 bleibt mindestens `0.90`, Citation Coverage erfüllt das
   konfigurierte Gate, die Rate ungültiger Evidence-IDs bleibt `0.0`, und
   unbeantwortbare Fragen führen weiterhin zur Enthaltung.
4. Prompt-Injection-, Provenienz-, Schema- und Secret-Prüfungen bestehen; das
   Lernmodul veröffentlicht weiterhin niemals automatisch.
5. Ergebnis, Programmdigest, Datasetdigest, tatsächliche Provider-Calls und die
   Freigabeentscheidung werden in einem versionierten Bericht dokumentiert.
6. Eine menschlich geprüfte Runtime-Änderung referenziert exakt die freigegebene
   `programVersion`. Optimizer und Evaluation ändern die aktive Version nicht.

Ein einzelnes Testbeispiel ist nur ein reproduzierbarer Smoke-Vergleich und
kein ausreichender Beleg für Generalisierung. Vor einer produktiven Promotion
ist ein größerer, weiterhin budgetierter Golden-Test erforderlich.

Der aktuelle Vergleich ist im
[Qualifikationsbericht vom 2. August 2026](reports/2026-08-02-grounded-answer-held-out.md)
festgehalten.

## Umgang mit Geheimnissen

- `GROQ_API_KEY` ausschließlich über lokalen Secret-Store oder geschützte
  CI-Umgebungsvariablen bereitstellen.
- Schlüssel nie in Argumenten, Artefakten, Datasets, Prompts, Reports,
  Screenshots oder Shell-Ausgaben ablegen.
- Keine vollständigen Providerfehler oder Tracebacks veröffentlichen; sie
  können Requestdaten enthalten.
- Erzeugte Artefakte vor Commit stets erneut mit `optimizer.cli validate`
  prüfen.
