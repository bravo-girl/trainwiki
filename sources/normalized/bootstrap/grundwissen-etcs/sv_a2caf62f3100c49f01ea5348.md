---
title: "Grundwissen ETCS"
source_id: "src_24365c8e53efcf65c99e"
source_version_id: "sv_a2caf62f3100c49f01ea5348"
source_sha256: "15bc183403a437fc505ed76ae178c0c0be5f638f6c597cd0200c098a57de1222"
original_filename: "Grundwissen ETCS.md"
media_type: "text/markdown"
imported_at: "2026-08-08T16:06:49Z"
license: "unknown"
canonical_url: "https://www.dbinfrago.com/web/schienennetz/etcs/grundlagen-etcs/grundwissen-etcs-12285634"
origin_page_url: "https://www.dbinfrago.com/web/schienennetz/etcs/grundlagen-etcs/grundwissen-etcs-12285634"
---

# Grundwissen ETCS

## ETCS Level

Die unterschiedlichen ETCS-Level werden nachfolgend beschrieben:

ETCS Level 0

ETCS-Level 0 ist eine „Rückfallebene", in die das Fahrzeug entweder automatisch wechselt oder wenn der Triebfahrzeugführer (Tf) ETCS-Level 0 ausgewählt hat. Dies kann sein, wenn das Fahrzeug über kein nationales Zugbeeinflussungssystem verfügt oder wenn dieses nicht betriebsbereit ist. In ETCS-Level 0 ist die zulässige Geschwindigkeit für das Fahren ohne Zugbeeinflussung maximal 50 km/h. Dieser nach der Eisenbahn-Bau- und Betriebsordnung (EBO) festgelegte nationale Wert (National Value) wird vom ETCS-Fahrzeuggerät technisch überwacht, wenn dieser vorher mittels Balise an das ETCS-Fahrzeuggerät übertragen wurde.

ETCS Level 1

ETCS-Level 1 Limited Supervision (LS) besitzt eine ähnliche Ausprägung wie das deutsche Klasse-B-System PZB. Züge verkehren dabei nicht in der ETCS-Betriebsart Full Supervision (FS), wie bei ETCS-Level 2, sondern in der ETCS-Betriebsart Limited Supervision (LS). Die Bezeichnung des Systems als „ETCS-Level 1 LS“ wäre aber insofern unzutreffend, da ein Zug bei einer Fahrt im ETCS-Level 1 auch in andere ETCS-Betriebsarten wechseln kann als in die ETCS-Betriebsart LS (beispielsweise ETCS-Betriebsart Staff Responsible (SR)). Deshalb wird für die streckenseitigen Implementierung von ETCS-Level 1 LS die Bezeichnung ETCS signalgeführt (ESG) verwendet.

Bei ESG muss der Tf die Außensignale beachten, er fährt folglich signalgeführt. Das ETCS-Fahrzeuggerät überwacht kontinuierlich die Geschwindigkeit. Die von ETCS benötigten Informationen für die Fahrterlaubnis (MA) werden nicht im Stellwerk abgegriffen, sondern von den LST-Komponenten am Gleis, z. B. von Signalen, die in eine Lineside Electronic Unit (LEU) eingespeist und mittels Balisen an das ETCS-Fahrzeuggerät übertragen werden. Bei ESG kann die LEU als „Mini-LEU“ ausgeführt werden, da diese nur sehr wenig Energie benötigt und gegenüber einer „Voll-LEU“ bei ETCS-Level 1 nur einen geringen Funktionsumfang besitzt. Die LEU generiert aus den Informationen der LST-Komponenten die Telegramme, die an das Fahrzeug bei Überfahrt übertragen werden. ESG ist nur für Geschwindigkeiten bis 160 km/h zugelassen (analog wie PZB).

ETCS Level 2

Die ETCS-Strategie der DB InfraGO AG sieht grundsätzlich die Ausrüstung der Strecken mit ETCS-Level 2 vor. Strecken mit einer zulässigen Höchstgeschwindigkeit > 160 km/h müssen grundsätzlich mit ETCS-Level 2 realisiert werden.

Voraussetzung für eine Streckenausrüstung mit ETCS-Level 2 ist, dass die Eisenbahninfrastruktur (Stellwerke) für eine Anbindung an die ETCS-Zentrale geeignet ist. Beim Fahren im ETCS-Level 2 findet eine kontinuierliche Kommunikation zwischen Fahrzeug und Strecke (ETCS-Zentrale) mittels Funk über GSM-R statt, über die das Fahrzeug u. a. seine ETCS-Fahrterlaubnis (Movement Authority (MA)) erhält.

In ETCS-Level 2 sind Zugfahrten im Regelbetrieb anzeigegeführt in der ETCS-Betriebsart Full Supervision (FS), d. h. dem Tf werden alle relevanten Informationen (u. a. die Führungsgrößen) am Display angezeigt. Ein Wechsel in eine andere ETCS-Betriebsart z. B. On Sight (OS) ist möglich.

**Weitere Merkmale:**

- Das ETCS-Fahrzeuggerät überwacht kontinuierlich die ETCS-Fahrterlaubnis (wie z. B. Geschwindigkeitsprofile, Streckeneigenschaften und das Ende der Fahrterlaubnis (MA))
- Balisen dienen hauptsächlich zum Zurücksetzen der Odometrieungenauigkeiten bei Fahrzeugen
- Ermittlung des genauen Standortes u. a. mittels Dopplerradar, Wegimpulsgebern und Balisen
- Sicherung des Fahrwegs liegt beim Stellwerk
- Geschwindigkeiten von mehr als 160 km/h möglich
- ETCS-Level 2 ist vergleichbar mit der heutigen Linienzugbeeinflussung (LZB)
- Auf Hauptsignale kann verzichtet werden

ETCS Level NTC PZB/LZB

Dieser ETCS-Level dient dazu, dass mit ETCS ausgerüstete Fahrzeuge auch Strecken befahren können, die nicht mit ETCS ausgerüstet sind, sondern noch mit einem nationalen Zugbeeinflussungssystem (auch Klasse B System genannt).

Ab dem Spezifikationsstand (Baseline) 3 wird dieser ETCS-Level nicht mehr als ETCS-Level STM (Specific Transmission Module), sondern als ETCS-Level NTC (National Train Control) bezeichnet.

In ETCS-Level NTC PZB/LZB übergibt das ETCS-Fahrzeuggerät die Überwachung an ein nationales Zugbeeinflussungssystem. Das Specific Transmissions-Modul (STM) ist die Schnittstelle zu einem nationalen Zugbeeinflussungssystem und stellt diese unter ETCS dar. Die Industrie kann für die meisten in Europa eingesetzten nationalen Zugbeeinflussungssysteme ein STM bereitstellen. Sollen ETCS-Fahrzeuge auf Strecken mit unterschiedlichen nationalen Zugbeeinflussungssystemen eingesetzt werden, sollten sie mit den hierfür erforderlichen STM ausgerüstet sein.

## ETCS Baseline

Unterschiedliche infrastrukturseitige ETCS-Spezifikationsstände (Baseline, entsprechend TSI ZZS) am Beispiel von Subset 026 System Requirements Specification (SRS) haben u. a. Einfluss auf die Fahrzeuge. Aus diesem Grund ist es für die Eisenbahnverkehrsunternehmen (EVU) stets relevant zu wissen, welche streckenspezifischen Anforderungen gelten. In den folgenden Grafiken sind Informationen zum SRS-Versionsmanagement und der Kompatibilität der einzelnen Baselines untereinander dargestellt.

![](https://www.dbinfrago.com/resource/blob/12285638/d1fc34c7ab1fa7bd5e7b35fd643496b0/etcs_baseline_erklaerung-data.jpg)

![](https://www.dbinfrago.com/resource/blob/12285640/d3704c487b232763017e9566bbee8b54/etcs_baseline_kompatibilitaet-data.jpg)

## Streckenkomponenten

Eine ETCS-Streckenausrüstung besteht abhängig vom ETCS-Level aus folgenden Komponenten:

- ETCS-Zentrale, auch Radio Block Centre (RBC) genannt
- Balisen (schaltbare und nicht schaltbare Balisen)
- LEU (Lineside Electronic Unit)
- Euroloop (wird auf den Strecken der DB InfraGO AG nicht verwendet)
- ETCS-Halt-Tafel (ETCS Stop Marker) = Signal Ne 14 (entsprechend Richtlinie 301 Signalbuch)
- Blockkennzeichen (ETCS Location Marker)

Balisen dienen der Ortung und der Informationsübertragung von der Strecke auf das Fahrzeug und können z. B. zur Richtungserkennung oder um mehr Informationen übertragen zu können, zu Balisengruppen aus mindestens zwei einzelnen Balisen zusammengefasst werden.

Die ETCS-Streckenausrüstung enthält ihre Informationen entweder direkt vom Stellwerk, über Funk durch GSM-R vom Fahrzeug oder durch einen rückwirkungsfreien Signalabgriff an vorhandener Streckenausrüstung.

## Fahrzeugkomponenten

In einem mit ETCS ausgerüsteten Fahrzeug können sich, je nach geplantem Einsatzbereich, folgende ETCS-Komponenten befinden:

- ETCS-Fahrzeuggerät (On-board unit (OBU)), enthält u. a. den sicheren Rechner (European Vital Computer (EVC))
- Display und Bedienelemente am Führerpult bzw. im Führerraum
- JRU (Juridical Recorder Unit), Gerät zum Aufzeichnen von Fahrdaten
- Balisenantenne
- BTM (Balise Transmission Module)
- Euroloopantenne (z. B. bei Fahrzeugen im grenzüberschreitenden Verkehr, da Euroloop nicht auf den Strecken der DB InfraGO AG verwendet wird)
- LTM (Loop Transmission Module)
- STM (Specific Transmission Module), Schnittstelle zum nationalen Zugbeeinflussungssystem
- GSM-R-ETCS-Funkmodul (ETCS Data only Radio (EDOR))

Abhängig vom jeweiligen ETCS-Level werden die Streckeninformationen durch Balisen oder über Funk durch GSM-R von der ETCS-Zentrale auf das Fahrzeug übertragen.

## Beantwortung häufiger Fragen zu ETCS

An dieser Stelle beantwortet die DB InfraGO AG ausgewählte Fragen zu ETCS. Hier finden sich auch alle Angaben, die gemäß TSI OPE Anlage D3 vom Infrastrukturbetreiber zur Verfügung zu stellen sind.

Kann die ETCS-Streckeneinrichtung Track Conditions (Statische Streckeneigenschaften) übermitteln und falls ja, welche werden übermittelt?Auf Strecken der DB InfraGO AG ist die Übermittlung von Streckeninformationen (Track Conditions) in ETCS wie nachfolgend dargestellt möglich:

**ETCS-Level 1** Bereiche mit Verbot der Wirbelstrombremse

**ETCS-Level 2** Das Profil statischer Streckeneigenschaften muss folgende Informationen enthalten, falls die Eigenschaften der auszurüstenden Strecke dies erfordern:

- „Hauptschalter-Aus“ Bereiche
- „Stromabnehmer senken“ Bereiche
- Bereiche mit Metallmassen am Fahrweg
- Notbremsüberbrückungsbereiche
- Bereiche mit Aktivierung der Druckdichte
- Bereiche ohne Funkversorgung
- Bereiche mit Verbot der Wirbelstrombremse
- Bereiche mit Verbot der regenerativen Bremse
- Bereiche mit Verbot der Magnetschienenbremse
- Art der Traktionsenergie
- Oberstrombegrenzung
- Pfeiftafeln für nicht technisch gesicherte Bahnübergänge
- Tunnel Stopping Areas

**Hinweis:**Derzeit müssen im Strecken der DB InfraGO AG folgende Streckeneigenschaften nicht unterstützt werden:

- Bereiche mit Verbot der Magnetschienenbremse
- Tunnel Stopping Areas

Bahnübergänge: Verwendet die ETCS-Streckeneinrichtung die Level Crossing Procedure aus Subset 026 oder eine vergleichbare Lösung?

**ETCS-Level 1** Anstelle der Level Crossing Procedure wird eine vergleichbare Lösung mittels einer Langsamfahrstelle (Temporary Speed Restrictions (TSR)) verwendet; diese führt zu einer identischen Überwachung ohne Anzeige (Hintergrundüberwachung).

**ETCS-Level 2** Für Bahnübergänge mit Überwachungssignal (ÜS-BÜ) wird die Level Crossing procedure angewendet.

Fordert die ETCS-Streckeneinrichtung, dass das ETCS-Fahrzeuggerät permanent eine gültige Position während des Startlaufs haben muss?

**ETCS-Level 1** Nicht relevant bzw. über U\_CR1313 / NTR 17 abgedeckt.

**ETCS-Level 2** Beim Startlauf (Start of Mission, SoM) ist zwischen der aktuellen und zukünftigen Umsetzung zu unterscheiden:

***Aktuell*** Forderung nicht vorhanden; es soll generell im ETCS-Level NTC PZB/LZB gestartet werden, außer es ist im Streckenbuch etwas anderes geregelt (beispielsweise für Bahnhöfe auf Strecken mit ETCS-Level 2 ohne Hauptsignale - hier ist ETCS-Level 2 zu wählen).

***Zukünftig*** Spezielles von der ETCS-Zentrale gesteuertes Verfahren. Dieses nutzt externe Informationen, die der ETCS-Zentrale zur Verfügung gestellt werden. Ein Start in ETCS-Betriebsart SR ist nur möglich, wo es Balisen erlauben.

Welche Überhöhungsfehlbeträge der Strecke werden zur Ermittlung des Static Speed Profiles (SSP) verwendet und welche anderen ETCS-Zugarten (Train category) mit geringerem Überhöhungsfehlbetrag sind vorhanden, für die die ETCS-Streckeneinrichtung ein SSP bereitstellen kann?

**ETCS-Level 1** Längs- und Querneigungen werden nicht verwendet. Wegen Subset 026 (3.7.1.1 + 3.7.2.3) muss aber ein Gradientenprofil ohne Neigung übertragen werden.

**ETCS-Level 2** Es werden die Überhöhungsfehlbeträge entsprechend den folgende ETCS-Zugarten unterstützt:

- PASS 3 (Reisezug mit 150 mm Überhöhungsfehlbetrag)
- FP 3 (Güterzug in Bremsstellung P mit 130 mm Überhöhungsfehlbetrag)
- FG 3(Güterzug in Bremsstellung G mit 130 mm Überhöhungsfehlbetrag)

Hinweis: Die Fahrzeuge müssen mindestens der ETCS-Zugart PASS3, FP3 oder FG3 entsprechen. Fahrzeuge mit einer niedrigeren ETCS-Zugart dürfen auf Strecken mit ETCS-Level 2 der DB InfraGO AG nicht eingesetzt werden.

Welche Festlegungen gibt es für die Nationalen Werte (Nationale Values) auf den Strecken der DB InfraGO AG?

Informationen zu den Nationalen Werten, die auf den Strecken der DB InfraGO AG gelten, finden Sie auf folgender Seite: [ETCS Nationale Werte](https://www.dbinfrago.com/web/schienennetz/etcs/anforderungen/nationale-werte-11089676)

## ETCS-Glossar

Das ETCS-Glossar (siehe oben rechts im Downloadbereich) erläutert deutsche und / oder fremdsprachliche Begriffe und / oder deren Abkürzung, die bei der Systementwicklung von ETCS, insbesondere den streckenseitigen Lastenheften, verwendet werden.
