# Quellenbereich

Dieser Bereich enthält die kleinen, prüfbaren und versionierten Bestandteile der Raw-Schicht. Die Regeln aus [`../llm-wiki.md`](../llm-wiki.md) und [`../spec.md`](../spec.md) sind verbindlich.

- `manifests/`: ein Manifest je unveränderlicher Quellversion
- `normalized/`: möglichst verlustarmes, unveränderliches Markdown aus Original oder Snapshot
- `assets/`: kleine referenzierte Begleitdateien; große Originale liegen außerhalb der normalen Git-Historie

Eine bereits vorhandene Datei wird niemals überschrieben. Eine Inhaltsänderung erzeugt eine neue `source_version` mit neuem SHA-256-Hash.
