# Qualifikationsbericht: GroundedAnswer Held-out-Vergleich

| Feld | Wert |
| --- | --- |
| Report-ID | `dspy-qualification-grounded-answer-2026-08-02-v1` |
| Report-Version | `1.0.0` |
| Datum | `2026-08-02` |
| Status | abgeschlossen |
| Task | `grounded_answer` |
| Dataset | `taf-tap-v1` |
| Split | `test` (held-out) |
| Testbeispiele je Variante | `1` |
| Provider | Groq |
| Modell | `openai/gpt-oss-20b` |
| DSPy | `3.2.1` |
| Maximale Ausgabetokens | `700` |

## Vergleich

Beide Varianten wurden direkt gegen dasselbe einzelne held-out Testbeispiel
ausgewertet. Pro Variante wurde tatsächlich ein Provider-Call ausgeführt.

| Variante | ProgramVersion | Optimizer | Score | Beispiele | Provider-Calls |
| --- | --- | --- | ---: | ---: | ---: |
| Baseline | `taf-tap-program-v1` | keiner | **83,84 %** | 1 | 1 |
| Bootstrap-Kandidat | `taf-tap-program-v1-7a31959f808c` | BootstrapFewShot | **83,52 %** | 1 | 1 |

Der Kandidat liegt damit `0,32` Prozentpunkte unter der Baseline.

## Geprüfte Artefakte

### Baseline

- Pfad: `optimizer/artifacts/trainwiki-taf-tap-baseline-v1.json`
- Artifact-Version: `1.0.0`
- Dataset-Digest:
  `sha256:e319863e45a7821e92e4ca3408fd2a0633e1f37825ee3003e3920b1d7871b75c`
- Program-Digest:
  `sha256:4a75436e40f0ba1b09c8d5e2b7a311a47d43f86f51cb6dbfbb78f9c3c30d8615`

### Bootstrap-Kandidat

- Pfad: `optimizer/artifacts/trainwiki-taf-tap-bootstrap-candidate-v1.json`
- Artifact-Version: `1.0.0-bootstrap-candidate`
- Dataset-Digest:
  `sha256:e319863e45a7821e92e4ca3408fd2a0633e1f37825ee3003e3920b1d7871b75c`
- Program-Digest:
  `sha256:7a31959f808c17a16a17a39c7cbfa055bbc3b8f15834c81c6da6c6ab5596b189`
- Enthaltene GroundedAnswer-Demonstrationen: `2`

Beide Artefakte bestanden vor dem Vergleich den strikten portablen Loader mit
Schema-, Secret-, Signatur-, Dataset-, Programm- und
Konfigurationsprüfsummenprüfung.

## Entscheidung

**Die Baseline bleibt aktiv. Der Bootstrap-Kandidat wird nicht promotet.**

Begründung: Das verpflichtende Gate verlangt eine held-out Verbesserung bei
identischer Konfiguration. Der Kandidat verschlechtert den beobachteten Score
von `83,84 %` auf `83,52 %` und erfüllt dieses Gate daher nicht. Es erfolgt
keine Änderung der aktiven `programVersion`.

Der Vergleich mit nur einem Beispiel ist zusätzlich zu klein, um
Generalisierung nachzuweisen. Selbst ein knapper positiver Unterschied hätte
weitere Golden-Set- und Safety-Prüfungen erfordert. Citation Coverage,
Citation-Korrektheit, ungültige Evidence-IDs, Enthaltung, Prompt Injection und
Lern-Sicherheit bleiben eigenständige Freigabegates und werden durch den
aggregierten Einzelwert nicht ersetzt.

## Reproduktion

Die Zugangsdaten werden ausschließlich als geschützte Umgebungsvariable
bereitgestellt und erscheinen weder in den Befehlen noch in diesem Bericht.

Baseline:

```text
python -m optimizer.cli evaluate \
  --allow-network \
  --tasks grounded_answer \
  --split test \
  --max-examples-per-task 1 \
  --max-calls 2 \
  --max-output-tokens 700
```

Bootstrap-Kandidat:

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

Die Befehle erlauben wegen des möglichen Structured-Output-Fallbacks höchstens
zwei Requests pro Variante; in diesem Vergleich wurde jeweils nur ein Request
benötigt.
