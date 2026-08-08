---
title: "Ril 483 0701 INB 2026"
source_id: "src_72e712b99f77c449979a"
source_version_id: "sv_5b9dc6fa5cc1cccf946701cd"
source_sha256: "70ef3be41cd7dbd7e04f1ef077ca6393c2c63691523bb52c7a28b3a88ce19bb7"
original_filename: "Ril-483-0701-INB-2026-data.pdf"
media_type: "application/pdf"
imported_at: "2026-08-08T16:06:49Z"
license: "unknown"
---

# Ril 483 0701 INB 2026

## Seite 1

DB Netz AG
Spezifikation und Systementwicklung ETCS
Lastenheft-Entwicklung und ETCS-Fahrzeugtechnik
DB Netz AG • Völckerstr. 5 • 80939 München
I.NAI 4521
Völckerstr. 5
Gemäß Verteiler Ril 483.0701
80939 München
www.dbnetze.com/fahrweg
Philipp Pinter
Tel.: 089 1308-5234
Mobil: 0160 97258041
[E-Mail-Adresse entfernt]
08.12.2020
Richtlinie 483.0701 „ETCS-Fahrzeugeinrichtungen bedienen“ Aktualisierung 02
Sehr geehrte Damen und Herren,
die Aktualisierung 02 zur Richtlinie 483.0701 tritt zum 12.12.2021 in Kraft und enthält die geänderten Regeln zum Bedienen der ETCS-Fahrzeugeinrichtung.
Mit in Kraft setzen der Aktualisierung 02 wird die „Ausnahme 103“ (gültig ab 14.06.2020) außer
Kraft gesetzt.
Übersicht der Änderungen in der Richtlinie:
• 483.0701: ETCS-Fahrzeugeinrichtungen bedienen
(Alle Abschnitte bis auf Abschnitt 2.)
• 483.0701A01: Übersicht der ETCS-Textmeldungen
• 483.0701A99: Abkürzungen
...
DB Netz AG Vorsitzender des Vorstand: Jens Bergmann
Sitz Frankfurt am Main Aufsichtsrates: Frank Sennhenn, Dr. Christian Gruß
Registergericht Ronald Pofalla Vorsitzender Dr. Volker Hentschel
Frankfurt am Main Ute Plambeck
HRB 50 879 Dr. Christian Runzheimer
USt-IdNr.: DE199861757
Nähere Informationen zur Datenverarbeitung im DB-Konzern finden Sie hier: www.deutschebahn.com/datenschutz

## Seite 2

Aktualisierung 02
zur Richtlinie 483.0701
2/26
Erläuterungen:
Allgemeines:
In der Richtlinie sind Änderungen am Rand durch „*“ gekennzeichnet. Wenn Text gelöscht wurde,
zeigt dies ein Sternchen in der letzten nicht geänderten Zeile an.
Richtlinie 483.0701:
Abschnitt 1 „Geltungsbereich“
Absatz (1) „Geltungsbereich“:
Der Absatz wurde präzisiert.
Absatz (2) „Inhalt“:
Die Beschreibung wurde präzisiert und um Unterschiede ergänzt, die sich durch die ETCS-Fahrzeugsoftware und/oder ETCS-Streckensoftware ergeben können.
Hinweis:
Die ETCS-Spezifikationen unterliegen einer kontinuierlichen Fortschreibung, die zu einer
neuen Softwareversion führt.
Diese sowohl fahrzeugseitigen, als auch streckenseitigen Unterschiede in der Software sind in
der Richtlinie mit „abhängig von der ETCS-Fahrzeugsoftware“ und/oder „abhängig von der ETCS-
Streckensoftware“ gekennzeichnet.
Abschnitt 3 „ETCS-Level“
Absatz (1) „ETCS-Level“:
Die Beschreibung wurde präzisiert.
Absatz (2) „ETCS-Level NTC PZB/LZB“:
In der Beschreibung wurde ergänzt, dass das ETCS-FzG auch im ETCS-Level NTC PZB/LZB
Balisen liest. Dies ist notwendig, um z. B. bei einem bevorstehenden Levelwechsel nach ETCS-
Level 2 zuvor eine Funkverbindung zur ETCS-Zentrale aufbauen zu können, damit diese dem
ETCS-FzG einen Levelwechsel nach ETCS-Level 2 kommandieren kann.
Absatz (3) „ETCS-Level 0“:
Die Erklärung wurde präzisiert und ergänzt, dass das ETCS-FzG auch eine niedrigere Geschwindigkeit als 50 km/h z. B. durch Geschwindigkeitsrestriktionen oder Langsamfahrstellen überwacht, wenn diese von der Strecke (Balisen) übertragen werden.
Absatz (4) „ETCS-Level 1“:
In der Beschreibung wurde die Überwachungsfunktion des ETCS-FzG in Abhängigkeit der ETCS-
Betriebsarten aufgeteilt. In der ETCS-Betriebsart FS oder OS überwacht das ETCS-FzG den
ETCS-Halt und in der ETCS-Betriebsart LS oder SR den Halt am Haupt- bzw. Sperrsignal. Weiterhin wurden folgende Hinweise ergänzt:
Auf der Infrastruktur der DB Netz AG wird die ETCS-Betriebsart FS in ETCS-Level 1 grundsätzlich
nicht verwendet wird, außer in bestimmten betrieblichen Situationen kann auf Strecken mit ETCS-
Level 2 beim Durchfahren eines gestörten Funkbereiches ein Levelwechsel nach ETCS-Level 1
in die ETCS-Betriebsart FS erfolgen.
Die ETCS-Betriebsart OS wird in ETCS-Level 1 nicht verwendet.
Gültig ab 12.12.2021

## Seite 3

Aktualisierung 02
zur Richtlinie 483.0701
3/26
Absatz (5) „ETCS-Level 2“:
Die Beschreibung wurde präzisiert.
Absatz (6) „ETCS-Level 3“:
Die Beschreibung wurde präzisiert.
Tabelle 1 „Symbole der ETCS-Level“:
Die Beschreibung für die gelben Symbole wurde präzisiert. Des Weiteren wurde die Bildgröße
der Symbole, entsprechend der dargestellten Größe am MFD, angepasst.
Absatz (9) „Levelwechsel“:
Die Beschreibung wurde präzisiert.
Abschnitt 4 „ETCS-Betriebsarten“
Absatz (1) „NP“:
In der Beschreibung wurde ergänzt, dass mit dem Wechsel in die ETCS-Betriebsart NP sämtliche
Ein- und Ausgaben der ETCS-Fahrzeugeinrichtung unterbunden sind.
Absatz (3) „FS“:
In der Beschreibung wurden die Abkürzungen durch die vollständigen Begriffe ersetzt, da die
Abkürzungen mit den entsprechenden Erklärungen erst in Abschnitt 7 beschrieben werden.
Absatz (4) „LS“:
Die Beschreibung wurde präzisiert und entsprechend der geänderten Begriffsdefinitionen für
Überwachungsgrößen gemäß Abschnitt 7 Absatz (5) angepasst. Die Überwachungsgrößen
„LSSMA“ und „Release Speed“, die Ihnen abhängig von der betrieblichen Situation angezeigt
werden können, wurden ergänzt. Diese dienen nur zur Information, gefahren wird weiterhin als
signalgeführter Zug.
Absatz (5) „SR“:
Die Beschreibung wurde präzisiert, u.a. wurde die zulässige Geschwindigkeit, die das ETCS-FzG
überwacht, aufgenommen.
Die Textstelle zur Überwachung des Endes der Fahrterlaubnis durch das ETCS-FzG wurde gelöscht, da diese Vorgaben in Absatz (14) beschrieben werden.
Absatz (6) „OS“:
In der Beschreibung wurde ergänzt, dass das ETCS-FzG auch eine niedrigere Geschwindigkeit
als 40 km/h überwacht (siehe Abschnitt 13 Absatz (10)).
Absatz (7) „SL“:
Die Beschreibung wurde präzisiert.
Absatz (8) „NL“:
Die Beschreibung wurde komplett überarbeitet. Ergänzt wurden die Funktionen des ETCS-FzG.
Absatz (9) „SH“:
Die Beschreibung wurde präzisiert.
Absatz (10) „PS“:
Die Beschreibung wurde präzisiert und ergänzt. Wenn die ETCS-Betriebsart PS verfügbar ist (abhängig von der ETCS-Fahrzeugsoftware), dann ist diese in jedem ETCS-Level verfügbar ist.
Absatz (11) „UN“:
In der Beschreibung wurde ergänzt, dass das ETCS-FzG auch eine niedrigere Geschwindigkeit
Gültig ab 12.12.2021

## Seite 4

Aktualisierung 02
zur Richtlinie 483.0701
4/26
als 50 km/h, z. B. durch Geschwindigkeitsrestriktionen oder Langsamfahrstellen, überwacht,
wenn diese von der Strecke (Balisen) übertragen werden.
Absatz (12) „SF“:
In der Beschreibung wurde ergänzt, dass eine eingeleitete Zwangsbremsung bis zum Stillstand
durchgeführt wird. Weiterhin wurde ergänzt, dass die ETCS-Betriebsart SF in jedem ETCS-Level
verfügbar ist.
Absatz (13) „SN“:
Die Beschreibung wurde präzisiert.
Absatz (14) „TR“:
In der Beschreibung wurden die Überwachungsfunktionen des ETCS-FzG im ETCS-Level 1 ergänzt und für ETCS-Level 2 präzisiert.
Absatz (15) „PT“:
Der Absatz wurde redaktionell angepasst.
Absatz (16) „IS“:
Die Beschreibung wurde präzisiert.
Tabelle 2 „Symbole der ETCS-Betriebsarten“:
Die Tabelle wurde grundlegend überarbeitet und die Symbole entsprechend der ETCS-Betriebsart alphabetisch sortiert.
Die Beschreibung für die angekündigten und/oder zu bestätigenden Symbole wurde entsprechend den geänderten Beschreibungen für diese ETCS-Betriebsarten angepasst.
Hinweis:
In der Aktualisierung 01 gab es keine einheitliche Verwendung für die Begriffe „quittieren“ und
„bestätigen“. Mit der Aktualisierung 02 wird unterschieden zwischen Anzeigen, die vom ETCS-
FzG kommen, diese werden mit „quittier...“ bezeichnet und den Handlungen des Tf, diese
werden mit „bestätigen“ bezeichnet.
Abschnitt 5 „ETCS-Streckeneinrichtungen“
Absatz (1) „ETCS-Zentrale“:
In dem Absatz wurde der Randvermerk „ETCS-Zentrale (RBC)“ in „ETCS-Zentrale“ geändert und
die Beschreibung präzisiert.
Absatz (2) „Balise“:
Die Beschreibung wurde komplett überarbeitet.
Absatz (4) „LEU“:
Die Beschreibung wurde präzisiert.
Abschnitt 6 „ETCS-Fahrzeugeinrichtung“
Absatz (1) „ETCS-FzG“:
Die Beschreibung wurde präzisiert und ergänzt, dass das ETCS-FzG auch die Telegramme der
Euroloopantenne auswertet und überwacht.
Absatz (2) „MFD“:
Der Absatz wurde redaktionell angepasst.
Gültig ab 12.12.2021

## Seite 5

Aktualisierung 02
zur Richtlinie 483.0701
5/26
Absatz (3) „GSM-R-ETCS-Funkmodul“:
In dem Absatz wurde der Randvermerk „GSM-R-Modem“ in „GSM-R-ETCS-Funkmodul“ geändert und die Beschreibung überarbeitet.
Absatz (4) „Balisen-/ Euroloopantenne“:
Die Beschreibung wurde präzisiert.
Absatz (5) „Ortung / Wegmesseinrichtungen (Odometrie)“:
Der Absatz wurde redaktionell angepasst.
Absatz (6) „STM“:
Die Beschreibung wurde präzisiert.
Bild 6 „ETCS-Fahrzeugeinrichtung mit integriertem STM“
Die in Absatz (3) verwendete Bezeichnung für das GSM-R-ETCS-Funkmodul ist im Bild korrigiert
worden.
Bild 7 „ETCS-Fahrzeugeinrichtung mit separatem STM“
Die in Absatz (3) verwendete Bezeichnung für das GSM-R-ETCS-Funkmodul ist im Bild korrigiert
worden.
Absatz (11) „Bedienelemente“:
Die Beschreibung wurde präzisiert. Als Bedienelemente werden die in Tabelle 3 aufgeführten
externen, d. h. außerhalb des MFD befindlichen Taster und Schalter für ETCS bezeichnet.
Tabelle 3: „Übersicht der Bedienelemente“:
Die Beschreibung der Bedienelemente wurde teilweise präzisiert.
Beim ETCS-Quittiertaste wurde ergänzt, dass mit diesem nicht nur Textmeldungen, sondern auch
der Levelwechsel bzw. der Wechsel der ETCS-Betriebsart bestätigt werden kann, sofern der Taster auf dem Fahrzeug vorhanden ist.
Beim ETCS-Störschalter ist entsprechend dem geänderten Verfahren zum Wechsel in die ETCS-
Betriebsart SH im ETCS-Level NTC PZB/LZB (siehe Abschnitt 13 „Regelbetrieb“ Absatz (24)
„ETCS-Level NTC PZB/LZB“) die Beschreibung angepasst worden.
Der Leitungsschutzschalter (LSS) für das ETCS-FzG wurde ergänzt.
Abschnitt 7 „Anzeigen am MFD“
Absatz (2) „Bedeutung“:
Die Beschreibung wurde präzisiert.
Absatz (3) „Führerraumanzeige“:
In dem Absatz wurde der Randvermerk „Führerraumanzeigen“ in „Führerraumanzeige“ geändert.
Die Beschreibung wurde präzisiert und um die Auflistung der Führerraumanzeige (die nach Bild
11 gelöscht wurde) ergänzt.
Absatz (4) „Führungsgrößen“:
Die Erklärung wurde präzisiert und um die ETCS-Betriebsarten FS und OS ergänzt, bei denen
Führungsgrößen angezeigt werden. Weiterhin wurden die Unterschiede in der Anzeige der Führungsgrößen beschrieben.
Ferner wurde noch der Hinweis ergänzt, dass die in Abschnitt 3 Absatz (4) beschriebene Verwendung der ETCS-Betriebsarten FS und OS in ETCS-Level 1 zu beachten ist.
Absatz (5) „Überwachungsgrößen“:
Die Erklärung wurde grundlegend angepasst, da das ETCS-FzG sowohl bei den bekannten
Gültig ab 12.12.2021

## Seite 6

Aktualisierung 02
zur Richtlinie 483.0701
6/26
Größen, wie z. B. Sollgeschwindigkeit, als auch bei der LSSMA und der Release Speed das Einhalten der angezeigten Geschwindigkeit überwacht. Des Weiteren wurden - abhängig von der
ETCS-Betriebsart - die möglichen verfügbaren Überwachungsgrößen aufgelistet.
Hintergrund:
Die ETCS-Spezifikation bietet auch in der ETCS-Betriebsart SH die Möglichkeit, sich die „permitted speed“ (= Sollgeschwindigkeit) als Haken am MFD einzublenden.
Die Aufgaben einer Zugbeeinflussung liegen in der Überwachung von Zugfahrten und nicht
von Rangierfahrten.
Somit ist die Überwachungsgröße in der ETCS-Betriebsart SH in erster Linie informativ und nicht
sicherheitlich. Es erfolgt nur eine Überwachung der Geschwindigkeit auf 40 km/h, unabhängig
von der örtlich bzw. betrieblich zulässigen Geschwindigkeit.
Absatz (6) „ETCS-Fahrterlaubnis“ (neu):
Die Erklärung wurde neu aufgenommen und beschreibt, in welchem ETCS-Level und in welcher
ETCS-Betriebsart ein Fahrzeug eine ETCS-Fahrterlaubnis erhält und welche Funktionen das
ETCS-FzG überwacht.
Weiterhin wurde noch der Hinweis ergänzt, dass die in Abschnitt 3 Absatz (4) beschriebene Verwendung der ETCS-Betriebsarten FS und OS in ETCS-Level 1 zu beachten ist.
Absatz (7 ehemals 6) „LSSMA“:
Die Erklärung wurde präzisiert.
Absatz (8 ehemals 7) „Zielentfernung“:
Die Beschreibung wurde präzisiert.
Absatz (9 ehemals 8) „Istgeschwindigkeit“:
Die Beschreibung wurde präzisiert.
Absatz (11 ehemals 10) „Warngeschwindigkeit“:
Die Beschreibung der Anzeige am Tachokreis wurde präzisiert.
Absatz (13 ehemals 12) „Eingriffgeschwindigkeit“:
Der Absatz wurde redaktionell angepasst.
Absatz (14 ehemals 13) „Release Speed“:
Die Erklärung wurde präzisiert, aufgeteilt nach ETCS-Level 1 und ETCS-Level 2. Darüber hinaus
wurden die Unterschiede zwischen den ETCS-Level in Funktion und Anzeige dargestellt.
Absatz (18 ehemals 17) „Quittierungspflichtige Textmeldungen bestätigen“:
In dem Absatz wurde der Randvermerk „Textmeldung mit blinkendem Rahmen“ in „Quittierungspflichtige Textmeldungen bestätigen“ geändert. Die Erklärung wurde präzisiert und ergänzt, wie
quittierungspflichtige Textmeldungen dargestellt werden und wie diese abhängig vom Display
(Softkey oder Touchscreen) zu bestätigen sind. Weiterhin wurde ergänzt, dass durch eine nicht
zeitnah bestätigte Textmeldung ggf. ein Levelwechsel bzw. ein Wechsel der ETCS-Betriebsart
nicht angezeigt werden kann und das ETCS-FzG nach 5 s eine Zwangsbetriebsbremsung einleitet, die Sie durch eine nachträgliche Bestätigung wieder aufheben können.
Hinweis:
In der Aktualisierung 01 gab es keine einheitliche Verwendung für die Begriffe „quittieren“ und
„bestätigen“. Mit der Aktualisierung 02 wird unterschieden zwischen Anzeigen, die vom ETCS-
FzG kommen, diese werden mit „quittier...“ bezeichnet und den Handlungen des Tf, diese
werden mit „bestätigen“ bezeichnet.
Gültig ab 12.12.2021

## Seite 7

Aktualisierung 02
zur Richtlinie 483.0701
7/26
Absatz (19) „Symbole der ETCS-Meldungen“ (neu):
Der Absatz mit der Beschreibung für die Symbole der ETCS-Meldungen (siehe Tabelle 4) wurde
neu aufgenommen.
Tabelle 4 „Symbole der ETCS-Meldungen“:
In der Tabelle wurde die Beschreibung der Funkverbindung redaktionell angepasst.
Absatz (20) „Symbole auf Strecken mit ETCS-Level 1“ (neu):
Der Absatz mit der Beschreibung für die angezeigten Symbole auf Strecken mit ETCS-Level 1 in
der ETCS-Betriebsart LS (siehe Tabelle 5) wurde neu aufgenommen.
Absatz (21) „Symbole auf Strecken mit ETCS-Level 2“ (neu):
Der Absatz mit der Beschreibung für die angezeigten Symbole auf Strecken mit ETCS-Level 2
(siehe Tabelle 6 und 7) wurde neu aufgenommen.
Tabelle 6 „Symbole der ETCS-Streckeneigenschaften“:
Die ehemalige Tabelle 6 wurde aufgeteilt in Tabelle 6 (Symbole der ETCS-Streckeneigenschaften) und in Tabelle 7 (Symbole der ETCS-Aufträge).
Die Beschreibung der Symbole wurde präzisiert und neu aufgenommen wurden die Symbole für
die fahrdrahtspannungsabhängige elektrodynamische Bremse (generatorische Bremse genannt).
Tabelle 7 „Symbole der ETCS-Aufträge“ (neu):
Die neu aufgenommene Tabelle 7 enthält die Symbole der ETCS-Aufträge aus der ehemaligen
Tabelle 6.
Absatz (22 ehemals 18) „Allgemein“:
Der Absatz wurde redaktionell angepasst.
Absatz (23 ehemals 19) „Vorschaubereich“:
Die Beschreibung wurde präzisiert.
Tabelle 8 (ehemals 7) „Symbole der Aufforderungen“:
Die Beschreibung in der Tabelle wurde präzisiert und entsprechend den geänderten Begriffsdefinitionen für Führungs-/ Überwachungsgrößen angepasst. Des Weiteren wurde ergänzt, dass
bestimmte Führungs-/ Überwachungsgrößen im MFD nicht immer dargestellt werden.
Abschnitt 8 „Zusammenhang zwischen Bremskurven und Farbdarstellung der Geschwindigkeitsanzeige“
Bild 21 „Anstoß an die Zwangsbremskurve“:
Die Bezeichnung von Bild „Anstoß an Zwangsbetriebsbremskurve“ wurde in „Anstoß an die
Zwangsbremskurve“ geändert.
In der Beschreibung zu Bild 21 wurde berichtigt, dass beim Überschreiten der Eingriffgeschwindigkeit eine Zwangsbremsung und keine Zwangsbetriebsbremsung ausgegeben wird. Grund
hierfür ist, dass durch die Nicht-Verwendung der Zwangsbetriebsbremskurve beim Wechsel zu
einer neuen niedrigeren Zielgeschwindigkeit die Bremskurven steiler werden. Die Zwangsbetriebsbremskurve entfällt nur bei einem „Wechsel zu einer neuen niedrigeren Zielgeschwindigkeit“
und nicht bei der „Überwachung der Sollgeschwindigkeit“.
Des Weiteren gibt es folgende Unterschiede:
• Bei ETCS-Level 1 führt das ETCS-FzG die Zwangsbremsung, abhängig von der ETCS-
Streckensoftware, bis zum Stillstand fort.
Gültig ab 12.12.2021

## Seite 8

Aktualisierung 02
zur Richtlinie 483.0701
8/26
• Bei ETCS-Level 2 hebt das ETCS-FzG die Zwangsbremsung auf, sobald die Istgeschwindigkeit die Sollgeschwindigkeit unterschreitet.
Absatz (1) „Zwangsbremskurve“ (gelöscht):
Der Absatz wurde gelöscht, da beim Bremsen auf eine niedrigere Zielgeschwindigkeit keine
Zwangsbetriebsbremskurve verwendet wird, sondern direkt die Zwangsbremskurve. Dementsprechend ist die Beschreibung bei Bild 21 geändert worden.
Bild 24 „Anstoß an die Zwangsbremskurve“:
Die Bezeichnung von Bild „Anstoß an Zwangsbetriebsbremskurve“ wurde in „Anstoß an die
Zwangsbremskurve“ geändert.
Absatz (1 ehemals 2) „Anstoß an die Zwangsbremskurve“:
In dem Absatz wurde der Randvermerk „Überschreiten der oberen Grenze der Zwangsbremsschwelle“ in „Anstoß an die Zwangsbremskurve“ geändert und die Beschreibung präzisiert.
Abschnitt 9 „MFD-Menüstruktur“
Bild 25 „Grundbild“ (neu):
Die Abbildung zeigt das Grundbild und wurde neu aufgenommen.
Tabelle 11 „Menü Grundbild“ (neu):
Die neu aufgenommene Tabelle beschreibt die Auswahl der Unterebenen aus dem Grundbild.
Bild 26 (ehemals 25) „Menü Hauptmenü (Main)“:
Die Beschreibung des Bildes wurde präzisiert.
Tabelle 12 (ehemals 10) „Menü Hauptmenü (Main)“:
Die Beschreibung wurde präzisiert.
Tabelle 13 (ehemals 11) „Menü Override“:
Die Beschreibung wurde präzisiert.
Bild 28 (ehemals 27) „Menü Daten ansehen (Data view) (Teil 1)“:
Die Beschreibung des Bildes wurde präzisiert.
Bild 29 „Menü Daten ansehen (Data view) (Teil 2)“ (neu):
Die Abbildung zeigt von der Auswahl „Daten ansehen“ das zweite Bild und wurde neu aufgenommen.
Tabelle 14 (ehemals 12) „Menü Daten ansehen (Data view)“:
Die Beschreibung wurde präzisiert.
Bild 30 (ehemals 28) „Menü Spezial (Special)“:
Die Beschreibung des Bildes wurde präzisiert.
Tabelle 15 (ehemals 13) „Menü Spezial (Special)“:
Die Beschreibung wurde präzisiert.
Bild 31 (ehemals 29) „Menü Einstellungen (Settings)“:
Die Beschreibung des Bildes wurde präzisiert.
Tabelle 16 (ehemals 14) „Menü Einstellungen (Settings)“:
Die Beschreibung wurde präzisiert.
Gültig ab 12.12.2021

## Seite 9

Aktualisierung 02
zur Richtlinie 483.0701
9/26
Abschnitt 10 „ETCS-Funktionen“
Absatz (1) „Stillstandsüberwachung“:
Die Beschreibung zum Aufheben der Zwangsbremsung (siehe Abschnitt 7 „Anzeigen am MFD“
Absatz (18)) wurde präzisiert.
Absatz (2) „Rollüberwachung“:
In der Beschreibung wurde ergänzt, dass die Funktion in allen ETCS-Level wirksam ist. Weiterhin
wurde die Beschreibung zum Aufheben der Zwangsbremsung (siehe Abschnitt 7 „Anzeigen am
MFD“ Absatz (18)) präzisiert.
Absatz (3) „Überwachung der Verbindung zur ETCS-Zentrale“:
Die Beschreibung wurde präzisiert und auf das Wesentliche reduziert.
Abschnitt 11 „Vorbereitungsarbeiten“
Unterabschnitt „ETCS-Startlauf (Start of Mission)“
Der Unterabschnitt „ETCS-Startlauf (Start of Mission) beginnen“ wurde in „ETCS-Startlauf (Start
of Mission)“ geändert.
Absatz (4) „Beginn“:
In dem Absatz wurde der Randvermerk „Anstoß“ in „Beginn“ geändert. Bei der Beschreibung
wurde ergänzt, dass das ETCS-FzG (abhängig von der ETCS-Fahrzeugsoftware) beim ETCS-
Startlauf auch direkt in die ETCS-Betriebsart SH wechseln kann, ohne dass der Tf diese zuvor
ausgewählt hat. Soll anschließend eine Zugfahrt durchgeführt werden, ist die ETCS-Betriebsart SH durch den Wechsel in die ETCS-Betriebsart SB zu beenden und der ETCS-Startlauf neu
zu beginnen.
Absatz (6) „Ablauf“:
Die Beschreibung wurde präzisiert und die Auflistung der Softkeys bzw. Bedienfelder wurde aufgeteilt in zum „Eingeben bzw. Bestätigen“ oder zum „Auswählen“.
Absatz (7) „Tf-Nummer und Zugnummer eingeben bzw. bestätigen“:
In dem Absatz wurde der Randvermerk „Tf-Nummer und Zugnummer eingeben“ in „Tf-Nummer
und Zugnummer eingeben bzw. bestätigen“ geändert und die Beschreibung wurde präzisiert.
Absatz (9) „RBC-Kontaktdaten“:
Der Absatz wurde redaktionell angepasst.
Absatz (10) „“:
In dem Absatz wurde der Randvermerk „RBC-Kontakt Informationen“ in „RBC-contact information“ geändert und die Beschreibung wurde präzisiert.
Bild 36 (ehemals 34) „Variante RBC contact information“:
Die Beschreibung des Bildes wurde präzisiert.
Tabelle 17 (ehemals 15) „Variante RBC contact information“:
In der Tabelle wurde die Beschreibung präzisiert und ergänzt, welche Werte aus der Auswahl bei
den RBC-Kontaktdaten einzugeben bzw. zu bestätigen sind.
Absatz (11) „Variante RBC contact“:
In der Beschreibung für die Variante „RBC contact“ wurden die vier am MFD angebotenen Menüpunkte und die zu wählende Reihenfolge ergänzt.
Gültig ab 12.12.2021

## Seite 10

Aktualisierung 02
zur Richtlinie 483.0701
10/26
Tabelle 18 (ehemals 16) „Variante RBC contact“:
Die Beschreibung wurde präzisiert.
Tabelle 19 (ehemals 17) „RBC data“:
Die Beschreibung wurde präzisiert.
Absatz (12) „Menü Zugnummer (Train data)“:
In dem Absatz wurde der Randvermerk „Menü „Train data“ in „Menü „Zugnummer“ (Train data)
geändert und die Beschreibung präzisiert.
Bild (ehemals) 38 „Variante 1: Beispiel BR 411“ (gelöscht):
Das Bild wurde gelöscht, da sich die ETCS-Spezifikationen geändert haben und dadurch die Variante 1 entfallen ist.
Tabelle (ehemals) 18 „Variante 1: Beispiel BR 411“ (gelöscht):
Der Tabelle wurde gelöscht, da sich die ETCS-Spezifikationen geändert haben und dadurch die
Variante 1 entfallen ist.
Bild 40 (ehemals 39) „Zugdateneingabe ETCS (Teil 1)“:
In dem Bild wurde die Bezeichnung „Variante 2: Zugdateneingabe ETCS (Teil 1)“ in „Zugdateneingabe ETCS (Teil 1)“ geändert, da durch den Entfall der Varianten auch eine Unterscheidung
nicht mehr notwendig ist.
Tabelle 20 (ehemals 19) „Zugdateneingabe ETCS (Teil 1)“:
Die Beschreibung wurde präzisiert und die ETCS-Zugart „TILT“ für Reisezug mit aktiver Neigetechnik ergänzt. Des Weiteren wurde die Tabellenbeschriftung in „Zugdateneingabe ETCS
(Teil 1)“ geändert, da durch den Entfall der Varianten auch eine Unterscheidung nicht mehr notwendig ist.
Bild 41 (ehemals 40) „Zugdateneingabe ETCS (Teil 2)“:
In dem Bild wurde die Bezeichnung „Variante 2: Zugdateneingabe ETCS (Teil 2)“ in „Zugdateneingabe ETCS (Teil 2)“ geändert, da durch den Entfall der Varianten auch eine Unterscheidung
nicht mehr notwendig ist.
Tabelle 21 (ehemals 20) „Zugdateneingabe ETCS (Teil 2)“:
Die Tabellenbeschriftung wurde in „Zugdateneingabe ETCS (Teil 2)“ geändert, da durch den Entfall der Varianten auch eine Unterscheidung nicht mehr notwendig ist.
Absatz (14) „Start bestätigen“:
In dem Absatz wurde der Randvermerk „ETCS-Startlauf abschließen“ in „Start bestätigen“ geändert. Die Beschreibung wurde präzisiert und um den Hinweis ergänzt, dass die ETCS-Zentrale
nach Abschluss der Zugdateneingabe eine ETCS-Fahrterlaubnis erteilen kann, ohne dass zuvor
„Start“ betätigt wurde. Ein Bedienen von „Start“ ist in diesem Fall nicht mehr erforderlich.
Des Weiteren wurde ergänzt, dass sich eine Situation ergeben kann, bei der Ihnen „Start“ im MFD
nicht angeboten wird und Sie nach Erhalt eines Befehls „Override“ betätigen müssen. Sollte Ihnen
„Override“ anschließend nicht angeboten werden, ist der ETCS-Startlauf nochmal durchzuführen.
Nach Eingabe der für den ETCS-Startlauf relevanten Daten ist „Override“ anstelle von „Start“ zu
betätigen.
Absatz (15) „Ablauf“:
Der Absatz wurde redaktionell angepasst.
Gültig ab 12.12.2021

## Seite 11

Aktualisierung 02
zur Richtlinie 483.0701
11/26
Abschnitt 12 „Beginn einer Zugfahrt“
Unterabschnitt „Beginn in ETCS-Level NTC PZB/LZB“
Absatz (1) „ETCS-Betriebsart SN angekündigt“:
In dem Absatz wurde der Randvermerk „ETCS-Betriebsart SN bestätigen“ in „ETCS-Betriebsart SN angekündigt“ geändert und die Beschreibung präzisiert. Ergänzt wurde die Beschreibung,
welche Anzeigen am MFD nach dem Bestätigen angezeigt werden.
Absatz (ehemals) 2 „PZB-Startprogramm wirksam“:
Der Randvermerk „PZB-Startprogramm“ wurde gelöscht und der Text zu Absatz (1) hinzugefügt.
Unterabschnitt „Beginn in ETCS-Level 0“
Absatz (2 ehemals 3) „ETCS-Betriebsart UN angekündigt“:
Der Absatz wurde präzisiert.
Absatz (ehemals) 4 „ETCS-Betriebsart UN bestätigen“:
Der Randvermerk „ETCS-Betriebsart UN bestätigen“ wurde gelöscht und der präzisierte Text zu
Absatz (2) hinzugefügt. Der Hinweistext wurde in einen Anforderungstext umformatiert. In diesem
Text wurde ergänzt, dass das ETCS-FzG auch eine niedrigere Geschwindigkeit als 50 km/h z. B.
durch Geschwindigkeitsrestriktionen oder Langsamfahrstellen überwacht, wenn diese von der
Strecke (Balisen) übertragen werden.
Unterabschnitt „Beginn in ETCS-Level 1“
Der Hinweis zur Verwendung der ETCS-Betriebsarten FS und OS in ETCS-Level 1 wurde in einen Verweis auf Abschnitt 3 Absatz (4) geändert.
Absatz (3 ehemals 5) „ETCS-Betriebsart SR angekündigt“:
Die Beschreibung wurde präzisiert.
Absatz (ehemals) 6 „ETCS-Betriebsart SR bestätigen“:
Der Randvermerk „ETCS-Betriebsart SR bestätigen“ wurde gelöscht und der Text zu Absatz (2)
hinzugefügt. In der Beschreibung wurde korrigiert, dass nicht die „Ankündigung“, sondern der
„Wechsel“ in die ETCS-Betriebsart SR erst bestätigt werden darf, wenn der Fdl der Zugfahrt zugestimmt hat.
Absatz (4 ehemals 7) „Wechsel in die ETCS-Betriebsart LS“:
In dem Absatz wurde der Randvermerk „Fahrt in ETCS-Betriebsart LS“ in „Wechsel in die ETCS-
Betriebsart LS“ geändert. Weiterhin wurde die Beschreibung präzisiert und ergänzt, dass nach
einem vollzogenen, aber nicht angekündigten Wechsel in die ETCS-Betriebsart LS dieser innerhalb von 5 s zu bestätigen ist. Anderenfalls leitet das ETCS-FzG eine Zwangsbetriebsbremsung
ein, die Sie durch eine nachträgliche Bestätigung wieder aufheben können.
Absatz (ehemals) 8 „ETCS-Betriebsart LS bestätigen“:
Die Beschreibung aus dem ehemaligen Absatz (8) wurde unverändert am Ende von Absatz (4
ehemals 7) „Wechsel in die ETCS-Betriebsart LS“ aufgenommen und der Randvermerk wurde
gelöscht.
Unterabschnitt „Beginn in ETCS-Level 2“
Der Unterabschnitt wurde komplett überarbeitet, da nur ein Teil der Möglichkeiten beschrieben
war, welche sich nach dem Bedienen von „Start“ ergeben können.
Gültig ab 12.12.2021

## Seite 12

Aktualisierung 02
zur Richtlinie 483.0701
12/26
Absatz (5) „Anfrage“ (neu):
Der Absatz wurde neu aufgenommen und listet die Möglichkeiten beim Beginn einer Fahrt in
ETCS-Level 2 auf.
Absatz (6 ehemals 9) „ETCS-Betriebsart FS oder OS“:
Die Beschreibung wurde präzisiert und die Anforderungen aus den Aufzählungen wurden in die
neuen Absätze (7) und (8) verschoben.
Absatz (7) „Textmeldung "Startanfrage von ETCS-Zentrale empfangen"“ (neu):
Der Absatz wurde neu aufgenommen und enthält die präzisierte Beschreibung aus der ersten
Aufzählung des ehemaligen Absatzes (9). Der Hinweis wurde in den Abschnitt 11 Absatz (14)
„Start bestätigen“ verschoben.
Absatz (8) „Textmeldungen "Befehl erforderlich" oder "Befehl für den Beginn der Zugfahrt erforderlich"“ (neu):
Der Absatz wurde neu aufgenommen und enthält die präzisierte Beschreibung aus der zweiten
Aufzählung des ehemaligen Absatzes (9).
Absatz (9) „Textmeldung "Textmeldung „Sie dürfen vorbeifahren an ..."“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt die Möglichkeit, an dem in der Textmeldung
genannten Signal vorbeifahren zu dürfen.
Absatz (10) „Textmeldung "ETCS-Zentrale Kontaktdaten prüfen. Sonst Befehl erforderlich" oder
"RBC-Kontaktdaten prüfen. Sonst Befehl erforderlich"“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt die Möglichkeit, dass das ETCS-FzG eine
Funkverbindung zur nicht zuständigen ETCS-Zentrale aufbaut. Dies kann sein, wenn die RBC-
Kontaktdaten nicht zur zuständigen ETCS-Zentrale gehören.
Absatz (11) „Textmeldung "Einwahl GSM-R-Netz fehlgeschlagen" oder Symbol “ (neu):
Der Absatz wurde neu aufgenommen und beschreibt die Möglichkeit, dass das ETCS-FzG keine
Funkverbindung zur ETCS-Zentrale aufbauen kann.
Bei den Möglichkeiten in den Absätzen (10) und (11) darf der abhängig von der ETCS-Fahrzeugsoftware angebotene Menüpunkt „Kurzwahlrufnummer“ (use short number) nicht verwendet werden, da die im ETCS-FzG vorhandenen RBC-Kontaktdaten eine Funkverbindung zur ggf. nicht
zuständigen ETCS-Zentrale aufbauen würden. Überprüfen Sie die RBC-Kontaktdaten und ändern Sie diese, wenn notwendig.
Absatz (12 ehemals 10) „ETCS Betriebsart SR angekündigt“:
Der Absatz wurde präzisierte und um die Möglichkeit, den Wechsel in die Betriebsart SR zu bestätigen ergänzt, wenn die Textmeldung „Sie dürfen vorbeifahren an ...“ (siehe Absatz 13) angezeigt wird. Die Beschreibung aus den ehemaligen Absätzen (11) und (12) wurde in Absatz (12)
integriert und der Randvermerk aus den beiden ehemaligen Absätzen gelöscht.
Absatz (ehemals) 11 „ETCS Betriebsart SR bestätigen“ und Absatz (ehemals) 12 „Fahrterlaubnis“:
Die Beschreibung aus den ehemaligen Absätzen (11) und (12) wurde präzisiert und in Absatz
(12) integriert. Der Randvermerk aus den ehemaligen Absätzen (11) und (12) wurde gelöscht.
Des Weiteren wurde der Hinweis ergänzt, dass „Override“ zu betätigen ist, wenn anschließend
eine Vorbeifahrt an einem ETCS-Halt bzw. Signal Ne 14 in der ETCS-Betriebsart SR erfolgt und
dass ein erneuter Befehl zum Bedienen von „Override“ hierfür nicht erforderlich ist.
Gültig ab 12.12.2021

## Seite 13

Aktualisierung 02
zur Richtlinie 483.0701
13/26
Abschnitt 13 „Regelbetrieb“
Unterabschnitt „Fahrt in der ETCS-Betriebsart FS“
Absatz (1) „ETCS-Betriebsart FS“:
Der Absatz wurde redaktionell angepasst.
Absatz (3) „ETCS-Aufmerksamkeitston“:
In dem Absatz wurde der Randvermerk „Aufmerksamkeitston“ in „ETCS-Aufmerksamkeitston“
geändert und die Beschreibung präzisiert.
Unterabschnitt „Fahrt in der ETCS-Betriebsart OS“
Der Unterabschnitt wurde komplett überarbeitet, da u. a. nur die Situation „Wechsel in die ETCS-
Betriebsart OS mit Ankündigung“ beschrieben war.
Absatz (8) „ETCS-Betriebsart OS mit Ankündigung“:
In dem Absatz wurde der Randvermerk „ETCS-Betriebsart OS angekündigt“ in „ETCS-Betriebsart OS mit Ankündigung“ geändert und die Beschreibung präzisiert.
Absatz (9) „ETCS-Betriebsart OS ohne Ankündigung“:
In dem Absatz wurde der Randvermerk „Bestätigen“ in „ETCS-Betriebsart OS ohne Ankündigung“ geändert. In der Beschreibung wurde ergänzt, in welchen Situationen ein Wechsel in die
ETCS-Betriebsart OS ohne Ankündigung vorkommen kann. Die Beschreibung zum Bestätigen
ist präzisiert worden.
Absatz (10) „Führungsgrößen/Überwachungsgröße in der ETCS-Betriebsart OS einblenden“:
In dem Absatz wurde der Randvermerk „Überwachungsgrößen in ETCS-Betriebsart OS“ in „Führungsgrößen/Überwachungsgröße in der ETCS-Betriebsart OS einblenden“ geändert. Für eine
Fahrt in der ETCS-Betriebsart OS (Zug fährt anzeigegeführt) ist die Anzeige der Führungsgrößen
(entsprechend Abschnitt 7 Absatz (4)) und der Überwachungsgröße (entsprechend Abschnitt 7
Absatz (5)) zwingend erforderlich. Diese sind zuvor einzublenden und werden abhängig von der
betrieblichen Situation angezeigt.
Des Weiteren wurden noch die Überwachungsfunktionen des ETCS-FzG in der ETCS-Betriebsart OS präzisiert und ergänzt. Das ETCS-FzG überwacht das Einhalten der Sollgeschwindigkeit,
welche die beim Fahren auf Sicht höchstens zulässige Geschwindigkeit von 40 km/h bzw. eine
niedrigere Geschwindigkeit anzeigt, die sich z. B. bei Langsamfahrstellen, der Einfahrt in ein
Stumpfgleis, ein teilweise besetztes Gleis oder in ein Gleis ohne ausreichenden Durchrutschweg
ergeben kann.
Unterabschnitt „Fahrt in der ETCS-Betriebsart LS“ (neu):
Absatz (12) „ETCS-Betriebsart LS“ (neu):
Der Absatz wurde neu aufgenommen.
Unterabschnitt „Halt bzw. Langsamfahrt in der ETCS-Betriebsart LS“ (neu):
Absatz (13) „Anzeige der LSSMA“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt, bei welchem Signalbegriff bzw. bei welcher
Signalbedeutung das ETCS-FzG eine Einschränkung erhält und wie sich diese in Abhängigkeit
von den Bremswegabständen auswirkt.
Weiterhin wurde beschrieben, wann die LSSMA am MFD angezeigt wird und wie fahrzeugseitig
diese Einschränkung vom ETCS-FzG überwacht wird.
Befindet sich in dem Bereich, in dem die LSSMA angezeigt wird, eine Langsamfahrstelle, dann
wird Ihnen die niedrigste Geschwindigkeit als LSSMA angezeigt. Dies kann die Geschwindigkeit
Gültig ab 12.12.2021

## Seite 14

Aktualisierung 02
zur Richtlinie 483.0701
14/26
aus der Überwachungskurve der LSSMA oder aus der Überwachungskurve einer Langsamfahrstelle sein, wenn die Geschwindigkeit niedriger ist, als aus der Überwachungskurve der LSSMA.
• Beginnt die Langsamfahrstelle vor dem Vorsignal und ist die Geschwindigkeit niedriger als
die Geschwindigkeit aus der Überwachungskurve der LSSMA, dann wird Ihnen direkt die
niedrigere Geschwindigkeit aus der Langsamfahrstelle als LSSMA angezeigt.
• Beginnt die Langsamfahrstelle nach dem Vorsignal und ist die Geschwindigkeit niedriger
als die Geschwindigkeit aus der Überwachungskurve der LSSMA, dann wird Ihnen zuerst
die Geschwindigkeit aus der Überwachungskurve der LSSMA angezeigt.
Mit Beginn der Langsamfahrstelle wird Ihnen anschließend die niedrigere Geschwindigkeit
aus der Langsamfahrstelle als LSSMA angezeigt.
Nur in diesem Zusammenhang wird Ihnen die Geschwindigkeit einer Langsamfahrstelle als
LSSMA angezeigt, ansonsten erfolgt keine Geschwindigkeitsanzeige einer Langsamfahrstelle
am MFD.
Absatz (14) „Löschen der LSSMA“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt bei welchem Signalbegriff bzw. bei welcher
Signalbedeutung und in welchem Abstand die LSSMA gelöscht wird.
Absatz (15) „Löschen der Release Speed“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt wann die Release Speed gelöscht wird.
Unterabschnitt „Funktion Override“:
Die Beschreibung in dem Unterabschnitt „Funktion Override“ wurde grundlegend angepasst und
zum besseren Verständnis teilweise neu gegliedert.
Absatz (16 ehemals 12) „Allgemein“:
Der Absatz wurde neu aufgeteilt und die ETCS-Betriebsarten wurden in Abhängigkeit der ETCS-
Level dargestellt.
Absatz (17 ehemals 13) „Override betätigen“:
In dem Absatz wurde der Randvermerk „Vorbeifahrt am ETCS-Halt bzw. Signal Ne 14“ geändert
in „Override betätigen“, da diese Regeln neu für alle ETCS-Level gelten. Es wurde ergänzt, in
welchen Fällen „Override“ betätigt werden muss. Weiterhin wurde klargestellt, dass „Override“
beim Rangieren in der ETCS-Betriebsart SH nicht betätigt werden muss, da die Infrastruktur der
DB Netz AG keine Balisen mit der Funktion „Halt in der ETCS-Betriebsart SH“ (Stopp if in SH)
verwendet. Ferner wurde noch der Hinweis ergänzt, dass im ETCS-Level NTC PZB/LZB durch
das Betätigen der Befehlstaste auch „Override“ aktiv wird.
Absatz (18 ehemals 14) „Wechsel in die ETCS-Betriebsart SR“:
In dem Absatz „Wechsel in die ETCS-Betriebsart SR“ wurde der Hinweis ergänzt, in dem die
ETCS-Betriebsarten aufgeführt sind, bei welchen das ETCS-FzG nach dem Aktivieren von „Override“ nicht in die ETCS-Betriebsart SR wechselt, sondern in der bisherigen ETCS-Betriebsart verbleibt.
Absatz (19 ehemals 15) „Override aktiv“:
In dem Absatz wurde der Randvermerk „Override“ in „Override aktiv“ geändert. In den neu aufgenommenen Unterabsätzen a.) bis c.) wird unterschieden, in welchen ETCS-Level bei aktivem
„Override“ an welchen Stellen vorbeigefahren werden kann, ohne dass das ETCS-FzG in die
ETCS-Betriebsart TR wechselt.
Obwohl in ETCS-Level 0 keine Zugbeeinflussung wirkt, muss der Tf zur Vorbeifahrt am Halt zeigenden oder gestörten Haupt- bzw. Sperrsignal oder am Signal Ne 1 „Override“ betätigen.
Gültig ab 12.12.2021

## Seite 15

Aktualisierung 02
zur Richtlinie 483.0701
15/26
Hintergrund:
1.) Bei einem Levelwechsel von ETCS-Level 0 nach ETCS-Level 1 oder ETCS-Level 2 wirkt
wieder eine Zugbeeinflussung. Für die Vorbeifahrt am Halt zeigenden oder gestörten Hauptbzw. Sperrsignal oder am Signal Ne 1 muss deshalb „Override“ aktiv sein, damit das ETCS-
FzG nicht in die ETCS-Betriebsart TR wechselt.
2.) Einheitliche Betätigung von „Override“ in allen ETCS-Level.
Der neu aufgenommene Unterabsatz d.) berücksichtigt den Fall, dass „Override“ betätigt werden
muss, wenn der Fdl dies mit Befehl angeordnet hat, um eine bestehende Fahrterlaubnis zu löschen.
Der neu aufgenommene Unterabsatz e.) berücksichtigt den Fall, dass „Override“ betätigt werden
muss und der Fdl dies mit Befehl angeordnet hat, wenn beim Beenden des ETCS-Startlaufs
„Start“ nicht angeboten wurde.
Der Hinweis „Erlischt das Symbol , bevor Sie am entsprechenden Signal bzw. am ETCS-Halt
vorbeigefahren sind, dürfen Sie „Override“ ohne erneuten Befehl wieder betätigen.“ wurde in den
neuen Absatz (20) „Override erlischt“ verschoben.
Neu aufgenommen wurde der Hinweis, dass im ETCS-Level NTC PZB/LZB das Symbol für die
Funktion Override nach dem Betätigen der Befehlstaste – abhängig von der ETCS-Fahrzeugsoftware – angezeigt werden kann.
Absatz (20) „Override erlischt“ (neu):
Im neuen Absatz „Override erlischt“ wurden die hierfür bisher im ehemaligen Absatz (15) gegebenen Regeln aufgenommen. Weiterhin wurde ein Verweis auf Absatz (19) Unterabsatz a) bis c)
aufgenommen, der auf die Stellen verweist, an denen nur mit aktivem „Override“ vorbeigefahren
werden kann.
Der Fall nach Absatz (19) Unterabsatz d) wurde nicht berücksichtigt, da in dieser Situation davon
auszugehen ist, dass die Voraussetzungen zur Weiterfahrt des Zuges vor Ablauf der 255 s nicht
erfüllt sind.
Weiterhin wurde ergänzt, dass Override in ETCS-Level 0 nur nach Zurücklegen einer festen Entfernung oder nach Ablauf einer festen Zeit gelöscht wird.
Absatz (ehemals 16) „Überwachungsgrößen in SR“ (gelöscht):
Der Absatz wurde gelöscht und die Regeln im Unterabschnitt „Fahrt in der ETCS-Betriebsart SR“
Absatz (22) „Überwachungsgrößen in der ETCS-Betriebsart SR einblenden“ mit aufgenommen.
Unterabschnitt „Fahrt in der ETCS-Betriebsart SR“
Die Beschreibung im Unterabschnitt „Fahrt in der ETCS-Betriebsart SR“ wurde um die folgenden
Absätze ergänzt.
Absatz (ehemals 17) „Auf Sicht fahren“ (gelöscht):
Der Absatz wurde gelöscht, da es sich hierbei um eine betriebliche Regelung handelt, die in der
Ril 408 aufgenommen wurde.
Absatz (21) „Überwachungsgrößen in der ETCS-Betriebsart SR einblenden“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt, dass für eine Fahrt in der ETCS-Betriebsart SR (Zug fährt signalgeführt) die Anzeige der Überwachungsgrößen zusätzlich erforderlich ist,
damit auch eine reduzierte Sollgeschwindigkeit entsprechend Absatz (23) angezeigt werden
kann. Die Überwachungsgrößen sind zuvor einzublenden und werden abhängig von der betrieblichen Situation angezeigt.
Des Weiteren wurden die Überwachungsfunktionen des ETCS-FzG in der ETCS-Betriebsart SR
ergänzt.
Gültig ab 12.12.2021

## Seite 16

Aktualisierung 02
zur Richtlinie 483.0701
16/26
Absatz (22) „Wechsel in die ETCS-Betriebsart LS“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt die Möglichkeiten zum Wechsel in die
ETCS-Betriebsart LS. Des Weiteren wurde ergänzt, dass nach einem vollzogenen, aber nicht
angekündigten Wechsel in die ETCS-Betriebsart LS dieser innerhalb von 5 s zu bestätigen ist.
Anderenfalls leitet das ETCS-FzG eine Zwangsbetriebsbremsung ein, die Sie durch eine nachträgliche Bestätigung wieder aufheben können.
Unterabschnitt „Halt in der ETCS-Betriebsart SR“ (neu):
Absatz (23) „Anzeige Sollgeschwindigkeit“ (neu):
Der Absatz wurde neu aufgenommen. In ETCS-Level 1 und 2 wird grundsätzlich die Sollgeschwindigkeit 40 km/h angezeigt. Es wird keine Bremskurve überwacht. Im ETCS-Level 2 wird
die Sollgeschwindigkeit bei nicht ausreichendem Gefahrpunktabstand ca. 100 m vor dem Signal
Ne 14 auf 20 km/h abgesenkt.
Unterabschnitt „ETCS-Betriebsart SH“
Absatz (24 ehemals 18) „ETCS-Level NTC PZB/LZB“:
Die Unterscheidung in dem Absatz, ob im ETCS-Level NTC PZB/LZB die ETCS-Betriebsart SH
verfügbar ist, ist nicht geändert, sondern nur übersichtlicher dargestellt worden.
Geändert werden musste das Verfahren, wenn die ETCS-Betriebsart SH nicht verfügbar ist. Dies
war erforderlich, da mit einem ausgeschalteten ETCS-FzG die Balisen nicht gelesen und somit
auch keine Daten empfangen werden können. Dies ist aber erforderlich, wenn zur Bereitstellung
eines Zuges rangiert werden muss.
Grundsätzlich sind für Rangierfahrten im ETCS-Level NTC PZB/LZB keine Zugdaten erforderlich.
Vor Beginn einer Rangierfahrt müssen im ETCS-Level NTC PZB/LZB für ETCS (systembedingt)
immer Zugdaten eingegeben werden. Andernfalls wird der ETCS-Startlauf nicht abgeschlossen
und die Stillstandsüberwachung bleibt wirksam.
Es müssen für ETCS die Zugdaten eingegeben werden, die für eine anschließende Zugfahrt erforderlich sind. Sollte sich keine Zugfahrt anschließen oder sind die Zugdaten für ETCS nicht
bekannt, müssen für ETCS die Zugdaten des Fahrzeuges eingegeben werden. Es ist die ETCS-
Zugart zu wählen, die zu den vorhandenen Bremshundertstel (Brh) des Fahrzeuges sowie zu
dessen Bremsstellung passt. Als Einstellwert für die größte zulässige Geschwindigkeit (VMZ) ist
„40“ einzugeben. Für die Zuglänge (ZL) und die Bremshundertstel (Brh) sind für ETCS die Zugdaten des Fahrzeuges einzugeben.
Müssen Sie nach dem Rangieren eine Zugfahrt durchführen, für die Sie die erforderlichen Zugdaten noch nicht eingegeben haben bzw. die nicht im ETCS-Level NTC PZB/LZB beginnt,
müssen Sie nach dem Beenden des Rangierens einen erneuten ETCS-Startlauf entsprechend
Ril 483.0701 Abschnitt 11 Unterabschnitt „ETCS-Startlauf (Start of Mission) beginnen“ durchführen.
Absatz (25 ehemals 19) „ETCS-Level 0 / ETCS-Level 1“:
Der Absatz wurde präzisiert.
Absatz (26 ehemals 20) „ETCS-Level 2“:
Der Absatz wurde präzisiert. Die zwei bestehenden Möglichkeiten für den Wechsel in die ETCS-
Betriebsart SH wurden auch präzisiert und durch Aufzählungszeichen hervorgehoben. Des Weiteren wurden noch zwei Möglichkeiten für die Situation ergänzt, wenn die ETCS-Zentrale den
Wechsel in die ETCS-Betriebsart SH ablehnt.
Absatz (27 ehemals 21) „ETCS-Betriebsart SH“:
Bei dem Absatz ändert sich lediglich die Nummerierung, inhaltlich bleibt dieser unverändert.
Gültig ab 12.12.2021

## Seite 17

Aktualisierung 02
zur Richtlinie 483.0701
17/26
Absatz (28) „Überwachungsgrößen in der ETCS-Betriebsart SH einblenden“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt, wie in der ETCS-Betriebsart SH die Anzeige der Überwachungsgröße (entsprechend Abschnitt 7 Absatz (5)) eingeblendet werden kann.
Absatz (29) „ETCS-Betriebsart SH beenden“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt, wie die ETCS-Betriebsart SH beendet werden kann.
Unterabschnitt „ETCS-Betriebsart PS“
Absatz (30 ehemals 22) „Allgemeines“:
Der Absatz wurde präzisiert.
Absatz (31 ehemals 23) „Ablauf“:
Der Absatz wurde präzisiert.
Absatz (32 ehemals 24) „ETCS-Betriebsart PS beenden“:
Der Absatz wurde präzisiert.
Unterabschnitt „Bahnübergang auf Strecken mit ETCS-Level 2“
Der Unterabschnitt „ETCS-Auftrag Bahnübergang sichern“ wurde in „Bahnübergang auf Strecken
mit ETCS-Level 2“ geändert, komplett überarbeitet und beinhaltet die Regelungen für Strecken
mit ETCS-Level 2.
Hinweis:
Die Regeln für das Bedienen des ETCS-FzG beim Befahren von Bahnübergängen auf Strecken mit ETCS-Level 1 sind in der Aktualisierung 02 noch nicht enthalten.
Absatz (33) „Textmeldung "Einschaltstrecke BÜ km ...,..."“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt den Umgang mit der Textmeldung an
der/den Einschaltstrecke/n.
Absatz (34 ehemals 25) „BÜ gestört“:
In dem Absatz wurde der Randvermerk „Anzeige“ in „BÜ gestört“ geändert, die Beschreibung
überarbeitet und aufgeteilt nach den ETCS-Level und den ETCS-Betriebsarten.
Unterabschnitt „ETCS-Auftrag „Hauptschalter Aus“
Absatz (35 ehemals 26) „Hauptschalter aus“:
Der Absatz wurde redaktionell angepasst.
Absatz (36 ehemals 27) „Hauptschalter ein“:
Bei dem Absatz ändert sich lediglich die Nummerierung, inhaltlich bleibt dieser unverändert.
Absatz (37 ehemals 28) „Selbsttätiges Aus- und Ein-schalten“:
Der Absatz wurde redaktionell angepasst.
Unterabschnitt „ETCS-Auftrag Stromabnehmer senken“
Absätze (38 bis 40) (ehemals 29 bis 31):
Bei den Absätzen ändert sich lediglich die Nummerierung, inhaltlich bleiben diese unverändert.
Abschnitt 14 „Automatischer Levelwechsel“
Absatz (1) „Grundsätzliches“:
Der Hinweis am Ende des Absatzes wurde präzisiert.
Gültig ab 12.12.2021

## Seite 18

Aktualisierung 02
zur Richtlinie 483.0701
18/26
Unterabschnitt „Automatischer Levelwechsel von ETCS-Level NTC PZB/LZB nach ETCS-Level 1“
Der Hinweis zur Verwendung der ETCS-Betriebsarten FS und OS in ETCS-Level 1 wurde in einen
Verweis auf Abschnitt 3 Absatz (4) geändert und die Fußnote gelöscht.
Absatz (2) „Ankündigung“:
Die Beschreibung wurde dahingehend geändert, dass ein Levelwechsel nach ETCS-Level 1 ca.
350 m vor dem Ort des Levelwechsels angekündigt wird.
Hintergrund:
Durch die Ankündigung wird verhindert, dass am Ort des Levelwechsels der Levelwechsel und
anschließend der Wechsel der ETCS-Betriebsart innerhalb von 5 s bestätigt werden muss.
Wurde 5 s nach dem Ort des Levelwechsels die Ankündigung des Levelwechsels nicht bestätigt, wird eine Zwangsbetriebsbremsung eingeleitet. Der Levelwechsel kann nachträglich bestätigt werden. Anschließend wird die Bestätigung des Wechsels in die ETCS-Betriebsart LS
gefordert. Erst nach Bestätigung der ETCS-Betriebsart LS wird die Zwangsbetriebsbremsung
aufgehoben.
Absatz (3) „Bestätigung“:
In dem Absatz wurde der Randvermerk „Bestätigen“ in „Bestätigung“ geändert, die Beschreibung
wurde entsprechend den Änderungen in Absatz (2) angepasst und ergänzt, dass das Symbol
nach dem Bestätigen wieder hellgrau wird und erlischt, wenn der Levelwechsel vollzogen ist.
Die Beschreibung zum Wechsel der ETCS-Betriebsart ist in den neuen Absatz (6) verschoben
worden.
Absatz (4) „Ort“:
Die Beschreibung wurde präzisiert.
Absatz (5) „Grenzsignal zeigt Fahrt“:
In dem Absatz wurde der Randvermerk „Fahrterlaubnis erhalten“ in „Grenzsignal zeigt Fahrt“ geändert und die Beschreibung präzisiert.
Absatz (6) „Bestätigung des Wechsels der ETCS-Betriebsart“ (neu):
Der Absatz wurde neu aufgenommen und enthält die überarbeitete Beschreibung zum Wechsel
der ETCS-Betriebsart aus Absatz (3).
Absatz (7 ehemals 6) „Zugfahrt mit besonderem Auftrag“:
Der Absatz wurde präzisiert und um die Hinweise ergänzt, dass im ETCS-Level NTC PZB/LZB
durch das Betätigen der Befehlstaste auch „Override“ aktiv wird und dass das ETCS-FzG nach
dem Aktivieren von „Override“ in der ETCS-Betriebsart SN verbleibt.
Weiterhin wurde die Beschreibung neu aufgeteilt in „Override“ aktiv und nicht mehr aktiv:
• Ist „Override“ noch aktiv, wechselt das ETCS-FzG in die ETCS-Betriebsart SR.
• Ist „Override“ nicht mehr aktiv, wechselt das ETCS-FzG in die ETCS-Betriebsart LS.
Unterabschnitt „Automatischer Levelwechsel von ETCS-Level NTC PZB/LZB nach ETCS-Level 2“
Absatz (8 ehemals 7) „Ankündigung“:
Der Absatz wurde präzisiert und um den Hinweis ergänzt, dass wenn bei der Ankündigung zum
Levelwechsel der Abstand zum Ort des Levelwechsels geringer ist als bei der Bestätigung (siehe
Absatz (9)), dass dann bei der Ankündigung direkt das gelbe Symbol zum Bestätigen angezeigt
wird.
Gültig ab 12.12.2021

## Seite 19

Aktualisierung 02
zur Richtlinie 483.0701
19/26
Absatz (9 ehemals 8) „Bestätigung“:
In dem Absatz wurde der Randvermerk „Bestätigen“ in „Bestätigung“ geändert und die Beschreibung präzisiert. Ergänzt wurde, dass das Symbol nach dem Bestätigen wieder hellgrau wird und
erlischt, wenn der Levelwechsel vollzogen ist.
Absatz (10 ehemals 9) „Ort“:
Der Absatz wurde präzisiert.
Absatz (11 ehemals 10) „ETCS-Fahrterlaubnis erhalten“:
In dem Absatz wurde der Randvermerk „Fahrterlaubnis erhalten“ in „ETCS-Fahrterlaubnis erhalten“ geändert und die Beschreibung präzisiert.
Absatz (12 ehemals 11) „Zs 1, Zs 7 oder Zs 8“:
Der Absatz wurde präzisiert und die Beschreibung wurde neu aufgeteilt in „Override“ aktiv und
nicht mehr aktiv:
• Ist „Override“ noch aktiv, wechselt das ETCS-FzG in die ETCS-Betriebsart SR.
• Ist „Override“ nicht mehr aktiv, wechselt das ETCS-FzG bei Zs 1 und Zs 8 in die ETCS-
Betriebsart FS und bei Zs 7 in die ETCS-Betriebsart OS.
Absatz (13 ehemals 13) „Fahrt mit Befehl“:
Der Absatz wurde präzisiert, zum besseren Verständnis aufgeteilt und nach Absatz (12) verschoben.
Absatz (14 ehemals 12) „Keine Funkverbindung“:
Bei dem Absatz ändert sich lediglich die Nummerierung, inhaltlich bleibt dieser unverändert.
Unterabschnitt „Automatischer Levelwechsel von ETCS-Level 0 nach ETCS-Level 1“
Der Hinweis zur Verwendung der ETCS-Betriebsarten FS und OS in ETCS-Level 1 wurde in einen
Verweis auf Abschnitt 3 Absatz (4) geändert und die Fußnote gelöscht.
Absatz (15 ehemals 14) „Ankündigung“:
Die Beschreibung wurde dahingehend geändert, dass ein Levelwechsel nach ETCS-Level 1 ca.
350 m vor dem Ort des Levelwechsels angekündigt wird.
Absatz (16 ehemals 15) „Bestätigung“:
In dem Absatz wurde der Randvermerk „Bestätigen“ in „Bestätigung“ geändert und die Beschreibung neu aufgenommen, dass für einen Levelwechsel nach ETCS-Level 1 keine Bestätigung erforderlich ist.
Die Beschreibung zum Wechsel der ETCS-Betriebsart ist in den neuen Absatz (19) verschoben
worden.
Absatz (17 ehemals 16) „Ort“:
Die Beschreibung wurde präzisiert.
Absatz (18 ehemals 17) „Grenzsignal zeigt Fahrt“:
In dem Absatz wurde der Randvermerk „Fahrterlaubnis erhalten“ in „Grenzsignal zeigt Fahrt“ geändert und die Beschreibung präzisiert.
Absatz (19) „Bestätigung des Wechsels der ETCS-Betriebsart“ (neu):
Der Absatz wurde von (ehemals 15) nach (19) verschoben. Der Randvermerk „Bestätigen“ wurde
in „Bestätigung des Wechsels der ETCS-Betriebsart“ geändert und die Beschreibung präzisiert.
Absatz (19) „Bestätigung des Wechsels der ETCS-Betriebsart“ (neu):
Der Absatz wurde neu aufgenommen und enthält die überarbeitete Beschreibung zum Wechsel
der ETCS-Betriebsart aus dem ehemaligen Absatz (15).
Gültig ab 12.12.2021

## Seite 20

Aktualisierung 02
zur Richtlinie 483.0701
20/26
Absatz (20 ehemals 18) „Zugfahrt mit besonderem Auftrag“:
Der Absatz wurde präzisiert und um den Hinweis ergänzt, dass das ETCS-FzG nach dem Aktivieren von „Override“ in der ETCS-Betriebsart UN verbleibt.
Weiterhin wurde die Beschreibung neu aufgeteilt in „Override“ aktiv und nicht mehr aktiv:
• Ist „Override“ noch aktiv, wechselt das ETCS-FzG in die ETCS-Betriebsart SR.
• Ist „Override“ nicht mehr aktiv, wechselt das ETCS-FzG in die ETCS-Betriebsart LS.
Unterabschnitt „Automatischer Levelwechsel von ETCS-Level 0 nach ETCS-Level 2“
Absatz (21 ehemals 19) „Ankündigung“:
Die Beschreibung wurde präzisiert.
Absatz (22) „Bestätigung“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt, dass für einen Levelwechsel nach ETCS-
Level 2 keine Bestätigung erforderlich ist
Absatz (23 ehemals 20) „Ort“:
Die Beschreibung wurde präzisiert.
Absatz (24 ehemals 21) „ETCS-Fahrterlaubnis erhalten“:
In dem Absatz wurde der Randvermerk „Fahrterlaubnis erhalten“ in „ETCS-Fahrterlaubnis erhalten“ geändert.
Absatz (25 ehemals 22) „Zs 1, Zs 7 oder Zs 8“:
Der Absatz wurde präzisiert und die Beschreibung wurde neu aufgeteilt in „Override“ aktiv und
nicht mehr aktiv:
• Ist „Override“ noch aktiv, wechselt das ETCS-FzG in die ETCS-Betriebsart SR.
• Ist „Override“ nicht mehr aktiv, wechselt das ETCS-FzG bei Zs 1 und Zs 8 in die ETCS-
Betriebsart FS und bei Zs 7 in die ETCS-Betriebsart OS.
Absatz (26 ehemals 24) „Fahrt mit Befehl“:
Der Absatz wurde präzisiert, zum besseren Verständnis aufgeteilt und nach Absatz (25) verschoben.
Absatz (27 ehemals 23) „Keine Funkverbindung“:
Bei dem Absatz ändert sich lediglich die Nummerierung, inhaltlich bleibt dieser unverändert.
Unterabschnitt „Automatischer Levelwechsel von ETCS-Level 1 nach ETCS-Level
NTC PZB/LZB“
Der Hinweis zur Verwendung der ETCS-Betriebsarten FS und OS in ETCS-Level 1 wurde in einen
Verweis auf Abschnitt 3 Absatz (4) geändert und die Fußnote gelöscht.
Absatz (28 ehemals 25) „Ankündigung“:
Die Beschreibung wurde präzisiert.
Absatz (29 ehemals 26) „Bestätigung“:
Die Beschreibung wurde präzisiert und der Hinweis ergänzt, dass das Symbol nach dem Bestätigen erlischt, da der Levelwechsel bereits vollzogen ist.
Absatz (30 ehemals 27) „Ort“:
Die Beschreibung wurde präzisiert.
Absatz (31 ehemals 18) „Weiterfahrt“:
Bei dem Absatz ändert sich lediglich die Nummerierung, inhaltlich bleibt dieser unverändert.
Gültig ab 12.12.2021

## Seite 21

Aktualisierung 02
zur Richtlinie 483.0701
21/26
Unterabschnitt „Automatischer Levelwechsel von ETCS-Level 1 nach ETCS-Level 2“
Der Hinweis zur Verwendung der ETCS-Betriebsarten FS und OS in ETCS-Level 1 wurde in einen
Verweis auf Abschnitt 3 Absatz (4) geändert und die Fußnote gelöscht.
Absatz (32 ehemals 28) „Ankündigung“:
Die Beschreibung wurde präzisiert.
Absatz (33) „Bestätigung“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt, dass für einen Levelwechsel nach ETCS-
Level 2 keine Bestätigung erforderlich ist
Absatz (34 ehemals 30) „Ort“:
Die Beschreibung wurde präzisiert.
Absatz (35 ehemals 31) „ETCS-Fahrterlaubnis erhalten“:
In dem Absatz wurde der Randvermerk „Fahrterlaubnis erhalten“ in „ETCS-Fahrterlaubnis erhalten“ geändert.
Absatz (36 ehemals 32) „Zugfahrt mit besonderem Auftrag“:
In dem Absatz wurde der Randvermerk „Zs 1, Zs 7, oder Zs 8“ in „Zugfahrt mit besonderem
Auftrag“ geändert, die Beschreibung präzisiert und neu aufgeteilt in „Override“ aktiv und nicht
mehr aktiv:
• Ist „Override“ noch aktiv, wechselt das ETCS-FzG in die ETCS-Betriebsart SR.
• Ist „Override“ nicht mehr aktiv, wechselt das ETCS-FzG bei Zs 1, Zs 8 und Befehl in die
ETCS-Betriebsart FS und bei Zs 7 in die ETCS-Betriebsart OS.
Absatz (37 ehemals 33) „Keine Funkverbindung“:
Die Beschreibung wurde präzisiert.
Unterabschnitt „Automatischer Levelwechsel von ETCS-Level 2 nach ETCS-Level
NTC PZB/LZB“
Absatz (38 ehemals 34) „Ankündigung“:
Die Beschreibung wurde präzisiert und um die Situation einer Geschwindigkeitsrestriktion in dem
Bereich, vor dem der Levelwechsel stattfinden soll ergänzt. Dann sendet die ETCS-Zentrale, abhängig davon, an welchem Ort die Geschwindigkeitsrestriktion endet, eine der aufgeführten Textmeldungen, welche den Tf an die Einhaltung der Geschwindigkeitsrestriktion für die gesamte
Zuglänge erinnern soll.
Absatz (39 ehemals 35) „Bestätigung“:
In dem Absatz wurde der Randvermerk „Bestätigen“ in „Bestätigung“ geändert, die Beschreibung
präzisiert und ergänzt, dass das Symbol nach dem Bestätigen wieder hellgrau wird und erlischt,
wenn der Levelwechsel vollzogen ist.
Absatz (40 ehemals 36) „Ort“:
Die Beschreibung wurde präzisiert.
Absatz (41 ehemals 37) „Levelwechsel nach Halt vor dem Grenzsignal“:
In dem Absatz wurde der Randvermerk „Levelwechsel nach Halt vor dem Hauptsignal“ in „Levelwechsel nach Halt vor dem Grenzsignal“ geändert, die Beschreibung präzisiert und der Hinweis
ergänzt, dass das Symbol nach dem Bestätigen erlischt, da der Levelwechsel bereits vollzogen
ist.
Absatz (42 ehemals 38) „Weiterfahrt“:
Bei dem Absatz ändert sich lediglich die Nummerierung, inhaltlich bleibt dieser unverändert.
Gültig ab 12.12.2021

## Seite 22

Aktualisierung 02
zur Richtlinie 483.0701
22/26
Unterabschnitt „Automatischer Levelwechsel von ETCS-Level 2 nach ETCS-Level 0“
Absatz (43 ehemals 39) „Ankündigung“:
Der Absatz wurde präzisiert und um den Hinweis ergänzt, dass wenn bei der Ankündigung zum
Levelwechsel der Abstand zum Ort des Levelwechsels geringer ist als bei der Bestätigung (siehe
Absatz (44)), dass dann bei der Ankündigung direkt das gelbe Symbol zum Bestätigen angezeigt
wird.
Absatz (44 ehemals 40) „Bestätigung“:
Die Beschreibung wurde präzisiert und ergänzt, dass das Symbol nach dem Bestätigen wieder
hellgrau wird und erlischt, wenn der Levelwechsel vollzogen ist.
Absatz (45 ehemals 41) „Ort“:
Bei dem Absatz ändert sich lediglich die Nummerierung, inhaltlich bleibt dieser unverändert.
Absatz (46 ehemals 42) „Levelwechsel nach Halt vor dem Grenzsignal“:
In dem Absatz wurde der Randvermerk „Levelwechsel nach Halt vor dem Hauptsignal“ in „Levelwechsel nach Halt vor dem Grenzsignal“ geändert, die Beschreibung präzisiert und der Hinweis
ergänzt, dass das Symbol nach dem Bestätigen erlischt, da der Levelwechsel bereits vollzogen
ist.
Absatz (47 ehemals 43) „Geschwindigkeit“:
Bei dem Absatz ändert sich lediglich die Nummerierung, inhaltlich bleibt dieser unverändert.
Unterabschnitt „Automatischer Levelwechsel von ETCS-Level 2 nach ETCS-Level 1“
Der Hinweis zur Verwendung der ETCS-Betriebsarten FS und OS in ETCS-Level 1 wurde in einen
Verweis auf Abschnitt 3 Absatz (4) geändert und die Fußnote gelöscht.
Absatz (48 ehemals 44) „Ankündigung“:
Die Beschreibung wurde präzisiert.
Absatz (49 ehemals 45) „Bestätigung“:
In dem Absatz wurde der Randvermerk „Bestätigen“ in „Bestätigung“ geändert und die Beschreibung neu aufgenommen, dass für einen Levelwechsel nach ETCS-Level 1 keine Bestätigung erforderlich ist.
Die Beschreibung zum Wechsel der ETCS-Betriebsart ist in den neuen Absatz (51) verschoben
worden.
Absatz (50 ehemals 46) „Ort“:
Die Beschreibung wurde präzisiert.
Absatz (51) „Bestätigung des Wechsels der ETCS-Betriebsart“ (neu):
Der Absatz wurde neu aufgenommen und enthält die überarbeitete Beschreibung zum Wechsel
der ETCS-Betriebsart aus dem ehemaligen Absatz (45).
Absatz (52) „Zugfahrt mit besonderem Auftrag“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt – abhängig ob „Override“ noch aktiv ist oder
nicht mehr – in welche ETCS-Betriebsart das ETCS-FzG bei einer Zugfahrt mit besonderem Auftrag wechselt.
Gültig ab 12.12.2021

## Seite 23

Aktualisierung 02
zur Richtlinie 483.0701
23/26
Abschnitt 15 „Besonderheiten bei ETCS-Level 2 Strecken ohne Hauptsignale“
Unterabschnitt „Einfahrt in die ETCS-Level 2 Strecke“
Der Unterabschnitt „Einfahrt in die ETCS-Strecke“ wurde in „Einfahrt in die ETCS-Level 2 Strecke“
geändert.
Absatz (1) „Zufahrtsicherungssignal dunkel“:
Die Beschreibung wurde präzisiert.
Absatz (2) „Zs 1, Zs 7 oder Zs 8 am Zufahrtsicherungssignal“:
Die Beschreibung wurde präzisiert.
Absatz (3) „Befehl“:
Die Beschreibung wurde präzisiert.
Absatz (4) „Zug nicht in ETCS-Level 2 aufgenommen“:
Die Beschreibung wurde präzisiert.
Abschnitt 16 „Manueller Levelwechsel“
Absatz (1) „Befehl“:
Die Beschreibung wurde präzisiert.
Absatz (2) „ETCS-Betriebsarten“:
Die Beschreibung wurde präzisiert.
Absatz (3) „ETCS-Betriebsart SN“:
Die Beschreibung wurde präzisiert.
Absatz (4) „ETCS-Betriebsart UN“:
Die Beschreibung wurde präzisiert.
Abschnitt 17 „Fahrt beenden“
Absatz (1) „Beenden der Überwachung“:
In dem Absatz wurde der Randvermerk „Fahrt beenden“ in „Beenden der Überwachung“ geändert. Die Beschreibung wurde komplett überarbeitet, zum besseren Verständnis neu aufgeteilt
und der Wechsel in die ETCS-Betriebsart SH zum Beenden der Überwachung einer Zugfahrt
ergänzt.
Abschnitt 18 „Abschlussarbeiten“
Absatz (1) „ETCS-Betriebsart SB“:
Die Beschreibung wurde präzisiert.
Abschnitt 19 „Unregelmäßigkeiten im Betrieb“
Unterabschnitt „ETCS-Betriebsart TR“
Absatz (1) „ETCS-Betriebsart TR“:
Der Hinweis in dem Absatz wurde dahingehend präzisiert, das nicht für jede Zwangsbremsung
auch eine Textmeldung ausgegeben wird.
Gültig ab 12.12.2021

## Seite 24

Aktualisierung 02
zur Richtlinie 483.0701
24/26
Absatz (2) „Bestätigung des Wechsels in die ETCS-Betriebsart TR und Zwangsbremsung aufheben“:
In dem Absatz wurde der Randvermerk „Zwangsbremsung aufheben“ in „Bestätigung des Wechsels in die ETCS-Betriebsart TR und Zwangsbremsung aufheben“ geändert.
Des Weiteren wurden die Beschreibung und das Bild dahingehend geändert, dass diese dem
technischen Ablauf in dieser Situation entsprechen. Das ETCS-Fzg wechselt mit dem Bestätigen
des Symbols im Stillstand erstens in die bereits vollzogene, quittierungspflichtige ETCS-Betriebsart TR und zweitens wird die Zwangsbremsung aufgehoben.
Absatz (3) „Wechsel der ETCS-Betriebsart“:
Die Beschreibung aus dem Absatz „Wechsel der ETCS-Betriebsart“ ist um die Möglichkeit in die
ETCS-Betriebsart SN zu wechseln ergänzt worden. Diese Möglichkeit kann sich z. B. ergeben,
wenn unmittelbar nach einem Wechsel in die ETCS-Betriebsart TR auch noch ein Levelwechsel
nach ETCS-Level NTC PZB/LZB erfolgt.
Unterabschnitt „ETCS-Betriebsart PT“
Der Unterabschnitt wurde komplett überarbeitet und neu aufgeteilt, da nur die Situation für ETCS-
Level 2 beschrieben war.
Absatz (5) „Start“:
In dem Absatz wurde der Randvermerk „Softkey "Start"“ in „Start“ geändert. Die Beschreibung
wurde präzisiert und um den Hinweis ergänzt, dass mit dem Befehl für die Weiterfahrt kein weiterer Befehl für das Betätigen von „Override“ erforderlich ist.
Des Weiteren wurde ergänzt, dass sich eine Situation ergeben kann, bei der Ihnen „Start“ im MFD
nicht angeboten wird und Sie nach Erhalt eines Befehls „Override“ betätigen müssen. Sollte Ihnen
„Override“ anschließend nicht angeboten werden, ist der ETCS-Startlauf nochmal durchzuführen.
Nach Eingabe der für den ETCS-Startlauf relevanten Daten ist „Override“ anstelle von „Start“ zu
betätigen.
Die Beschreibung für ETCS-Level 2 wurde in den neuen Absatz (7) verschoben.
Absatz (6) „ETCS-Level 1“ (neu):
Der Absatz wurde neu aufgenommen und beschreibt die Situation nach dem Betätigen von Start
in ETCS-Level 1.
Absatz (7) „ETCS-Level 2“ (neu):
Der Absatz wurde neu aufgenommen, enthält die präzisierte Beschreibung für ETCS-Level 2 aus
dem ehemaligen Absatz (5) und beschreibt die Situation nach dem Betätigen von Start in ETCS-
Level 2.
Weiterhin wurden noch die Möglichkeiten mit den entsprechenden Textmeldungen ergänzt, dass
die ETCS-Zentrale noch auf die Freigabe des Fahrwegs durch das Stellwerk wartet oder einen
Start mit Befehl in der ETCS-Betriebsart SR erwartet, da dieser der Standort des Zuges nicht
bekannt ist.
Es wurden noch die Hinweise ergänzt, dass mit dem Befehl für die Weiterfahrt kein weiterer Befehl für den Wechsel in die ETCS-Betriebsart SR erforderlich ist. Soll aber anschließend noch
eine Vorbeifahrt an einem ETCS-Halt bzw. Signal Ne 14 erfolgen, ist ein weiterer Befehl erforderlich.
Unterabschnitt „Durchfahren eines gestörten Funkbereiches auf ETCS-Level 2 Strecken ohne
Hauptsignale“
Der Unterabschnitt „Durchfahren eines gestörten Funkbereiches“ wurde in „Durchfahren eines
gestörten Funkbereiches auf ETCS-Level 2 Strecken ohne Hauptsignale“ geändert.
Gültig ab 12.12.2021

## Seite 25

Aktualisierung 02
zur Richtlinie 483.0701
25/26
Absatz (8 ehemals 6) „Allgemein“:
Bei dem Absatz ändert sich lediglich die Nummerierung, inhaltlich bleibt dieser unverändert.
Absatz (9 ehemals 7) „ETCS-Fahrterlaubnis in ETCS-Level 2“:
In dem Absatz wurde der Randvermerk „Fahrterlaubnis in ETCS-Level 2“ in „ETCS-Fahrterlaubnis in ETCS-Level 2“ geändert und die Beschreibung präzisiert. Ergänzt wurde, dass die von der
ETCS-Zentrale erteilte ETCS-Fahrterlaubnis zum Durchfahren eines gestörten Funkbereiches
eine Sollgeschwindigkeit von maximal 160 km/h enthält.
Absatz (10 ehemals 8) „Kürzen der ETCS-Fahrterlaubnis und Levelwechsel nach ETCS-Level 1“:
In dem Absatz wurde der Randvermerk „ETCS-Level 1“ in „Kürzen der ETCS-Fahrterlaubnis und
Levelwechsel nach ETCS-Level 1“ geändert und die Beschreibung präzisiert.
Unterabschnitt „Gestörte ETCS-Fahrzeugeinrichtung“
Absatz (11 ehemals 9) „ETCS-Betriebsart SF“:
Die Beschreibung wurde überarbeitet und aufgeteilt nach der ETCS-Betriebsart IS und der
ergänzten ETCS-Betriebsart NP. Für das weitere Vorgehen gelten die Regeln entsprechend Ril
408.2653 Abschnitt 1.
Richtlinie 483.0701A01 Übersicht der ETCS-Textmeldungen:
Abschnitt 1 „Textmeldungen auf Strecken mit ETCS-Level 1“ (neu)
Die bestehenden Textmeldungen für ETCS-Level 1 wurden in den neuen Abschnitt verschoben
und die Beschreibung der Textmeldungen wurde überarbeitet.
Abschnitt 2 „Textmeldungen auf Strecken mit ETCS-Level 2“ (neu)
Dieser Abschnitt enthält die neu aufgenommenen Textmeldungen, die auf ETCS-Level 2 Strecken angezeigt werden können.
Abschnitt 3 „Textmeldungen vom ETCS-FzG“ (neu)
Dieser Abschnitt enthält die neu aufgenommenen Textmeldungen, die vom ETCS-FzG gesendet
werden können.
Richtlinie 483.0701A99 Abkürzungen:
Im Anhang wurden einzelne Bedeutungen präzisiert und fehlenden Abkürzungen aus dieser
Richtlinie ergänzt.
Gültig ab 12.12.2021

## Seite 26

Aktualisierung 02
zur Richtlinie 483.0701
26/26
Mit freundlichen Grüßen
DB Netz AG
08.12.2020 08.12.2020
X X
Daniel Lehné gez. i. A. Pinter
Daniel Lehné (Leiter I.NAI 451) Philipp Pinter
(in Vertr. Hr. Kudraß als kom. Leiter I.NAI 452)
Signiert von: Daniel Lehné Signiert von: Philipp Pinter
Christian Kudraß Philipp Pinter
Leiter I.NAI 452 I.NAI 4521
(Fachautor Ril 483)
Gültig ab 12.12.2021

## Seite 27

Richtlinie
Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite I
Das vorliegende Regelwerk ist urheberrechtlich geschützt. Der DB Netz AG steht an
diesem Regelwerk das ausschließliche und unbeschränkte Nutzungsrecht zu.
Jegliche Formen der Vervielfältigung zum Zwecke der Weitergabe an Dritte bedürfen
der Zustimmung der DB Netz AG.
Fachautor: I.NAI 4521; Philipp Pinter; Tel.: (089) 1308-5234 Gültig ab 12.12.2021

## Seite 28

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite II
Zielgruppen, für welche diese Richtlinie erarbeitet wurde:
- Triebfahrzeugführer, die auf Strecken der DB Netz AG Fahrzeuge mit wirksamer
Zugbeeinflussung ETCS-Level 1 oder ETCS Level 2 führen
- Mitarbeiter, die Triebfahrzeugführer für die Zugbeeinflussung ETCS-Level 1 oder
ETCS Level 2 ausbilden und prüfen
- Leitende oder Aufsichtsführende im Bahnbetrieb
Impressum
Fachautor DB Netz AG
Spezifikation und Systementwicklung ETCS
Lastenheft-Entwicklung und
ETCS-Fahrzeugtechnik (I.NAI 4521)
Philipp Pinter
Völckerstraße 5
80939 München
Tel. Intern (962) 5234 / Extern (089) 1308-5234
Gültig ab 12.12.2021

## Seite 29

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite III
Inhaltsverzeichnis
1 Geltungsbereich ................................................... 1
2 Wirkungsweise ..................................................... 2
3 ETCS-Level .......................................................... 3
4 ETCS-Betriebsarten ........................................... 10
5 ETCS-Streckeneinrichtungen ............................. 18
6 ETCS-Fahrzeugeinrichtung ................................ 19
7 Anzeigen am MFD .............................................. 23
8 Zusammenhang zwischen Bremskurven und
Farbdarstellung der Geschwindigkeitsanzeige .... 38
9 MFD-Menüstruktur.............................................. 44
10 ETCS-Funktionen ............................................... 51
11 Vorbereitungsarbeiten ........................................ 52
12 Beginn einer Zugfahrt ......................................... 66
13 Regelbetrieb ....................................................... 74
14 Automatischer Levelwechsel .............................. 93
15 Besonderheiten bei ETCS-Level 2 Strecken
ohne Hauptsignale ........................................... 108
16 Manueller Levelwechsel ................................... 109
17 Fahrt beenden .................................................. 110
18 Abschlussarbeiten ............................................ 111
19 Unregelmäßigkeiten im Betrieb......................... 112
Anhänge:
A01 Übersicht der ETCS-Textmeldungen
A99 Abkürzungen
Gültig ab 12.12.2021

## Seite 30

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite IV
Nachweis der Aktualisierungen
Lfd. Kurzer Inhalt / Bemerkun- Gültig ab Aktualisierung eingearbeitet
Nr. gen (Namenszeichen / Tag)
1 Aktualisierung 01 10.12.2017
2 Aktualisierung 02 12.12.2021

Gültig ab 12.12.2021

## Seite 31

Richtlinie
Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 1
1 Geltungsbereich
(1) Diese Richtlinie (Ril) gilt für alle Triebfahrzeugführer (Tf), Geltungsbereich
* die auf den Strecken der DB Netz AG Fahrzeuge mit wirk-
* samer Zugbeeinflussung ETCS-Level 1 oder ETCS-
* Level 2 führen.
* (2) Die Ril beschreibt das Bedienen der ETCS-Fahrzeug- Inhalt
* einrichtung sowie deren wesentliche Bestandteile.
Baureihen-/bauartspezifische Abweichungen sind in dieser
Richtlinie durch „fahrzeugabhängig“ gekennzeichnet. Sie
sind in den Regeln für das Bedienen der Fahrzeuge enthalten.
* Unterschiede, die durch die ETCS-Fahrzeugsoftware be-
* dingt sind, sind in dieser Richtlinie durch „abhängig von
* der ETCS-Fahrzeugsoftware“ gekennzeichnet.
* Unterschiede, die durch die ETCS-Streckensoftware be-
* dingt sind, sind in dieser Richtlinie durch „abhängig von
* der ETCS-Streckensoftware“ gekennzeichnet.
Fachautor: I.NAI 4521; Philipp Pinter; Tel.: (089) 1308-5234 Gültig ab 12.12.2021

## Seite 32

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 2
2 Wirkungsweise
Aufgaben (1) ETCS (European Train Control System) steuert und überwacht Zugfahrten durch Vorgeben und Überwachen der
Geschwindigkeiten, Orten des Zuges, Anzeigen von Aufträgen und durch Ausgabe von Zwangsbremsungen oder
Zwangsbetriebsbremsungen bei bestimmten Fahrtereignissen.
Ordnung der (2) ETCS ist die übergeordnete Zugbeeinflussung. Die natio-
Zugbeeinflus- nalen Zugbeeinflussungen (z. B. PZB/LZB) in einem Fahrsungssysteme zeug sind ETCS untergeordnet und stehen als sogenannte
Spezifische Transmissions-Module (STM) unter ETCS zur
Verfügung. Vorbereitungsarbeiten, Abschlussarbeiten und
das Eingeben von Zugdaten folgen den ETCS-Vorgaben
und den Vorgaben für die installierten nationalen Zugbeeinflussungen.
Gültig ab 12.12.2021

## Seite 33

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 3
3 ETCS-Level
* (1) Streckenseitig kann die Zugbeeinflussung ETCS in ver- ETCS-Level
schiedenen Ausrüstungsvarianten, den sogenannten
ETCS-Level ausgeführt sein.
(2) In ETCS-Level NTC PZB/LZB übergibt das ETCS-Fahr- ETCS-Level
zeuggerät (ETCS-FzG) die Überwachung an die nationa- NTC PZB/LZB
* len Zugbeeinflussungen PZB oder LZB. Diese erfassen
* die Beeinflussungen der PZB oder LZB-Streckeneinrichtungen und werten sie aus. Sie müssen nach den Regeln der jeweils wirksamen Zugbeeinflussung fahren.
* Das ETCS-FzG liest Balisen und kann z. B. eine Funkver-
* bindung zur ETCS-Zentrale aufbauen.
Hinweise:
Die nationalen Zugbeeinflussungen werden als National
Train Control (NTC) bezeichnet.
* Im MFD können diese abhängig von der ETCS-Fahr-
* zeugsoftware entweder mit STM oder mit NTC bezeichnet
sein.
* (3) In ETCS-Level 0 wirkt keine Zugbeeinflussung. Der Zug ETCS-Level 0
* fährt signalgeführt. Das ETCS-FzG überwacht die zulässi-
* ge Geschwindigkeit von 50 km/h oder ggf. eine niedrigere
* Geschwindigkeit.
* Hinweis:
* Eine niedrigere Geschwindigkeit wird z. B. angezeigt,
* wenn die entsprechenden Balisen verlegt sind.
* Das ETCS-FzG liest Balisen und kann z. B. eine Funkver-
* bindung zur ETCS-Zentrale aufbauen.
Bild 1: Prinzipieller Aufbau ETCS-Level 0
Gültig ab 12.12.2021

## Seite 34

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 4
ETCS-Level 1 (4) In ETCS-Level 1 erfolgt eine punktförmige Datenübertragung über schaltbare und nicht schaltbare Balisen sowie
ggf. abschnittsweise über Euroloop.
Das ETCS-FzG überwacht *
- in der ETCS-Betriebsart FS oder OS das Einhalten *
der zulässigen Geschwindigkeit des Zuges sowie *
den ETCS-Halt und *
- in der ETCS-Betriebsart LS oder SR den Halt am *
Haupt- bzw. Sperrsignal. *
Hinweise: *
Auf der Infrastruktur der DB Netz AG wird die ETCS- *
Betriebsart FS in ETCS-Level 1 grundsätzlich nicht ver- *
wendet. Eine Ausnahme bildet das Durchfahren eines ge- *
störten Funkbereiches auf Strecken mit ETCS-Level 2 oh- *
ne Hauptsignale. Dort kann in bestimmten betrieblichen *
Situationen ein Levelwechsel nach ETCS-Level 1 in die *
ETCS-Betriebsart FS erfolgen. *
Die ETCS-Betriebsart OS wird in ETCS-Level 1 nicht ver- *
wendet. *
Bild 2: Prinzipieller Aufbau ETCS-Level 1
Gültig ab 12.12.2021

## Seite 35

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 5
Bild 3: Prinzipieller Aufbau ETCS-Level 1 mit Euroloop
* (5) In ETCS-Level 2 besteht für eine kontinuierliche Daten- ETCS-Level 2
* übertragung eine Funkverbindung zu einer ETCS-
* Zentrale. Aus den Fahrstraßeninformationen des Stell-
* werks ermittelt die ETCS-Zentrale die ETCS-Fahrterlaubnis und übermittelt diese an das ETCS-FzG. Das
* ETCS-FzG überwacht das Einhalten der zulässigen
* Geschwindigkeit des ETCS-geführten Zuges und den
* ETCS-Halt.
Balisen dienen vor allem der Ortung des Zuges bzw. sie
überwachen die unerlaubte Vorbeifahrt des Zuges in der
ETCS-Betriebsart SR an Signalen Ne 14.
Bild 4: Prinzipieller Aufbau ETCS-Level 2
Gültig ab 12.12.2021

## Seite 36

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 6
ETCS-Level 3 (6) In ETCS-Level 3 übernimmt ETCS zusätzlich zu den
Funktionen des ETCS-Level 2 die Freimeldung von Gleisabschnitten. Ortsfeste Systeme zur Gleisfreimeldung und
feste Blockabschnitte können damit entfallen. Dadurch ist
ein Fahren im Bremswegabstand (mobiler Block) möglich,
da das Fahrzeug den Fahrweg hinter sich über eine Funk- *
verbindung der ETCS-Zentrale als frei meldet. *
Hinweis:
Die Regeln für den ETCS-Level 3 sind z. Zt. nicht Bestandteil dieser Richtlinie. *
Bild 5: Prinzipieller Aufbau ETCS-Level 3
Gültig ab 12.12.2021

## Seite 37

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 7
Symbole der ETCS-Level
Symbol im MFD Bedeutung
*
Aufforderung zum Bestätigen eines an-
*
gekündigten bzw. vollzogenen, quittie-
*
rungspflichtigen Levelwechsels nach
1, 2
*
ETCS-Level NTC PZB/LZB.
* oder
*
*
*
* 1, 2
* Ankündigung eines Levelwechsels nach
* ETCS-Level NTC PZB/LZB.
*
2
*
* oder
*
*
*
* 2
* ETCS-Level NTC PZB/LZB wirksam.
* 2
* oder
*
*
2
* Aufforderung zum Bestätigen eines an-
* gekündigten bzw. vollzogenen, quittie-
* rungspflichtigen Levelwechsels nach
1
* ETCS-Level 0.
* Ankündigung eines Levelwechsels nach
* ETCS-Level 0.
*
*
ETCS-Level 0 wirksam.
* 1 Mit einem gelben, blinkenden Rahmen.
* 2 Bezeichnung der nationalen Zugbeeinflussung (fahrzeugabhängig).
Gültig ab 12.12.2021

## Seite 38

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 8
Symbol im MFD Bedeutung
Aufforderung zum Bestätigen eines an- *
gekündigten bzw. vollzogenen, quittie- *
rungspflichtigen Levelwechsels nach *
3
ETCS-Level 1. *
Ankündigung eines Levelwechsels nach *
ETCS-Level 1. *
*
*
ETCS-Level 1 wirksam
Aufforderung zum Bestätigen eines an- *
gekündigten bzw. vollzogenen, quittie- *
rungspflichtigen Levelwechsels nach *
3
ETCS-Level 2. *
Ankündigung eines Levelwechsels nach *
ETCS-Level 2. *
*
*
ETCS-Level 2 wirksam
Tabelle 1: Symbole der ETCS-Level
3 Mit einem gelben, blinkenden Rahmen. *
Gültig ab 12.12.2021

## Seite 39

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 9
Wechsel der ETCS-Level
(7) Eine Strecke kann mit mehreren ETCS-Level ausgerüstet Ausrüstung der
sein (z. B. Mehrfachausrüstung mit ETCS-Level NTC Strecken
PZB/LZB und ETCS-Level 2).
Aneinandergrenzende Strecken können mit unterschiedlichen ETCS-Level (z. B. Strecke A mit ETCS-Level 1,
Strecke B mit ETCS-Level 2) ausgerüstet sein.
(8) Die Balisenantenne liest aus den Balisen Informationen, Auswahl des
welche ETCS-Level zur Verfügung stehen. Bietet die Stre- richtigen ETCScke verschiedene ETCS-Level an, schaltet das ETCS-FzG Levels
auf den höchsten ETCS-Level, den es beherrscht.
(9) Für den Levelwechsel stehen folgende Verfahren zur Ver- Levelwechsel
fügung:
- Automatischer Levelwechsel:
Das ETCS-FzG vollzieht am Ort des Levelwechsels
* den durch die ETCS-Streckeneinrichtung angekün-
* digten, ggf. quittierungspflichtigen Levelwechsel.
- Manueller Levelwechsel:
* Bei Stillstand des Fahrzeuges können Sie den erforderlichen ETCS-Level manuell wählen.
Gültig ab 12.12.2021

## Seite 40

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 10
4 ETCS-Betriebsarten
NP (1) Nach dem Ausschalten der Stromversorgung des ETCS-
FzG wechselt dieses in die ETCS-Betriebsart NP (No
Power). Damit sind sämtliche Ein- und Ausgaben der *
ETCS-Fahrzeugeinrichtung unterbunden. Die ETCS- *
Betriebsart NP ist in jedem ETCS-Level verfügbar. *
SB (2) Nach dem Einschalten der Stromversorgung des ETCS-
FzG wechselt dieses in die ETCS-Betriebsart SB (Stand
By).
Des Weiteren wechselt das ETCS-FzG in die ETCS-
Betriebsart SB nach dem Beenden der ETCS-
Betriebsarten
- NL,
- PS,
- SH,
- SL,
oder wenn das Führerpult deaktiviert wurde.
Die Stillstandsüberwachung ist aktiv.
Die ETCS-Betriebsart SB ist in jedem ETCS-Level verfügbar.
FS (3) In der ETCS-Betriebsart FS (Full Supervision) gilt die Führerraumanzeige mit ihren Führungsgrößen (Sollgeschwin- *
digkeit, Zielgeschwindigkeit und Zielentfernung). Das *
ETCS-FzG überwacht das Einhalten der ETCS- *
Fahrterlaubnis. Die ETCS-Betriebsart FS ist in ETCS-
Level 1 und ETCS-Level 2 verfügbar.
LS (4) In der ETCS-Betriebsart LS (Limited Supervision) fahren
die Züge signalgeführt. Es werden keine Führungsgrößen *
angezeigt, sondern – abhängig von der betrieblichen Situ- *
ation – nur die Überwachungsgrößen LSSMA oder Relea- *
se Speed. *
ETCS übernimmt in der ETCS-Betriebsart LS die Aufga- *
ben einer punktförmigen Zugbeeinflussung. Die Balisen *
übertragen punktförmig die Signalinformationen an das *
ETCS-FzG.
Gültig ab 12.12.2021

## Seite 41

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 11
* Das ETCS-FzG überwacht das Einhalten
* a) folgender zulässiger Höchstgeschwindigkeiten, ab-
* hängig vom Bremswegabstand der Strecke
* - 1000 m  160 km/h,
* - 700 m  140 km/h oder
* - 400 m  80 km/h.
* b) einer niedrigeren Geschwindigkeit, die sich durch
* - den Einstellwert VMZ,
* - die vorhandenen Brh,
* - Langsamfahrstellen oder
* - Überwachungssignale, die einen Halt vor dem
* BÜ vorschreiben
* ergeben kann.
* c) der LSSMA (siehe Abschnitt 7 Absatz (7)) nach Vor-
* beifahrt
* - am Signal mit der Signalbedeutung „Halt erwar-
* ten“,
* - am Signal, das eine Geschwindigkeit klei-
* ner/gleich 70 km/h ankündigt (gilt nicht für
* Langsamfahrsignale4) oder
* - am alleinstehenden Signal Ne 2.
* d) der Release Speed.
* Die ETCS-Betriebsart LS ist abhängig von der ETCS-
* Fahrzeugsoftware in ETCS-Level 1 verfügbar.
(5) Das ETCS-FzG wechselt in die ETCS-Betriebsart SR SR
(Staff Responsible), nachdem Sie
* - „Override“ und „EOA“ betätigt haben oder
* - in ETCS-Level 1 oder ETCS-Level 2 die angekündigte ETCS-Betriebsart SR bestätigt haben.
* Das ETCS-FzG überwacht die zulässige Geschwindigkeit
* von 40 km/h oder ggf. eine niedrigere Geschwindigkeit
* (siehe Abschnitt 13 Absatz (21) und (23)).
* 4 Ausnahme: Die Langsamfahrsignale stehen in dem Bereich zwi-
* schen Vorsignal und Hauptsignal.
Gültig ab 12.12.2021

## Seite 42

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 12
Hinweis: *
Eine niedrigere Geschwindigkeit wird z. B. angezeigt, *
wenn die entsprechenden Balisen verlegt sind. *
Die ETCS-Betriebsart SR ist in ETCS-Level 1 und ETCS-
Level 2 verfügbar.
OS (6) In der ETCS-Betriebsart OS (On Sight) fahren Sie auf
Sicht.
Das ETCS-FzG überwacht *
- die beim Fahren auf Sicht höchstens zulässige Ge- *
schwindigkeit von 40 km/h oder eine niedrigere Ge- *
schwindigkeit und *
- den ETCS-Halt. *
Die ETCS-Betriebsart OS ist in ETCS-Level 1 und ETCS-
Level 2 verfügbar.
SL (7) In der ETCS-Betriebsart SL (Sleeping) empfängt das
ETCS-FzG Informationen von der Strecke, führt jedoch
keine Überwachungsfunktionen aus. Das ETCS-FzG *
wechselt in die ETCS-Betriebsart SL, wenn im Stillstand *
das „SL-Eingangssignal“ (Fernsteuersignal) aktiv ist und *
das Führerpult deaktiviert wurde. Nach dem Wegfall des *
„SL-Eingangssignals“ (Fernsteuersignal) wechseln alle *
ETCS-FzG automatisch wieder in die ETCS-Betriebs- *
art SB. Die ETCS-Betriebsart SL ist in jedem ETCS-Level
verfügbar.
NL (8) In der ETCS-Betriebsart NL (Non Leading) empfängt das *
ETCS-FzG Informationen von der Strecke, führt jedoch *
keine Überwachungsfunktionen aus. In ETCS-Level 2 *
überträgt die ETCS-Zentrale keine Textmeldungen, ETCS- *
Streckeneigenschaften (siehe Abschnitt 7 Tabelle 6) oder *
ETCS-Aufträge (siehe Abschnitt 7 Tabelle 7). Das ETCS- *
FzG wechselt in die ETCS-Betriebsart NL, wenn im Still- *
stand das „NL-Eingangssignal“ aktiv ist und Sie am MFD *
„Non-Leading“ betätigt haben. *
Hinweise: *
Das NL-Eingangssignal wird aktiv, wenn der Richtungs- *
schalter in der Stellung „V“ ist und das Führerbremsventil *
– im Führerraum oder bei Fahrzeugen mit zwei Führer- *
räumen in beiden Führerräumen – in der Abschlussstel- *
lung abgeschlossen bzw. abgesperrt ist. *
Gültig ab 12.12.2021

## Seite 43

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 13
* Bei Fahrzeugen, bei denen mit dem Abschließen bzw. Absperren des Führerbremsventils das ETCS-FzG in die
* ETCS-Betriebsart NL wechselt, ist am MFD die Auswahl
* von „Non-Leading“ nicht möglich.
Die ETCS-Betriebsart NL ist in jedem ETCS-Level verfügbar.
(9) In der ETCS-Betriebsart SH (Shunting) überwacht das SH
ETCS-FzG die Geschwindigkeit auf 40 km/h. Das Bewegen der Fahrzeuge in beiden Fahrtrichtungen sowie die
Vorbeifahrt an Halt zeigenden Signalen ist möglich. Die
ETCS-Betriebsart SH ist in ETCS-Level 0, ETCS-Level 1,
ETCS-Level 2 und abhängig von der ETCS-Fahrzeug-
* software auch in ETCS-Level NTC PZB/LZB verfügbar.
(10) In der ETCS-Betriebsart PS (Passive Shunting) kann beim PS
* Rangieren das Führerpult gewechselt werden, ohne dass
der ETCS-Startlauf erneut durchgeführt werden muss. Die
ETCS-Betriebsart PS ist abhängig von der ETCS-
* Fahrzeugsoftware in jedem ETCS-Level verfügbar.
(11) In der ETCS-Betriebsart UN (Unffited) wirkt keine Zugbe- UN
* einflussung. Das ETCS-FzG überwacht die zulässige Ge-
* schwindigkeit von 50 km/h oder ggf. eine niedrigere Ge-
* schwindigkeit.
* Hinweis:
* Eine niedrigere Geschwindigkeit wird z. B. angezeigt,
* wenn die entsprechenden Balisen verlegt sind.
Die ETCS-Betriebsart UN ist in ETCS-Level 0 verfügbar.
* (12) Bei einem sicherheitsrelevanten Fehler der ETCS- SF
Fahrzeugeinrichtung wechselt das ETCS-FzG in die
ETCS-Betriebsart SF (System Failure). Das ETCS-FzG
* leitet eine Zwangsbremsung bis zum Stillstand ein. Die
* ETCS-Betriebsart SF ist in jedem ETCS-Level verfügbar.
* (13) In der ETCS-Betriebsart SN (STM National) übergibt die SN
* Zugbeeinflussung ETCS der nationalen Zugbeeinflussung
PZB/LZB die Überwachung. Die ETCS-Betriebsart SN ist
in ETCS-Level NTC PZB/LZB verfügbar.
Gültig ab 12.12.2021

## Seite 44

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 14
TR (14) Das ETCS-FzG wechselt in folgenden Fällen in die ETCS-
Betriebsart TR (Trip) und leitet eine Zwangsbremsung bis *
zum Stillstand ein: *
a) Bei der Vorbeifahrt *
- in ETCS-Level 1 am Halt zeigenden oder ge- *
störten Haupt- bzw. ggf. Sperrsignal oder am *
Signal Ne 1, *
- in ETCS-Level 2 am ETCS-Halt bzw. Signal *
Ne 14, *
wenn „Override“ nichtaktiv ist. *
b) Bei einer PZB-Zwangsbremsung infolge einer *
2000 Hz Beeinflussung oder einer LZB-Zwangs- *
bremsung infolge der Vorbeifahrt an einem LZB-Halt, *
welche am Ort des Levelwechsels von ETCS-
Level NTC PZB/LZB nach ETCS-Level 1 oder ETCS-
Level 2 noch wirksam ist und vom ETCS-FzG übernommen wird.
c) Beim Levelwechsel nach *
- ETCS-Level 1 ohne Aufwertung durch eine *
Balise, die eine Zustimmung zur Fahrt überträgt *
oder *
- ETCS-Level 2 ohne gültige ETCS-Fahrterlaub- *
nis
d) In ETCS-Level 2 für Fahrzeuge in der ETCS- *
Betriebsart SR beim Erkennen eines falschen Fahr- *
wegs oder einer falschen Fahrtrichtung. *
e) In ETCS-Level 2 bei einer angekündigten, aber nicht *
gefundenen Balise. *
f) Bei bestimmten Balisenlesefehlern. *
g) Bei einer Inkompatibilität zwischen der System- *
version vom ETCS-FzG und der ETCS-Strecken- *
einrichtung (Balise). *
Die ETCS-Betriebsart TR ist in ETCS-Level NTC
PZB/LZB, ETCS-Level 1, ETCS-Level 2 und abhängig von *
der ETCS-Fahrzeugsoftware auch in ETCS-Level 0 ver- *
fügbar.
Gültig ab 12.12.2021

## Seite 45

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 15
(15) ETCS-Betriebsart, in die das ETCS-FzG aus der ETCS- PT
* Betriebsart TR wechselt, nachdem Sie im Stillstand die
* angekündigte ETCS-Betriebsart PT bestätigen. Die ETCS-
Betriebsart PT ist in ETCS-Level 1 und ETCS-Level 2 verfügbar.
* (16) Wird das ETCS-FzG mit dem ETCS-Störschalter ausge- IS
* schaltet5, wechselt das ETCS-FzG in die ETCS-
Betriebsart IS (Isolation). Damit sind sämtliche Ein- und
Ausgaben der ETCS-Fahrzeugeinrichtung unterbunden.
Die ETCS-Betriebsart IS ist in jedem ETCS-Level verfügbar.
* 5 Abweichend zum PZB-FzG wird das ETCS-FzG mit dem ETCS-
Störschalter nicht "abgeschaltet", sondern "ausgeschaltet".
Gültig ab 12.12.2021

## Seite 46

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 16
Symbole der ETCS-Betriebsarten
ETCS-Betriebsart Symbol im MFD Bedeutung
FS Fahrt in Vollüberwachung
*
IS (ohne Symbol) ETCS-FzG mit dem ETCS-Störschalter
ausgeschaltet6 *
*
LS (bestätigen) Aufforderung zum Bestätigen des während
der Fahrt vollzogenen, quittierungspflichti- *
7
gen Wechsels in die ETCS-Betriebsart LS *
*
LS Fahrt als signalgeführter Zug
*
NL Einzustellen auf allen nicht führenden,
arbeitenden Fahrzeugen, die mit einem
Tf besetzt sind
NP (ohne Symbol) Stromversorgung des ETCS-FzG ausgeschaltet *
OS (angekündigt/ Aufforderung zum Bestätigen des während
bestätigen) der Fahrt angekündigten bzw. vollzoge- *
7
nen, quittierungspflichtigen Wechsels in *
die ETCS-Betriebsart OS *
*
OS Fahrt auf Sicht
*
PS (ohne Symbol) Ermöglicht beim Rangieren den Wechsel
des Führerpultes, ohne dass ein neuer *
ETCS-Startlauf erforderlich ist *
*
PT Zwangsbremsung aufgehoben
SB ETCS-Fahrzeugeinrichtung in Bereitschaft
SF Systemfehler
6 Abweichend zum PZB-FzG wird das ETCS-FzG mit dem ETCS- *
Störschalter nicht "abgeschaltet", sondern "ausgeschaltet". *
7 Mit einem gelben, blinkenden Rahmen. *
Gültig ab 12.12.2021

## Seite 47

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 17
ETCS-Betriebsart Symbol im MFD Bedeutung
* SH (angekündigt) Aufforderung zum Bestätigen des ange-
* kündigten, quittierungspflichtigen Wech-
8
* sels in die ETCS-Betriebsart SH
* SH ETCS-Betriebsart, bei der eine Zug- oder
* Rangierfahrt in ETCS-Level 1 ohne die
* durch eine Balise übertragene Zustimmung
* zur Fahrt oder in ETCS-Level 2 ohne
* ETCS-Fahrterlaubnis fahren kann
* SL (ohne Symbol) ETCS-FzG ferngesteuert
* SN (angekündigt) Aufforderung zum Bestätigen des ange-
* kündigten, quittierungspflichtigen Wech-
8
* sels in die ETCS-Betriebsart SN (z. B.
* PZB/LZB)
* SN Fahrt unter Überwachung einer nationalen
* Zugbeeinflussung (z. B. PZB/LZB)
* SR (angekündigt) Aufforderung zum Bestätigen des ange-
* kündigten, quittierungspflichtigen Wech-
8
* sels in die ETCS-Betriebsart SR
* SR Fahrt als signalgeführter Zug in der ETCS-
* Betriebsart SR
* TR (bestätigen) Aufforderung zum Bestätigen des vollzo-
* genen, quittierungspflichtigen Wechsels in
8
* die ETCS-Betriebsart TR und Aufheben
* der Zwangsbremsung
TR Zwangsbremsung
* UN (angekündigt) Aufforderung zum Bestätigen des ange-
* kündigten, quittierungspflichtigen Wech-
8
* sels in die ETCS-Betriebsart UN
UN Fahrt ohne wirksame Zugbeeinflussung
durch die ETCS-Streckeneinrichtung
Tabelle 2: Symbole der ETCS-Betriebsarten
* 8 Mit einem gelben, blinkenden Rahmen.
Gültig ab 12.12.2021

## Seite 48

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 18
5 ETCS-Streckeneinrichtungen
ETCS-Zentrale (1) Die ETCS-Zentrale (Radio Block Centre (RBC)) wertet – *
für Fahrzeuge, die in ETCS-Level 2 fahren – für einen be- *
stimmten Streckenabschnitt die Positions- und Statusmeldungen der ETCS-geführten Züge sowie die Fahrweginformationen der elektronischen Stellwerke aus und erzeugt daraus eine ETCS-Fahrterlaubnis für den Zug. Die *
ETCS-Zentrale übermittelt diese ETCS-Fahrterlaubnis *
über eine Funkverbindung an das ETCS-FzG zur Steue- *
rung und Überwachung des Zuges. *
Balise (2) Eine Balise ist ein Datenübertragungselement, das u. a. *
Ortungs- und Streckeninformationen, eine ETCS-Fahrt- *
erlaubnis und Signalinformationen übermitteln kann. *
Um die Fahrtrichtung eindeutig zuzuordnen bzw. mehr In- *
formationen zu übertragen, können mehrere Balisen zu *
einer Balisengruppe zusammengefasst sein. *
Hinweis: *
Zur Vereinfachung wird in dieser Richtlinie nur der Begriff *
„Balise“ verwendet. *
Die Balise ist im Gleis mittig zwischen den Schienen montiert. Es gibt schaltbare und nicht schaltbare Balisen. *
Die Balisenantenne des Fahrzeugs versorgt die Balise
beim Befahren induktiv mit Energie. Darauf sendet die *
Balise das einprogrammierte Telegramm an die Balisen- *
antenne des Fahrzeuges. *
Euroloop (3) Ein Euroloop (Leiterschleife) ist in ETCS-Level 1 eine optionale Einrichtung im Gleis, die Informationen entlang eines kurzen Streckenabschnittes (bis zu ca. 1 km) kontinuierlich an das Fahrzeug übertragen kann. Das Fahrzeug
liest die Daten mit der Balisenantenne oder der Euroloopantenne. Der Euroloop überträgt die gleichen Daten wie
eine Balise, jedoch keine Ortungsinformationen.
LEU (4) Die Lineside Electronic Unit (LEU) überträgt die Signalin- *
formationen an die schaltbare Balise und/oder den Euro- *
loop in ETCS-Level 1.
Gültig ab 12.12.2021

## Seite 49

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 19
6 ETCS-Fahrzeugeinrichtung
* (1) Das ETCS-FzG besteht aus einem sicheren Rechner ETCS-FzG
* (European Vital Computer (EVC)).
* Dieser überwacht die
- Ortungsinformationen,
- Tf-Eingaben,
- Rückmeldungen der Fahrzeugsteuerung und der
* Bremse und
* - Telegramme der Balisenantenne, der Euroloopan-
* tenne und der ETCS-Zentrale.
Das ETCS-FzG gibt Steuerbefehle an die Fahrzeugsteuerung und an das Bremssystem aus, steuert die Anzeigen
für den Tf auf dem Modularen Führerraumdisplay und er-
* zeugt Ortungsmeldungen, die das GSM-R-ETCS-Funk-
* modul in ETCS-Level 2 an die ETCS-Zentrale sendet.
(2) Das Modulare Führerraumdisplay (MFD) zeigt die Daten MFD
und Meldungen der Zugbeeinflussungen und weiterer Systeme sowie die Geschwindigkeitsinformationen an. Am
* MFD geben Sie
- Tf-Nummer (Driver-ID),
- Zugnummer (Train running number),
- Zugdaten (Train data) und
- sonstige für ETCS erforderlichen Daten
ein.
* (3) Das GSM-R-ETCS-Funkmodul ist für den Datenfunk die GSM-R-ETCS-
* Kommunikationsschnittstelle des ETCS-FzG zur ETCS- Funkmodul
* Zentrale, um über die GSM-R-Antenne eine Funkverbin-
* dung zur ETCS-Zentrale aufbauen zu können.
* Hinweis:
* Nur in ETCS-Level 2 wird für eine kontinuierliche Daten-
* übertragung eine Funkverbindung aufgebaut.
* (4) Die Balisenantenne liest die Informationen aus den im Balisen-/ Euro-
* Gleis verlegten Balisen. Beim Befahren versorgt sie die loopantenne
* Balisen induktiv mit der für das Senden der einprogram-
* mierten Telegramme notwendigen Energie.
Gültig ab 12.12.2021

## Seite 50

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 20
Die Euroloopantenne liest die Informationen aus den im *
Gleis verlegten Euroloop.
Hinweis:
Die Balisenantenne und die Euroloopantenne können
auch als kombinierte Antenne ausgeführt sein.
Ortung / (5) Wegmesseinrichtungen, wie z. B. Wegimpulsgeber, Ra- *
Wegmessein- dar, Beschleunigungsgeber und GPS, liefern die Informa- *
richtungen tionen an das ETCS-FzG. Zusammen mit den Informatio-
(Odometrie)
nen aus den Balisen werden die Position und die Geschwindigkeit des Fahrzeuges bestimmt.
STM (6) Das Spezifische Transmissions-Modul (STM) ist die *
Schnittstelle zu der nationalen Zugbeeinflussung und stellt *
diese unter ETCS dar. *
Elektronische (7) Die Elektronische Fahrten-Registrierung (auch JRU ge-
Fahrten- nannt) zeichnet Daten über den Fahrtverlauf unter ETCS
Registrierung auf.
ETCS-BWG (8) Die ETCS-Bremswirkgruppe (ETCS-BWG) wirkt bei einem
ETCS-Bremseingriff auf die Hauptluftleitung. Zum pneumatischen Absperren der ETCS-BWG ist ein Absperrhahn
vorhanden.
Alternative (9) Alternativ zur ETCS-Bremswirkgruppe können auch ande-
Bremseingriffe re Bremseingriffe (z. B. Schnellbremsschleife) vorhanden
sein.
Gültig ab 12.12.2021

## Seite 51

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 21
(10) Prinzipdarstellungen von ETCS-Fahrzeugeinrichtungen Prinzipdarstellungen
Bild 6: ETCS-Fahrzeugeinrichtung mit integriertem STM
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
*
*
*
*
*
*
Bild 7: ETCS-Fahrzeugeinrichtung mit separatem STM
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
*
*
*
*
*
Gültig ab 12.12.2021

## Seite 52

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 22
Bedienelemente (11) Weitere Bedienelemente sind die in Tabelle 3 beschriebe- *
nen externen Tasten und Schalter. *
Bedienelement Zweck
ETCS-Quittiertaste Zusätzliche Möglichkeit zum Bestäti- *
(fahrzeugabhängig) gen von quittierungspflichtigen *
- Textmeldungen, *
- Levelwechsel oder *
- Wechsel der ETCS-Betriebsart *
ETCS-Störschalter ETCS-FzG ausschalten9
- bei Störung des ETCS-FzG
- wenn es angeordnet ist *
Hinweis: *
Der ETCS-Störschalter darf nur im
Stillstand betätigt werden.
ETCS-Zusatzschalter Verhindert die Aufnahme in einen an-
(fahrzeugabhängig) deren ETCS-Level als ETCS-Level
NTC PZB/LZB
Leitungsschutzschal- Ausschalten der Stromversorgung des *
ter (LSS) für das ETCS-FzG *
ETCS-FzG *
Hinweis:
*
Das ETCS-FzG gibt eine permanente
*
Zwangsbremsung aus.
*
Luftabsperrhahn für ETCS-Bremswirkgruppe bei Störung
ETCS-BWG (fahr- absperren *
zeugabhängig) *
Richtungsschalter Fahrtrichtung wählen
ETCS-Startlauf beginnen (in „V“ legen) *
Tabelle 3: Übersicht der Bedienelemente
9 Abweichend zum PZB-FzG wird das ETCS-FzG mit dem ETCS- *
Störschalter nicht "abgeschaltet", sondern "ausgeschaltet".
Gültig ab 12.12.2021

## Seite 53

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 23
7 Anzeigen am MFD
(1) In den Fahrzeugen kommen MFD als Softkey- oder Arten von MFD
Touchscreen-Variante zur Anwendung.
Bild 8: Grundbild in der Softkey-Variante mit Hardkeys
Bild 9: Grundbild in der Touchscreen-Variante
Gültig ab 12.12.2021

## Seite 54

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 24
Bedeutung (2) Die Bedeutung der einzelnen Softkeys bzw. Eingabe-/ *
Bedienfelder ist in den folgenden Abschnitten am Beispiel
eines MFD mit Softkey-Steuerung beschrieben.
Hinweis:
Die Bilder sind ohne Hardkeys dargestellt.
In den folgenden Bildern ist das MFD in einen linken (Geschwindigkeits- und Überwachungsbereich) und einen
rechten Teil (Vorschaubereich) aufgeteilt.
Geschwindigkeits- und Überwachungsbereich
Führerraum- (3) Am MFD informiert Sie die Führerraumanzeige über: *
anzeige
- LSSMA *
- Zielentfernung *
- Istgeschwindigkeit *
- Sollgeschwindigkeit *
- Zielgeschwindigkeit *
- Warngeschwindigkeit *
- Eingriffgeschwindigkeit *
- Release Speed *
- ETCS-Level **
- ETCS-Betriebsart *
- Textmeldungen *
- ETCS-Meldung *
- ETCS-Streckeneigenschaften *
- ETCS-Aufträge *
Gültig ab 12.12.2021

## Seite 55

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 25
* Bild 10: Beispiel MFD-Anzeigen für ETCS-Level 2 in der
ETCS-Betriebsart FS
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
*
*
*
*
* Bild 11: Beispiel MFD-Anzeigen für ETCS-Level 1 in der
ETCS-Betriebsart LS
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
*
*
*
*
*
Gültig ab 12.12.2021

## Seite 56

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 26
Führungs- (4) Als Führungsgrößen werden Sollgeschwindigkeit, Zielge- *
größen schwindigkeit und Zielentfernung bezeichnet und im MFD *
angezeigt. *
Führungsgrößen werden in ETCS-Level 1 und ETCS- *
Level 2 in den ETCS-Betriebsarten FS und OS angezeigt. *
In der ETCS-Betriebsart OS werden die Führungsgrößen, *
nachdem Sie diese eingeblendet haben, vereinfacht ange- *
zeigt (siehe Tabelle 8). Bei der vereinfachten Anzeige wird *
der Tachokreis nicht dargestellt. *
Hinweise: *
Die Zielentfernung wird nur bei einem Wechsel zu einer *
neuen niedrigeren Zielgeschwindigkeit angezeigt. *
Zur Verwendung der ETCS-Betriebsarten FS und OS in *
ETCS-Level 1 siehe Abschnitt 3 Absatz (4). *
Überwachungs- (5) Abhängig von der ETCS-Betriebsart können Sollge- *
größen schwindigkeit, Zielgeschwindigkeit, Zielentfernung, LSS- *
MA und Release Speed als Überwachungsgrößen im MFD *
angezeigt werden. *
In den ETCS-Betriebsarten OS, SR und SH werden die *
Überwachungsgrößen, nachdem Sie diese eingeblendet *
haben, vereinfacht angezeigt (siehe Tabelle 8). Bei der *
vereinfachten Anzeige wird der Tachokreis nicht darge- *
stellt. *
In der ETCS-Betriebsart FS wird die Release Speed digital *
und analog angezeigt. *
In der ETCS-Betriebsart LS wird die Release Speed nur *
digital angezeigt. *
Überwachungsgrößen sind *
a) in der ETCS-Betriebsart FS: *
- Release Speed (digital und analog) *
b) in der ETCS-Betriebsart LS: *
- LSSMA *
- Release Speed (nur digital) *
c) in der ETCS-Betriebsart OS: *
- Release Speed (nur digital) *
Gültig ab 12.12.2021

## Seite 57

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 27
* d) in der ETCS-Betriebsart SR:
* - Sollgeschwindigkeit
* - Zielgeschwindigkeit (nur als Haken)
* - Zielentfernung (nur digital)
* e) in der ETCS-Betriebsart SH:
* - Sollgeschwindigkeit
* (6) Die ETCS-Fahrterlaubnis wird in ETCS-Level 1 und ETCS-
* ETCS-Level 2 in den ETCS-Betriebsarten FS und OS Fahrterlaubnis
* durch Führungsgrößen angezeigt.
* Das ETCS-FzG überwacht das Einhalten der Führungs-
* größen sowie das Ende der ETCS-Fahrterlaubnis am
* ETCS-Halt.
* Hinweise:
* Die ETCS-Fahrterlaubnis wird in ETCS-Level 2 von der
* ETCS-Zentrale an den Zug übertragen und in ETCS-
* Level 1 von Balisen.
* Zur Verwendung der ETCS-Betriebsarten FS und OS in
* ETCS-Level 1 siehe Abschnitt 3 Absatz (4).
* (7) Die LSSMA (Lowest Supervised Speed within the Move- LSSMA
* ment Authority) ist die niedrigste überwachte Geschwin-
* digkeit in der ETCS-Betriebsart LS.
* (8) Die Zielentfernung (ZE) ist die Entfernung bis zu dem Ort, Zielentfernung
ab dem die niedrigere Sollgeschwindigkeit gilt. Das MFD
* zeigt die ZE, abhängig von der ETCS-Betriebsart, digital
* und analog oder nur digital an.
* (9) Die Istgeschwindigkeit (V ) entspricht der vom Zug gefah- Istist
* renen Geschwindigkeit. Sie wird digital und analog ange- geschwindigkeit
zeigt.
* (10) Die Sollgeschwindigkeit (V ) entspricht der zulässigen Sollsoll
Geschwindigkeit. Das ETCS-FzG berechnet V anhand geschwindigkeit
soll
der Strecken- und Fahrzeugeigenschaften und der Bremskurven. Das obere Ende des Tachokreises besteht aus einem Haken, dessen Ende die V anzeigt.
soll
Gültig ab 12.12.2021

## Seite 58

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 28
Ziel- (11) Die Zielgeschwindigkeit (V ) zeigt die nach Ablauf der ZE *
ziel
geschwindigkeit zu erwartende V an. Bei einem zu erwartenden ETCS- *
soll
Halt zeigt V 0 km/h an. ETCS kündigt den Geschwindig- *
ziel
keitswechsel mit dem ETCS-Aufmerksamkeitston an. Das
MFD zeigt die neue V , abhängig von der ETCS- *
ziel
Betriebsart, durch unterschiedliche Farben am Tachokreis *
oder durch einen Haken, an. *
Warn- (12) Die Warngeschwindigkeit (V ) stellt den Bereich der *
warn
geschwindigkeit Geschwindigkeitsüberschreitung zwischen V und V
soll eingriff
dar.
Eingriff- (13) Die Eingriffgeschwindigkeit (V ) ist die Geschwindig- *
eingriff
geschwindigkeit keit, bei das ETCS-FzG eine Zwangsbetriebs- oder eine *
Zwangsbremsung einleitet.
Release Speed (14) Die Release Speed dient zur Annäherung an ein Signal *
bzw. Gleisabschluss: *
a) In ETCS-Level 1 in der ETCS-Betriebsart LS ermög- *
licht sie die Fahrt bis zu dem Signal mit der Balise, *
die der ETCS-Fahrzeugeinrichtung eine neue Sig- *
nalinformation übermittelt. *
- Nach dem Befahren der ca. 250 m vor dem *
Halt10 zeigenden Haupt- bzw. ggf. Sperrsignal *
oder dem Signal Ne 1 verlegten Balise wird ei- *
ne Release Speed von 25 km/h angezeigt. *
- Bei Fahrt in ein Stumpfgleis wird eine Release *
Speed von 15 km/h maximal 350 m vor dem *
Gleisabschluss angezeigt. *
- Überlagert sich die Anzeige der Release Speed *
mit einer Langsamfahrstelle, wird die niedrigste *
Geschwindigkeit als Release Speed angezeigt. *
Das MFD zeigt die Release Speed nur digital an. *
Die Release Speed ist auch dann einzuhalten, wenn *
die Weiterfahrt am Hauptsignal zwischenzeitlich zu- *
gelassen ist. Nach der Vorbeifahrt am Hauptsignal *
wird die Release Speed gelöscht. *
10 Dies gilt auch bei den Signalbegriffen Zs 1, Zs 7 und Zs 8. *
Gültig ab 12.12.2021

## Seite 59

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 29
* b) In ETCS-Level 2 in den ETCS-Betriebsarten FS und
* OS ermöglicht sie bis zum
* - zugehörigen Hauptsignal,
* - Signal Ne 14,
* - Blockkennzeichen oder
* - Gleisabschluss
* vorzufahren, um Ungenauigkeiten der Wegmessung
* auszugleichen.
* Die angezeigte Release Speed ist abhängig vom
* vorhandenen Durchrutschweg oder Gefahrpunktab-
* stand und beträgt maximal 15 km/h bzw. eine niedri-
* gere Geschwindigkeit, wenn sich diese mit einer
* Langsamfahrstelle überlagert.
* Das MFD zeigt die Release Speed gleichzeitig mit
* dem Zurückführen der Sollgeschwindigkeit
* - in der ETCS-Betriebsart FS digital und analog
* und
* - in der ETCS-Betriebsart OS nur digital, nach-
* dem Sie diese eingeblendet haben,
* an.
* Beim Überschreiten der Release Speed leitet das ETCS-
* FzG eine Zwangsbremsung bis zum Stillstand ein.
* Hinweis:
* Der Abschnitt 13 „Regelbetrieb“ enthält entsprechende
* Beispiele mit Abbildungen.
* (15) Hellgraue Symbole zeigen Ihnen an, welcher ETCS-Level, ETCS-Level /
welche ETCS-Betriebsart und ggf. welche ETCS-Funktion ETCSaktiv ist. Betriebsart /
ETCS-Funktion
Hinweis:
Die Symbole und Bedeutungen zu den ETCS-Level und
ETCS-Betriebsarten sind in Abschnitt 3 und 4 beschrieben.
* (16) Ein gelbes Symbol mit einem gelben, blinkenden Rahmen Levelwechsel
kündigt Ihnen einen Wechsel zu einem anderen ETCS- angekündigt
Level oder einer anderen ETCS-Betriebsart bzw. ein oder
mehrere ETCS-Aufträge an und fordert eine Quittierung.
Gültig ab 12.12.2021

## Seite 60

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 30
Bild 12: Levelwechsel nach ETCS-Level NTC PZB/LZB an- *
gekündigt mit Quittierungsaufforderung
Textmeldungen (17) Textmeldungen werden unterhalb des Tachokreises ange- *
zeigt. Sind die Textmeldungen länger als
- 4 Zeilen (Softkey) oder
- 5 Zeilen (Touchscreen),
erkennen Sie dies an der seitlich angeordneten Bildlaufleiste (Scrollbalken). Mit den Pfeiltasten können Sie zwischen den Textzeilen blättern.
Bild 13: Beispiel für eine Textmeldung mit mehr als 4 Zei- *
len
Gültig ab 12.12.2021

## Seite 61

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 31
* (18) Eine quittierungspflichtige Textmeldung ist von einem blin- Quittierungs-
* kenden Rahmen umgeben. Sie wird über den gesamten pflichtige Text-
* für Textmeldungen zu Verfügung stehenden Bereich an- meldungen bestätigen
* gezeigt. Ältere Textmeldungen werden bis zur Bestätigung
* der aktuellen Textmeldung ausgeblendet.
* Bestätigen Sie die Textmeldung, indem Sie
* - beim Softkey-Display den Softkey „Ack“ (Acknowl-
* edgement) betätigen,
* - beim Touchscreen-Display in den Bereich der Text-
* meldung tippen oder
* - die externe ETCS-Quittiertaste (fahrzeugabhängig)
* betätigen.
* Hinweis:
* Nach dem Bestätigen wird die Textmeldung entweder oh-
* ne Rahmen angezeigt oder gelöscht.
* Bestätigen Sie die Textmeldung unmittelbar nach dem Le-
* sen, damit Sie keine Zwangsbetriebsbremsung erhalten,
* welche sich durch eine nicht angezeigte Überlagerung mit
* einem quittierungspflichtigen Levelwechsel bzw. einem
* quittierungspflichtigen Wechsel der ETCS-Betriebsart er-
* geben kann.
* Andernfalls leitet das ETCS-FzG eine Zwangsbetriebs-
* bremsung ein, die Sie durch eine nachträgliche Bestäti-
* gung aufheben können.
* Bild 14: Beispiel für eine zu bestätigende Textmeldung
Gültig ab 12.12.2021

## Seite 62

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 32
Symbole (19) Die Symbole für die ETCS-Meldungen sind in Tabelle 4 *
der ETCS- beschrieben. *
Meldungen
Symbol ETCS-Meldung Bedeutung
Zwangsbetriebsbremsung oder Bremseingriff durch ETCS
Zwangsbremsung
Schlüpfrige Schienen Verminderter Reibwert (Im Netz
der DB AG nicht verwendet)
Funkverbindung Funkverbindung zwischen ETCS-
FzG und ETCS-Zentrale vorhan- *
den
Funkverbindung abgebrochen Funkverbindung länger als 40 s
unterbrochen
Sanduhr Bildaufbau
Tabelle 4: Symbole der ETCS-Meldungen *
Symbole auf (20) Symbole, die zusätzlich auf Strecken mit ETCS-Level 1 *
Strecken mit angezeigt werden können, sind in Tabelle 5 beschrieben. *
ETCS-Level 1 *
Symbol Bedeutung
Anzeige der LSSMA (ohne Geschwindigkeitsangabe)
Hinweis:
Die Geschwindigkeit entsprechend der LSSMA wird in der Mitte des
Symbols angezeigt.
Tabelle 5: Symbol in der ETCS-Betriebsart LS
Gültig ab 12.12.2021

## Seite 63

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 33
* (21) Symbole, die zusätzlich auf Strecken mit ETCS-Level 2 Symbole auf
* angezeigt werden können, sind in Tabelle 6 und 7 be- Strecken mit
* schrieben. ETCS-Level 2
* Hinweis:
* Die gelben Symbole in den beiden Tabellen sind nicht
* quittierungspflichtig.
Symbol Bedeutung
Beginn eines Streckenabschnitts, in welchem die Funkverbindung unterbrochen sein kann
* Ankündigung, dass die Ansteuerung der Wirbelstrombremse durch
* ETCS unterbunden wird, abhängig von der ETCS-Fahrzeugsoftware und
* der ETCS-Streckensoftware auch bei Schnell-, Zwangs- oder Notbremsung
* Wirbelstrombremse durch ETCS unterbunden, abhängig von der ETCS-
* Fahrzeugsoftware und der ETCS-Streckensoftware auch bei Schnell-,
Zwangs- oder Notbremsung
* Unwirksamkeit einer fahrdrahtspannungsabhängigen elektrodynami-
* schen Bremse angekündigt
* Fahrdrahtspannungsabhängige elektrodynamische Bremse unwirksam
Notbremsüberbrückungsabschnitt angekündigt
Notbremsüberbrückungsabschnitt
Hinweis:
* Wird nur unterhalb des Tachokreises und nicht im Vorschaubereich angezeigt.
Tabelle 6: Symbole der ETCS-Streckeneigenschaften
Gültig ab 12.12.2021

## Seite 64

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 34
Symbol Bedeutung
Stromabnehmer senken
Stromabnehmer werden selbsttätig gesenkt
(fahrzeugabhängig)
Stromabnehmer müssen gesenkt sein
Hinweis:
Wird nur unterhalb des Tachokreises und nicht im Vorschaubereich an- *
gezeigt.
Stromabnehmer heben
Stromabnehmer werden selbsttätig gehoben
(fahrzeugabhängig)
Hauptschalter ausschalten
Hauptschalter schaltet selbsttätig aus
(fahrzeugabhängig)
oder
Fahrzeug befindet sich in einem Bereich, in dem der Hauptschalter ausgeschaltet sein muss
Hauptschalter einschalten
Hauptschalter schaltet selbsttätig ein
(fahrzeugabhängig)
Bahnübergang sichern *
Hinweis:
Wird nur unterhalb des Tachokreises und nicht im Vorschaubereich an- *
gezeigt.
3 s lang pfeifen
Gültig ab 12.12.2021

## Seite 65

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 35
Symbol Bedeutung
Druckdichtigkeit herstellen
Druckdichtigkeit wird selbsttätig hergestellt
(fahrzeugabhängig)
Druckdichtigkeit beenden
Druckdichtigkeit wird selbsttätig beendet
(fahrzeugabhängig)
* Tabelle 7: Symbole der ETCS-Aufträge
Gültig ab 12.12.2021

## Seite 66

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 36
Vorschaubereich
Allgemein (22) Der Vorschaubereich wird in der ETCS-Betriebsart FS *
oder, abhängig von der ETCS-Fahrzeugsoftware auch in
der ETCS-Betriebsart OS angezeigt. Mit dem Symbol
können Sie diesen ein- oder ausblenden. *
Vorschau- (23) Im Vorschaubereich werden folgenden Informationen an- *
bereich gezeigt:
- Entfernungsskala: Vorschaubereich von 4000 m bis *
max. 32000 m
- Zoomfunktion mit „+“ und „-“ *
- Geschwindigkeitsprofil (Geschwindigkeitserhöhung /
Geschwindigkeitsverminderung)
- Steigungen (+) oder Neigungen (-)
- Position des Zuges *
- Bremseinsatzpunkt
- ETCS-Streckeneigenschaften und ETCS-Aufträge *
(z. B. Stromabnehmer senkt selbsttätig)
Bild 15: MFD-Anzeigen im Vorschaubereich
Gültig ab 12.12.2021

## Seite 67

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 37
Symbol ETCS-Aufforderung Bedeutung
* Führungs-/ Überwa- Für die folgenden ETCS-Betriebsarten könchungsgrößen im MFD nen, abhängig von der betrieblichen Situation,
* ein-/ausblenden die entsprechenden Führungs-/ Überwa-
* chungsgrößen im MFD angezeigt werden:
- OS:
* - V
soll
* - ggf. V (nur als Haken)
ziel
* - ggf. ZE (nur digital)
* - ggf. Release Speed (nur digital)
- SR:
* - V
soll
* - ggf. V (nur als Haken)
ziel
* - ggf. ZE (nur digital)
- SH:
* - V
soll
Hinweise:
* Das Symbol wird Ihnen nur beim Softkey-
* Display angezeigt.
* Beim Touchscreen-Display tippen Sie in den
* Bereich der Geschwindigkeitsanzeige des
* MFD, um die Anzeigen der Führungs-/ Über-
* wachungsgrößen ein- oder auszublenden.
* Bei der Anzeige wird kein Tachokreis darge-
* stellt.
Geographische Position Geographische Position im MFD anzeigen
des Zuges
* (abhängig von der Streckenprojektierung)
* Acknowledgement Bestätigung von quittierungspflichtigen Level-
* wechsel, Wechsel der ETCS-Betriebsart oder
* Textmeldungen
* (fahrzeugabhängig, auch durch eine zusätzli-
* che externe ETCS-Quittiertaste möglich)
* Tabelle 8: Symbole der Aufforderungen
Gültig ab 12.12.2021

## Seite 68

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 38
8 Zusammenhang zwischen Bremskurven
und Farbdarstellung der Geschwindigkeitsanzeige
Wechsel zu einer neuen Zielgeschwindigkeit
Bild 16: Grundsätzliche Farbdarstellung des Tachokreises am Geschwindig- *
keitsmesser
Bild 17: Wechsel zu einer höheren Geschwindigkeit
Der Wechsel zu einer höheren
Geschwindigkeit wird nicht angekündigt. Bei einem Geschwindigkeitswechsel ändert sich nur V .
sol
Der Tachokreis ist dunkelgrau.
Der V -Zeiger ist hellgrau.
ist
Gültig ab 12.12.2021

## Seite 69

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 39
Bild 18: Wechsel zu einer niedrigeren Geschwindigkeit
Ca. 10 s vor Anstoß an die Sollbremskurve kündigt das MFD die
neue V im Tachokreis mit eiziel
nem ETCS-Aufmerksamkeitston
an. Die Farbe des Tachokreises
zwischen V und der neuen V
soll ziel
verändert sich zu Weiß.
Bild 19: Bremseinsatzpunkt angekündigt
* Ca. 4 s vor Anstoß an die Soll-
* bremskurve kündigt ETCS den
* Bremseinsatzpunkt an. Die Far-
* be des Tachokreises zwischen
* V und V verändert sich zu
soll ziel
* Gelb. Die Farbe des Zeigers für
* V wechselt ebenfalls von hellist
* grau nach gelb. Außerdem zeigt
* das MFD die ZE an.
*
Nach Erreichen der Sollbrems-
*
kurve läuft V auf die angezeig-
* soll
te V ab. Bei V = 0 km/h wird
* ziel ziel
die Release Speed digital und
*
analog angezeigt.
*
*
*
*
*
*
Gültig ab 12.12.2021

## Seite 70

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 40
Bild 20: Warngeschwindigkeitskurve
Überschreitet V die V , zeigt der *
ist soll
verlängerte Haken den Bereich von *
V . an. Das MFD zeigt die Diffe- *
warn
renz zur V in Orange an. Beim *
soll
Anstoß an V gibt ETCS einen *
warn
Warnton aus. Die Anzeige der *
Warngeschwindigkeitskurve endet *
mit V . *
eingriff
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
Bild 21: Anstoß an die Zwangsbremskurve *
Beim Anstoß an die Zwangsbrems- *
kurve V stellt das MFD die Dif- *
eingriff
ferenz zwischen V und V sowie *
soll ist
die Tachonadel in Rot dar. *
*
Das ETCS-FzG leitet eine Zwangs-
*
bremsung (HL-Druck 0 bar) ein:
*
- Auf Strecken mit ETCS-Level 1
*
führt das ETCS-FzG, abhängig
*
von der ETCS-Streckensoft-
*
ware, die Zwangsbremsung bis
*
zum Stillstand fort.
*
- Auf Strecken mit ETCS-Level 2 *
hebt das ETCS-FzG die *
Zwangsbremsung wieder auf, *
sobald V den Wert für V un- *
ist soll
terschreitet. *
*
Hinweis: *
Beim Bremsen auf eine niedrigere *
Zielgeschwindigkeit wird beim *
Überschreiten der V eingriff direkt eine *
Gültig ab 12.12.2021

## Seite 71

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 41
* Zwangsbremsung ausgegeben und
* keine Zwangsbetriebsbremsung.
* Tabelle 9: Wechsel zu einer neuen Zielgeschwindigkeit
Überwachung der Sollgeschwindigkeit
* Bild 22: Grundsätzliche Farbdarstellung des Tachokreises am Beispiel einer
* Überschreitung der V
soll
*
*
*
*
*
*
*
*
*
Gültig ab 12.12.2021

## Seite 72

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 42
Bild 23: Warngeschwindigkeitskurve
Beim Überschreiten von V verbreisoll
tert sich der Haken und stellt die Differenz zur V in orange dar. Die
soll
Warngeschwindigkeit ist erreicht,
wenn V ca. 4 – 5 km/h > V ist.
ist soll
Beim Anstoß an die Warngeschwindigkeit gibt ETCS zur Warnung einen
Warnton aus.
Bild 24: Anstoß an die Zwangsbetriebsbremskurve *
Beim Anstoß an die Zwangsbetriebsbremskurve V stellt das MFD die
eingriff
Differenz zwischen V und V sowie
soll ist
die Tachonadel in Rot dar. *
Das ETCS-FzG leitet eine Zwangsbetriebsbremsung ein (HL-Druck
3,5 bar) und hebt diese auf, sobald
V den Wert für V unterschreitet.
ist soll
Tabelle 10: Überwachung der Sollgeschwindigkeit **
Gültig ab 12.12.2021

## Seite 73

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 43
* (1) Beim Anstoß an die Zwangsbremskurve bleiben der Ta- Anstoß an die
* chokreis und die Tachonadel rot. Zwangsbremskurve
* Das ETCS-FzG leitet eine Zwangsbremsung (HL-Druck 0
* bar) ein:
* - Auf Strecken mit ETCS-Level 1 führt das ETCS-FzG,
* abhängig von der ETCS-Streckensoftware, die
* Zwangsbremsung bis zum Stillstand fort.
* - Auf Strecken mit ETCS-Level 2 hebt das ETCS-FzG
* die Zwangsbremsung wieder auf, sobald V den
ist
Wert für V unterschreitet.
soll
Gültig ab 12.12.2021

## Seite 74

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 44
9 MFD-Menüstruktur
Bild 25: Grundbild *
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
*
*
*
*
*
*
Menü Unterebene Bedeutung *
Grundbild Auswahl vom „Hauptmenü“ (Main) *
*
*
Auswahl von „Override“ *
*
*
Auswahl von „Daten ansehen“ (Data view) *
*
*
Auswahl von „Spezial“ (Spec) *
*
*
Auswahl von „Einstellungen“ (Settings) *
*
*
Tabelle 11: Menü „Grundbild“ *
Gültig ab 12.12.2021

## Seite 75

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 45
* Bild 26: Menü „Hauptmenü“ (Main)
* Menü Unterebene Bedeutung
* Hauptmenü 1 - Start ETCS-Startlauf abschließen
* Verlassen der ETCS-Betriebsart PT nach
* Erhalt des Befehls
2 - Driver ID Eingabemenü „Tf-Nummer“
3 - Train data Eingabemenü „Zugdaten“
5 - Level Auswahlmenü „ETCS-Level“
6 - Train running Eingabemenü „Zugnummer“
number
* 7 – Shunting oder Rangieren anfordern oder
Exit Shunting Rangieren beenden
8 - Non-Leading „Nichtführendes Fahrzeug“ einstellen
* 9 - Maintain shunting Rangieren beibehalten (ETCS-Betriebsart
* PS), abhängig von der ETCS-Fahrzeug-
* software
* Tabelle 12: Menü „Hauptmenü“ (Main)
Gültig ab 12.12.2021

## Seite 76

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 46
Bild 27: Menü „Override“ *
Menü Unterebene Bedeutung *
Override 1 - EOA Mit Befehl u. a. *
- in ETCS-Level 0 und ETCS-Level 1 am *
Halt zeigenden oder gestörten Haupt- *
bzw. Sperrsignal oder *
- in ETCS-Level 2 am ETCS-Halt bzw. *
am Signal Ne 14 *
vorbeifahren
Tabelle 13: Menü „Override“ *
Gültig ab 12.12.2021

## Seite 77

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 47
* Bild 28: Menü „Daten ansehen“ (Data view) (Teil 1)
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
*
*
*
*
*
*
* Bild 29: Menü „Daten ansehen“ (Data view) (Teil 2)
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
*
*
*
*
*
*
Gültig ab 12.12.2021

## Seite 78

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 48
Menü Unterebene Bedeutung *
Daten ansehen -- Anzeige der eingegebenen Daten *
Tabelle 14: Menü „Daten ansehen“ (Data view) *
Gültig ab 12.12.2021

## Seite 79

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 49
* Bild 30: Menü „Spezial“ (Special)
* Menü Unterebene Bedeutung
* Spezial 1 - Adhesion „Reibwert vermindert“ oder
„Reibwert nicht vermindert“
einstellen
(Eingabe auf der Infrastruktur der DB Netz
AG nicht zulässig)
2 - SR speed/distance Daten für die anschließende Fahrt in der
ETCS-Betriebsart SR eingeben
(Eingabe auf der Infrastruktur der DB Netz
AG nicht zulässig)
3 - Train integrity Zugvollständigkeit
(nur bei ETCS-Level 3)
* Tabelle 15: Menü „Spezial“ (Special)
Gültig ab 12.12.2021

## Seite 80

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 50
Bild 31: Menü „Einstellungen“ (Settings) *
Menü Unterebene Bedeutung *
Einstellungen 1 - Language Sprache
2 - Volume Lautstärke
3 - Brightness Helligkeit
4 - System version Systemversion
5 - Set VBC Eingabe virtuelle Balisenabdeckung VBC
(Eingabe auf der Infrastruktur der DB Netz
AG nicht zulässig)
6 - Remove VBC Entfernen virtuelle Balisenabdeckung VBC
(Eingabe auf der Infrastruktur der DB Netz
AG nicht zulässig)
Tabelle 16: Menü „Einstellungen“ (Settings) *
Gültig ab 12.12.2021

## Seite 81

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 51
10 ETCS-Funktionen
(1) Die Stillstandsüberwachung ist in allen ETCS-Level in der Stillstands-
ETCS-Betriebsart SB wirksam. Bewegt sich das Fahrzeug überwachung
um mehr als 5 m, leitet das ETCS-FzG eine Zwangsbrem-
* sung ein. Das MFD zeigt eine quittierungspflichtige Text-
* meldung an. Heben Sie die Zwangsbremsung durch Be-
* stätigung der Textmeldung auf.
* (2) Die Wegroll-/Rückrollüberwachung ist in allen ETCS-Level Roll-
* wirksam. Bewegt sich das Fahrzeug um mehr als 5 m ent- überwachung
* gegen der durch die ETCS-Fahrterlaubnis vorgegebenen
* oder eingestellten Fahrtrichtung, leitet das ETCS-FzG eine
* Zwangsbremsung ein. Das MFD zeigt eine quittierungs-
* pflichtige Textmeldung an. Heben Sie die Zwangsbrem-
* sung durch Bestätigung der Textmeldung auf.
* (3) In ETCS-Level 2 überwacht das ETCS-FzG in den ETCS- Überwachung
* Betriebsarten FS und OS die Funkverbindung zur ETCS- der Verbindung
Zentrale. Ist die Funkverbindung für mehr als 40 s unter- zur ETCS-
* brochen, leitet das ETCS-FzG eine Zwangsbetriebsbrem-
Zentrale
sung ein. Nachdem der Zug zum Stillstand gekommen ist,
* endet die ETCS-Fahrterlaubnis am aktuellen Standort und
* das ETCS-FzG hebt die Zwangsbetriebsbremsung auf.
Gültig ab 12.12.2021

## Seite 82

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 52
11 Vorbereitungsarbeiten
Voraus- (1) Die ETCS-Fahrzeugeinrichtung ist eingeschaltet, wenn
setzungen folgende Voraussetzungen erfüllt sind:
- Stromversorgung des ETCS-FzG eingeschaltet
- Luftabsperrhahn der ETCS-Bremswirkgruppe geöffnet (fahrzeugabhängig)
- Richtungsschalter in Stellung „V“ bzw. Führerpult aktiviert
Das ETCS-FzG befindet sich daraufhin in der ETCS-
Betriebsart SB und überwacht den Stillstand des Fahrzeuges.
Das Symbol für die ETCS-Betriebsart SB zeigt an,
dass die ETCS-Fahrzeugeinrichtung betriebsbereit ist.
Das Symbol für den ETCS-Level, z. B. , zeigt den
zuletzt eingestellten bzw. wirksamen ETCS-Level an.
ETCS-Funktionsprüfung am Beispiel der BR 411
Funktions- (2) Die Funktionsprüfung ist einmal innerhalb von 24 Stunden
prüfung im Stillstand, in allen Endführerräumen durchzuführen.
Bild 32: Menü „Prüfläufe“ im MTD *
Gültig ab 12.12.2021

## Seite 83

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 53
(3) Liegt die letzte Funktionsprüfung mehr als 24 Stunden Prüfungszurück, zeigt das MFD eine entsprechende Meldung an intervall
und fordert Sie zu einer Funktionsprüfung auf.
* ETCS-Startlauf (Start of Mission)
* (4) Mit dem Verlegen des Richtungsschalters in die Stellung Beginn
* „V“ bzw. dem Aktivieren des Führerpultes beginnen Sie
* den ETCS-Startlauf.
* Wechselt bei der Übernahme des Zuges das ETCS-FzG –
* abhängig von der ETCS-Fahrzeugsoftware – beim ETCS-
* Startlauf in die ETCS-Betriebsart SH und schließt sich kei-
* ne Rangierfahrt an, ist die ETCS-Betriebsart SH durch den
* Wechsel in die ETCS-Betriebsart SB zu beenden und der
* ETCS-Startlauf neu zu beginnen.
(5) Der ETCS-Startlauf dient dem Vorbereiten einer Fahrt Zweck
unter ETCS.
* (6) Anschließend zeigt das MFD das Menü „Grundbild“ und Ablauf
* bietet Ihnen nach Auswahl des Menüs „Hauptmenü“
* (Main) die Softkeys bzw. Eingabe-/ Bedienfelder zum Ein-
* geben bzw. Bestätigen
- der Tf-Nummer (Driver ID),
- der Zugnummer (Train running number),
* - der Zugdaten (Train data)
* und zum Auswählen
* - von „Start“,
* - der ETCS-Level,
* - der ETCS-Betriebsart SH oder NL,
* - von „Rangieren beibehalten (PS)“ (Maintain shunting)
an.
* (7) Vor jeder Zugfahrt geben Sie Ihre Tf-Nummer (Driver ID) Tf-Nummer und
* und die Zugnummer (Train running number) ein bzw. be- Zugnummer
* stätigen diese. eingeben bzw.
bestätigen
*
Hinweis:
Dies gilt auch, wenn Sie das Fahrzeug bei einem Personalwechsel übernehmen.
Gültig ab 12.12.2021

## Seite 84

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 54
Bild 33: Eingabe Tf-Nummer (Driver ID) *
Bild 34: Eingabe Zugnummer (Train running number) *
Gültig ab 12.12.2021

## Seite 85

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 55
(8) Bestätigen oder wählen Sie im MFD im Menü „Level“ den ETCS-Level
ETCS-Level, mit dem Sie die Fahrt beginnen. bestätigen bzw.
wählen
* Bild 35: ETCS-Levelwahl
(9) Wenn Sie den ETCS-Level 2 wählen, müssen Sie die RBC-
RBC-Kontaktdaten eingeben. Die Eingaben der RBC- Kontaktdaten
Kontaktdaten sind abhängig von der ETCS-Fahrzeugsoftware und unterscheiden sich in folgende Varianten:
* - „RBC contact information“ oder
* - „RBC contact“
* (10) Bei der Variante „RBC contact information“ sind die RBC- Variante
* Kontaktdaten zu prüfen, ggf. zu ändern und anschließend „RBC-contact
* ist zu kontrollieren, ob das Symbol im MFD ange- information“
* zeigt wird.
Hinweis:
* Die RBC-Kontaktdaten sind im Streckenbuch bekanntgegeben.
Gültig ab 12.12.2021

## Seite 86

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 56
Bild 36: Variante „RBC contact information“
Auswahl Bedeutung
Radio network ID Eingabe bzw. Bestätigung der
GSM-R-Netz Nummer
Gültig ab 12.12.2021
netadtkatnoK-CBR
*
*
*
RBC ID Eingabe bzw. Bestätigung der *
RBC-Nummer *
RBC telephone number Eingabe bzw. Bestätigung der *
RBC-Tel.-Nr. *
Tabelle 17: Variante „RBC contact information“ *

## Seite 87

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 57
* (11) Bei der Variante „RBC contact“ können Sie zwischen den Variante
* Menüpunkten „RBC contact“
* - „Contact last RBC“
* - „Use short number“
* - „Enter RBC data“
* - „Radio network ID”
wählen.
* Reihenfolge:
* 1. Wählen Sie den Menüpunkt „Use short number“.
* 2. Erhalten Sie eine Textmeldung, dass die ETCS-
* Zentrale den Zug ablehnt bzw. die RBC-Kontakt-
* daten zu prüfen sind, dann wählen Sie
* - den Menüpunkt „Radio network ID” und an-
* schließend
* - den Menüpunkt „Enter RBC data“,
* um die RBC-Kontaktdaten einzugeben.
* Hinweis:
* Die RBC-Kontaktdaten sind im Streckenbuch bekanntge-
* geben.
Gültig ab 12.12.2021

## Seite 88

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 58
Bild 37: Variante „RBC contact“
Auswahl Bedeutung
1 - Contact last RBC Aufbau einer Funkverbindung zur
letzten verwendeten ETCS-Zentrale
(Auswahl auf der Infrastruktur der
DB Netz AG nicht zulässig)
2 - Use short number Automatische Anwahl der für diesen
Abschnitt zuständigen ETCS-
Zentrale über Kurzwahlrufnummer
3 - Enter RBC data Eingabe bzw. Bestätigung der
RBC Daten
Hinweis:
Bevor Sie die RBC-Daten eingeben, müssen Sie die Nummer des „GSM-R Netzes“ prüfen und ggf. ändern.
Gültig ab 12.12.2021
netadtkatnoK-CBR
*
*
*
*
*
*
*
*
4 - Radio Network ID Auswahl eines GSM-R Netzes *
Tabelle 18: Variante „RBC contact“ *

## Seite 89

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 59
* Bild 38: Auswahl Menüpunkt 4 (Radio network ID)
Gültig ab 12.12.2021

## Seite 90

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 60
Bild 39: Auswahl Menüpunkt 3 (Enter RBC-data) *
Auswahl Bedeutung
RBC ID Eingabe bzw. Bestätigung der *
„RBC-Nummer“ *
RBC phone number Eingabe bzw. Bestätigung der *
„RBC-Tel. Nr.“ *
Tabelle 19: RBC data *
Gültig ab 12.12.2021

## Seite 91

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 61
* Zugdaten eingeben bzw. ändern
* (12) Vor Beginn einer Zugfahrt, Rangierfahrt (abhängig von der Menü „Zug-
* ETCS-Fahrzeugsoftware) oder wenn sich die Zugdaten nummer“ (Train
* ändern, geben Sie im Stillstand die erforderlichen Zugda- data)
ten durch Eingabe der
- ETCS-Zugart,
- Zuglänge (ZL),
- Bremshundertstel (Brh) und
* - maximal zulässigen Geschwindigkeit des Zuges
(VMZ)
* im MFD ein.
* Die einzugebende ETCS-Zugart ist in den Regeln für das
* Bedienen der Fahrzeuge11 bekanntgegeben.
Als Einstellwert für die Zuglänge (ZL) ist die auf die nächste Zehnerstufe aufgerundete Gesamtzuglänge einzugeben.
* Als Einstellwert für die maximal zulässige Geschwindigkeit
* des Zuges (VMZ) ist der kleinste der nachfolgend aufgeführten Geschwindigkeitswerte einzugeben:
- größte zulässige Geschwindigkeit im Fahrplan,
- zulässige Geschwindigkeit des Triebfahrzeuges,
* - zulässige Geschwindigkeit des Wagenzuges (siehe
Bremszettel),
- Einschränkungen durch die Einstelltabellen
* Wenn sich die maximal zulässige Geschwindigkeit des
* Zuges (VMZ) aus sonstigen betrieblichen oder techni-
* schen Gründen ändert, ist der Einstellwert VMZ beim
* nächsten Halt zu ändern, sofern die Geschwindigkeitsän-
* derung mindestens bis zum nächsten planmäßigen Halt
des Zuges gilt.
* Prüfen Sie die Richtigkeit der eingegebenen Zugdaten.
Hinweis:
Zusätzlich sind die Regeln für das Bedienen der Fahrzeuge zu beachten.
* 11 Die Zugart kann ggf. in einer separaten Einstelltabelle bekannt ge-
* geben sein.
Gültig ab 12.12.2021

## Seite 92

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 62
Bild 40: Zugdateneingabe ETCS (Teil 1) *
Auswahl Bedeutung
Train category ETCS-Zugart: *
- PASS x: Reisezug in Brems- *
stellung P
- FP x: Güterzug in Brems- *
stellung P
- FG x: Güterzug in Brems- *
stellung G
- TILT x: Reisezug mit aktiver *
Neigetechnik
Length (m) Länge des Gesamtzuges (ZL) *
Brake percentage Bremshundertstel (Brh)
Max speed (km/h) Maximal zulässige Geschwindigkeit *
des Zuges (VMZ) *
Tabelle 20: Zugdateneingabe ETCS (Teil 1) *
Gültig ab 12.12.2021

## Seite 93

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 63
* Bild 41: Zugdateneingabe ETCS (Teil 2)
Auswahl Bedeutung
Axle load category Streckenklasse
Airtight Druckertüchtigt
* Loading gauge Fahrzeugbegrenzung / Lü
* Tabelle 21: Zugdateneingabe ETCS (Teil 2)
* Ist bei der Eingabe der Zugdaten zusätzlich die Eingabe
* der in Tabelle 21 genannten Zugdaten erforderlich, dann
* geben Sie diese nach den Regeln für das Bedienen der
* Fahrzeuge ein.
* Die Eingabe der Zugdaten ist zu bestätigen.
(13) Für Rangierfahrten in ETCS-Betriebsart SH und für Zug- ETCSfahrten als nicht führendes Fahrzeug (ETCS-Betriebsart Betriebsart SH
NL) sind keine Zugdaten erforderlich. oder NL
Gültig ab 12.12.2021

## Seite 94

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 64
ETCS-Startlauf beenden
„Start“ (14) Wenn Sie alle erforderlichen Daten eingegeben haben und *
betätigen die beschriebenen Vorbereitungsarbeiten abgeschlossen *
sind, betätigen Sie im Menü „Hauptmenü“ (Main) „Start“. *
Hinweis: *
Die ETCS-Zentrale kann nach Abschluss der Zugdaten- *
eingabe eine ETCS-Fahrterlaubnis erteilen, ohne dass zu- *
vor „Start“ betätigt wurde. In diesem Fall ist ein Betätigen *
von „Start“ nicht mehr erforderlich. *
Stellen Sie nach Abschluss des ETCS-Startlaufs fest, dass *
die Zugdaten bzw. der gewählte ETCS-Level zu ändern *
sind, wechseln Sie in die ETCS-Betriebsart SB und begin- *
nen erneut mit dem ETCS-Startlauf. *
Wird „Start“ im MFD nicht angeboten, betätigen Sie nach *
Erhalt eines Befehls „Override“. *
Wenn Ihnen „Override“ nicht angeboten wird, ist der *
ETCS-Startlauf erneut durchzuführen. Nach Eingabe der *
für den ETCS-Startlauf relevanten Daten betätigen Sie *
„Override“ anstelle von „Start“. *
Bild 42: ETCS-Startlauf beenden *
Gültig ab 12.12.2021

## Seite 95

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 65
RBC-Kontaktdaten ändern
(15) Für das Ändern der RBC-Kontaktdaten gilt in Abhängigkeit Ablauf
der ETCS-Fahrzeugsoftware folgender Ablauf:
Variante 1:
Vor dem Ändern der RBC-Kontaktdaten müssen Sie den
ETCS-Level 2 manuell wählen auch wenn sich das ETCS-
FzG bereits in ETCS-Level 2 befindet.
Variante 2:
Wenn das ETCS-FzG zum Bestätigen des zuletzt verwendeten ETCS-Levels auffordert und es sich um den erforderlichen ETCS-Level handelt, ist dieser zu bestätigen. Ist
dies nicht der Fall, muss der erforderliche ETCS-Level
ausgewählt und bestätigt werden.
Anschließend ist der Menüpunkt „RBC-Kontaktdaten“ aufzurufen, um diese zu ändern.
Gültig ab 12.12.2021

## Seite 96

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 66
12 Beginn einer Zugfahrt
Beginn in ETCS-Level NTC PZB/LZB
ETCS-
(1) Nach dem Betätigen von „Start“ fordert Sie das Symbol *
Betriebsart SN
mit einem gelben, blinkenden Rahmen auf, den angekün- *
angekündigt
digten Wechsel in die ETCS-Betriebsart SN zu bestätigen. *
Bild 43: Aufforderung zum Bestätigen des angekündigten *
Wechsels in die ETCS-Betriebsart SN
Nach dem Bestätigen wechselt das ETCS-FzG in die *
ETCS-Betriebsart SN und das MFD zeigt folgendes Bild. *
Bild 44: ETCS-Betriebsart SN wirksam (ETCS-Level NTC *
PZB/LZB)
Mit dem Wechsel in die ETCS-Betriebsart SN wird das *
PZB-Startprogramm wirksam.
Gültig ab 12.12.2021

## Seite 97

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 67
Beginn in ETCS-Level 0
ETCS-
* (2) Nach dem Betätigen von „Start“ fordert Sie das Symbol
Betriebsart UN
* mit einem gelben, blinkenden Rahmen auf, den angekünangekündigt
* digten Wechsel in die ETCS-Betriebsart UN zu bestätigen.
* Bild 45: Aufforderung zum Bestätigen des angekündigten
Wechsels in die ETCS-Betriebsart UN
* Nach dem Bestätigen wechselt das ETCS-FzG in die
* ETCS-Betriebsart UN und das MFD zeigt folgendes Bild.
* Bild 46: ETCS-Betriebsart UN wirksam
* Das ETCS-FzG überwacht die zulässige Geschwindigkeit
* von 50 km/h oder ggf. einer niedrigeren Geschwindigkeit.
* Hinweis:
* Eine niedrigere Geschwindigkeit wird z. B. angezeigt,
* wenn die entsprechenden Balisen verlegt sind
Gültig ab 12.12.2021

## Seite 98

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 68
Beginn in ETCS-Level 1
Hinweis:
Zur Verwendung der ETCS-Betriebsarten FS und OS in *
ETCS-Level 1 siehe Abschnitt 3 Absatz (4). *
ETCS-
(3) Nach dem Betätigen von „Start“ fordert Sie das Symbol *
Betriebsart SR
mit einem gelben, blinkenden Rahmen auf, den angekün- *
angekündigt
digten Wechsel in die ETCS-Betriebsart SR zu bestätigen. *
Bild 47: Aufforderung zum Bestätigen des angekündigten *
Wechsels in die ETCS-Betriebsart SR
Sie dürfen den Wechsel in die ETCS-Betriebsart SR erst *
bestätigen, wenn der Fdl der Zugfahrt zugestimmt hat. *
Nach dem Bestätigen wechselt das ETCS-FzG in die *
ETCS-Betriebsart SR und das MFD zeigt folgendes Bild. *
Bild 48: ETCS-Betriebsart SR wirksam *
Gültig ab 12.12.2021

## Seite 99

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 69
* (4) In der ETCS-Betriebsart SR wechselt das ETCS-FzG nach Wechsel in
* dem Befahren der Balise, die ETCS-
Betriebsart LS
* - am Vorsignal,
* - am alleinstehenden Signal Ne 2 oder
* - vor dem Haupt- bzw. Sperrsignal oder Signal Ne 1
* liegt, in die ETCS-Betriebsart LS.
* Das Symbol mit einem gelben, blinkenden Rahmen
* fordert Sie auf, den vollzogenen (nicht angekündigten)
* Wechsel in die ETCS-Betriebsart LS zu bestätigen.
* Bestätigen Sie innerhalb von 5 s den Wechsel in die
* ETCS-Betriebsart LS.
* Andernfalls leitet das ETCS-FzG eine Zwangsbetriebs-
* bremsung ein, die Sie durch eine nachträgliche Bestäti-
* gung aufheben können.
* Bild 49: Aufforderung zum Bestätigen des vollzogenen
* (nicht angekündigten) Wechsels in die ETCS-Betriebsart LS
* Nach dem Bestätigen der ETCS-Betriebsart LS zeigt das
MFD folgendes Bild.
* Bild 50: ETCS-Betriebsart LS wirksam
Gültig ab 12.12.2021

## Seite 100

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 70
Beginn in ETCS-Level 2
Anfrage (5) Nach dem Betätigen von „Start“ sendet das ETCS-FzG *
eine Fahrterlaubnisanfrage an die ETCS-Zentrale. *
Die ETCS-Zentrale sendet, abhängig von der ETCS- *
Streckensoftware, *
- eine ETCS-Fahrterlaubnis in der ETCS-Betriebsart *
FS oder OS oder *
- die Textmeldung „Startanfrage von ETCS-Zentrale *
empfangen“ oder *
- die Textmeldung „Befehl erforderlich“ oder „Befehl für *
Beginn der Zugfahrt erforderlich“ und kündigt die *
ETCS-Betriebsart SR an oder *
- die Textmeldung „Sie dürfen vorbeifahren an ETCS- *
Halt-Tafel ... [Signalbezeichnung]“ oder „Sie dürfen *
vorbeifahren an ETCS-Bk ... [Signalbezeichnung]“ *
und kündigt die ETCS-Betriebsart SR an oder *
- die Textmeldung „ETCS-Zentrale Kontaktdaten über- *
prüfen. Sonst Befehl erforderlich.“ oder „RBC- *
Kontaktdaten überprüfen. Sonst Befehl erforderlich.“ *
oder *
das ETCS-FzG gibt *
- die Textmeldung „Einwahl GSM-R-Netz fehlgeschla- *
*
gen“ oder das Symbol aus.
ETCS- (6) Ist der ETCS-Zentrale der Standort des Zuges bekannt *
Betriebsart FS und hat der Fdl der Zugfahrt zugestimmt, wechselt das *
oder OS ETCS-FzG in die ETCS-Betriebsart FS oder OS. Das MFD *
zeigt folgendes Bild. *
Bild 51: Beispiel ETCS-Betriebsart FS wirksam *
*
*
*
*
*
*
*
Gültig ab 12.12.2021

## Seite 101

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 71
* (7) Mit der Textmeldung „Startanfrage von ETCS-Zentrale Textmeldung
* empfangen“ zeigt die ETCS-Zentrale an, dass diese auf „Startanfrage
* die Freigabe des Fahrwegs durch das Stellwerk wartet. von ETCS-
Zentrale
* Sobald der Fdl der Zugfahrt zugestimmt hat, sendet die empfangen“
* ETCS-Zentrale eine ETCS-Fahrterlaubnis und das ETCS-
* FzG wechselt in die ETCS-Betriebsart FS oder OS.
* (8) Mit der Textmeldung „Befehl erforderlich“ oder „Befehl für Textmeldung
* Beginn der Zugfahrt erforderlich“ zeigt die ETCS-Zentrale „Befehl erfor-
* an, dass diese einen Start mit Befehl in der ETCS- derlich“ oder
„Befehl für Be-
* Betriebsart SR erwartet, da der ETCS-Zentrale der Standginn der Zug-
* ort des Zuges nicht bekannt ist.
fahrt erforder-
* Weiter siehe Absatz (12) „ETCS-Betriebsart SR angekün- lich“
* digt“.
* (9) Mit der Textmeldung „Sie dürfen vorbeifahren an ETCS- Textmeldung
* Halt-Tafel ... [Signalbezeichnung]“ oder „Sie dürfen vorbei- „Sie dürfen vor-
* fahren an ETCS-Bk ... [Signalbezeichnung]“ zeigt die beifahren an ...“
* ETCS-Zentrale an, dass Sie an dem in der Textmeldung
* genannten Signal vorbeifahren dürfen.
* Weiter siehe Absatz (12) „ETCS-Betriebsart SR angekün-
* digt“.
* (10) Mit der Textmeldung „ETCS-Zentrale Kontaktdaten über- Textmeldung
* prüfen. Sonst Befehl erforderlich.“ oder „RBC-Kontakt- „ETCS-Zentrale
* daten überprüfen. Sonst Befehl erforderlich.“ zeigt die Kontaktdaten
* ETCS-Zentrale an, dass das ETCS-FzG eine Funkverbin- überprüfen.
Sonst Befehl
* dung zur nicht zuständigen ETCS-Zentrale aufgebaut hat.
erforderlich.“
* Die ETCS-Zentrale baut daraufhin die Funkverbindung ab.
oder „RBC-
* Überprüfen Sie die RBC-Kontaktdaten und ändern diese, Kontaktdaten
* wenn notwendig. Die „Kurzwahlrufnummer“ (use short überprüfen.
Sonst Befehl
* number) darf nicht verwendet werden.
erforderlich.“
** Wenn diese Textmeldung erneut angezeigt wird, fordern
** Sie einen Befehl an.
* (11) Das ETCS-FzG zeigt Textmeldung
„Einwahl GSM-
* - mit der Textmeldung „Einwahl GSM-R-Netz fehlge-
R-Netz fehlge-
* schlagen“ an, dass eine Einwahl in das GSM-R-Netz schlagen“ oder
* oder Symbol
* - mit dem Symbol an, dass eine Funkverbin-
* dung zur ETCS-Zentrale
* nicht möglich ist.
Gültig ab 12.12.2021

## Seite 102

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 72
Überprüfen Sie die RBC-Kontaktdaten und ändern diese, *
wenn notwendig. Die „Kurzwahlrufnummer“ (use short *
number) darf nicht verwendet werden. *
Wenn diese Textmeldung oder das Symbol erneut ange- *
zeigt wird, fordern Sie einen Befehl an. *
ETCS- (12) Das ETCS-FzG kündigt Ihnen im MFD durch das Symbol *
Betriebsart SR
mit einem gelben, blinkenden Rahmen den Wechsel in *
angekündigt
die ETCS-Betriebsart SR an und fordert Sie auf, diesen zu *
bestätigen. *
Bild 52: Aufforderung zum Bestätigen des angekündigten *
Wechsels in die ETCS-Betriebsart SR
Sie dürfen den Wechsel in die ETCS-Betriebsart SR erst *
bestätigen, *
- wenn der Fdl der Zugfahrt mit Befehl zugestimmt hat
oder *
- wenn die Textmeldung gemäß Absatz (9) mit der *
Signalbezeichnung angezeigt wird. *
Hinweis: *
Für die anschließend Vorbeifahrt an einem ETCS-Halt *
bzw. Signal Ne 14, ist „Override“ zu betätigen. Ein erneu- *
ter Befehl zum Bedienen von „Override“ ist hierfür nicht er- *
forderlich. *
Nach dem Bestätigen wechselt das ETCS-FzG in die *
ETCS-Betriebsart SR und das MFD zeigt folgendes Bild. *
Gültig ab 12.12.2021

## Seite 103

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 73
* Bild 53: ETCS-Betriebsart SR wirksam
* Hinweis:
* Die ETCS-Zentrale sendet eine ETCS-Fahrterlaubnis erst,
wenn der Standort des Zuges der ETCS-Zentrale bekannt
ist.
Gültig ab 12.12.2021

## Seite 104

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 74
13 Regelbetrieb
Fahrt in der ETCS-Betriebsart FS
ETCS-
(1) In der ETCS-Betriebsart FS fahren Sie entsprechend
Betriebsart FS
den Führungsgrößen (V , V , ZE) ETCS-geführt. Das *
soll ziel
ETCS-FzG überwacht das Einhalten der ETCS-Fahrter- *
laubnis.
Geschwindig- (2) Die Änderung der V zeigt Ihnen einen Geschwindigsoll
keitswechsel keitswechsel an.
ETCS- (3) Ein ETCS-Aufmerksamkeitston begleitet Veränderungen *
Aufmerksam- der Anzeige im MFD. *
keitston
Bild 54: Fahrt in der ETCS-Betriebsart FS *
Gültig ab 12.12.2021

## Seite 105

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 75
Halt in der ETCS-Betriebsart FS
(4) Die V
soll
zeigt den Verlauf der Bremskurve an. V
soll
(5) Die V
ziel
= 0 km/h zeigt Ihnen einen ETCS-Halt an. V
ziel
(6) Die Release Speed wird mit dem Zurückführen der V Release Speed
soll
angezeigt.
(7) Die ZE zeigt die Entfernung zum ETCS-Halt an. ZE
* Bild 55: Fahrt in der ETCS-Betriebsart FS;
Annäherung an einen ETCS-Halt
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
*
*
*
*
*
*
*
*
Gültig ab 12.12.2021

## Seite 106

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 76
Fahrt in der ETCS-Betriebsart OS
ETCS- (8) Bei einer Fahrt in ETCS-Level 2 in der ETCS-Betriebs- *
Betriebsart OS art FS erhalten Sie ca. 300 m vor dem Signal bei einer Ist- *
angekündigt mit geschwindigkeit von kleiner gleich 40 km/h die Ankündi- *
Ankündigung gung für einen Wechsel in die ETCS-Betriebsart OS. Die *
Zielgeschwindigkeit zeigt 0 km/h und die Zielentfernung *
läuft auf den ETCS-Halt hin ab. *
Das Symbol mit einem gelben, blinkenden Rahmen *
fordert Sie auf, den angekündigten Wechsel in die ETCS- *
Betriebsart OS zu bestätigen. *
Nachdem Sie die ETCS-Betriebsart OS bestätigt haben, *
wechselt das ETCS-FzG in die ETCS-Betriebsart OS und *
die Führungsgrößen werden ausgeblendet. *
ETCS- (9) In folgenden Situationen wechselt das ETCS-FzG ohne *
Betriebsart OS Ankündigung in die ETCS-Betriebsart OS und fordert eine *
ohne Ankündi- nachträgliche Bestätigung: *
gung
- Bei einem Levelwechsel von ETCS-Level NTC *
PZB/LZB nach ETCS-Level 2, wenn das Grenzsignal *
Zs 7 zeigt. *
- Bei Beginn einer Zugfahrt in ETCS-Level 2, wenn die *
ETCS-Zentrale eine ETCS-Fahrterlaubnis für die *
ETCS-Betriebsart OS erteilt hat. *
- In der ETCS-Betriebsart SR, wenn die ETCS- *
Zentrale dem ETCS-FzG eine ETCS-Fahrterlaubnis *
für die ETCS-Betriebsart OS erteilt hat. *
Bestätigen Sie innerhalb von 5 s den Wechsel in die *
ETCS-Betriebsart OS.
Andernfalls leitet das ETCS-FzG eine Zwangsbetriebsbremsung ein, die Sie durch eine nachträgliche Bestäti- *
gung aufheben können. *
Führungs- (10) Nachdem das ETCS-FzG in die ETCS-Betriebsart OS *
größen/Über- gewechselt ist, müssen Sie die Führungsgrößen/Über- *
wachungs- wachungsgröße einblenden (siehe Abschnitt 7 Tabelle 8). *
größe in der
ETCS-Betriebs- Zum Einblenden der Führungsgrößen/Überwachungs- *
art OS einblen- größe ist *
den
- beim Softkey-Display der Softkey zu betätigen *
oder *
- bei Touchscreen-Display in den Bereich der Ge- *
schwindigkeitsanzeige des MFD zu tippen. *
Gültig ab 12.12.2021

## Seite 107

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 77
* Das ETCS-FzG überwacht die beim Fahren auf Sicht
* höchstens zulässige Geschwindigkeit von 40 km/h oder
* eine niedrigere Geschwindigkeit.
Halt in der ETCS-Betriebsart OS
(11) Bei Annäherung an einen ETCS-Halt läuft V
soll
auf 0 km/h V
soll
ab. V wird mit einem weißen Haken und V mit einem
soll ziel
grauen Haken dargestellt.
* Bild 56: Fahrt in der ETCS-Betriebsart OS;
Annäherung an einen ETCS-Halt
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
*
*
*
*
*
*
*
Gültig ab 12.12.2021

## Seite 108

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 78
Fahrt in der ETCS-Betriebsart LS *
ETCS- (12) In der ETCS-Betriebsart LS fahren Sie signalgeführt. Es *
Betriebsart LS werden keine Führungsgrößen angezeigt, sondern – ab- *
hängig von der betrieblichen Situation – nur die Überwa- *
chungsgrößen LSSMA oder Release Speed. *
Bild 57: Fahrt in der ETCS-Betriebsart LS *
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
*
*
*
*
*
*
Halt bzw. Langsamfahrt in der ETCS- *
Betriebsart LS *
Anzeige der (13) Nach Vorbeifahrt *
LSSMA
- am Signal mit der Signalbedeutung „Halt erwarten“, *
- am Signal, das eine Geschwindigkeit kleiner/gleich *
70 km/h ankündigt (gilt nicht für Langsamfahrsig- *
nale12) oder *
- am alleinstehenden Signal Ne 2 *
muss der Zug die in der LSSMA angezeigte Überwa- *
chungsgeschwindigkeit, die abhängig vom Bremsver- *
12 Ausnahme: Die Langsamfahrsignale stehen in dem Bereich zwi- *
schen Vorsignal und Hauptsignal. *
Gültig ab 12.12.2021

## Seite 109

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 79
* mögen des Zuges ist, nach Ablauf der verdeckten Über-
* wachungskurve erreicht haben.
* Die LSSMA wird Ihnen am MFD erst 10 s nach der Vorbei-
* fahrt angezeigt.
* Die verdeckte Überwachungskurve endet bei einem
* Bremswegabstand von
* - 1000 m nach 725 m
* - 700 m nach 500 m
* - 400 m nach 400 m.
* Hinweis:
* Wenn sich die verdeckte Überwachungskurve der LSSMA
* mit der verdeckten Überwachungskurve einer Langsam-
* fahrstelle überlagert, wird Ihnen die niedrigste Geschwin-
* digkeit als LSSMA angezeigt.
* (14) Die Balise, die ca. 250 m vor einem Haupt- bzw. Sperrsig- Löschen der
* nal13, Signal Ne 1 oder maximal 350 m vor einem Gleisab- LSSMA
* schluss liegt, löscht die LSSMA.
* - Bei der Signalbedeutung „Halt“14 sowie vor dem Sig-
* nal Ne 1 wird die Release Speed digital angezeigt.
* - Bei einer Geschwindigkeitssignalisierung am Fahrt
* zeigenden Hauptsignal von kleiner/gleich 30 km/h
* wird eine Geschwindigkeitsüberwachung von
* 30 km/h wirksam, die 50 m vor dem Hauptsignal be-
* ginnt und an diesem endet.
* In beiden Fällen wird eine verdeckte Überwachungskurve
* wirksam, die die erforderliche Geschwindigkeitsabsenkung
* überwacht.
* (15) Die Release Speed wird gelöscht Löschen der
Release Speed
* - bei Vorbeifahrt am Haupt- bzw. Sperrsignal15 oder
* - durch Betätigen von „Override“.
* Hinweis:
* Beim Überschreiten der Release Speed leitet das ETCS-
* FzG eine Zwangsbremsung bis zum Stillstand ein.
* 13 Nur an Sperrsignalen, an denen zuvor eine LSSMA angezeigt
* wurde.
* 14 Dies gilt auch bei den Signalbegriffen Zs 1, Zs 7 und Zs 8.
* 15 Nur an Sperrsignalen, an denen zuvor eine Release Speed ange-
* zeigt wurde.
Gültig ab 12.12.2021

## Seite 110

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 80
Funktion „Override“
Allgemein (16) „Override“ ist in ETCS-Level 1 und ETCS-Level 2 in den *
ETCS-Betriebsarten
- FS *
- LS *
- OS *
- PT *
- SB (nur in ETCS-Level 2) *
- SH *
- SR
in ETCS-Level 0 in den ETCS-Betriebsarten *
- SH *
- UN *
und in ETCS-Level NTC PZB/LZB in den ETCS- *
Betriebsarten *
- SH *
- SN *
verfügbar. *
„Override“ (17) Sie müssen in folgenden Fällen im Menü „Grundbild“ *
betätigen „Override“ und anschließend im Menü „Override“ „EOA“ *
betätigen: *
- Bei einer Zugfahrt mit besonderem Auftrag. *
- Wenn der Fdl aufgrund einer gestörten ETCS- *
Streckeneinrichtung an einem Haupt- bzw. Sperrsig- *
nal einen Befehl übermittelt hat. *
- Wenn der Fdl das Bedienen von „Override EOA“ mit *
Befehl angeordnet hat. *
Beim Rangieren in der ETCS-Betriebsart SH müssen Sie *
„Override“ nicht betätigen. *
Hinweis: *
In ETCS-Level NTC PZB/LZB wird mit dem Betätigen der *
Befehlstaste auch „Override“ aktiv. *
Gültig ab 12.12.2021

## Seite 111

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 81
* Bild 58: Eingabemenü „Override“
* (18) Mit dem Betätigen von „Override“ in den ETCS- Wechsel in die
* Betriebsarten FS, LS, OS, PT und SB wechselt das ETCS- ETCS-Betriebs-
FzG in die ETCS-Betriebsart SR. art SR
* Hinweis:
* In den ETCS-Betriebsarten SH, SN, SR und UN verbleibt
* das ETCS-FzG mit dem Betätigen von „Override“ in der
* bisherigen ETCS-Betriebsart.
* „Override“ aktiv
(19) Das Symbol zeigt an, dass „Override“ aktiv ist und Sie
* a) in ETCS-Level 0
* - am Halt zeigenden oder gestörten Haupt- bzw.
* Sperrsignal oder
* - am Signal Ne 1
* b) in ETCS-Level 1
* - am Halt zeigenden oder gestörten Haupt- bzw.
* Sperrsignal oder
* - am Signal Ne 1 oder
* - am Haupt- bzw. Sperrsignal mit gestörter
* ETCS-Streckeneinrichtung
Gültig ab 12.12.2021

## Seite 112

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 82
c) in ETCS-Level 2 *
- am ETCS-Halt oder *
- am Signal Ne 14 *
vorbeifahren können, ohne dass das ETCS-FzG in die
ETCS-Betriebsart TR wechselt oder *
d) nach Erhalt eines Befehls zum Bedienen von „Over- *
ride EOA“ eine bestehende ETCS-Fahrterlaubnis ge- *
löscht haben oder *
e) nach Erhalt eines Befehls „Override“ betätigt haben, *
wenn beim Beenden des ETCS-Startlaufs „Start“ *
nicht angeboten wurde. *
Hinweise:
„Override“ können Sie bereits während der Fahrt bei einer
Geschwindigkeit von kleiner/gleich 40 km/h aktivieren. *
Abhängig von der ETCS-Fahrzeugsoftware kann das *
Symbol auch im ETCS-Level NTC PZB/LZB nach dem *
Betätigen der Befehlstaste angezeigt werden. *
Bild 59: Beispiel mit aktivem „Override“ und Wechsel in *
die ETCS-Betriebsart SR (ohne eingeblendete Überwa- *
chungsgrößen) *
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
*
*
*
*
*
*
Gültig ab 12.12.2021

## Seite 113

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 83
„Override“
* (20) Das Symbol erlischt und „Override“ ist nicht mehr aktiv,
erlischt
* nachdem Sie an den im Absatz (19) a) bis c) genannten
* Stellen vorbeigefahren sind.
* Unabhängig davon erlischt das Symbol und „Override“
* ist nicht mehr aktiv
* - nach maximal 400 m oder
* - nach spätestens 255 s.
* In ETCS-Level 0 wird „Override“ nur nach Ablauf der Ent-
* fernung oder der Zeit gelöscht.
* Hinweise:
* Erlischt das Symbol , bevor Sie am entsprechenden
* Signal bzw. am ETCS-Halt vorbeigefahren sind, dürfen Sie
* „Override“ ohne erneuten Befehl wieder betätigen.
* Ist „Override“ bereits aktiv und Sie betätigen „Override“ er-
* neut, dann beginnt die Überwachung der Entfernung und
* Zeit von neuem.
Gültig ab 12.12.2021

## Seite 114

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 84
Fahrt in der ETCS-Betriebsart SR
Überwachungs- (21) Nachdem das ETCS-FzG in die ETCS-Betriebsart SR ge- *
größen in der wechselt ist, müssen Sie die Überwachungsgrößen ein- *
ETCS-Betriebs- blenden (siehe Abschnitt 7 Tabelle 8). *
art SR einblenden Zum Einblenden der Überwachungsgrößen ist *
- beim Softkey-Display der Softkey zu betätigen *
oder *
- beim Touchscreen-Display in den Bereich der Ge- *
schwindigkeitsanzeige des MFD zu tippen. *
Das ETCS-FzG überwacht die zulässige Geschwindigkeit *
von 40 km/h oder ggf. eine niedrigere Geschwindigkeit. *
Hinweis: *
Eine niedrigere Geschwindigkeit wird z. B. angezeigt, *
wenn die entsprechenden Balisen verlegt sind. *
Wechsel in die (22) Auf Strecken mit ETCS-Level 1 wechselt das ETCS-FzG *
ETCS-Betriebs- nach dem Befahren der Balise, die *
art LS
- am Vorsignal, *
- am alleinstehenden Signal Ne 2 oder *
- vor dem Haupt- bzw. Sperrsignal oder Signal Ne 1 **
liegt, in die ETCS-Betriebsart LS. *
Bestätigen Sie innerhalb von 5 s den Wechsel in die *
ETCS-Betriebsart LS. *
Andernfalls leitet das ETCS-FzG eine Zwangsbetriebs- *
bremsung ein, die Sie durch eine nachträgliche Bestäti- *
gung aufheben können. *
Gültig ab 12.12.2021

## Seite 115

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 85
* Bild 60: Beispiel einer Fahrt in der ETCS-Betriebsart SR
* (mit eingeblendeten Überwachungsgrößen)
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
*
*
*
* Bild 61: Beispiel einer Fahrt in der ETCS-Betriebsart SR
* (mit eingeblendeten Überwachungsgrößen); angekündigte
* Langsamfahrstelle mit 10 km/h
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
*
*
*
Gültig ab 12.12.2021

## Seite 116

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 86
Halt in der ETCS-Betriebsart SR *
Anzeige Sollge- (23) Die Sollgeschwindigkeit zeigt weiterhin 40 km/h an. *
schwindigkeit
In ETCS-Level 2 kann ca. 100 m vor einem Signal Ne 14 *
die Sollgeschwindigkeit auf 20 km/h reduziert werden. *
Gültig ab 12.12.2021

## Seite 117

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 87
ETCS-Betriebsart SH
* (24) Abhängig von der ETCS-Fahrzeugsoftware ist die ETCS- ETCS-Level NTC
* Betriebsart SH im ETCS-Level NTC PZB/LZB verfügbar: PZB/LZB
* - Ist diese verfügbar, wechseln Sie zum Rangieren in
* diese.
* - Ist diese nicht verfügbar, geben Sie zum Rangieren
* die für die anschließende Zugfahrt erforderlichen
* Zugdaten für ETCS ein. Schließt sich keine Zugfahrt
* an oder sind Ihnen die für eine anschließende Zug-
* fahrt erforderlichen Zugdaten für ETCS nicht be-
* kannt, geben Sie für ETCS die Zugdaten des Fahr-
* zeuges sowie als Einstellwert VMZ „40“ ein. Wählen
* Sie die ETCS-Zugart aus, die zu den vorhandenen
* Brh des Fahrzeuges sowie zu dessen Bremsstellung
* passt.
* Hinweise:
* Für Rangierfahrten in ETCS-Level NTC PZB/LZB sind kei-
* ne Zugdaten erforderlich. Systembedingt sind aber Zugda-
* ten für ETCS einzugeben, da sonst der ETCS-Startlauf
* nicht abgeschlossen wird und die Stillstandüberwachung
* wirksam bleibt.
* Ist nach dem Rangieren eine Zugfahrt durchzuführen, für
* die Sie die erforderlichen Zugdaten noch nicht eingegeben
* haben bzw. die nicht im ETCS-Level NTC PZB/LZB be-
* ginnt, ist nach dem Beenden des Rangierens ein erneuter
* ETCS-Startlauf durchzuführen.
(25) In ETCS-Level 0 und ETCS-Level 1 wechselt das ETCS- ETCS-Level 0 /
* FzG mit dem Betätigen von „Shunting“ sofort in die ETCS- ETCS-Level 1
* Betriebsart SH, da keine Funkverbindung zur ETCS-
Zentrale besteht.
* (26) In ETCS-Level 2 stellen Sie durch Betätigen von ETCS-Level 2
„Shunting“ eine Anfrage zum Wechsel in die ETCS-
Betriebsart SH an die ETCS-Zentrale.
- Meldet sich das ETCS-FzG in ETCS-Level 2 mit ei-
* nem gültigen Standort, kommandiert die ETCS-
Zentrale sofort den Wechsel in die ETCS-
Betriebsart SH.
- Meldet sich das ETCS-FzG in ETCS-Level 2 mit ei-
* nem ungültigen oder unbekannten Standort an, lehnt
die ETCS-Zentrale den Wechsel in die ETCS-
* Betriebsart SH zunächst ab und die Textmeldung
* „Anfrage SH abgelehnt“ wird angezeigt.
Gültig ab 12.12.2021

## Seite 118

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 88
Die ETCS-Zentrale sendet danach die Textmeldung *
„Zum Rangieren ist die Zustimmung des Weichenwärters erforderlich“. Erst mit dem Bestätigen der
Textmeldung, kommandiert die ETCS-Zentrale den
Wechsel in die ETCS-Betriebsart SH.
Hinweis:
Hat der Weichenwärter der Rangierfahrt bereits zugestimmt, ist aufgrund der Textmeldung keine erneute Zustimmung des Weichenwärters erforderlich.
- Liegt an einer ETCS-Blockstelle die Zustimmung zur *
Weiterfahrt als Zugfahrt vor, lehnt die ETCS-Zentrale *
den Wechsel in die ETCS-Betriebsart SH ab und die *
Textmeldung „Anfrage SH abgelehnt“ wird angezeigt. *
Anschließend sendet die ETCS-Zentrale die ergän- *
zende Textmeldung „Haltstellung des folgenden Sig- *
nals erforderlich“. *
- Die Textmeldung „Anfrage SH fehlgeschlagen“ wird *
angezeigt, wenn die Anfrage zum Wechsel in die *
ETCS-Betriebsart SH von der ETCS-Zentrale unbe- *
antwortet bleibt, z. B. wegen Funkausfall. *
ETCS-
(27) Das Symbol zeigt Ihnen an, dass die ETCS-Betriebsart *
Betriebsart SH
SH wirksam ist.
Überwachungs- (28) Nachdem das ETCS-FzG in die ETCS-Betriebsart SH ge- *
größen in der wechselt ist, können Sie die Überwachungsgrößen ein- *
ETCS-Betriebs- blenden. *
art SH einblenden Zum Einblenden der Überwachungsgrößen ist *
- beim Softkey-Display der Softkey zu betätigen *
oder *
- beim Touchscreen-Display in den Bereich der Ge- *
schwindigkeitsanzeige des MFD zu tippen. *
Das ETCS-FzG überwacht die Geschwindigkeit auf *
40 km/h. *
ETCS- (29) Betätigen Sie im Menü „Hauptmenü“ (Main) „Exit Shun- *
Betriebsart SH ting“, um die ETCS-Betriebsart SH zu beenden. *
beenden
Gültig ab 12.12.2021

## Seite 119

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 89
ETCS-Betriebsart PS
* (30) Die ETCS-Betriebsart PS verhindert, dass das ETCS-FzG Allgemeines
* beim Deaktivieren des Führerpultes in die ETCS-
* Betriebsart SB wechselt. Beim anschließenden Aktivieren
* eines Führerpultes wechselt das ETCS-FzG direkt in die
* ETCS-Betriebsart SH.
In der ETCS-Betriebsart PS kann bei Lokomotiven sowie
Triebzügen/Triebwagen, die nur über ein ETCS-FzG verfügen,
- ein Fahrtrichtungswechsel ohne erneuten ETCS-
* Startlauf durchgeführt werden und
- eine Bewegung mit fremder Kraft durchgeführt werden, ohne dass das ETCS-FzG in die ETCS-
* Betriebsart IS oder NP wechseln muss.
* Hinweis:
Die ETCS-Betriebsart PS kann nur aktiviert werden, wenn
sich das ETCS-FzG in der ETCS-Betriebsart SH befindet.
* (31) Für den Wechsel in die ETCS-Betriebsart PS gilt: Ablauf
* - Mit der indirekten Druckluftbremse ist eine Vollbrem-
* sung auszuführen und das Führerbremsventil ist ab-
* zuschließen/abzusperren.
* - Im Menü „Hauptmenü“ (Main) ist „Rangieren beibe-
* halten (PS)“ (Maintain Shunting) auszuwählen.
* - Das MFD wechselt zum Menü „Grundbild“ und zeigt
weiterhin die ETCS-Betriebsart SH an.
- Mit dem Deaktivieren des Führerpultes wechselt das
ETCS-FzG in die ETCS-Betriebsart PS.
Hinweis:
* Bei mehrmaligem Fahrtrichtungswechsel ist vor jedem
Deaktivieren eines Führerpultes die ETCS-Betriebsart PS
* erneut auszuwählen.
Gültig ab 12.12.2021

## Seite 120

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 90
Bild 62: „Rangieren beibehalten (PS)“ (Maintain shunting) *
angeboten
ETCS- (32) Die ETCS-Betriebsart PS wird beendet, indem Sie ein *
Betriebsart PS Führerpult aktivieren, wodurch das ETCS-FzG in die *
beenden ETCS-Betriebsart SH wechselt. *
Gültig ab 12.12.2021

## Seite 121

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 91
* Bahnübergang auf Strecken mit ETCS-Level 2
* (33) Auf Strecken mit ETCS-Level 2 zeigt Ihnen das ETCS- Textmeldung
* FzG in der ETCS-Betriebsart FS, OS, SR oder UN nach „Einschalt-
* Vorbeifahrt am Signal Bü 2 bzw. So 15 oder Bü 3 bzw. strecke BÜ km
* So 14 die Textmeldung „Einschaltstrecke BÜ km ...,...“ an. ...,...“
* Hinweis:
* Handelt es sich um eine gemeinsame Einschaltstrecke für
* mehrere Bahnübergänge, zeigt die Textmeldung die An-
* zahl der Bahnübergänge an, z. B. „Einschaltstrecke BÜ
* km ...,...; 3 BÜ“.
* (34) Das ETCS-FzG kündigt Ihnen am MFD einen gestörten BÜ gestört
* Bahnübergang (abhängig von der ETCS-Fahrzeugsoft-
* ware und der ETCS-Streckensoftware) wie folgt an:
* - In ETCS-Level 2 in der ETCS-Betriebsart FS oder
* OS durch das Symbol .
* Die V läuft auf 0 km/h ab (ETCS-Halt vor dem
soll
* Bahnübergang).
* Nach dem Halt vor dem Bahnübergang, zeigt V
soll
5 km/h an, bis das erste Fahrzeug die Straßenmitte
erreicht hat.
* - In ETCS-Level 2 in der ETCS-Betriebsart SR oder in
* ETCS-Level 0 überwacht das ETCS-FzG vom An-
* fang bis zur Straßenmitte des Bahnübergangs eine
* Geschwindigkeit von 5 km/h. Es wird kein Symbol
* angezeigt.
Gültig ab 12.12.2021

## Seite 122

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 92
ETCS-Auftrag „Hauptschalter Aus“
Hauptschalter (35) Schalten Sie den Hauptschalter aus, wenn das MFD das *
aus
Symbol anzeigt. Zusätzlich ertönt der ETCS-Aufmerk- *
samkeitston.
Hauptschalter (36) Sie dürfen den Hauptschalter einschalten, wenn das MFD *
ein
das Symbol anzeigt und alle arbeitenden elektrischen
Triebfahrzeuge des Zuges die Fahrleitungs-Schutzstrecke
verlassen haben.
Selbsttätiges (37) Zeigt das MFD das Symbol an, schaltet die Fahrzeug- *
Aus- und Einsteuerung den Hauptschalter selbsttätig aus (fahrzeugabschalten
hängig).
Zeigt das MFD das Symbol an, schaltet die Fahrzeugsteuerung den Hauptschalter selbsttätig ein (fahrzeugabhängig).
ETCS-Auftrag „Stromabnehmer senken“
Stromabnehmer (38) Senken Sie die Stromabnehmer, wenn das MFD das *
senken
Symbol anzeigt.
Stromabnehmer (39) Sie dürfen die Stromabnehmer wieder heben, wenn das *
heben
MFD das Symbol anzeigt und alle arbeitenden elektrischen Triebfahrzeuge des Zuges den Schwungfahrabschnitt verlassen haben.
Selbsttätiges (40) Zeigt das MFD das Symbol an, senkt die Fahrzeug- *
Senken und steuerung die Stromabnehmer selbsttätig (fahrzeugab-
Heben
hängig).
Zeigt das MFD das Symbol an, hebt die Fahrzeugsteuerung die Stromabnehmer selbsttätig (fahrzeugabhängig).
Gültig ab 12.12.2021

## Seite 123

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 93
14 Automatischer Levelwechsel
(1) Automatische Levelwechsel können während der Fahrt Grundsätzliches
zwischen den ETCS-Level NTC PZB/LZB, 0, 1 und 2 stattfinden.
* Bild 63: Beispiel: Levelwechsel von ETCS-Level NTC
PZB/LZB nach ETCS-Level 2
Hinweis:
* Ein Levelwechsel von ETCS-Level 0, 1, 2 nach Level NTC
* PZB/LZB in die Zugbeeinflussung LZB ist nicht möglich.
* Zuvor ist ein Wechsel in die Zugbeeinflussung PZB not-
* wendig.
Gültig ab 12.12.2021

## Seite 124

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 94
Automatischer Levelwechsel von ETCS-Level
NTC PZB/LZB nach ETCS-Level 1
Hinweis:
Zur Verwendung der ETCS-Betriebsarten FS und OS in *
ETCS-Level 1 siehe Abschnitt 3 Absatz (4). *
Ankündigung
(2) Das Symbol mit einem gelben, blinkenden Rahmen *
kündigt den Levelwechsel ca. 350 m vor dem Ort des *
Levelwechsels an. *
Hinweis: *
Bei der Ankündigung wird nicht das Symbol ange- *
zeigt. *
*
Bestätigung (3) Das Symbol mit einem gelben, blinkenden Rahmen *
fordert Sie auf, den angekündigten Levelwechsel zu bestä- *
tigen. *
Bestätigen Sie den Levelwechsel unmittelbar nach der *
Aufforderung. *
Nach dem Bestätigen wird das Symbol angezeigt. *
Das Symbol erlischt, nachdem der Levelwechsel vollzogen *
ist. *
Wurde die Bestätigung nicht spätestens 5 s nach dem *
Levelwechsel durchgeführt, leitet das ETCS-FzG eine *
Zwangsbetriebsbremsung ein, die Sie durch eine nach- *
trägliche Bestätigung aufheben können. *
Ort (4) Der Levelwechsel von ETCS-Level NTC PZB/LZB nach
ETCS-Level 1 findet am bzw. hinter dem Grenzsignal vor *
dem Beginn einer mit ETCS-Level 1 ausgerüsteten Strecke statt.
Grenzsignal (5) Zeigt das Grenzsignal vor dem Levelwechsel Fahrt, wech- *
zeigt Fahrt selt das ETCS-FzG nach dem Grenzsignal in den ETCS- *
Level 1 in die ETCS-Betriebsart LS. *
Gültig ab 12.12.2021

## Seite 125

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 95
Bestätigung des
* (6) Das Symbol mit einem gelben, blinkenden Rahmen
Wechsels der
* fordert Sie nach dem Levelwechsel auf, den vollzogenen
ETCS-Betriebs-
* (nicht angekündigten) Wechsel in die ETCS-Betriebsart LS
art
* zu bestätigen.
* Bestätigen Sie innerhalb von 5 s den Wechsel in die
* ETCS-Betriebsart LS.
* Andernfalls leitet das ETCS-FzG eine Zwangsbetriebs-
* bremsung ein, die Sie durch eine nachträgliche Bestäti-
* gung aufheben können.
* (7) Bei einer Zugfahrt mit besonderem Auftrag ist beim Vor- Zugfahrt mit
* beifahren am Grenzsignal die Befehlstaste zu betätigen. besonderem
Auftrag
* Hinweise:
* In ETCS-Level NTC PZB/LZB wird mit dem Betätigen der
* Befehlstaste auch „Override“ aktiv (siehe Abschnitt 13 Ab-
* satz (17)).
* Das ETCS-FzG verbleibt mit dem Aktivieren von „Over-
* ride“ in der ETCS-Betriebsart SN (siehe Abschnitt 13 Ab-
* satz (18))
* Am Ort des Levelwechsels wechselt das ETCS-FzG nach
* ETCS-Level 1.
* - Ist „Override“ noch aktiv, wechselt das ETCS-FzG in
* die ETCS-Betriebsart SR.
* - Ist „Override“ nicht mehr aktiv, wechselt das ETCS-
* FzG in die ETCS-Betriebsart LS, die zu bestätigen ist
* (siehe Absatz (6)).
Gültig ab 12.12.2021

## Seite 126

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 96
Automatischer Levelwechsel von ETCS-Level
NTC PZB/LZB nach ETCS-Level 2
Ankündigung (8) Das Symbol kündigt den Levelwechsel ca. 900 m *
vor dem Ort des Levelwechsels an.
Bestätigung
(9) Das Symbol mit einem gelben, blinkenden Rahmen *
fordert Sie ca. 450 m vor dem Ort des Levelwechsels auf,
den angekündigten Levelwechsel zu bestätigen.
Bestätigen Sie den Levelwechsel unmittelbar nach der *
Aufforderung. *
Nach dem Bestätigen wird das Symbol angezeigt. *
Das Symbol erlischt, nachdem der Levelwechsel vollzogen *
ist. *
Wurde die Bestätigung nicht spätestens 5 s nach dem *
Levelwechsel durchgeführt, leitet das ETCS-FzG eine *
Zwangsbetriebsbremsung ein, die Sie durch eine nach- *
trägliche Bestätigung aufheben können.
Hinweise: *
Bei einem z. B. Halt zeigenden Hauptsignal kann der Ab- *
stand der Ankündigung und/oder Bestätigung verringert *
sein. *
Ist der Abstand zum Ort des Levelwechsels zu gering, ent- *
fällt die Ankündigung. *
(10) Der Levelwechsel von ETCS-Level NTC PZB/LZB nach *
Ort
ETCS-Level 2 findet nach dem Grenzsignal und vor dem *
Beginn einer mit ETCS-Level 2 ausgerüsteten Strecke
statt.
ETCS-Fahrter- (11) Hat die ETCS-Zentrale eine ETCS-Fahrterlaubnis erteilt, *
laubnis erhalten wechselt das ETCS-FzG nach dem Levelwechsel in die
ETCS-Betriebsart FS.
Gültig ab 12.12.2021

## Seite 127

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 97
* (12) Hat der Fdl die Vorbeifahrt am Grenzsignal mit Zs 1, Zs 7 Zs 1, Zs 7 oder
* oder Zs 8 zugelassen, ist beim Vorbeifahren die Befehls- Zs 8
* taste zu betätigen.
* Am Ort des Levelwechsels wechselt das ETCS-FzG nach
* ETCS-Level 2.
* a) Ist „Override“ 16 noch aktiv, wechselt das ETCS-FzG
* in die ETCS-Betriebsart SR.
* b) Ist „Override“ 16 nicht mehr aktiv, wechselt das
* ETCS-FzG
* - bei Zs 1 und Zs 8 in die ETCS-Betriebsart FS
* oder
* - bei Zs 7 in die ETCS-Betriebsart OS, die nach-
* träglich zu bestätigen ist (siehe Abschnitt 13
* Absatz (9)).
* (13) Hat der Fdl die Vorbeifahrt am Grenzsignal mit Befehl zu- Fahrt mit Befehl
* gelassen, ist beim Vorbeifahren die Befehlstaste zu betäti-
* gen.
* Am Ort des Levelwechsels (abhängig von der ETCS-
* Streckensoftware)
* - wechselt das ETCS-FzG nach ETCS-Level 2 in die
* ETCS-Betriebsart SR oder
* - verbleibt das ETCS-FzG in ETCS-Level NTC
* PZB/LZB und das ETCS-FzG versucht am nächsten
* Hauptsignal erneut, nach ETCS-Level 2 zu wechseln.
* (14) Bei fehlender Funkverbindung ist ein automatischer Level- Keine Funkwechsel nicht möglich. Das ETCS-FzG verbleibt in ETCS- verbindung
Level NTC PZB/LZB.
* 16 In ETCS-Level NTC PZB/LZB wird mit dem Betätigen der Befehls-
* taste auch „Override“ aktiv.
Gültig ab 12.12.2021

## Seite 128

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 98
Automatischer Levelwechsel von ETCS-Level 0
nach ETCS-Level 1
Hinweis:
Zur Verwendung der ETCS-Betriebsarten FS und OS in *
ETCS-Level 1 siehe Abschnitt 3 Absatz (4). *
Ankündigung (15) Das Symbol kündigt den Levelwechsel ca. 350 m *
vor dem Ort des Levelwechsels an. *
Bestätigung (16) Das ETCS-FzG fordert für den angekündigten Level- *
wechsel keine Bestätigung. *
Ort (17) Der Levelwechsel von ETCS-Level 0 nach ETCS-Level 1 *
findet am bzw. hinter dem Grenzsignal vor dem Beginn *
einer mit ETCS-Level 1 ausgerüsteten Strecke statt.
Grenzsignal (18) Zeigt das Grenzsignal vor dem Levelwechsel Fahrt, wech- *
zeigt Fahrt selt das ETCS-FzG nach dem Grenzsignal in den ETCS- *
Level 1 in die ETCS-Betriebsart LS.
Bestätigung des
(19) Das Symbol mit einem gelben, blinkenden Rahmen *
Wechsels der
fordert Sie nach dem Levelwechsel auf, den vollzogenen *
ETCS-Betriebs-
(nicht angekündigten) Wechsel in die ETCS-Betriebsart LS *
art
zu bestätigen. *
Bestätigen Sie innerhalb von 5 s den Wechsel in die *
ETCS-Betriebsart LS. *
Andernfalls leitet das ETCS-FzG eine Zwangsbetriebs- *
bremsung ein, die Sie durch eine nachträgliche Bestäti- *
gung aufheben können. *
Zugfahrt mit (20) Bei einer Zugfahrt mit besonderem Auftrag ist beim Vor- *
besonderem beifahren am Grenzsignal „Override“ zu betätigen. *
Auftrag
Hinweis: *
Das ETCS-FzG verbleibt mit dem Aktivieren von „Over- *
ride“ in der ETCS-Betriebsart UN (siehe Abschnitt 13 Ab- *
satz (18)). *
Am Ort des Levelwechsels wechselt das ETCS-FzG nach *
ETCS-Level 1. *
- Ist „Override“ noch aktiv, wechselt das ETCS-FzG in *
die ETCS-Betriebsart SR. *
- Ist „Override“ nicht mehr aktiv, wechselt das ETCS- *
FzG in die ETCS-Betriebsart LS, die zu bestätigen ist *
(siehe Absatz (19)). *
Gültig ab 12.12.2021

## Seite 129

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 99
Automatischer Levelwechsel von ETCS-Level 0
nach ETCS-Level 2
* (21) Das Symbol kündigt den Levelwechsel ca. 900 m Ankündigung
vor dem Ort des Levelwechsels an.
* (22) Das ETCS-FzG fordert für den angekündigten Level- Bestätigung
* wechsel keine Bestätigung.
* (23) Der Levelwechsel von ETCS-Level 0 nach ETCS-Level 2 Ort
* findet nach dem Grenzsignal und vor dem Beginn einer
mit ETCS-Level 2 ausgerüsteten Strecke statt.
* (24) Hat die ETCS-Zentrale eine ETCS-Fahrterlaubnis erteilt, ETCS-Fahrterwechselt das ETCS-FzG nach dem Levelwechsel in die laubnis erhalten
ETCS-Betriebsart FS.
* (25) Hat der Fdl die Vorbeifahrt am Grenzsignal mit Zs 1, Zs 7 Zs 1, Zs 7 oder
* oder Zs 8 zugelassen, ist beim Vorbeifahren „Override“ zu Zs 8
* betätigen.
* Am Ort des Levelwechsels wechselt das ETCS-FzG nach
* ETCS-Level 2.
* a) Ist „Override“ 17 noch aktiv, wechselt das ETCS-FzG
* in die ETCS-Betriebsart SR.
* b) Ist „Override“ 17 nicht mehr aktiv, wechselt das
* ETCS-FzG
* - bei Zs 1 und Zs 8 in die ETCS-Betriebsart FS,
* - bei Zs 7 in die ETCS-Betriebsart OS, die nach-
* träglich zu bestätigen ist (siehe Abschnitt 13
* Absatz (9)).
* (26) Hat der Fdl die Vorbeifahrt am Grenzsignal mit Befehl zu- Fahrt mit Befehl
* gelassen, ist beim Vorbeifahren „Override“ zu betätigen.
* Am Ort des Levelwechsels (abhängig von der ETCS-
* Streckensoftware)
* - wechselt das ETCS-FzG nach ETCS-Level 2 in die
* ETCS-Betriebsart SR oder
* - verbleibt das ETCS-FzG in ETCS-Level 0 und das
* ETCS-FzG versucht am nächsten Hauptsignal er-
* neut, nach ETCS-Level 2 zu wechseln.
* 17 In ETCS-Level NTC PZB/LZB wird mit dem Betätigen der Befehls-
* taste auch „Override“ aktiv.
Gültig ab 12.12.2021

## Seite 130

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 100
Keine Funk- (27) Bei fehlender Funkverbindung ist ein automatischer Level- *
verbindung wechsel nicht möglich. Das ETCS-FzG verbleibt in ETCS-
Level 0.
Gültig ab 12.12.2021

## Seite 131

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 101
Automatischer Levelwechsel von ETCS-Level 1
nach ETCS-Level NTC PZB/LZB
Hinweis:
* Zur Verwendung der ETCS-Betriebsarten FS und OS in
* ETCS-Level 1 siehe Abschnitt 3 Absatz (4).
* (28) Das ETCS-FzG kündigt den Levelwechsel von ETCS- Ankündigung
* Level 1 nach ETCS-Level NTC PZB/LZB nicht an.
Bestätigung
* (29) Das Symbol mit einem gelben, blinkenden Rahmen
* fordert Sie nach dem Levelwechsel auf, den vollzogenen
Levelwechsel zu bestätigen.
* Bestätigen Sie den Levelwechsel unmittelbar nach der
* Aufforderung.
* Hinweis:
* Nach dem Bestätigen erlischt das Symbol, da der Level-
* wechsel bereits vollzogen ist.
* Wurde die Bestätigung nicht spätestens 5 s nach dem Le-
* velwechsel durchgeführt, leitet das ETCS-FzG eine
* Zwangsbetriebsbremsung ein, die Sie durch eine nachträgliche Bestätigung aufheben können.
* (30) Der Levelwechsel von ETCS-Level 1 nach ETCS- Ort
* Level NTC PZB/LZB findet mindestens 330 m vor dem
Grenzsignal statt.
* (31) Für die Weiterfahrt in ETCS-Level NTC PZB/LZB gelten Weiterfahrt
die Regeln für das Bedienen der PZB-Fahrzeugeinrichtung.
Gültig ab 12.12.2021

## Seite 132

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 102
Automatischer Levelwechsel von ETCS-Level 1
nach ETCS-Level 2
Hinweis:
Zur Verwendung der ETCS-Betriebsarten FS und OS in *
ETCS-Level 1 siehe Abschnitt 3 Absatz (4). *
Ankündigung (32) Das Symbol kündigt den Levelwechsel ca. 900 m vor *
dem Ort des Levelwechsels an. *
*
Bestätigung (33) Das ETCS-FzG fordert für den angekündigten Level- *
wechsel keine Bestätigung. *
Ort (34) Der Levelwechsel von ETCS-Level 1 mit der ETCS- *
Betriebsart LS nach ETCS-Level 2 findet ca. 50 m nach *
dem Grenzsignal statt.
ETCS-Fahrter- (35) Hat die ETCS-Zentrale eine ETCS-Fahrterlaubnis erteilt, *
laubnis erhalten wechselt das ETCS-FzG nach dem Levelwechsel in die
ETCS-Betriebsart FS.
Zugfahrt mit (36) Bei einer Zugfahrt mit besonderem Auftrag ist beim Vor- *
besonderem beifahren am Grenzsignal „Override“ zu betätigen. *
Auftrag
Nach der Vorbeifahrt am Grenzsignal wechselt das ETCS- *
FzG wieder in die ETCS-Betriebsart LS. *
Am Ort des Levelwechsels wechselt das ETCS-FzG nach *
ETCS-Level 2 *
- bei Zs 1, Zs 8 und Befehl in die ETCS-Betriebsart FS *
oder *
- bei Zs 7 in die ETCS-Betriebsart OS, die nachträglich *
zu bestätigen ist (siehe Abschnitt 13 Absatz (9)). *
Keine Funkver- (37) Bei fehlender Funkverbindung ist ein automatischer Level- *
bindung wechsel nicht möglich. Das ETCS-FzG verbleibt in ETCS-
Level 1 in der ETCS-Betriebsart LS. *
Gültig ab 12.12.2021

## Seite 133

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 103
Automatischer Levelwechsel von ETCS-Level 2
nach ETCS-Level NTC PZB/LZB
Ankündigung
* (38) Das Symbol kündigt den Levelwechsel ortsabhän-
* gig ca. 3000 m vor dem Ort des Levelwechsels an.
* Die ETCS-Zentrale sendet, abhängig von der ETCS-
* Streckensoftware, ggf. folgende Textmeldungen:
* - „Maximal ... km/h über Zuglänge einhalten!“,
* wenn die Geschwindigkeitsrestriktion vor dem Ort
* des Levelwechsels endet oder
* - „Maximal ... km/h weiterhin einhalten!“ oder
* „Maximal ... km/h bis Ende Lfst einhalten!“,
* wenn die Geschwindigkeitsrestriktion am bzw. nach
* dem Ort des Levelwechsels endet.
Bestätigung
* (39) Das Symbol mit einem gelben, blinkenden Rahmen
fordert Sie ca. 1200 m vor dem Ort des Levelwechsels auf,
* den Levelwechsel zu bestätigen.
* Bestätigen Sie den Levelwechsel unmittelbar nach der
* Aufforderung.
* Nach dem Bestätigen wird das Symbol angezeigt.
* Das Symbol erlischt, nachdem der Levelwechsel vollzogen
* ist.
* Wurde die Bestätigung nicht spätestens 5 s nach dem
* Levelwechsel durchgeführt, leitet das ETCS-FzG eine
* Zwangsbetriebsbremsung ein, die Sie durch eine nachträgliche Bestätigung aufheben können.
* Hinweise:
* Bei einem z. B. Halt zeigenden Hauptsignal kann der Ab-
* stand der Ankündigung und/oder Bestätigung verringert
* sein.
* Ist der Abstand zum Ort des Levelwechsels zu gering, ent-
* fällt die Ankündigung.
* (40) Der Levelwechsel von ETCS-Level 2 nach ETCS- Ort
* Level NTC PZB/LZB findet vor dem Grenzsignal statt:
* - ca. 300 m vor dem Vorsignal oder
* - ca. 230 m vor dem Fahrt zeigenden Hauptsignal
Hinweis:
Der Abstand verringert sich, wenn das Hauptsignal
nicht zeitgerecht auf Fahrt gestellt wurde.
Gültig ab 12.12.2021

## Seite 134

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 104
Levelwechsel (41) Bei einem Halt vor dem Grenzsignal findet der Levelwech- *
nach Halt vor sel unmittelbar
dem Grenz- *
signal
- nach der Fahrtstellung des Hauptsignals oder
- wenn der Fdl die Zugfahrt mit Zs 1, Zs 7 oder Zs 8
zugelassen hat, *
statt. *
Bestätigen Sie den Levelwechsel unmittelbar nach der *
Aufforderung. *
Hinweis: *
Nach dem Bestätigen erlischt das Symbol, da der Level- *
wechsel bereits vollzogen ist. *
Wurde die Bestätigung nicht spätestens 5 s nach dem *
Levelwechsel durchgeführt, leitet das ETCS-FzG eine *
Zwangsbetriebsbremsung ein, die Sie durch eine nach- *
trägliche Bestätigung aufheben können.
Weiterfahrt (42) Für die Weiterfahrt in ETCS-Level NTC PZB/LZB gelten *
die Regeln für das Bedienen der Zugbeeinflussung PZB. *
Gültig ab 12.12.2021

## Seite 135

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 105
Automatischer Levelwechsel von ETCS-Level 2
nach ETCS-Level 018
Ankündigung
* (43) Das Symbol kündigt den Levelwechsel ortsabhän-
* gig ca. 2000 m vor dem Ort des Levelwechsels an.
*
(44) Das Symbol mit einem gelben, blinkenden Rahmen
Bestätigung
fordert Sie ca. 1200 m vor dem Ort des Levelwechsels auf,
* den Levelwechsel zu bestätigen.
* Bestätigen Sie den Levelwechsel unmittelbar nach der
* Aufforderung.
* Nach dem Bestätigen wird das Symbol angezeigt.
* Das Symbol erlischt, nachdem der Levelwechsel vollzogen
* ist.
* Wurde die Bestätigung nicht spätestens 5 s nach dem
* Levelwechsel durchgeführt, leitet das ETCS-FzG eine
* Zwangsbetriebsbremsung ein, die Sie durch eine nachträgliche Bestätigung aufheben können.
* Hinweise:
* Bei einem z. B. Halt zeigenden Hauptsignal kann der Ab-
* stand der Ankündigung und/oder Bestätigung verringert
* sein.
* Ist der Abstand zum Ort des Levelwechsels zu gering, ent-
* fällt die Ankündigung.
* (45) Der Levelwechsel von ETCS-Level 2 nach ETCS-Level 0 Ort
findet ca. 230 m vor dem Fahrt zeigenden Grenzsignal
statt.
Hinweis:
Der Abstand verringert sich, wenn das Hauptsignal nicht
zeitgerecht auf Fahrt gestellt wurde.
* (46) Bei einem Halt vor dem Grenzsignal findet der Levelwech- Levelwechsel
sel unmittelbar nach Halt vor
* dem Grenz-
- nach der Fahrtstellung des Hauptsignals oder
signal
- wenn der Fdl die Zugfahrt mit Zs 1, Zs 7 oder Zs 8
* zugelassen hat,
* statt.
* 18 Abhängig von der ETCS-Streckensoftware.
Gültig ab 12.12.2021

## Seite 136

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 106
Bestätigen Sie den Levelwechsel unmittelbar nach der *
Aufforderung. *
Hinweis: *
Nach dem Bestätigen erlischt das Symbol, da der Level- *
wechsel bereits vollzogen ist. *
Wurde die Bestätigung nicht spätestens 5 s nach dem *
Levelwechsel durchgeführt, leitet das ETCS-FzG eine *
Zwangsbetriebsbremsung ein, die Sie durch eine nach- *
trägliche Bestätigung aufheben können.
Geschwindig- (47) Am Ort des Levelwechsels müssen Sie die zulässige Ge- *
keit schwindigkeit bei Fahrt ohne wirksame Zugbeeinflussung
erreicht haben.
Gültig ab 12.12.2021

## Seite 137

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 107
Automatischer Levelwechsel von ETCS-Level 2
nach ETCS-Level 1
Hinweis:
* Zur Verwendung der ETCS-Betriebsarten FS und OS in
* ETCS-Level 1 siehe Abschnitt 3 Absatz (4).
* (48) Das Symbol kündigt den Levelwechsel ortsabhängig Ankündigung
* ca. 3000 m vor dem Ort des Levelwechsels an.
*
* (49) Das ETCS-FzG fordert für den angekündigten Level- Bestätigung
* wechsel keine Bestätigung.
* (50) Der Levelwechsel von ETCS-Level 2 nach ETCS-Level 1 Ort
* in die ETCS-Betriebsart LS findet vor dem Grenzsignal
* statt:
* - ca. 300 m vor dem Vorsignal oder
* - ca. 250 m vor dem Fahrt zeigenden Hauptsignal
Hinweis:
Der Abstand verringert sich, wenn das Hauptsignal
nicht zeitgerecht auf Fahrt gestellt wurde.
Bestätigung des
* (51) Das Symbol mit einem gelben, blinkenden Rahmen
Wechsels der
* fordert Sie nach dem Levelwechsel auf, den vollzogenen
ETCS-Betriebs-
* (nicht angekündigten) Wechsel in die ETCS-Betriebsart LS
art
* zu bestätigen.
* Bestätigen Sie innerhalb von 5 s den Wechsel in die
* ETCS-Betriebsart LS.
* Andernfalls leitet das ETCS-FzG eine Zwangsbetriebs-
* bremsung ein, die Sie durch eine nachträgliche Bestäti-
* gung aufheben können.
* (52) Bei einer Zugfahrt mit besonderem Auftrag ist beim Vor- Zugfahrt mit
* beifahren am Grenzsignal „Override“ zu betätigen. besonderem
Auftrag
* Am Ort des Levelwechsels wechselt das ETCS-FzG nach
* ETCS-Level 1.
* - Ist „Override“ noch aktiv, wechselt das ETCS-FzG in
* die ETCS-Betriebsart SR.
* - Ist „Override“ nicht mehr aktiv, wechselt das ETCS-
* FzG in die ETCS-Betriebsart LS, die zu bestätigen ist
* (siehe Absatz (51)).
Gültig ab 12.12.2021

## Seite 138

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 108
15 Besonderheiten bei ETCS-Level 2 Strecken
ohne Hauptsignale
Einfahrt in die ETCS-Level 2 Strecke *
Zufahrtsiche- (1) Wenn das Stellwerk das Zufahrtsicherungssignal in die
rungssignal Richtung der ETCS-Level 2 Strecke ohne Hauptsignale
dunkel dunkel schaltet, verlängert die ETCS-Zentrale die ETCS- *
Fahrterlaubnis in der ETCS-Betriebsart FS oder OS.
Zs 1, Zs 7 oder (2) Die ETCS-Zentrale verlängert die ETCS-Fahrterlaubnis *
Zs 8 am
- bei Zs 1 und Zs 8 in der ETCS-Betriebsart FS oder *
Zufahrtsicherungssignal - bei Zs 7 in der ETCS-Betriebsart OS. *
Befehl (3) Wenn das Zufahrtsicherungssignal Halt zeigt und der Fdl *
die Vorbeifahrt mit Befehl zugelassen hat, betätigen Sie *
„Override“. Nach der Vorbeifahrt am Zufahrtsicherungssignal in der ETCS-Betriebsart SR wechselt das ETCS-
FzG in die ETCS-Betriebsart FS oder OS.
Zug nicht in (4) Wenn das ETCS-FzG bis zum Zufahrtsicherungssignal
ETCS-Level 2 nicht nach ETCS-Level 2 gewechselt ist, dürfen Sie *
aufgenommen manuell den ETCS-Level 2 wählen, nachdem Sie hierfür
vom Fdl einen Befehl erhalten haben.
Nach dem manuellen Wechsel nach ETCS-Level 2 wechselt das ETCS-FzG in die ETCS-Betriebsart TR.
Gültig ab 12.12.2021

## Seite 139

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 109
16 Manueller Levelwechsel
(1) Sie dürfen nur dann den ETCS-Level manuell wechseln, Befehl
* wenn der Fdl dies mit Befehl angeordnet hat. Ein manuel-
* ler Levelwechsel ist nur im Stillstand möglich.
Sie dürfen beim ETCS-Startlauf den ETCS-Level ohne Befehl manuell auswählen.
* (2) Sie können einen manuellen Levelwechsel bei folgenden ETCS-
ETCS-Betriebsarten Betriebsarten
- FS,
- LS,
- NL,
- OS,
- SB,
- SN,
- SR und
- UN
durchführen.
Können Sie bei einer manuellen Levelwahl den erforderlichen ETCS-Level nicht auswählen, müssen Sie das
ETCS-FzG aus- und wieder einschalten. Danach stehen
alle auf dem Fahrzeug verfügbaren ETCS-Level zur manuellen Auswahl zur Verfügung.
* (3) Beim manuellen Levelwechsel nach ETCS-Level NTC ETCS-
PZB/LZB wird die ETCS-Betriebsart SN wirksam. Betriebsart SN
* (4) Beim manuellen Levelwechsel nach ETCS-Level 0 wird ETCSdie ETCS-Betriebsart UN wirksam. Betriebsart UN
Gültig ab 12.12.2021

## Seite 140

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 110
17 Fahrt beenden
Beenden der (1) Das ETCS-FzG beendet die Überwachung indem Sie *
Überwachung
- in die ETCS-Betriebsart SH wechseln. *
- den Richtungsschalter für länger als ca. 5 s in die *
Stellung „0“ verlegen bzw. das Führerpult für länger *
als ca. 5 s deaktivieren, wodurch das ETCS-FzG in *
die ETCS-Betriebsart SB wechselt. *
Hinweis: *
Eine ggf. bestehende Funkverbindung wird abge- *
baut.
- das ETCS-FzG mit dem ETCS-Störschalter aus- *
schalten19, wodurch dieses in die ETCS-Betriebs- *
art IS wechselt. *
- das ETCS-FzG durch den zugehörigen Leitungs- *
schutzschalter (LSS) ausschalten, wodurch dieses in *
die ETCS-Betriebsart NP wechselt. *
Mit dem Beenden der Überwachung löscht das ETCS-FzG *
- in ETCS-Level 1 die durch eine Balise übertragene *
Zustimmung zur Fahrt oder *
- in ETCS-Level 2 die ETCS-Fahrterlaubnis. *
19 Abweichend zum PZB-FzG wird das ETCS-FzG mit dem ETCS- *
Störschalter nicht "abgeschaltet", sondern "ausgeschaltet".
Gültig ab 12.12.2021

## Seite 141

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 111
18 Abschlussarbeiten
(1) Schalten Sie das ETCS-FzG in die ETCS-Betriebsart SB, ETCS-
* indem Sie den Richtungsschalter in Stellung „0“ schalten. Betriebsart SB
(2) Entsprechend den Regeln für das Bedienen des Fahr- Sichtprüfung
zeugs müssen Sie bei den Abschlussarbeiten, die von
außen sichtbaren Bauteile der ETCS-Fahrzeugausrüstung
auf offensichtliche Mängel prüfen.
Gültig ab 12.12.2021

## Seite 142

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 112
19 Unregelmäßigkeiten im Betrieb
ETCS-Betriebsart TR
ETCS- (1) In der ETCS-Betriebsart TR leitet das ETCS-FzG eine *
Betriebsart TR Zwangsbremsung bis zum Stillstand ein.
Hinweis:
Ggf. gibt Ihnen eine Textmeldung den Grund für die *
Zwangsbremsung an.
Bild 64: ETCS-Betriebsart TR z. B. wegen einer falschen *
Balisenversion
Gültig ab 12.12.2021

## Seite 143

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 113
Bestätigung des
* (2) Das Symbol mit einem gelben, blinkenden Rahmen
Wechsels in die
* fordert Sie auf, im Stillstand den vollzogenen (nicht ange-
ETCS-Betriebs-
* kündigten) Wechsel in die ETCS-Betriebsart TR zu bestäart TR und
* tigen.
Zwangsbrem-
* Mit dem Bestätigen heben Sie auch die Zwangsbremsung sung aufheben
* auf.
* Bild 65: Beispiel einer Aufforderung zum Bestätigen des
* Wechsels in die ETCS-Betriebsart TR
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
*
*
*
*
*
*
(3) Abhängig vom ETCS-Level, in welchem sich der Zug be- Wechsel der
findet, wechselt das ETCS-FzG in eine der folgenden ETCS-
ETCS-Betriebsarten: Betriebsart
- PT bei ETCS-Level 1 oder ETCS-Level 2
* - SN bei ETCS-Level NTC PZB/LZB
* - UN bei ETCS-Level 0
* Hinweis:
* Der Wechsel in die ETCS-Betriebsart SN oder UN ist mit
* einem Levelwechsel verbunden.
(4) Fordern Sie vom Fdl einen Befehl für die Weiterfahrt an. Befehl
Gültig ab 12.12.2021

## Seite 144

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 114
ETCS-Betriebsart PT
Bild 66: Beispiel für die ETCS-Betriebsart PT *
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
*
*
*
*
*
*
„Start“ (5) Betätigen Sie nach Erhalt des Befehls „Start“. *
Wird „Start“ im MFD nicht angeboten, betätigen Sie nach *
Erhalt eines Befehls „Override“. *
Hinweis: *
Mit dem Befehl für die Weiterfahrt ist für das Betätigen von *
„Override“ kein weiterer Befehl des Fdl erforderlich. *
Wenn Ihnen „Override“ nicht angeboten wird, ist der *
ETCS-Startlauf erneut durchzuführen. Nach Eingabe der *
für den ETCS-Startlauf relevanten Daten betätigen Sie *
„Override“ anstelle von „Start“. *
ETCS-Level 1 (6) Nach dem Betätigen von „Start“ in ETCS-Level 1 fordert *
Sie das Symbol mit einem gelben, blinkenden Rahmen *
auf, den angekündigten Wechsel in die ETCS-Betriebs- *
art SR zu bestätigen. *
Sie dürfen den Wechsel in die ETCS-Betriebsart SR be- *
stätigen. *
Gültig ab 12.12.2021

## Seite 145

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 115
* Hinweis:
* Mit dem Befehl für die Weiterfahrt ist für den Wechsel in
* die ETCS-Betriebsart SR keine weitere Zustimmung des
* Fdl erforderlich.
* (7) Nach dem Betätigen von „Start“ in ETCS-Level 2 sendet ETCS-Level 2
das ETCS-FzG eine Fahrterlaubnisanfrage an die ETCS-
Zentrale.
* Die ETCS-Zentrale sendet, abhängig von der ETCS-
* Streckensoftware
* - eine neue ETCS-Fahrterlaubnis in der ETCS-
Betriebsart FS oder OS oder
* - die Textmeldung „Startanfrage von ETCS-Zentrale
* empfangen“, mit der die ETCS-Zentrale anzeigt, dass
* diese auf die Freigabe des Fahrwegs durch das
* Stellwerk wartet oder
* - die Textmeldung „Befehl erforderlich“ oder „Befehl für
* Beginn der Zugfahrt erforderlich“, mit der die ETCS-
* Zentrale anzeigt, dass diese einen Start mit Befehl
* erwartet und kündigt die ETCS-Betriebsart SR an.
* Im MFD fordert Sie das Symbol mit einem gelben, blin-
* kenden Rahmen auf, den angekündigten Wechsel in die
* ETCS-Betriebsart SR zu bestätigen.
* Sie dürfen den Wechsel in die ETCS-Betriebsart SR be-
* stätigen.
* Hinweise:
* Mit dem Befehl für die Weiterfahrt ist für den Wechsel in
* die ETCS-Betriebsart SR kein weiterer Befehl des Fdl er-
* forderlich.
* Ist anschließend in der ETCS-Betriebsart SR eine Vorbei-
* fahrt an einem ETCS-Halt bzw. Signal Ne 14 notwendig,
* benötigen Sie einen weiteren Befehl.
Gültig ab 12.12.2021

## Seite 146

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 116
Durchfahren eines gestörten Funkbereiches auf *
ETCS-Level 2 Strecken ohne Hauptsignale *
Allgemein (8) Das Symbol zeigt Ihnen einen Streckenabschnitt an, *
in dem die Funkverbindung unterbrochen sein kann.
ETCS-Fahrter- (9) Ist dieser Streckenabschnitt frei, erhalten Sie von der *
laubnis in ETCS-Zentrale eine ETCS-Fahrterlaubnis in ETCS- *
ETCS-Level 2 Level 2 mit der ETCS-Betriebsart FS und einer Sollge- *
schwindigkeit von maximal 160 km/h zum Durchfahren *
dieses Bereiches.
Kürzen der (10) Die erteilte ETCS-Fahrterlaubnis kann bei gefahrdrohen- *
ETCS-Fahrt- den Umständen oder beim Ansprechen einer HOA/FBOA *
erlaubnis und auf ein Signal Ne 14 gekürzt werden. *
Levelwechsel
nach ETCS- Nach Befahren der Balise vor dem Signal Ne 14, die ca. *
Level 1 1500 m vor diesem Signal liegt, wechselt das ETCS-FzG *
nach ETCS-Level 1 in die ETCS-Betriebsart FS.
Nach ca. 150 m wechselt das ETCS-FzG zurück nach *
ETCS-Level 2 in die ETCS-Betriebsart FS.
Hinweis:
Für eine anschließende Vorbeifahrt am ETCS-Halt bzw. *
am Signal Ne 14 benötigen Sie einen Befehl vom Fdl.
Gültig ab 12.12.2021

## Seite 147

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
ETCS-Fahrzeugeinrichtungen bedienen 483.0701
Seite 117
Gestörte ETCS-Fahrzeugeinrichtung
* (11) Bei einer Störung der ETCS-Fahrzeugeinrichtung wechselt ETCS-
* das ETCS-FzG in die ETCS-Betriebsart SF und leitet eine Betriebsart SF
* Zwangsbremsung bis zum Stillstand ein.
* - Zum Wechsel in die ETCS-Betriebsart IS schalten
* Sie das ETCS-FzG mit dem ETCS-Störschalter
* aus20.
* - Zum Wechsel in die ETCS-Betriebsart NP schalten
* Sie das ETCS-FzG mit dem Leitungsschutzschalter
* (LSS) aus. Heben Sie anschließend die Zwangs-
* bremsung entsprechend den Regeln für das Bedie-
* nen des Fahrzeuges auf.
* Hinweis:
* In welche ETCS-Betriebsart Sie wechseln müssen, ist in
* den Regeln für das Bedienen der Fahrzeuge vorgegeben.

* 20 Abweichend zum PZB-FzG wird das ETCS-FzG mit dem ETCS-
* Störschalter nicht "abgeschaltet", sondern "ausgeschaltet".
Gültig ab 12.12.2021

## Seite 149

Richtlinie
Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 1
1 Textmeldungen auf Strecken mit ETCS-Level 1
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
PZB fehlt, v = 50 km/h, Beim Levelwechsel von ETCS-Level 1 nach Ermäßigen Sie die Geschwindigkeit auf 50 km/h. ja Zwangsbetriebs-
Halt am nächsten Sig- ETCS-Level NTC PZB oder PZB/LZB verfügt das bremsung
Halten Sie am nächsten Haupt- bzw. Sperrsignal
nal! Fahrzeug über keine betriebsbereite PZB.
oder Ne 1 an, auch wenn die Fahrt an diesem
Hinweis: Signal bereits zugelassen ist.
Fahrzeuge, die nicht nach ETCS-Level NTC PZB
Verständigen Sie den Fdl, nachdem Sie angehaloder PZB/LZB wechseln, erhalten am Ort des
ten haben.
Levelwechsels eine Geschwindigkeitsrestriktion
auf 50 km/h und fahren in ETCS-Level 1 in der
ETCS-Betriebsart LS bis zum nächsten Hauptbzw. Sperrsignal oder Ne 1 weiter.
Störung Aufwerte-DP Die LEU einer schaltbaren Balise ist gestört. Erster Zug: ja Zwangsbetriebs-
Verständigen Sie den Fdl über die gestörte bremsung
Die Balise überträgt eine verdeckte Überwa-
ETCS-Streckeneinrichtung.
chungskurve mit v = 25 km/h (Release Speed),
ggf. Zwangsbremsung möglich. Folgende Züge:
Fdl erteilt allen nachfolgenden Zügen einen Befehl wegen gestörter ETCS-Streckeneinrichtung.
Fachautor: I.NAI 4521; Philipp Pinter; Tel.: (089) 1308-5234 Gültig ab 12.12.2021

## Seite 150

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 2
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
Störung Hauptsignal- Die LEU einer schaltbaren Balise ist gestört. Erster Zug: ja Zwangsbetriebs-
DP Bestätigen Sie im Stillstand den Wechsel in die bremsung
Das ETCS-FzG des ersten Zuges wechselt in die
ETCS-Betriebsart TR.
ETCS-Betriebsart TR.
Fordern Sie vom Fdl einen Befehl für die Weiterfahrt an.
Verständigen Sie den Fdl über die gestörte
ETCS-Streckeneinrichtung.
Folgende Züge:
Fdl erteilt Befehl wegen gestörter ETCS-Streckeneinrichtung am Hauptsignal.
Störung Sperrsignal- Die LEU einer schaltbaren Balise ist gestört. Erster Zug: ja Zwangsbetriebs-
Aufwerte-DP Verständigen Sie den Fdl über die gestörte bremsung
ETCS-Streckeneinrichtung.
Folgende Züge:
Fdl erteilt allen nachfolgenden Zügen einen Befehl wegen gestörter ETCS-Streckeneinrichtung.
Störung Sperrsignal-DP Die LEU einer schaltbaren Balise ist gestört. Erster Zug: ja Zwangsbetriebs-
Bestätigen Sie im Stillstand den Wechsel in die bremsung
Das ETCS-FzG des ersten Zuges wechselt in die
ETCS-Betriebsart TR.
ETCS-Betriebsart TR.
Fordern Sie vom Fdl einen Befehl für die Weiterfahrt an.
Verständigen Sie den Fdl über die gestörte
ETCS-Streckeneinrichtung.
Folgende Züge:
Fdl erteilt allen nachfolgenden Zügen einen Befehl wegen der gestörten ETCS-Streckeneinrichtung am Sperrsignal.
Gültig ab 12.12.2021

## Seite 151

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 3
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
Störung Sperrsignal- Die LEU einer schaltbaren Balise ist gestört. Erster Zug: ja Zwangsbetriebs-
Start-DP Verständigen Sie den Fdl über die gestörte bremsung
ETCS-Streckeneinrichtung.
Folgende Züge:
Fdl erteilt allen nachfolgenden Zügen einen Befehl wegen gestörter ETCS-Streckeneinrichtung.
Störung Start-DP Die LEU einer schaltbaren Balise ist gestört. Erster Zug: ja Zwangsbetriebs-
Verständigen Sie den Fdl über die gestörte bremsung
ETCS-Streckeneinrichtung.
Folgende Züge:
Fdl erteilt allen nachfolgenden Zügen einen Befehl wegen gestörter ETCS-Streckeneinrichtung.
Störung Vorsignal-DP, Die LEU einer schaltbaren Balise ist gestört. Erster Zug: ja Zwangsbetriebs-
Halt erwarten! Nehmen Sie unabhängig vom gezeigten Vorsig- bremsung
Die Balise überträgt eine verdeckte Überwanalbegriff bzw. betrieblich abgeschalteten Vorsigchungskurve und zeigt am MFD die LSSMA an.
nal die Signalbedeutung „Halt erwarten“ an.
Ermäßigen Sie die Geschwindigkeit auf die in
der LSSMA angezeigte Überwachungsgeschwindigkeit.
Verständigen Sie den Fdl über die gestörte
ETCS-Streckeneinrichtung.
Folgende Züge:
Fdl erteilt allen nachfolgenden Zügen einen Befehl wegen gestörter ETCS-Streckeneinrichtung.
Nehmen Sie unabhängig vom gezeigten Vorsignalbegriff bzw. betrieblich abgeschalteten Vorsignal die Signalbedeutung „Halt erwarten“ an.
Gültig ab 12.12.2021

## Seite 152

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 4
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
Störung Vorsignalwie- Die LEU einer schaltbaren Balise ist gestört. Erster Zug: ja Zwangsbetriebsderholer-DP Verständigen Sie den Fdl über die gestörte bremsung
ETCS-Streckeneinrichtung.
Folgende Züge:
Fdl erteilt allen nachfolgenden Zügen einen Befehl wegen gestörter ETCS-Streckeneinrichtung.
Gültig ab 12.12.2021

## Seite 153

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 5
2 Textmeldungen auf Strecken mit ETCS-Level 2
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
Auf 20 km/h ermäßi- Absenkung der Geschwindigkeit vor dem Signal Ermäßigen Sie die Geschwindigkeit auf 20 km/h. nein keine
gen! Ne 14 in der ETCS-Betriebsart SR erforderlich,
weil der signaltechnisch freizuhaltende Abschnitt
nach dem Signal Ne 14 für 40 km/h zu gering ist.
Befehl erforderlich ETCS-Zentrale kann keine ETCS-Fahrterlaubnis Verständigen Sie den Fdl und fordern Sie einen ja keine
erteilen bzw. verlängern. Befehl an.
Befehl erforderlich Bei Beginn einer Fahrt in ETCS-Level 2 kann die Verständigen Sie den Fdl und fordern Sie einen ja keine
ETCS-Zentrale keine ETCS-Fahrterlaubnis ertei- Befehl an.
len, weil der Standort des Fahrzeuges unbekannt oder nicht vertrauenswürdig ist.
Befehl für Beginn der Bei Beginn einer Fahrt in ETCS-Level 2 kann die Verständigen Sie den Fdl und fordern Sie einen ja keine
Zugfahrt erforderlich ETCS-Zentrale keine ETCS-Fahrterlaubnis ertei- Befehl an.
len, weil der Standort des Fahrzeuges unbekannt oder nicht vertrauenswürdig ist.
Befehl oder FS/OS Zug ist in ETCS-Level 2 in der ETCS-Betriebsart Verständigen Sie den Fdl, wenn kein Wechsel in ja keine
Fahrterlaubnis erforder- SR in einem Bahnhof eingefahren. die ETCS-Betriebsart FS oder OS erfolgt ist oder
lich kein Befehl für die Vorbeifahrt am Signal Ne 14
erteilt wurde.
Einschaltstrecke BÜ km Zeigt an, dass sich der Zug innerhalb der Ein- Regeln für die Einschaltstrecken beachten nein keine
...,... schaltstrecke befindet.
Ende ETCS-Level 2 Beim Levelwechsel von ETCS-Level 2 in der Beachten Sie mit der Ankündigung des Level- ja keine
ETCS-Betriebsart FS oder OS nach ETCS-Level wechsels die Signale am Fahrweg.
1 in die ETCS-Betriebsart LS sendet die ETCS-
Zentrale diese Textmeldung.
Gültig ab 12.12.2021

## Seite 154

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 6
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
ETCS-Zentrale Kon- Bei Beginn einer Fahrt in ETCS-Level 2 kann die Überprüfen Sie die RBC-Kontaktdaten und än- nein keine
taktdaten überprüfen. ETCS-Zentrale keine ETCS-Fahrterlaubnis ertei- dern diese, wenn notwendig. Die „Kurzwahlruf-
Sonst Befehl erforder- len, weil der Standort des Fahrzeuges unbe- nummer“ (use short number) darf nicht verwenlich. kannt ist. det werden.
Wenn diese Textmeldung erneut angezeigt wird,
fordern Sie vom Fdl einen Befehl an.
Ggf. Zugfunk Roaming Wird angezeigt, wenn das Fahrzeug sich einem Führen Sie Roaming durch, wenn der Auftrag für nein keine
gemäß Auftrag durch- gestörten technischen Funkbereich nähert. Roaming gegeben wurde.
führen
Haltstellung des folgen- Ergänzung zur Textmeldung „Anfrage SH abge- Verständigen Sie den Fdl. ja keine
den Signals erforderlich lehnt“.
Bestätigen Sie die Textmeldung erst, wenn der
Die Anfrage zum Wechsel in die ETCS-Betriebs- Ww der Rangierfahrt zugestimmt hat.
art SH ist von der ETCS-Zentrale abgelehnt worden, weil an der ETCS-Blockstelle die Zustimmung zur Weiterfahrt als Zugfahrt vorliegt.
Maximal ... km/h bis In dem Bereich, in dem der Levelwechsel von Beachten Sie die in der Textmeldung vorgege- nein keine
Ende Lfst einhalten! ETCS-Level 2 nach ETCS-Level NTC PZB/LZB bene Geschwindigkeit über den Ort des Levelstattfindet, ist eine Geschwindigkeitsrestriktion, wechsels hinaus, bis der Zug am Signal Lf 3 vordie am bzw. nach dem Ort des Levelwechsels beigefahren ist.
endet.
Maximal ... km/h über In dem Bereich, in dem der Levelwechsel von Beachten Sie die in der Textmeldung vorgege- nein keine
Zuglänge einhalten! ETCS-Level 2 nach ETCS-Level NTC PZB/LZB bene Geschwindigkeit über den Ort des Levelstattfindet, ist eine Geschwindigkeitsrestriktion, wechsels hinaus, bis der Zug über die gesamte
die vor dem Ort des Levelwechsels endet. Zuglänge am Grenzsignal vorbeigefahren ist.
Gültig ab 12.12.2021

## Seite 155

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 7
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
Maximal ... km/h wei- In dem Bereich, in dem der Levelwechsel von Beachten Sie die in der Textmeldung vorgege- nein keine
terhin einhalten! ETCS-Level 2 nach ETCS-Level NTC PZB/LZB bene Geschwindigkeit über den Ort des Levelstattfindet, ist eine Geschwindigkeitsrestriktion, wechsels hinaus, bis der Zug am Signal Lf 3 vordie am bzw. nach dem Ort des Levelwechsels beigefahren ist.
endet.
PZB fehlt! Die Textmeldung wird ca. 70 m nach Vorbeifahrt Prüfen Sie, ob Sie einen Befehl für den manuel- ja Zwangsbetriebsam Grenzsignal in ETCS-Level 0 angezeigt. len Levelwechsel nach ETCS-Level 0 erhalten bremsung
haben.
Wenn Sie keinen Befehl erhalten haben, halten
Sie an und verständigen den Fdl.
PZB fehlt - Befehl an- Beim Levelwechsel von ETCS-Level 2 nach Verständigen Sie den Fdl und fordern Sie einen ja ggf. Zwangsbefordern ETCS-Level NTC PZB oder PZB/LZB ist sicher- Befehl an. triebsbremsung
zustellen, dass Fahrzeuge ohne betriebsbereite
PZB nicht automatisch nach ETCS-Level 0
wechseln.
PZB fehlt - Weiterfahrt Die Textmeldung wird ca. 70 m nach Vorbeifahrt Prüfen Sie, ob Sie einen Befehl für den manuel- ja Zwangsbetriebsnur, wenn Befehl erhal- am Grenzsignal in ETCS-Level 0 angezeigt. len Levelwechsel nach ETCS-Level 0 erhalten bremsung
ten! haben.
Wenn Sie keinen Befehl haben, halten Sie an
und verständigen den Fdl.
RBC-Kontaktdaten Bei Beginn einer Fahrt in ETCS-Level 2 kann die Überprüfen Sie die RBC-Kontaktdaten und än- nein keine
überprüfen. Sonst Be- ETCS-Zentrale keine ETCS-Fahrterlaubnis ertei- dern diese, wenn notwendig. Die „Kurzwahlruffehl erforderlich. len, weil der Standort des Fahrzeuges unbe- nummer“ (use short number) darf nicht verwenkannt ist. det werden.
Wenn diese Textmeldung erneut angezeigt wird,
fordern Sie vom Fdl einen Befehl an.
Gültig ab 12.12.2021

## Seite 156

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 8
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
Ri ... [„Betriebsstellen- Die Fahrstraße führt in die angezeigte Richtung. Bei Erkennen einer Fehlleitung müssen Sie den nein keine
name“ oder „Kennbuch- Zug möglichst vor dem fahrwegbestimmenden
stabe der Betriebsstelle Signal anhalten.
bzw. des Streckengleises“ oder „Bezeichnung
des Streckengleises*“]
* z.B. Güterzuggleis
Sie dürfen vorbeifahren Bei Beginn einer Fahrt in ETCS-Level 2 kann die Sie dürfen an der ETCS-Bk, die in der Textmel- nein keine
an ETCS-Bk ... [Signal- ETCS-Zentrale keine ETCS-Fahrterlaubnis ertei- dung genannt ist, ohne Befehl vorbeifahren.
bezeichnung] len, weil der Standort des Fahrzeuges nicht vertrauenswürdig ist.
Sie dürfen vorbeifahren Bei Beginn einer Fahrt in ETCS-Level 2 kann die Sie dürfen an der ETCS-Bk, die in der Textmel- nein keine
an ETCS-Halt-Tafel ... ETCS-Zentrale keine ETCS-Fahrterlaubnis ertei- dung genannt ist, ohne Befehl vorbeifahren.
[Signalbezeichnung] len, weil der Standort des Fahrzeuges nicht vertrauenswürdig ist.
Startanfrage von Bei Beginn einer Fahrt in ETCS-Level 2 kann die Keine Handlung erforderlich. ja keine
ETCS-Zentrale empfan- ETCS-Zentrale keine ETCS-Fahrterlaubnis erteigen len, weil die Freigabe des Fahrwegs durch das
Stellwerk noch nicht zur Verfügung steht.
Unzulässige Bewe- Fahrzeug fährt in ETCS-Level 2 in der ETCS-Be- Sofort anhalten, Nothaltauftrag abgeben ja nein
gung, Fdl kontaktieren! triebsart SR in einen Abschnitt ein, für den ein
anderer Zug eine ETCS-Fahrterlaubnis hat. Daraufhin sendet die ETCS-Zentrale diese Textmeldung.
Gültig ab 12.12.2021

## Seite 157

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 9
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
Unzulässige Fahrzeug- Fahrzeug fährt in ETCS-Level 2 in der ETCS-Be- Sofort anhalten, Nothaltauftrag abgeben ja nein
bewegung, Nothaltauf- triebsart SR in einen Abschnitt ein, für den ein
trag geben! anderer Zug eine ETCS-Fahrterlaubnis hat. Daraufhin sendet die ETCS-Zentrale diese Textmeldung.
Vorbeifahrt an Sperrsig Wenn an einer Teilblockgrenze ein Blockkenn- Sie dürfen an dem Sperrsignal, das in der Text- nein keine
... [Signalbezeichnung] zeichen und ein Sperrsignal vereint sind, wird meldung genannt ist, ohne Befehl vorbeifahren.
erlaubt. bei Erteilung der ETCS-Fahrterlaubnis aufgrund
eines virtuellen Zs 1 die Textmeldung gesendet.
Zs 1 an ... [Signalbe- Wenn an einer Teilblockgrenze ein Blockkenn- Sie dürfen an dem Sperrsignal, das in der Text- nein keine
zeichnung] erteilt. zeichen und ein Sperrsignal vereint sind, wird meldung genannt ist, ohne Befehl vorbeifahren.
bei Erteilung der ETCS-Fahrterlaubnis aufgrund
eines virtuellen Zs 1 die Textmeldung gesendet.
Zugfunk Roaming be- Wird angezeigt, wenn das Fahrzeug einen ge- Beenden Sie Roaming. nein keine
enden störten technischen Funkbereich verlässt.
Zugfunk Roaming Wird angezeigt, wenn das Fahrzeug sich einem Führen Sie Roaming durch, wenn der Auftrag für nein keine
durchführen gestörten technischen Funkbereich nähert. Roaming gegeben wurde.
Zum Rangieren ist die Ergänzung zur Textmeldung „Anfrage SH abge- Verständigen Sie den Fdl. ja keine
Zustimmung des Wei- lehnt“.
Bestätigen Sie die Textmeldung, wenn der Ww
chenwärters erforder-
Die Anfrage zum Wechsel in die ETCS-Betriebs- der Rangierfahrt zugestimmt hat.
lich
art SH ist von der ETCS-Zentrale abgelehnt worden, weil an der ETCS-Blockstelle die Zustimmung zur Weiterfahrt als Zugfahrt vorliegt.
Gültig ab 12.12.2021

## Seite 158

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 10
3 Textmeldungen vom ETCS-FzG
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
[Name des NTC] ge- In folgenden Situationen kann die Anzeige der Zu 1: ja keine
stört Textmeldung erfolgen: Keine betriebliche Maßnahme notwendig.
1. Das nicht überwachende [Name des NTC]- Zu 2:
FzG ist gestört. Verständigen Sie den Fdl und fordern einen Befehl für den manuellen Levelwechsel an.
2. Beim Levelwechsel nach ETCS-Level NTC
[Name des NTC] kann [Name des NTC] nicht
aktiviert werden und das ETCS-FzG bremst
das Fahrzeug bis zum Stillstand ab.
[Name des NTC] nicht [Name des NTC] ist nicht verfügbar (z. B. beim Führen Sie den ETCS-Startlauf erneut durch. nein keine
verfügbar ETCS-Startlauf) oder nicht mehr verfügbar (z. B.
Verständigen Sie den Fdl, wenn [Name des
Ausfall während der Fahrt).
NTC] weiterhin nicht verfügbar ist.
Anfrage SH abgelehnt Die Anfrage zum Wechsel in die ETCS-Betriebs- Verständigen Sie den Fdl. nein keine
art SH ist von der ETCS-Zentrale abgelehnt worden.
Anfrage SH fehlge- Die Anfrage zum Wechsel in die ETCS-Betriebs- Wechseln Sie zum Rangieren in die ETCS- nein keine
schlagen art SH bleibt von der ETCS-Zentrale unbeant- Betriebsart IS oder NP.
wortet.
Aufnahme in FS ETCS-Fahrterlaubnis in der ETCS-Betriebsart Beachten Sie weiter die ggf. niedrigeren Ge- nein keine
FS erteilt. Diese ETCS-Fahrterlaubnis berück- schwindigkeiten nach Fahrplan und La sowie
sichtigt nicht, dass für den Zug ggf. noch rück- Geschwindigkeiten im anschließenden Weichenwärtige Restriktionen gelten. bereich.
Dies gilt vom Ort des Levelwechsels an so
lange, bis der Zug eine Strecke zurückgelegt
hat, die seiner Zuglänge entspricht.
Gültig ab 12.12.2021

## Seite 159

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 11
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
Aufnahme in OS ETCS-Fahrterlaubnis in der ETCS-Betriebsart Beachten Sie weiter die ggf. niedrigeren Ge- nein keine
FS erteilt. Diese ETCS-Fahrterlaubnis berück- schwindigkeiten nach Fahrplan und La sowie
sichtigt nicht, dass für den Zug ggf. noch rück- Geschwindigkeiten im anschließenden Weichenwärtige Restriktionen gelten. bereich.
Dies gilt vom Ort des Levelwechsels an so
lange, bis der Zug eine Strecke zurückgelegt
hat, die seiner Zuglänge entspricht.
Balisenlesefehler Balise wurde nicht bzw. nicht fehlerfrei gelesen Bei Systemreaktion: nein keine
Es sind folgende Systemreaktionen möglich: - Textmeldung
- Textmeldung - Verständigen Sie den Fdl.
- Textmeldung + Zwangbetriebsbremsung bis - Textmeldung + Zwangbetriebsbremsung bis
zum Stillstand zum Stillstand
- In ETCS-Level NTC PZB/LZB oder
- Textmeldung + Zwangsbremsung mit Wech-
ETCS-Level 0:
sel in die ETCS-Betriebsart TR
Sie dürfen weiterfahren. Verständigen
Sie den Fdl.
- In ETCS-Level 1:
Verständigen Sie den Fdl. Sie dürfen
nur nach Erhalt eines Befehls weiterfahren.
- In ETCS-Level 2:
Verständigen Sie den Fdl. Sie dürfen
nach Zustimmung weiterfahren.
- In der ETCS-Betriebsart SH (unabhängig vom ETCS-Level):
Verständigen Sie den Fdl bzw. Ww.
Gültig ab 12.12.2021

## Seite 160

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 12
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
- Textmeldung + Zwangsbremsung mit Wechsel in die ETCS-Betriebsart TR
- Bestätigen Sie im Stillstand den Wechsel in die ETCS-Betriebsart TR.
Fordern Sie vom Fdl einen Befehl für
die Weiterfahrt an.
Bremsanforderung Beim Levelwechsel von ETCS-Level NTC [Name Bestätigen Sie im Stillstand den Wechsel in die nein keine
durch ... [Name des des NTC] nach ETCS-Level 1 oder 2 mit einer ETCS-Betriebsart TR.
NTC] Zwangsbremsung (durch das NTC) am Grenz-
Fordern Sie vom Fdl einen Befehl für die Weitersignal wird diese Textmeldung bei Wechsel in
fahrt an.
die ETCS-Betriebsart TR angezeigt.
Bremsanforderung Beim Levelwechsel von ETCS-Level NTC PZB Bestätigen Sie im Stillstand den Wechsel in die nein keine
durch PZB nach ETCS-Level 1 oder 2 mit einer 2000 Hz ETCS-Betriebsart TR.
Beeinflussung am Grenzsignal wird diese Text-
Fordern Sie vom Fdl einen Befehl für die Weitermeldung bei Wechsel in die ETCS-Betriebsart
fahrt an.
TR angezeigt.
Bremsanforderung Beim Levelwechsel von ETCS-Level NTC Bestätigen Sie im Stillstand den Wechsel in die nein keine
durch PZB/LZB PZB/LZB nach ETCS-Level 1 oder 2 mit einer ETCS-Betriebsart TR.
2000 Hz Beeinflussung am Grenzsignal wird
Fordern Sie vom Fdl einen Befehl für die Weiterdiese Textmeldung bei Wechsel in die ETCS-Befahrt an.
triebsart TR angezeigt.
Einwahl in GSM-R-Netz Bei Beginn einer Fahrt in ETCS-Level 2 kann die Überprüfen Sie die RBC-Kontaktdaten und än- nein keine
fehlgeschlagen ETCS-Zentrale keine ETCS-Fahrterlaubnis ertei- dern diese, wenn notwendig. Die „Kurzwahlruflen, weil die Einwahldaten falsch sind oder kein nummer“ (use short number) darf nicht verwen-
Netz verfügbar ist. det werden.
Wenn diese Textmeldung erneut angezeigt wird,
fordern Sie vom Fdl einen Befehl an.
Gültig ab 12.12.2021

## Seite 161

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 13
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
ETCS-Streckenausrüs- LEU einer schaltbaren Balise ist gestört und die Verständigen Sie den Fdl. nein keine
tung gestört Balise hat das Störungstelegramm gesendet.
ETCS-Streckenausrüs- Die ETCS-Fahrzeugausrüstung ist nicht kompa- Bestätigen Sie im Stillstand den Wechsel in die nein keine
tung nicht kompatibel tibel zur ETCS-Streckenausrüstung und das ETCS-Betriebsart TR.
Fahrzeug in ETCS-Level 2 erhält beim Befahren
Fordern Sie vom Fdl einen Befehl für die Weiterder ersten Balise der nicht kompatiblen Strecke
fahrt an.
eine Zwangsbremsung mit einem Wechsel in die
ETCS-Betriebsart TR.
ETCS-Streckendaten Fahrzeug erhält eine Zwangsbremsung mit Bestätigen Sie im Stillstand den Wechsel in die nein keine
fehlen Wechsel in die ETCS-Betriebsart TR, weil die ETCS-Betriebsart TR.
ETCS-Fahrterlaubnis unvollständig ist, da Teile
Fordern Sie vom Fdl einen Befehl für die Weiterder Streckendaten nicht übertragen worden sind.
fahrt an.
ETCS-Zentrale lehnt Bei einer Kontaktaufnahme mit einer nicht zu- Überprüfen Sie die RBC-Kontaktdaten und än- nein keine
den Zug ab ständigen ETCS-Zentrale, wird das Fahrzeug dern diese. Die „Kurzwahlrufnummer“ (use short
zurückgewiesen. number) darf nicht verwendet werden.
ETCS-Zugdaten geän- ETCS-Zugdaten wurden automatisch geändert. Nehmen Sie die neuen Zugdaten zur Kenntnis. nein keine
dert
Ggf. fordert das ETCS-FzG Sie auf, diese zu
prüfen und zu bestätigen.
Fehlende ETCS-Fahrt- Beim Levelwechsel von ETCS-Level NTC Bestätigen Sie im Stillstand den Wechsel in die nein keine
erlaubnis beim Level- PZB/LZB nach ETCS-Level 1 oder 2 wird diese ETCS-Betriebsart TR.
wechsel Textmeldung bei Wechsel in die ETCS-Betriebs-
Fordern Sie vom Fdl einen Befehl für die Weiterart TR angezeigt, wenn die durch die Balise
fahrt an.
übertragene Zustimmung zur Fahrt (ETCS-Level 1) oder die ETCS-Fahrterlaubnis von der
ETCS-Zentrale (ETCS-Level 2) nicht zeitgerecht
übertragen worden ist.
Gültig ab 12.12.2021

## Seite 162

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 14
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
Halt in SR Beim Befahren einer Balise am Signal Ne 14 Bestätigen Sie im Stillstand den Wechsel in die nein keine
ohne aktiven Override wechselt das ETCS-FzG ETCS-Betriebsart TR.
in die ETCS-Betriebsart TR.
Fordern Sie vom Fdl einen Befehl für die Weiterfahrt an.
PZB gestört In folgenden Situationen kann die Anzeige der Zu 1: ja keine
Textmeldung erfolgen: Keine betriebliche Maßnahme notwendig.
1. Das nicht überwachende PZB-FzG ist ge- Zu 2:
stört. Verständigen Sie den Fdl und fordern einen Befehl für den manuellen Levelwechsel an.
2. Beim Levelwechsel nach ETCS-Level NTC
PZB kann die PZB nicht aktiviert werden und
das ETCS-FzG bremst das Fahrzeug bis
zum Stillstand ab.
PZB nicht verfügbar Die PZB ist nicht verfügbar (z. B. beim ETCS- Führen Sie den ETCS-Startlauf erneut durch. nein keine
Startlauf) oder nicht mehr verfügbar (z. B. Ausfall
Verständigen Sie den Fdl, wenn die PZB weiterwährend der Fahrt).
hin nicht verfügbar ist.
PZB/LZB gestört In folgenden Situationen kann die Anzeige der Zu 1: ja keine
Textmeldung erfolgen: Keine betriebliche Maßnahme notwendig.
1. Das nicht überwachende PZB/LZB-FzG ist Zu 2:
gestört. Verständigen Sie den Fdl und fordern einen Befehl für den manuellen Levelwechsel an.
2. Beim Levelwechsel nach ETCS-Level NTC
PZB/LZB kann die PZB/LZB nicht aktiviert
werden und das ETCS-FzG bremst das
Fahrzeug bis zum Stillstand ab.
Gültig ab 12.12.2021

## Seite 163

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 15
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
PZB/LZB nicht verfüg- Die PZB/LZB ist nicht verfügbar (z. B. beim Führen Sie den ETCS-Startlauf erneut durch. nein keine
bar ETCS-Startlauf) oder nicht mehr verfügbar (z. B.
Verständigen Sie den Fdl, wenn die PZB/LZB
Ausfall während der Fahrt).
weiterhin nicht verfügbar ist.
Roll- oder Stillstands- Roll- oder Stillstandsüberwachung hat angespro- Heben Sie die Zwangsbremsung durch Bestäti- nein keine
überwachung ange- chen und eine Zwangsbremsung eingeleitet. gen der Textmeldung auf.
sprochen
Rücknahme der ETCS- Die ETCS-Zentrale nimmt die ETCS-Fahrter- Bestätigen Sie im Stillstand den Wechsel in die nein keine
Fahrterlaubnis laubnis für den Zug zurück, das Fahrzeug leitet ETCS-Betriebsart TR.
eine Zwangsbremsung ein und wechselt in die
Fordern Sie vom Fdl einen Befehl für die Weiter-
ETCS-Betriebsart TR.
fahrt an.
Strom-/Spannungssys- Strom-/Spannungssystem ist für die Strecke un- Fahrzeugabhängig nein keine
tem für Strecke unge- geeignet.
eignet
Verbindung zur ETCS- Ist die Funkverbindung für mehr als 40 s unter- Verständigen Sie den Fdl, wenn der Zug durch nein keine
Zentrale unterbrochen brochen, leitet das ETCS-FzG eine Zwangsbe- die Zwangsbetriebsbremsung zum Halten getriebsbremsung bis zum Stillstand ein. kommen ist.
Vorbeifahrt am ETCS- Bei Vorbeifahrt an einem ETCS-Halt ohne akti- Bestätigen Sie im Stillstand den Wechsel in die nein keine
Halt ven Override wechselt das ETCS-FzG in die ETCS-Betriebsart TR.
ETCS-Betriebsart TR.
Fordern Sie vom Fdl einen Befehl für die Weiterfahrt an.
Zugdateneingabe ... Zugdaten für [Name des NTC] sind ungültig und Geben Sie die Zugdaten neu ein. nein keine
[Name des NTC] erfor- müssen neu eingegeben werden.
derlich
Zugdateneingabe PZB Zugdaten für PZB sind ungültig und müssen neu Geben Sie die Zugdaten neu ein. nein keine
erforderlich eingegeben werden.
Gültig ab 12.12.2021

## Seite 164

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Übersicht der ETCS-Textmeldungen 483.0701A01
Seite 16
Textmeldung Grund/Systemreaktion Maßnahme/Handlung Quittierungs- Systemreaktion
pflichtige (bei nicht be-
Handlung stätigen)
Zugdateneingabe Zugdaten für PZB/LZB sind ungültig und müssen Geben Sie die Zugdaten neu ein. nein keine
PZB/LZB erforderlich neu eingegeben werden.

Gültig ab 12.12.2021

## Seite 165

Richtlinie
Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Abkürzungen 483.0701A99
Seite 1
* Übersicht der Abkürzungen
* Abkürzung Bedeutung
* Ack Acknowledgement
* (Bestätigung)
* Bk Blockstelle
BR Baureihe
* Brh Bremshundertstel
BSG Bremssteuergerät
* BÜ Bahnübergang
* BWG Bremswirkgruppe
* DP Datenpunkt
EOA End of Authority
* (Ende der ETCS-Fahrterlaubnis)
ETCS European Train Control System
* (Europäische Zugbeeinflussung)
EVC European Vital Computer
* (sicherer Rechenkern des ETCS-FzG)
FBOA Festbremsortungsanlage
Fdl Fahrdienstleiter
FS Full Supervision
* (ETCS-Betriebsart)
* FzG Fahrzeuggerät
GFM Gleisfreimeldung
GPS Global Positioning System
* (Globales Positionsbestimmungssystem)
GSM-R Global System for Mobile Communication – Railway
* (Mobilfunkstandard für Eisenbahnen)
Fachautor: I.NAI 4521; Philipp Pinter; Tel.: (089) 1308-5234 Gültig ab 12.12.2021

## Seite 166

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Abkürzungen 483.0701A99
Seite 2
Abkürzung Bedeutung *
HL Hauptluftleitung
HOA Heißläuferortungsanlage *
ID Identität
IS Isolation
(ETCS-Betriebsart) *
JRU Juridical Recording Unit
(Elektronische Fahrten-Registrierung) *
LEU Lineside Electronic Unit
(Elektronische Einheit zum Abgriff von Signalinformationen) *
Lfst Langsamfahrstelle, vorübergehende *
LM Ü Leuchtmelder Übertragung
LS Limited Supervision
(ETCS-Betriebsart) *
LSS Leitungsschutzschalter *
LSSMA Lowest Supervised Speed within the Movement Authority
(niedrigste überwachte Geschwindigkeit in der ETCS- *
Betriebsart LS) *
Lü Lademaßüberschreitung *
LZB Linienförmige Zugbeeinflussung
MFD Modulares Führerraumdisplay *
MTD Maschinentechnisches Display
MVB Multifunction Vehicle Bus
(Fahrzeugbussystem) *
NL Non Leading
(ETCS-Betriebsart) *
Gültig ab 12.12.2021

## Seite 167

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Abkürzungen 483.0701A99
Seite 3
* Abkürzung Bedeutung
NP No Power
* (ETCS-Betriebsart)
NTC National Train Control
* (Nationale Zugbeeinflussung)
OS On Sight
* (ETCS-Betriebsart)
PS Passive Shunting
* (ETCS-Betriebsart)
PT Post Trip
* (ETCS-Betriebsart)
PZB Punktförmige Zugbeeinflussung
RBC Radio Block Centre
* (ETCS-Zentrale)
* Ri Richtung
Ril Richtlinie
SB Stand By
* (ETCS-Betriebsart)
SF System Failure
* (ETCS-Betriebsart)
SH Shunting
* (ETCS-Betriebsart)
* Sig Signal
SL Sleeping
* (ETCS-Betriebsart)
SN STM National
* (ETCS-Betriebsart)
SR Staff Responsible
* (ETCS-Betriebsart)
Gültig ab 12.12.2021

## Seite 168

Bahnbetrieb Zugbeeinflussungsanlagen bedienen
Abkürzungen 483.0701A99
Seite 4
Abkürzung Bedeutung *
STM Specific Transmission Module
(Schnittstelle zur nationalen Zugbeeinflussung, die dieses unter *
ETCS dargestellt) *
Tf Triebfahrzeugführer
TR Trip
(ETCS-Betriebsart) *
UN Unfitted
(ETCS-Betriebsart) *
VBC Virtual Balise Cover
(virtuelle Balisenabdeckung) *
V Eingriffgeschwindigkeit
eingriff
V Istgeschwindigkeit
ist
V Sollgeschwindigkeit *
soll
V Warngeschwindigkeit
warn
V Zielgeschwindigkeit
ziel
Ww Weichenwärter *
ZE Zielentfernung
ZL Zuglänge *
VMZ Maximal zulässige Geschwindigkeit des Zuges *
ZSG Zugsteuergerät

Gültig ab 12.12.2021
