---
title: "Normierte Schnittstelle (NSS): Umstellung der Kommunikationswege im Rahmen der TAF/TAP TSI-Einführung"
source_id: "src_f12cccf3fc6318f0cc5b"
source_version_id: "sv_e6d0e9fb54acb8ba5940025c"
source_sha256: "e7d2cb0dd6ae8655144ef0e75b054ed4df36850863c52ee99320884c8f684d36"
original_filename: "Normierte Schnittstelle (NSS)_ Umstellung der Kommunikationswege im Rahmen der TAF_TAP TSI-Einführung.md"
media_type: "text/markdown"
imported_at: "2026-08-08T16:35:02Z"
license: "unknown"
canonical_url: "https://www.dbinfrago.com/web/aktuelles/kund-inneninformationen/kund-inneninformationen/2026-KW12-NSS-Umstellung-der-Kommunikationswege-13773794"
origin_page_url: "https://www.dbinfrago.com/web/aktuelles/kund-inneninformationen/kund-inneninformationen/2026-KW12-NSS-Umstellung-der-Kommunikationswege-13773794"
---

# Normierte Schnittstelle (NSS): Umstellung der Kommunikationswege im Rahmen der TAF/TAP TSI-Einführung

## Inhalt

19\. März 2026, 15:05 Uhr

Im Zuge der EU weiten harmonisierten TAF/TAP TSI Vorgaben und stark wachsender Datenmengen, modernisieren wir unsere Kommunikation und Fahrplandatenbereitstellung.

Die Bereitstellung von Fahrplandaten über die NSS als Gemeinsame Fahrplandatenhaltung (GFD)-Zug und GFD-Zug mit Anpassungen durch betriebliche Fahrplandatenbearbeitung (BZD)-Zug per E-Mail ist in Zukunft nicht mehr möglich. Hintergrund ist, dass im Rahmen der TAF/TAP TSI-Einführung die Datenmengen durch Wegfall der Ergänzungsfahrpläne deutlich um den Faktor 13 steigen.

**Geplante Änderungen** **NSS-Emailversand:**

Umstellung von E‐Mail auf SFTP-Onlineübertragungen oder BDV/pathOS-CI. Die Übermittlung betriebsrelevanter Fahrplandaten (GFD- und BZD-Zug) per E‐Mail wird eingestellt. Künftig nutzen wir SFTP oder das Common Interface (CI) über den Betriebsdatenverteiler (BDV) sowie pathOS (Fahrplan) als EU‐regulierte TAF/TAP TSI‐Schnittstelle. Das erhöht Sicherheit, Skalierbarkeit und Nachvollziehbarkeit und ist für die gestiegenen Nutzlasten deutlich robuster.

**Zugdaten:**

Für Züge mit Gültigkeit ab 13. Dezember 2026 werden die BZD-Züge (GFD-Zug angereichert um operative Fahrplanänderungen) rollierend mit einer Vorschau von 30 Tagen übertragen. Der jeweils nächste Verkehrstag (aktueller Tag + 30 Tage) wird morgens zwischen 0 bis 3 Uhr übermittelt. Bis Juni 2027 erfolgt die Umstellung des BZD-Zuges und des GFD-Zuges via NSS auf die PathDetailsMessage via BDV und pathOS-CI. Die Kommunikation wird vollständig auf BDV und pathOS-CI konsolidiert. Damit schaffen wir eine durchgängige, standardisierte Datenbasis und reduzieren Medienbrüche sowie Abstimmaufwände.

BZD-Zug und GFD-Zug via NSS werden im Juni 2027 eingestellt.

Detaillierte technische Spezifikationen und Migrationsfenster stellen wir rechtzeitig bereit.

Vielen Dank für Ihr Verständnis und Ihre Unterstützung auf dem Weg zu einer zukunftsfähigen, EU konformen Datenkommunikation.
