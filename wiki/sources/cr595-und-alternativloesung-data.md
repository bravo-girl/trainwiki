---
title: "CR595 und Alternativloesung"
source_id: "src_270341122952f3cd669a"
source_version_id: "sv_75fe24be5a0ed2a3366679ac"
source_sha256: "82eef642d56b5a2f459c11d433ad36158ac11bc86343ba951ba36fd29ec65a7c"
original_filename: "CR595-und-Alternativloesung-data.pdf"
media_type: "application/pdf"
imported_at: "2026-08-08T16:06:49Z"
license: "unknown"
---

# CR595 und Alternativloesung

## Seite 1

Europäisches Zugbeeinflussungssystem (ETCS) DB Netz AG
Technik- und Anlagenmanagement LST
Projekt VDE 8.1/8.2 ETCS-Spezifikation und Systementwicklung
I.NPS 322
Völckerstraße 5
80939 München
Dokument
- Technischer Netzzugang –
CR595 und Alternativlösung 2.0 -
Stand: 21.02.2017 Version: 2.0
Prüf- und Freigabezeichnung
Erstellt: Fachgeprüft: Fachgeprüft: Fachlich freigegeben:
München, 21.02.2017 München, 22.02.2017 München, 22.02.2017 München, 22.02.2017
Gez. Erbe Gez. Suiter Gez. Haas Gez. Lang
Rainer Erbe Markus Suiter Jürgen Haas Ralf Lang
DB Netz AG DB Netz AG DB Netz AG DB Netz AG
I.NPS 321 I.NPS 322 I.NPS 322 I.NPS 322
© DB Netz AG Seite 1 von 10

## Seite 2

Projekt VDE 8.1/8.2 - Dokument Technischer Netzzugang - CR595 und Alternativlösung 2.0
Herausgeber
Organisation: Fachautor:
DB Netz AG Rainer Erbe
Technik- und Anlagenmanagement LST Tel.: (089) 1308 - 6645 / intern: 962 - 6645
ETCS-Spezifikation und Systementwicklung Fax: (089) 1308 - 1844 / intern: 962 - 1844
I.NPS 322 E-Mail: [E-Mail-Adresse entfernt]
Völckerstraße 5
80939 München
DB-Dateiname: Technischer Netzzugang - CR595 und Alternativlösung 2.0
Versionsspiegel
Version Stand Gegenstand der Änderung Bemerkung
0.3 18.10.2013 Fachlich geprüfte Version
1.0 15.04.2015 Fachlich freigegebene Version
1.1 31.01.2017 Fortgeschriebene Version
2.0 21.02.2017 Fachlich geprüfte und freigegebene
Version
Mitwirkung
Organisation Bereich Bemerkung
DB Netz AG I.NPS322 – Markus Suiter
I.NPS322 – Jürgen Haas
DB Systemtechnik GmbH I.T-IVE 31(2)– Olaf Gröpler
Stand: 21.02.2017 Version: 2.0 © DB Netz AG Seite 2 von 10

## Seite 3

Projekt VDE 8.1/8.2 - Dokument Technischer Netzzugang - CR595 und Alternativlösung 2.0
Inhaltsverzeichnis:
1. Anforderungen ................................................................................................................... 4
2. Begründungen/Erläuterungen .......................................................................................... 5
3. Technische Parameter ...................................................................................................... 6
3.1. Bremskurvenparameter mit den DB Korrekturfaktoren ................................................................ 6
3.2. Anforderungen an die Bremseigenschaften entsprechend der relevanten Vorgaben aus der
Projektierungsrichtlinie 819.1344 für ETCS Level 2 ...................................................................... 8
4. Auflagen ........................................................................................................................... 10
Stand: 21.02.2017 Version: 2.0 © DB Netz AG Seite 3 von 10

## Seite 4

Projekt VDE 8.1/8.2 - Dokument Technischer Netzzugang - CR595 und Alternativlösung 2.0
1. Anforderungen
1. Die Bremskurven entsprechend des CR U595ff müssen fahrzeugseitig umgesetzt sein.
2. Es wird empfohlen den ERA-Leitfaden “BASELINE 2 REQUIREMENTS FOR
IMPLEMENTATION OF BRAKING CURVES FUNCTIONALITY”, der den Umgang mit dem
CR U595ff für die Baseline 2 beschreibt, anzuwenden.
3. Sollte der CR U595ff fahrzeugseitig nicht umgesetzt sein, so müssen die implementierten
Bremskurven kompatibel
a. mit den Anforderungen der Projektierungsregeln 819.1344 für ETCS Level 2 sein
und
b. mit den nach Richtlinie 859.1703 festgelegten streckenspezifischen Abständen zwischen Stellsignal und Heißläuferortungsanlage sein.
Stand: 21.02.2017 Version: 2.0 © DB Netz AG Seite 4 von 10

## Seite 5

Projekt VDE 8.1/8.2 - Dokument Technischer Netzzugang - CR595 und Alternativlösung 2.0
2. Begründungen/Erläuterungen
Zu 1:
Die SRS 2.3.0d enthält kein Modell zur Umwandlung von Bremshunderstel in Bremskurven.
Die SRS 2.3.0d enthält keine spezifischen Festlegungen zu den Sicherheitsmargen und deren
interoperablen Berücksichtigung.
Die Bremskurven der Baseline 2 können zu einer deutlich schlechteren Performance führen, was
eine deutliche Reduzierung der Streckenkapazität bedeutet.
Zu 2:
Diese Lücken werden geschlossen durch CR U595ff. Das ERA-Dokument “BASELINE 2
REQUIREMENTS FOR IMPLEMENTATION OF BRAKING CURVES FUNCTIONALITY” gibt Hilfestellung wie mit den CR U595ff bei der Baseline 2 umzugehen ist.
Zu 3:
a. Es muss nachgewiesen werden, dass die Sicherheitsmargen der implementierten
Bremskurven und Bremsentwicklungszeit mit dem Bremskurvenmodell des CR
U595ff mit den DB Korrekturfaktoren vergleichbar sind. Hierfür sollte das UIC Blatt
544-1 (5. Ausgabe, Kapitel 5.2.2.2) zu Grunde gelegt werden.
b. Der zulässige Abstand zwischen einer Heißläuferortungsanlage und dem zugehörigen Stellsignal wird für ETCS-Strecken gemäß Richtlinie 859.1703 mit Hilfe sogenannter Einzelberechnungen festgelegt. Dabei kommt das Bremsmodell der BL 3
(bzw. des CR U595ff) zur Anwendung, wobei an dieser Stelle immer von einer vorhandenen Guidance Curve ausgegangen wird, die ihrerseits aus der LZB-Sollkurve
abgeleitet wurde. Ein EVU muss bei einer fehlenden CR U595ff-Implementierung
nachweisen, dass die Bremswege seiner Züge entlang der Permitted Speed nicht
länger als die der in der jeweiligen Einzelberechnung unterstellten Guidance Curve
sind.
Stand: 21.02.2017 Version: 2.0 © DB Netz AG Seite 5 von 10

## Seite 6

Projekt VDE 8.1/8.2 - Dokument Technischer Netzzugang - CR595 und Alternativlösung 2.0
3. Technische Parameter
3.1. Bremskurvenparameter mit den DB Korrekturfaktoren
Variable Value
Kv_int_0 0,88
Kv_int_1 0,76
Kv_int_2 0,72
Kv_int_3 0,64
Kv_int_4 0,58
V1 155 km/h
V2 200 km/h
V3 250 km/h
V4 300 km/h
Kr_int_0 1,0
Kr_int_1
Kr_int_2
Kr_int_3
Kr_int_4
L1
L2
L3
L4
Kt_int 1,15
National Data SRS Name Value
(Reference only)
Modification of Q_NVDRIVER_AD Nicht erlaubt
adhesion factor by HES
driver
Shunting mode V_NVSHUNT 40 km/h
(permitted) speed
limit
Staff Responsible V_NVSTFF 40 km/h
mode (permitted)
speed limit
On Sight mode V_NVONSIGHT 40 km/h
(permitted) speed
limit
Unfitted mode V_NVUNFIT 50 km/h
(permitted) speed
limit
Release Speed V_NVREL 40 km/h
value
Distance to be used D_NVROLL 5 m
in Roll Away protection, Reverse
movement protection and Standstill
supervision
Use service brake Q_NVSRBKTRG Nein
in target speed
Stand: 21.02.2017 Version: 2.0 © DB Netz AG Seite 6 von 10

## Seite 7

Projekt VDE 8.1/8.2 - Dokument Technischer Netzzugang - CR595 und Alternativlösung 2.0
National Data SRS Name Value
(Reference only)
monitoring
Permission to re- Q_NVEMRRLS Sofort nach Entfall
lease emergency der Bedingung
brake
Permission to use Q_NVGUIPERM Ja
guidance curves
Permission to use Q_NVSBFBPERM Nein
the service brake
feedback
Max. speed limit for V_NVALLOWOVT 40 km/h
triggering the over- RP
ride end of authority
function
Permitted speed V_NVSUPOVTRP 40 km/h
limit to be supervised when the
“override EOA”
function is active
Distance for train D_NVOVTRP 400 m
trip suppression
when override end
of authority function
is triggered
Max. time for train T_NVOVTRP 255 s
trip suppression
when override end
of authority function
is triggered
Change of driver ID M_NVDERUN erlaubt
permitted while
running
System reaction if M_NVCONTACT Zwangsbetriebsradio channel moni- bremsung
toring time limit
expires (T-Contact)
Maximum time T_NVCONTACT 40 s
since creation in
the RBC of last
received telegram.
Distance to be al- D_NVPOTRP 5 m
lowed for reversing
in Post Trip mode.
Max permitted dis- D_NVSTFF Unendlich
tance to run in Staff
Responsible mode
Maximum decelera- A_NVMAXREDAD 2.5 m/s2
tion value under H1
reduced adhesion
conditions (1)
Maximum decelera- A_NVMAXREDAD 2.5 m/s2
tion value under H2
reduced adhesion
conditions (2)
Maximum decelera- A_NVMAXREDAD 2.5 m/s2
tion value under H3
reduced adhesion
Stand: 21.02.2017 Version: 2.0 © DB Netz AG Seite 7 von 10

## Seite 8

Projekt VDE 8.1/8.2 - Dokument Technischer Netzzugang - CR595 und Alternativlösung 2.0
National Data SRS Name Value
(Reference only)
conditions (3)
Lower deceleration A_NVP12 1,2 m/s2
limit to determine
the set of Kv to be
used
Upper deceleration A_NVP23 2,3 m/s2
limit to determine
the set of Kv to be
used
3.2. Anforderungen an die Bremseigenschaften entsprechend der relevanten Vorgaben aus der Projektierungsrichtlinie 819.1344 für ETCS Level 2
1. Pre-Indication
Die Pre-indication darf die folgenden Werte für d nicht überschreiten. d
Bremsvorankündigung Bremsvorankündiergibt sich aus der „maßgeblichen Neigung n“ der Strecke vor dem Signal.
gung
Hinweis: Hierbei handelt es sich um die Transition von PZB nach ETCS Level 2 FS und es sind die
für PZB vorgegebenen fahrzeugspezifischen Höchstgeschwindigkeiten anzusetzen.
2) Abstand zwischen dem Einstiegssignal und dem Folgesignal
Die EBI darf die folgenden Werte für d nicht überschreiten. d ergibt
Grenzsignal-Folgesignal Grenzsignal-Folgesignal
sich aus der „maßgeblichen Neigung n“ der Strecke vor dem Signal.
Hinweis: Hierbei handelt es sich um die Transition von PZB nach ETCS Level 2 FS und es sind die
für PZB vorgegebenen fahrzeugspezifischen Höchstgeschwindigkeiten anzusetzen.
Stand: 21.02.2017 Version: 2.0 © DB Netz AG Seite 8 von 10

## Seite 9

Projekt VDE 8.1/8.2 - Dokument Technischer Netzzugang - CR595 und Alternativlösung 2.0
3) TSR balise group 1
Die “TSR balise group” überträgt eine temporäre Langsamfahrstelle um die Geschwindigkeit eines
Zuges im Mode SR zu reduzieren, wenn er sich einem Signal nähert.
Für die Reduzierung von 40 km/h (maximal zulässige Geschwindigkeit im Mode SR) auf 20 km/h
dürfen die folgenden Abstände d für die pre-indication und d für die Indication
DP_Typ_26 DP_Typ_26_Ind
nicht überschritten werden. d und d ergeben sich aus der „maßgeblichen Nei-
DP_Typ_26 DP_Typ_26_Ind
gung“ der Strecke vor dem Signal.
n [‰] d [m]
DP_Typ_26
n ≥ 0 700
0 > n ≥ -15 720
-15 > n ≥ -25 760
n [‰] d [m]
DP_Typ_26_Ind
n ≥ 0 620
0 > n ≥ -15 650
-15 > n ≥ -25 680
4) TSR balise group 2
Die “TSR balise group2” überträgt eine temporäre Langsamfahrstelle um die Geschwindigkeit von
Zügen im Mode SR auf ETCS Level2-Strecken ohne herkömmliche streckenseitige Signalisierung
zu reduzieren.
Für die Reduzierung von 40 km/h auf 10 km/h dürfen die folgenden Abstände d für die pre-
DP_Typ_26
indication nicht überschritten werden. d , ergibt sich aus der „maßgeblichen Neigung“ der
DP_Typ_26
Strecke vor dem Signal.
Stand: 21.02.2017 Version: 2.0 © DB Netz AG Seite 9 von 10

## Seite 10

Projekt VDE 8.1/8.2 - Dokument Technischer Netzzugang - CR595 und Alternativlösung 2.0
4. Auflagen
1. Auflage:
Die Zulässigkeit einer fehlenden CR U595ff-Implementierung muss durch eine vorangegangene
CSM-Bewertung auf Lastenheftebene bestätigt werden.
2. Auflage
Das SMS des EVU ist für die Durchführung dieser CSM-Bewertung verantwortlich.
3. Auflage
Die Vollständigkeit der in der Alternativlösung ermittelten maßgeblichen und nachzuweisenden
Abstände muss durch die CSM-Bewertung bestätigt werden.
4. Auflage
Die Alternativlösung gilt ausschließlich für die Strecken der VDE8.1/8.2 und Erfurt-Eisenach mit
ETCS Level 2-Ausrüstung.
5. Auflage
ETCS-Level 1 fällt nicht in den Geltungsbereich der Alternativlösung.
Stand: 21.02.2017 Version: 2.0 © DB Netz AG Seite 10 von 10
