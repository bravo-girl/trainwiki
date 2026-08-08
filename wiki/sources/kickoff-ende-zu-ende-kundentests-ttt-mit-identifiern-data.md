---
title: "Kickoff Ende zu Ende Kundentests TTT mit Identifiern"
source_id: "src_2262169b6f00111ef4dc"
source_version_id: "sv_fa49b150c4d3a22a8072376f"
source_sha256: "97504436bbb9c084e054648e4988ff62e02616b1a292226cbfdbe64d32f1a6a5"
original_filename: "Kickoff-Ende-zu-Ende-Kundentests-TTT-mit-Identifiern-data.pdf"
media_type: "application/pdf"
imported_at: "2026-08-08T16:06:49Z"
license: "unknown"
---

# Kickoff Ende zu Ende Kundentests TTT mit Identifiern

## Seite 1

Kickoff: Ende-zu-Ende
Kundentests TAF/TAP TSI mit
Identifiern
11.03.2026

## Seite 2

Meeting Agenda
TOP Zeit Thema Verantwortlich
1 10:30 – 10:50 Überblick TAF/TAP TSI mit Identifiern Andreas Schumann
2 10:50 – 11:00 Fragerunde 1 alle
3 11:00 – 11:20 Testziele Döne Ak / Heike Sperber
4 11:20 – 11:35 Fragerunde 2 alle
5 11:35 – 11:45 Anmeldung zum Test Döne Ak
6 11:45 – 11:55 Fragerunde 3 alle
7 11:55 – 12:00 Ausblick Döne Ak
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 2

## Seite 3

Meeting Agenda
TOP Zeit Thema Verantwortlich
1 10:30 – 10:50 Überblick TAF/TAP TSI mit Identifiern Andreas Schumann
2 10:50 – 11:00 Fragerunde 1 alle
3 11:00 – 11:20 Testziele Döne Ak / Heike Sperber
4 11:20 – 11:35 Fragerunde 2 alle
5 11:35 – 11:45 Anmeldung zum Test Döne Ak
6 11:45 – 11:55 Fragerunde 3 alle
7 11:55 – 12:00 Ausblick Döne Ak
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 3

## Seite 4

Im Betrieb kommen ab 12/2026 die TAF/TAP TSI-Identifier
zum Einsatz
• Nutzen sie die Informationen zu den Identifiern auf der TTT-Homepage
− Kachel „Über TAF/TAP“ > „6. TAF/TAP im Betrieb“: Erklär-Videos und Powerpoint (insbesondere auch Kap. 3
„Meldungsaustausch bei Störungen“)
− Kachel „Über TAF/TAP“ > „3. Flyer-Bibliothek“: Flyer zu Identifiern
− Informationen zu Identifiern in den Technischen Beschreibungen unter den Kacheln Betrieb. Wichtige Meldung für
Updates zu den TTT-Identifiern ist die (betriebliche) PathDetails message.
• Zentrale europäische Grundlage ist Annex 13 des TAF/TAP-Sector Handbook.
• Nehmen sie die BDV-Betriebssprechstunden war, um dort Fragen direkt an die Experten stellen zu können.
Richten sie bei der Trassenanmeldung besonderes Augenmerk auf den korrekten OffsetToReference für die
ReferenceTrainID. Dies ist später im Betrieb ein elementarer Baustein für die Identifikation des korrekten Zugs am
korrekten Tag!
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 4

## Seite 5

Im Betrieb werden die tagesscharfen Versionen der TTT-
Identifier genutzt, zusätzlich zu den OTN-Identifier
Nutzung TAF/P-Identifier
Planungsphase TR/0001/AB12345TFRLH/00/2027
ReferenceTrainID 1 bei DB InfraGO Betrieb ab
12/2026
(Zug-ID)
Ersteller: EVU
Betriebsphase TR/0001/AB12345TFRLH/00/2027/2026-12-29
Object Type Core Element:
(TR = ReferenceTrain, Vom Ersteller frei fest-
PA = Path) zulegende Zeichenfolge Fahrplanjahr
(2 Stellen AN)
(12 Stellen AN) 1) (4 Stellen N)
Path-ID 1 Path-ID 2 Geplantes
Company Code des
Abgangsdatum
(Trassen-ID) (Trassen-ID) Ersteller-EVU Variant: Für verschiedene
an Start-Bst
Ersteller: EIU Ersteller: EIU (4 Stellen N, in Varianten eines Zuges (10 Stellen N) Legende
(2 Stellen AN)
Zukunft AN) AN = Alphanumerisch
N = Numerisch
▪ Die OTN entspricht in ihrem Aufbau der heutigen Zugnummer und zielt vor allem auf die
OTN 1 OTN 3
menschliche Kommunikation sowie die Verwendung in Bestandssystemen.
(Zugnr) (Zugnr)
▪ Bestehende betriebliche Verfahren für die Zugnummer greifen ebenso für die OTN.
Ersteller: EIU Ersteller: EIU
OTN 2 OTN 4
▪ Bis zur Umsetzung der TAF/P-Identifier in 12/2026 werden Züge analog zu heute anhand
(Zugnr) (Zugnr) der OTN/Zugnummer und den Fahrplanzeiten identifiziert. Die OTN wird auch nach
Ersteller: EIU Ersteller: EIU Einführung der TAF/P-Identifier weitergeführt.
• OTN, Operational Train Number (Zugnummer) Der OTN-Identifier ist zur Identifikation eines Zuges vorgesehen,
OTNsolange die TAF/TAP-Identifier nicht verfügbar sind. Das Verfahren ist
• Scheduled Time At Handover (Start-/Einbruchsdatum + Zeit)
Identifier analog zu heute und ist bis 12/2026 führend. Auch danach bleibt es in
• Scheduled Date Time At Transfer (End-/Ausbruchsdatum + Zeit) ein- und ausgehenden Meldungen erhalten.
1) Zusätzlich zu Buchstaben und Zahlen sind im Core Element als Sonderzeichen Bindestrich "-" und Stern "*„ erlaubt,
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 5
wenngleich europäisch nicht empfohlen außer Bindestriche linksbündig zum Auffüllen.

## Seite 6

Die Verwendung der TTT-Meldungen und Identifier ist in den
europäischen Richtlinien (SectorHandbook, Annex 13) beschrieben
(falls nicht fahrplanerisch ausgeregelt)
Doppelführung
 ▪ Heutige Verfahren
PathDetails Message (Trasse „booked/gebucht“)
(Fahrplanmitteilung, Fahrplan-
Tr 1, Pa 1
▪ PathID 2 anordnung) bleiben erhalten
▪ Im akuten Störfallmanagement wird
▪ ReferenceTrainID 2
die ReferenceTrainID für den neuen
▪ Related-ID: ReferenceTrain-ID 1, Path-ID 1
Zug Tr2 im Sinne eines schnellen
▪ Fahrweg der Doppelführung ab Betriebsstelle der
und reibungslosen Ablaufs von DB
erfolglosen Kupplung
InfraGO mit ihrem
OrganisationCode „0080“ im
Tr 2, Pa 2 Namen des EVU vergeben.
▪ Trassenvergabe analog für
Ersatzzüge, die eine neue Trasse
Tr 1, Pa 1 benötigen
Ab 12/2026
i Um die Auswirkungen für den Kunden möglichst gering zu halten, hat die Weiterführung des Eisenbahnverkehrs in der Disposition
oberste Priorität. Die Erfassung der Dispositionshandlungen in den IT-Systemen mit Versand der Meldungen ist dabei nachranging
priorisiert.
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 6

## Seite 7

Die Verwendung der TTT-Meldungen und Identifier ist in den
europäischen Richtlinien (SectorHandbook, Annex 13) beschrieben
(falls nicht fahrplanerisch ausgeregelt)
Zuglauf wird geteilt
PathSectionNotification message
▪ Wenden von Zügen beidseits der
▪ ReferenceTrain-ID 1, Path-ID 1
Tr 2 Störstelle analog
▪ Betriebsstelle B(Abfahrt)-D ▪ Im akuten Störfallmanagement
Pa 2
 wird die ReferenceTrainID für den
Tr 1
neuen Zug Tr2 im Sinne eines
Pa 1
PathDetails message (Trasse „booked/gebucht“) schnellen und reibungslosen
Ablaufs von DB InfraGO mit ihrem
A B C D ▪ ReferenceTrain-ID 1, Path-ID 1
OrganisationCode „0080“ im
Bus ▪ Betriebsstelle A-B(Ankunft) Namen des EVU vergeben.
Ersatzverkehr
PathDetails message (Trasse „booked/gebucht“)
▪ ReferenceTrain-ID 2, Path-ID 2
▪ Related-ID: ReferenceTrain-ID 1, Path-ID 1
▪ Betriebsstelle C(Abfahrt)-D
Ab 12/2026
i Um die Auswirkungen für den Kunden möglichst gering zu halten, hat die Weiterführung des Eisenbahnverkehrs in der Disposition
oberste Priorität. Die Erfassung der Dispositionshandlungen in den IT-Systemen mit Versand der Meldungen ist dabei nachranging
priorisiert.
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 7

## Seite 8

Die Verwendung der TTT-Meldungen und Identifier ist in den
europäischen Richtlinien (SectorHandbook, Annex 13) beschrieben
(falls nicht fahrplanerisch ausgeregelt)
Zug wird umgeleitet
PathSectionNotification message
▪ ReferenceTrain-ID 1, Path-ID 1 ▪ ReferenceTrainID bleibt
unverändert
▪ Betriebsstelle B(Abfahrt)-F
▪ Heutige Verfahren
(Fahrplanmitteilung,
PathDetails message (Trasse „booked/gebucht“) Fahrplananordnung) bleiben in
Path 1 Path 1.1
beiden Fällen erhalten
A ▪ ReferenceTrain-ID 1, Path-ID 1
B(An- B(Ab-
▪ Betriebsstelle A-B(Ankunft)
 kunft) fahrt)
C Y

D Z

E E
PathDetails message (Trasse „booked/gebucht“)

F F
▪ ReferenceTrain-ID 1, Path-ID 1.1
▪ Related-ID: Path-ID 1
▪ Betriebsstelle B(Abfahrt)-F
Ab 12/2026
i Um die Auswirkungen für den Kunden möglichst gering zu halten, hat die Weiterführung des Eisenbahnverkehrs in der Disposition
oberste Priorität. Die Erfassung der Dispositionshandlungen in den IT-Systemen mit Versand der Meldungen ist dabei nachranging
priorisiert.
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 8

## Seite 9

Durch die TTT-Identifier ergeben sich vor allem bei betrieblichen
PathDetails & PathSectionNotification message Änderungen
▪ In der Übergangszeit von Produktivsetzung der betriebliche TAF/TAP-Meldungen 06/2025 bis zur Einführung der TAF/TAP-Identifier
12/2026 existieren noch keine Path und keine ReferenceTrain in den Systemen DB InfraGO.
▪ Ergo ist eine völlig konforme Verwendung der PathDetails und PathSectionNotification Messages dann noch nicht möglich. Die Meldungen
werden stattdessen die Dispo-Fahrplan des Zuges als Ganzes abbilden.
Beispiel „Umleitung“ zu Veranschaulichung:
OTN 1 OTN 1 PathDetails message (Trasse „booked/gebucht“)
06/2025 A A ▪ OTN 1
- B B ▪ Betriebsstelle A-F
12/2026 C Y
D Z
(Basis OTN/
E E
Zugnummer)
F F
Path 1 Path 1.1
PathSectionNotification message PathDetails message (Trasse „booked/gebucht“)
A
Ab
▪ ReferenceTrain-ID 1, Path-ID 1, OTN 1 ▪ ReferenceTrain-ID 1, Path-ID 1.1, OTN 1
B(An- B(Ab-
12/2026  kunft) fahrt) ▪ Betriebsstelle B(Abfahrt)-F ▪ Related-ID: Path-ID 1
C Y
 ▪ Betriebsstelle B(Abfahrt)-F
(Basis D Z PathDetails message (Trasse „booked/gebucht“)
TAF/TAP- 
E E ▪ ReferenceTrain-ID 1, Path-ID 1, OTN 1
Identifier)

F F ▪ Betriebsstelle A-B(Ankunft)
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 9

## Seite 10

Meeting Agenda
TOP Zeit Thema Verantwortlich
1 10:30 – 10:50 Überblick TAF/TAP TSI mit Identifiern Andreas Schumann
2 10:50 – 11:00 Fragerunde 1 alle
3 11:00 – 11:20 Testziele Döne Ak / Heike Sperber
4 11:20 – 11:35 Fragerunde 2 alle
5 11:35 – 11:45 Anmeldung zum Test Döne Ak
6 11:45 – 11:55 Fragerunde 3 alle
7 11:55 – 12:00 Ausblick Döne Ak
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 10

## Seite 11

Fragerunde 1
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 11

## Seite 12

Meeting Agenda
TOP Zeit Thema Verantwortlich
1 10:30 – 10:50 Überblick TAF/TAP TSI mit Identifiern Andreas Schumann
2 10:50 – 11:00 Fragerunde 1 alle
3 11:00 – 11:20 Testziele Döne Ak / Heike Sperber
4 11:20 – 11:35 Fragerunde 2 alle
5 11:35 – 11:45 Anmeldung zum Test Döne Ak
6 11:45 – 11:55 Fragerunde 3 alle
7 11:55 – 12:00 Ausblick Döne Ak
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 12

## Seite 13

E2E-Testziele für alle betrieblichen TTT (mit ID) Meldungen auf
Basis des Fahrplans 2026
Gemeinsam mit unseren Marktpartnern, wollen wir mit dem E2E-Test nachweisen, dass alle relevanten Prozessschritte über eindeutig
identifizierbare Elemente (TAF/TAP TSI Identifier und andere hinzukommende Attribute) über die dafür vorgesehenen
Schnittstellen ordnungsgemäß, technisch und fachlich korrekt funktionieren.
➢ Den Kunden steht ein Initialer Soll-Fahrplan für FPL2026 als Testgrundlage zur Verfügung (*)
➢ AdHoc Änderungen und Löschungen aus dem Fahrplan 2026 stehen dem Kunden als Testgrundlage zur Verfügung
➢ AdHoc Änderungen und Löschungen aus dem Baufahrplan 2026 stehen dem Kunden als Testgrundlage zur Verfügung
➢ Zu allen ausgewählten Test Trassenverträgen können alle Testteilnehmer ihre Meldungen für ihre Verträge senden (TCM/PTCM/TRM) und InfraGO kann diese
empfangen und verarbeiten
➢ Zu allen ausgewählten Verträgen können alle Testteilnehmen ihre relevanten Meldungen empfangen (PDM, EM, PSN, TRInfo, (mit manuell eingegebenen IST-
Zeiten), TRForcast, TRInterrupt,...) und verarbeiten
➢ Alle schon bestehenden Prozessfolgen für die einzelnen Meldungen können wie heute schon korrekt durchgeführt werden, wobei ab Fahrplan 2027 die
Referenzierung auf alle Testobjekte (Züge, Anschlüsse, Übergänge, Ersatzverkehre) korrekt über die TTT Identifier abgebildet werden und nicht wie bisher
durch die Identifikation über die OTN+Datum
(*) GFD -> NSS -> LeiDa-F -> LeiDis-D -> BDV wurde übernommen
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 13

## Seite 14

Wir benötigen für den Test konsistente Testdaten von der
Trassenanmeldung bis zum Betrieb bei Kunde und InfraGO
Stark vereinfachte Darstellung
Situation bei EVU kann abweichen
Trassenanmeldung Fahrplankonstruktion Betrieb
DB InfraGO
Fahrplansysteme zur
Systeme des Betriebs
Konstruktion
pathOS
Details, wie bisherige Ergebnisse
Fahrplansysteme zur
des Markttests in der
Bauausregelung und
Trassenanmeldung
Baukonsultation
weiterverwendet werden können,
CI Trassen-
CI Betrieb
anmeldung legen wir basierend auf den
Rückmeldungen im Rahmen der
Systeme für Anmeldung des Testbedarfs fest.
Trassenbestell- Systeme zur Umlauf- Durchführung,
system und Personalplanung Disposition und IST-
Meldungen
EVU
Umlauf- und Durchführung &
Trassenanmeldung
Personalplanung Disposition
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 14

## Seite 15

Meeting Agenda
TOP Zeit Thema Verantwortlich
1 10:30 – 10:50 Überblick TAF/TAP TSI mit Identifiern Andreas Schumann
2 10:50 – 11:00 Fragerunde 1 alle
3 11:00 – 11:20 Testziele Döne Ak / Heike Sperber
4 11:20 – 11:35 Fragerunde 2 alle
5 11:35 – 11:45 Anmeldung zum Test Döne Ak
6 11:45 – 11:55 Fragerunde 3 alle
7 11:55 – 12:00 Ausblick Döne Ak
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 15

## Seite 16

Fragerunde 2
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 16

## Seite 17

Meeting Agenda
TOP Zeit Thema Verantwortlich
1 10:30 – 10:50 Überblick TAF/TAP TSI mit Identifiern Andreas Schumann
2 10:50 – 11:00 Fragerunde 1 alle
3 11:00 – 11:20 Testziele Döne Ak / Heike Sperber
4 11:20 – 11:35 Fragerunde 2 alle
5 11:35 – 11:45 Anmeldung zum Test Döne Ak
6 11:45 – 11:55 Fragerunde 3 alle
7 11:55 – 12:00 Ausblick Döne Ak
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 17

## Seite 18

Bitte füllen Sie diese Folie aus und senden Sie diese bis
20.03.2026 an [E-Mail-Adresse entfernt]
Anmeldung zum Test – Was muss der Kunde tun?
Checkliste: Initiale Meldung E2E-Test TTT mit ID Testsetup im Betrieb
TAF/TAP Messagetypen, die vom
Bitte ausfüllen: Kunden empfangen werden sollen
Testbedarf Ende zu Ende Kundentests TAF/TAP TSI mit
Identifiern anmelden I. Company Code: ____ TrainRunningForecast Ja
II. Welche TCM/PTCM Version wird genutzt? 3.0.2.0 oder
Beantragung notwendiger RNE-Zertifikate (Link)
3.4.1.0 TrainRunningInfomation Ja
Achtung: Bitte zeitnah beantragen aufgrund von Bearbeitungsdauer
III. Welche Nachrichtentypen wollen Sie empfangen und/oder
(ggf. bis zu 4 Wochen) bei der RNE
versenden? (bitte nebenstehende Tabellen ausfüllen) PathSectionNotification Ja
Testdaten im Fahrplan
TrainDelayCause Ja
I. Für BDV-Neukunden (Internet): BDV benötigt Endpunkt vom
Bitte ausfüllen: Kunden: ___________________________________ PathDetails Ja
Nutzen Sie zur Trassenanmeldung
ChangeOfTrack Ja
II. Für BDV-Neukunden (Intranet): BDV IP-Adressen von INT05
pathOS Common Interface und/oder
muss vom Kunden in „Security Groups“ freigeschaltet werden
pathOS Webportal TrainRunningInterruption Ja
▪ Falls Sie das pathOS Common Inferface nutzen: III. Für BDV-Bestandskunden (Internet): Kein Doing, außer es
Error message Ja
• Sind Sie auf die Kundentestumgebung (KTU) soll eine abweichende IP-Adresse zum Empfang verwendet
angebunden? Ja Nein werden: ___________________________________
TAF/TAP Messagetypen, die vom
• Falls ja, mit welchen Kundennummern und
Kunden gesendet werden sollen
OrganisationCodes haben Sie dort IV.Für BDV-Bestandskunden (Intranet): BDV IP-Adressen von
bestellt? __________________________________________________ INT05 muss vom Kunden in „Security Groups“ freigeschaltet TrainCompositionMessage Ja
▪ Falls Sie das pathOS Webportal nutzen: werden. Falls für den Empfang eine abweichende IP-Adresse
PassengerTrainCompositionMessage Ja
vorgesehen ist, muss diese dem BDV mitgeteilt werden.
• Sind Sie bereits auf der Kundentestumgebung
freigeschaltet? Ja Nein
• Falls ja, mit welchen Kundennummern und
OrganisationCodes haben sie dort
bestellt? _______________________________________________________
BDV = Betriebsdatenverteiler
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 18

## Seite 19

Organisatorisches / Rahmenbedingung
Timeslots für E2E Kundentests TTT mit ID
• Jedem Kunden wird nach Testbedarf-Anmeldung ein Testslot angeboten.
Bei ggf. festgestellten Findings, wird die DB InfraGO Nachtests anbieten.
• Vergabe von Testslots erfolgt im Anschluss per Mail über das BDV-Postfach
([E-Mail-Adresse entfernt])
Gleiche
Erfolgreicher Keine weiteren
Test mit einem Software Ja Tests Bestätigung der
Kunden des bei mit weiteren Produktionsreife
Dienstleisters weiterem Kunden unterzeichnen
Kunden?
verpflichtend
Nein
Weitere Tests
erforderlich
Testszenarien
Hinweise:
• Testszenarien werden von der DB InfraGO vorgegeben (z.B. Testfälle zu betrieblichen
• Die Tests werden auf einer
Meldungen)
produktionsnahen Umgebung
durchgeführt.
• Nach Testbedarf-Anmeldung, erhält jeder Kunde die vorgegebenen Testszenarien.
• Massenvergleichstest sind nicht
• Die Testszenarien sollten seitens des Kunden geprüft werden. Falls dringend
möglich, da es sich um keine
notwendige Spezialfälle nicht abgedeckt werden, haben Sie die Möglichkeit zwei
produktionsidentische Umgebung
handelt. Spezial-Testfälle an das BDV-Postfach nachzumelden.
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 19

## Seite 20

Meeting Agenda
TOP Zeit Thema Verantwortlich
1 10:30 – 10:50 Überblick TAF/TAP TSI mit Identifiern Andreas Schumann
2 10:50 – 11:00 Fragerunde 1 alle
3 11:00 – 11:20 Testziele Döne Ak / Heike Sperber
4 11:20 – 11:35 Fragerunde 2 alle
5 11:35 – 11:45 Anmeldung zum Test Döne Ak
6 11:45 – 11:55 Fragerunde 3 alle
7 11:55 – 12:00 Ausblick Döne Ak
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 20

## Seite 21

Fragerunde 3
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 21

## Seite 22

Meeting Agenda
TOP Zeit Thema Verantwortlich
1 10:30 – 10:50 Überblick TAF/TAP TSI mit Identifiern Andreas Schumann
2 10:50 – 11:00 Fragerunde 1 alle
3 11:00 – 11:20 Testziele Döne Ak / Heike Sperber
4 11:20 – 11:35 Fragerunde 2 alle
5 11:35 – 11:45 Anmeldung zum Test Döne Ak
6 11:45 – 11:55 Fragerunde 3 alle
7 11:55 – 12:00 Ausblick Döne Ak
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 22

## Seite 23

Ausblick
26.03.2026
TAF/TAP TSI – Dialog mit nächsten Schritten basierend auf Anmeldungen
Informationsveranstaltung zum Ende-zu-Ende Kundentests: Besprechung
Tbd*
weiterer Details mit angemeldeten Testpartnern, je nach angemeldetem
Testbedarf
1. Serie: KW 13
Betriebssprechstunde inkl. Experten von LeiDis-D, BDV und TTT
2. Serie: Tbd*
14.04.- 14.06.
Durchführung Ende-zu-Ende Kundentests TAF/TAP TSI mit Identifiern
*
Termin folgt spätestens zum TTT -Dialog
DB InfraGO | Kickoff Kundentests E2E TAF/TAP TSI mit ID | 11.03.2026 23

## Seite 24

Vielen Dank!
