---
title: "NTR Liste 02 09 25"
source_id: "src_832079ca4a0cfb165e73"
source_version_id: "sv_eae0d17144f6fbf53591fd03"
source_sha256: "e44c824067dbac7571bab0c25b71b5b710b1978a1e2256883dd1dad25ca1aebd"
original_filename: "NTR-Liste-02-09-25-data.pptx"
media_type: "application/vnd.openxmlformats-officedocument.presentationml.presentation"
imported_at: "2026-08-08T16:06:49Z"
license: "unknown"
canonical_url: "https://www.dbinfrago.com/resource/blob/13575668/0fb82fe91fc45f39592eb01d8d6ef259/NTR-Liste-02-09-25-data.pptx"
origin_page_url: "https://www.dbinfrago.com/web/schienennetz/etcs/anforderungen/etcs_ntr-12348902"
---

# NTR Liste 02 09 25

## Folie 1

DB InfraGO | I.ITL 71 | 02.09.2025
1
NTR
für ERTMS/ETCS-Fahrzeugausrüstung
Nr.
Titel
Anforderungstext
CR
2
Systemversion
1
Status
3
Blue-print
1.0
1.1
2.0
2.1*
2.1
2.2 3.0
1
(gelöscht, da Tests in ESC-Tests überführt wurden)
2
LRBG-Interpretation beim ETCS-Startlauf (
SoM
)
Unterschiedliche Interpretationen des LRBG-Status „
unknown
“ beim ETCS-Startlauf (
SoM
) durch das RBC und das ETCS-Fahrzeuggerät müssen vermieden werden.
958
x
--
--
--
--
N
3
(gelöscht, da in „Bekanntgabe 09 des AK ZZS“ enthalten)
4
Eingebaute Klasse-A und Klasse-B Zugbeeinflussungssysteme
Wenn bei einem vom Triebfahrzeugführer initiierten Levelwechsel, das ausgewählte fahrzeugseitige Klasse-B-Zugbeeinflussungssystem nicht eingebaut (
Subset
035 10.1.1.1) ist, dann muss das fahrzeugseitige Klasse-A-Zugbeeinflussungssystem unabhängig von der Art der Schnittstelle zur Klasse-B eine Zwangsbremsung auslösen.
-
x
x
x
x
x
N
5
(gelöscht, da in NTR 3 enthalten)
6
(gelöscht, da in NTR 3 enthalten)
7
Bremskurven
Die Bremskurvenfunktionalität der Baseline 3 ist gemäß CR 595 und den anderen CR
aus dem ERA-Leitfaden „Implementierung der
Bremskurvenfunktionalität
in Baseline 2“ (ERA_ERTMS_040022) fahrzeugseitig
umzusetzen.
595
4
x
--
--
--
--
N
8
KMS mit mehr als
einem Schlüssel
Das ETCS-Fahrzeuggerät
muss
mehrere Schlüssel verwalten können.
749
x
--
--
--
--
N

## Folie 2

DB InfraGO | I.ITL 71 | 02.09.2025
2
NTR
für ERTMS/ETCS-Fahrzeugausrüstung
Nr.
Titel
Anforderungstext
CR
2
Systemversion
1
Status
3
Blue-print
1.0
1.1
2.0
2.1*
2.1
2.2 3.0
9
GSM
-
R-ETCS
-
Funkmodule (EDOR)
Eine unterbrechungsfreie Kommunikation muss auch bei einem RBC-RBC-Übergang gewährleistet sein, d. h. die
ERTMS / ETCS-Fahrzeugausrüstung
muss in der Lage sein, gleichzeitig Funkverbindungen mit mindestens zwei verschiedenen RBC herzustellen und zu betreiben.
1184
x
x
--
--
--
N
10
Unzulässiges Löschen angekündigter

Levelwechsel
Das ETCS-Fahrzeuggerät darf einen mittels Paket 41 angekündigten Levelwechsel nicht durch einen
mittels Paket 46
kommandierten bedingten Levelwechsel löschen.
800
x
--
--
--
--
N
11
(gelöscht, da Anforderung in TNB enthalten)
12
(absichtlich gelöscht)
13
(absichtlich gelöscht)
14
(gelöscht, da Anforderung im RINF/ISR enthalten)
15
(gelöscht, da Anforderung in TNB enthalten)
16
RAMS-Anforderungen an das ETCS-Fahrzeuggerät
Die ETCS-Fahrzeugeinrichtung von Fahrzeugen, die auf Strecken mit Level 2 ohne Hauptsignale (Strecken ohne PZB-Ausrüstung) fahren, muss einen MTBF-Wert von 23.000 Stunden erfüllen.
-
x
x
x
x
x
N

## Folie 3

DB InfraGO | I.ITL 71 | 02.09.2025
3
NTR
für ERTMS/ETCS-Fahrzeugausrüstung
Nr.
Titel
Anforderungstext
CR
2
Systemversion
1
Status
3
Blue-print
1.0
1.1
2.0
2.1*
2.1
2.2 3.0
17
(gelöscht, da Anforderung der NTR 17 in NTR 19 integriert wurden)
18
(gelöscht, da Anforderung ab 12.12.21 nicht mehr benötigt wird)

## Folie 4

DB InfraGO | I.ITL 71 | 02.09.2025
4
NTR
für ERTMS/ETCS-Fahrzeugausrüstung
Nr.
Titel
Anforderungstext
CR
2
Systemversion
1
Status
3
Blue-print
1.0
1.1
2.0
2.1*
2.1
2.2
3.0
19
Zurücksetzen des Vertrauensintervalls ohne Linking-Information und Verarbeiten von richtungs-bezogenen Informationen aus
Balisengruppen
, die als
ungelinkt
markiert sind
Die Anforderungen gelten nur für die im beigefügten
Blueprint
in Zeile „
Application
“ genannten L1LS-Strecken:
Fahrzeuge, die Strecken, die in dieser NTR in der Zeile „
Application
“ genannt sind, in ETCS L1 befahren werden, müssen die im EECT verabschiedete Lösung „Solution
for
CR1313&1370“ implementiert haben.
Das ETCS-Fahrzeuggerät muss Richtungsinformationen von als
ungelinkt
markierten
Balisengruppen
(gem. Subset-026, 3.4.1.1) auch dann verarbeiten, wenn die Position des Fahrzeuges nicht bekannt ist.
1370
1313
--
x
x
--
--
N
20
(absichtlich gelöscht)
21
Anforderungen an Fahrzeuge mit Cold Movement
Detector
(CMD)
Das ETCS-Fahrzeuggerät muss die entsprechende Information eines CMD, dass ein Fahrzeug in der ETCS-Betriebsart NP bewegt worden ist, so lange speichern, bis die Zugposition auf andere Weise als durch einen CMD validiert worden ist.
1301
--
x
x
x
x
N

*
*
*
*
*
*
*
*
*
*
*
*

## Folie 5

DB InfraGO | I.ITL 71 | 02.09.2025
5
NTR
für ERTMS/ETCS-Fahrzeugausrüstung
Legende:
1
: Mit Inkrafttreten der Verordnung (EU) 2023/XXX (TSI ZZS 2023) und Einführung der
“Single Set of Specification”
werden die bisher existierenden Spezifikationsgruppen #1, #2 und #3 gelöscht. Nur die SV 2.1 wird, wie die neue Systemversion (SV) 2.2, durch den „
Reduced
Envelope“ in Appendix G bzw.
Subset
153 beschrieben.
Im Sinne der TSI ZZS sind die folgenden Baselines aufgeführt und als Beispiel ist jeweils die Version für
Subset
026 genannt:
SV 1.0/1.1 entspricht der Spezifikationsgruppe
#1 (ETCS Baseline 2 und GSM-R Baseline 1): „2.3.0d“ (= Subset 026 Version 2.3.0
mit
Subset 108 Version1.2.0)
SV 2.0 entspricht der Spezifikationsgruppe #2
(ETCS Baseline 3 Maintenance Release 1 (MR1) und GSM-R Baseline 1): „3.4.0“
SV 2.1* entspricht der Spezifikationsgruppe #3 (ETCS Baseline 3 Release 2 (R2) und GSM-R Baseline 1): „3.6.0“
SV 2.1 entspricht der ETCS Baseline 4 +
Subset
153 (V2.2 + V3.0) + Error Corrections (ETCS
Baseline 4 Release 1; Railway Mobile Radio: GSM-R Baseline 1 Maintenance Release 1 + FRMCS Baseline 0; ATO Baseline 1 Release 1): “4.0.0”
SV 2.2
entspricht
der ETCS Baseline 4 + Subset 153 (V3.0) + Error Corrections (ETCS Baseline 4 Release 1; Railway Mobile Radio: GSM-R Baseline 1 Maintenance Release 1 + FRMCS Baseline 0; ATO Baseline 1 Release 1): “4.0.0”
SV 3.0
entspricht
der ETCS Baseline 4 (ETCS Baseline 4 Release 1; Railway Mobile Radio: GSM-R Baseline 1 Maintenance Release 1 + FRMCS Baseline 0; ATO Baseline 1 Release 1): “4.0.0”
2
: CR = „Change Request“, aus der ERA CR Datenbank (CR enthält ggf. weiter Punkte, die nicht den NTR betreffen)
3
: E (Entwurf der NTR-Spiegelgruppe (DB Netz intern)), A (Abgestimmt mit dem deutschen Bahnsektor), N (Notifiziert
ggü
. der ERA)
4
: CR-Klassifizierung nach Subset 108 Version 1.2.0: „not
applicable
“ (
beyond
2.3.0
, SV 1.0)
-: Für den NTR gibt es keinen entsprechenden CR
x: NTR ist in dieser Baseline umzusetzen, da eine entsprechende Anforderung in der Spezifikation fehlt
--: NTR ist für diese Baseline
nicht
relevant, da eine entsprechende Anforderung in der Spezifikation enthalten ist
