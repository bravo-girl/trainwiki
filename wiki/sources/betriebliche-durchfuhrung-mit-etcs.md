---
title: "Betriebliche Durchführung mit ETCS"
source_id: "src_32881ae3fc274d482920"
source_version_id: "sv_6f10c229fe16d5cf6559201e"
source_sha256: "a6a7ffe0ad0eea1e22a59f7bd3903b6faea7102768acdb045f245d8857af2cca"
original_filename: "Betriebliche Durchführung mit ETCS.md"
media_type: "text/markdown"
imported_at: "2026-08-08T16:06:49Z"
license: "unknown"
canonical_url: "https://www.dbinfrago.com/web/schienennetz/etcs/grundlagen-etcs/betriebliche_durchfuehrung-12590514"
origin_page_url: "https://www.dbinfrago.com/web/schienennetz/etcs/grundlagen-etcs/betriebliche_durchfuehrung-12590514"
---

# Betriebliche Durchführung mit ETCS

## Inhalt

Die Regelungen zur Durchführung von ETCS-Fahrten finden sich u. a. in der Richtlinie 408 (Züge fahren und rangieren) sowie in der Richtlinie 483.0701 (ETCS-Fahrzeugeinrichtungen bedienen).

Die Durchführung des Betriebs unter ETCS-Level 1 Limited Supervision ist vergleichbar mit Fahrten unter punktförmiger Zugbeeinflussung (PZB). Diese Fahrten werden im Gegensatz zu ETCS-Level 2 (und zur Linienzugbeeinflussung (LZB)) signalgeführt durchgeführt.

In ETCS-Level 2 sind Zugfahrten im Regelbetrieb anzeigegeführt in der ETCS-Betriebsart Full Supervision (FS). Das bedeutet, dass dem Triebfahrzeugführer (Tf) alle relevanten Informationen, wie z. B. die Führungsgrößen (Sollgeschwindigkeit, Zielgeschwindigkeit und Zielentfernung), wie bei der LZB, am Display angezeigt werden. Eine Beobachtung der Außensignalisierung ist grundsätzlich nicht mehr erforderlich.

Rangierfahrten werden auch weiterhin nach den bekannten Regeln der Richtlinie 408 durchgeführt. ETCS überwacht lediglich die Geschwindigkeit von 40 km/h.

Auf grenzüberschreitenden Strecken können sich auch in Bezug auf die Nutzung der Zugbeeinflussung ETCS Zusatzbestimmungen ergeben. Die betreffenden Regelungen finden sich in den Zusatzbestimmungen für grenzüberschreitende Bahnstrecken.

Für eine Zugfahrt unter ETCS-Überwachung ergeben sich folgende Abläufe:

Beginn

Bei der Vorbereitung der Zugfahrt gibt der Tf die Zugdaten (z. B. ETCS-Zugart (Train Category), Zuglänge, Bremshundertstel (Brh), maximal zulässige Geschwindigkeit, etc.) am Display ein.

Beginnt die Zugfahrt in einem Bereich mit ETCS-Level 2, meldet sich das ETCS-Bordgerät mit diesen Daten bei der ETCS-Zentrale (Radio Block Centre (RBC)) an. Beginnt die Zugfahrt nicht in einem Bereich mit ETCS-Level 2, wird sie zunächst unter PZB-Überwachung begonnen. Kurz vor einem mit ETCS-Level 2 ausgerüsteten Bereich wird automatisch die Funkverbindung zur ETCS-Zentrale hergestellt und die relevanten Informationen werden an die zuständige ETCS-Zentrale übermittelt.

Sobald alle Voraussetzungen für die Zugfahrt in den Bereich mit ETCS-Level 2 erfüllt sind, übernimmt ETCS die Überwachung der Zugfahrt, die im Regelbetrieb anzeigegeführt in der ETCS-Betriebsart Full Supervision (FS) stattfindet und zeigt dem Tf die Führungsgrößen am Display an.

Durchführung

Das ETCS-Fahrzeuggerät überwacht kontinuierlich die ETCS-Fahrterlaubnis (wie z. B. Geschwindigkeitsprofile, Streckeneigenschaften und das Ende der Fahrterlaubnis (MA)). Die ETCS-Zentrale überwacht die Bewegungen und die Fahrtrichtung der Züge. Bei ETCS-Level 2 wird zwischen zwei Ausrüstungszuständen unterschieden.

**ETCS-Strecken ohne Hauptsignale** Neu sind Strecken ohne konventionelle Signalisierung. Beginnend mit den Neubaustrecken des Verkehrsprojekts Deutsche Einheit (VDE) 8.1 Nürnberg - Erfurt und VDE 8.2 Erfurt - Halle / Leipzig wurde auf die Aufstellung von Lichtsignalen verzichtet. Die Standorte der virtuellen Hauptsignale werden durch ETCS-Halttafeln (ETCS Stop Marker, Signal Ne 14) gekennzeichnet, welche im Fall einer großräumigen Störung die nutzbaren Blockabschnitte begrenzen. Auf der freien Strecke erfolgt die Blockteilung in der Regel durch Blockkennzeichen (ETCS Location Marker), wodurch die Leistungsfähigkeit erhöht werden kann.

Dieser Ausrüstungszustand wird als ETCS-Level 2 ohne Signale (ETCS L2oS) bezeichnet.

**ETCS-Strecken mit Hauptsignalen** In der Regel wird ETCS-Level 2 in Ergänzung zu den bestehenden Zugbeeinflussungssystemen aufgebaut. Die ETCS-Halttafeln werden an vorhandenen Lichthauptsignalen montiert. Zusätzlich können Blockkennzeichen, die nur für anzeigegeführte Züge nutzbar sind, die Leistungsfähigkeit erhöhen. Dieser Ausrüstungszustand wird als ETCS-Level 2 mit Signalen (ETCS L2mS) bezeichnet.

Ende

Wenn der Zug in seinem Zielbahnhof angekommen ist, kann der Tf in die ETCS-Betriebsart Shunting (SH) wechseln, um ggf. notwendige Rangierarbeiten durchzuführen. Andernfalls übernimmt ETCS mit der Deaktivierung des Führertischs und dem daraus resultierenden Wechsel in die ETCS-Betriebsart Stand By (SB) die Stillstandsüberwachung, so dass sich der Fahrzeugverband nicht unbeabsichtigt bewegen kann.
