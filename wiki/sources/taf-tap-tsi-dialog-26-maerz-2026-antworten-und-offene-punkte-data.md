---
title: "TAF/TAP TSI Dialog 26 Maerz 2026 Antworten und offene Punkte"
source_id: "src_19a7b48948c766db65df"
source_version_id: "sv_edb2bc1e9f24d50e73b6b8c5"
source_sha256: "edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41"
original_filename: "TAF-TAP-TSI-Dialog-26-Maerz-2026-Antworten-und-offene-Punkte-data.pdf"
media_type: "application/pdf"
imported_at: "2026-08-02T10:25:48Z"
license: "unknown"
origin_page_url: "https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206"
---

# TAF/TAP TSI Dialog 26 Maerz 2026 Antworten und offene Punkte

## Seite 1

13. TAF/TAP TSI-Dialog der DB InfraGO
Follow-up: Ausgewählte Antworten aus dem Termin
26.03.2026 Versand im
Nachgang

## Seite 2

• Diese Präsentation beinhaltet die allgemeingültigen Fragen
und Antworten aus dem TTT-Dialog vom 26.03.2026 sowie
Antworten zu den wenigen nicht direkt beantworteten
Fragen.
• Diese wurden nach der Agenda des TTT-Dialogs gruppiert.
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 2

## Seite 3

Agenda des TTT-Dialog vom 26.03.
1. Begrüßung
1. Begrüßung
2. Status TTT Einführung
3. Zentraler Eingangskanal: Support
4. Update pathOS
5. TTT im Betrieb
6. Update KOMBau
7. ujBau Implementierungsdetails
8. Fragen & Antworten
9. Zum Nachlesen: Nächste Termine & Antworten im
Nachgang zum TTT-Dialog am 09. März
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 3

## Seite 4

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 4

## Seite 5

Frage Antwort DB InfraGO
Sind die PCS Bestellungen in den CI Frage bezieht sich auf Folie 5 des Foliensatzes und darin enthaltende Grafik mit der Darstellung der
Zahlen enthalten? Trassenanmeldungen über das Common Interface. Darin sind die PCS Bestellungen nicht enthalten.
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 5

## Seite 6

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 6

## Seite 7

Frage Antwort DB InfraGO
PZB90 Grundsätzlich reicht es, wenn PZB90 am ersten Zuglaufpunkt angegeben ist. Bei den aus TPN
1. Am ersten Zuglaufpunkt die PZB90 importierten Entwürfen werden aber an den folgenden Zuglaufpunkten im Hintergrund
angegeben. Muss das nochmal angeben Charakteristiken gespeichert, die PZB90 nicht enthalten. Daher ist es am sichersten, an den folgenden
werden? Zuglaufpunkten die Charakteristiken zu löschen, sodass nur die am Beginn angegebene Charakteristik
2. Kann ich nicht darauf vertrauen, (mit PZB90) über den gesamten Zuglauf wirkt.
dass die PZB90 Angabe sich
durchzieht?
Gibt es eine Möglichkeit, wie in TPN In pathOS gibt es aktuell und für die Trassenanmeldung zum Netzfahrplan 2027 keine Option, den
einen Entwurf mit umgekehrten Laufweg eines Entwurfs umzukehren oder einen Entwurf mit umgekehrtem Laufweg zu erstellen. Wir
Laufweg zu kopieren? haben das Thema aber bereits aufgenommen.
Wer kann sich Export ziehen, noch Man kann sich in der Vorgangsübersicht einen Export über alle Vorgänge ziehen. Dieser enthält die
mehr Details dazu? Kopfdaten zu den Vorgängen, jedoch keine Details wie Laufwege. Zusätzlich kann man in der
Detailansicht einen Export eines einzelnen Entwurfs erstellen. Dieser enthält zu einem Entwurf alle
angegebenen Laufwegspunkte mit Zeiten, jedoch keine Zugcharakteristiken. Diese Übersicht soll aber
noch weiterentwickelt werden.
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 7

## Seite 8

Frage Antwort DB InfraGO
Muss ich die Kundennummer an jedem Bei neu angelegten Entwürfen wird als Kundennummer des durchführenden EVU automatisch die
Haltepunkt nachtragen? Ich bin davon Kundennummer des Bestellers hinterlegt und kann manuell überschrieben werden. Bei den aus TPN
ausgegangen, dass sich die importierten Entwürfen wird die Kundennummer des durchführenden EVU aber nicht immer an alle
Kundennummer automatisch ausfüllt, Laufwegspunkte geschrieben, weswegen man hier einen Blick darauf werfen sollte.
wenn man die einmal eingibt. Das
müsste doch als Default-Wert
eingestellt sein.
Gibt es seitens DB InfraGO Derzeit gibt es keine konkreten Pläne, PCS für internationale Trassenanmeldungen im Fahrplan
Bestrebungen, Bestellungen zu 2028 verpflichtend zu machen.
internationalen Zügen für DB InfraGO-
Abschnitte ausschließlich aus PCS zu
akzeptieren?
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 8

## Seite 9

Frage Antwort DB InfraGO
Die Angaben für das RRU im Grenzabschnitt also hier Korrekt, die Angabe für das durchführende EVU (RRU) bitte nicht auf
eingeben? Fahrtlaufpunktebene hinterlegen.
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 9

## Seite 10

Frage Antwort DB InfraGO
Wird künftig dann das Feld Ja, die NSPs werden für das Fahrplanjahr 2028 nochmal
Zuggattungsprodukt noch im PCS überarbeitet, sodass hier keine Doppelarbeit mehr
eliminiert? Diese Doppelarbeit ist etwas entsteht.
müßig?
Aktuell dient die zusätzliche Angabe als Eingabehilfe für
die Zuggattung.
In PCS ist allerdings kein Ril100-Code Die PLCs können entweder in der pathOS
hinterlegt, nur PLCs, somit nicht Bestelloberfläche überprüft werden oder entsprechend
erkennbar, ob einer hinterlegt ist. aus den veröffentlichten Stammdaten gezogen werden.
Mindestens zwei PLCs mit DE sollten
dann aber genügen, oder?
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 10

## Seite 11

Frage Antwort DB InfraGO
Wie soll das Freitextfeld angegeben werden in PCS oder Wir erlauben 6 Freitextfelder. Es wird für jeden hinterlegten Kommentar ein
an anderer Stelle? Freitextfeld befüllt, welches bis zu 255 Zeichen zulässt. Bitte darauf achten, dass es
Er ist immer in dem Fall, dass es mehrere EVU gibt bei Dt. nicht mehr als 6 Kommentare sind, da wir sonst Informationen verlieren (PCS lässt
Netz und vorher andere... mehr als 6 Kommentare zu, die beim Übertrag in pathOS verloren gehen)
Sie sollen ausschließlich in PCS bestellen.
1. Baukorridore angeben in PCS (weil nicht auswählbar) 1. Notwendige Angaben zum Baukorridor, können über das Freitextfeld
2. Angabe einer EGB-Nummer „Gesamtkommentar“ angegeben werden.
3. Note auf Location Ebene 2. Formathinweis bei Angabe der EGB-Nr. Beginnend mit „EGB...“. Die zusätzliche
4. ReasonOfReference bei Laufwegsvarianten in Angabe eines PLC ist nicht notwendig
Baukorridoren 3. Gibt es in pathOS nicht. Wird nicht übertragen.
4. DE06 kann nicht angegeben werden
→ manuelle Anpassung dazu notwendig
→ beide Bestellungen kommen bei uns an
RoR wird von PCS nicht unterstützt.
Noch ein wichtiger Hinweis zur PCS Bestellung: Bitte bei allen Fahrtlaufpunkten die
in der Trassenanmeldung von DB InfraGO vorkommen den TrainActitivtyCode
0001,0002,0030 oder 0040 angeben, da es eine Pflichtangabe ist. Eine Ausprägung
muss hinterlegt sein.
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 11

## Seite 12

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 12

## Seite 13

Frage Antwort DB InfraGO
Wegen NSS: Kann der Zeitraum doch ein wenig erweitert Nein, leider kann der Zeitraum nicht verlängert werden, da sich das Datenvolumen
werden z.B. 40 Tage? dadurch um rund 30 % erhöhen und eine zusätzliche Datenlast entstehen würde.
An wen wurden die Einladungen zu NSS versendet, an die Alle uns bekannten Ansprechpartner EVU und IT-DL wurden eingeladen. Falls
EVUs oder die IT-Dienstleister? jemand die Einladung benötigt, können Sie sich bei
[E-Mail-Adresse entfernt] melden.
Und für die, die nicht an die NSS angebunden sind, bleibt Wenn Sie sich auf die betriebliche Datenversorgung beziehen, sollte es aus unserer
alles wie bisher? Sicht keine wesentlichen Änderungen geben.
Bei Problemen mit der P/TCM Datenqualität bitte direkt Aktuell laufen die Auswertungen der P/TCMs. Die ersten Auffälligkeiten wurden
auf die EVU zugehen und die konkreten Fehler benennen. bereits gemeinsam mit den EVUn besprochen und kurzfristig behoben.
Zukünftig wird der BDV bei Unregelmäßigkeiten in der P/TCM-Datenqualität die
EVUn direkt informieren, sodass identifizierte Probleme zeitnah korrigiert werden
können.
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 13

## Seite 14

Frage / Feedback Antwort DB InfraGO
Sie senden die Daten kurz vor Abfahrt und wenn dann Diese Fälle sind nicht vermeidbar. Sofern vom EVU leistbar, kann die Störung mit
noch eine Störung kommt, können Sie die Daten nicht einer neuen PTCM/TCM abgebildet werden.
zurückholen.
Gibt es aktuell Bestrebungen der DB InfraGO, in den Nein, der Meldeweg über GSM-R bleibt alternativ zur TrainReady erhalten.
nächsten Jahren den Versand von TrainReadyMessages Info: Die Telematics TSI (Nachfolge-Verordnung der TAF/TAP TSI) fordert
durch die EVU verpflichtend zu machen? europarechtlich ab voraussichtlich 2030 eine Abfahrtsprognose der EVU für ihre
Züge via TrainReady message. Ab diesem Zeitpunkt wäre insofern für diesen Inhalt
eine Verpflichtung per EU-Verordnung gegeben.
Die betriebliche PDM kommt manchmal nur für Falls es um kurzfristig angemeldete Züge in der BZ geht, so kann passieren, dass
Teillaufwege: Bug oder Feature? erst "untern rollenden Rad" konstruiert werden kann, da wir versuchen im Sinne der
Kunden auch solche kurzfristigsten Bedarfe abzubilden. Falls es um über die
Trassenanmeldung angemeldete Trassen geht bitte unter Angabe konkreter
Beispiele (Zugnummer, Betriebstag, etc.) an:
Ansprechpartner bei Störungen/Problemen mit dem BDV:
Zentrale fachliche Betriebsführung (ZFBF) erreichbar unter:
Hotline: [Telefonnummer entfernt] (Mo-Fr: 07:00 - 18:45 Uhr besetzt)
E-Mail:[E-Mail-Adresse entfernt]
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 14

## Seite 15

Frage Antwort DB InfraGO
Können wir auch mit kleiner 1h über das CI Trassen Für von der BZ eingelegte Paths kommt über den BDV eine PathDetails message, sobald
bestellen? Wie läuft das sonst mit der PTCM dazu? der Path in den Disposystemen eingelegt wurde. Dies kann zeitverzögert erfolgen, da die
Aufrechterhaltung des Verkehrsflusses natürlich Priorität über die Eingabe von Daten in
die Systeme genießt.
Die PTCM kann vom EVU auch vor Versand der PDM gesendet werden, da eingehende
Meldungen bei der DB InfraGO AG gepuffert werden.
Gibt es Aussagen der DB InfraGO AG zum zeitlichen Die InfraGO informiert hier transparent, wie das Sendeverhalten der Meldungen ist. Dies
Ablauf von Durchführen einer Disposition und ist auch so in der entsprechenden Technischen Beschreibung sowie der Präsentation zu
Versand der zugehörigen Nachrichten (Beispiel TTT im Betrieb auf unserer TTT-Homepage so beschrieben. Die InfraGO kann keine
PSNM, PDM)? Aussage dazu treffen, welche Verfahren auf Seiten des EVU man auf Basis dessen auf
Hintergrund: müssen wir einplanen das erst manuell diesen Meldungen aufsetzen kann, diese Beurteilung kann nur das jeweilige EVU selbst
zu erfassen und dann die "überflüssige" Nachricht treffen.
zu verarbeiten, oder können wir davon ausgehen,
das immer die Nachricht zuerst da ist?
Wunsch: Zusatztermin für eine Der Zusatztermin findet am 17.04.2026 von 11-12 Uhr statt.
Informationsveranstaltung zum Markttest mit TTT-
Identifiern
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 15

## Seite 16

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 16

## Seite 17

Frage / Feedback Antwort DB InfraGO
Aktuell sind keine ausreichenden Schulungsmöglichkeiten Wir stellen die Schulungsunterlagen aktuell schon zur Verfügung (auf der
gegeben. Internetseite der KOMBau haben wir 8 Videos für die 4. Konsultationsphase
veröffentlicht). Basierend darauf kann bereits geschult werden.
Beim Durchsehen des Bedienungshandbuchs wurden Die Bedienungsanleitung für die Bestandsanwendung wird bis zum 15.04.26
zahlreiche inhaltliche und formale Fehler sowie defekte aktualisiert. Der Ausblick für die 4 Konsultationsphase wir kontinuierlich erweitert.
bzw. falsche Verlinkungen festgestellt. In der aktuellen
Fassung ist das Handbuch daher nicht zuverlässig
nutzbar.
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 17

## Seite 18

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 18

## Seite 19

Frage Antwort DB InfraGO
Wie wird umgegangen wenn ein Zug mit 24St Verspätung Das Thema befindet sich derzeit in Klärung beim Fachbereich, so dass auch eine
fährt im Bezug auf TAF-Identifier und Trasse? betriebliche Durchführung nicht gefährdet ist. Ziel ist eine Klärung bis zum
Mündlich nachgeschärfte Frage: Wie erfolgt die nächsten TTT-Dialog am 22.04.
Umbuchung, wenn eine Trasse, die für gestern bestellt
wurde ausfällt (wg. Verspätung) und mit der
ReferenceTrainID von heute (einen Tag später) fährt.
Beispiel: Zug fährt täglich
Zug von 25.3. ist so verspätet, dass er in Dt. erst am 26.3.
einbricht und dort dann mit der Trasse vom 26.3. fährt
Damit fällt ein Zug weg und es gibt keinen zusätzlichen
Zug.
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 19

## Seite 20

Frage / Feedback Antwort DB InfraGO
Wie oft kommt es vor, dass ein FPE ohne GPE verschickt Eine konkrete Anzahl lässt sich leider nicht angeben, da die Fälle nicht
wird oder es keine BKE-ID gibt? prognostizierbar sind.
Werden Havarie NAÄs dann auch automatisch zum Ein FPE bzw. eine netzausgelöste Änderung bei Havarien stellt automatisch einen
Vertag? neuen Vertrag dar, auch wenn es hierzu kein GPE oder GPEnS gibt.
Würden F-Maßnahmen unter Havarie fallen? Ja, wenn folgendes eintritt:
INB 2027 –Ril 402.0305 Abschnitt 9 Abs (1):
[...] auf Grund der sich dadurch ergebenden späteren Realisierungszeiträume mit
nicht zu vertretenden Nachteilen für Lebensdauer oder Zustand der Infrastruktur
verbunden wären. [...]
DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 20
