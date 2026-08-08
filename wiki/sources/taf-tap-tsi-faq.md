---
title: "TAF/TAP TSI FAQ"
source_id: "src_41228a549ad00f141eea"
source_version_id: "sv_a6f59414e6ebc1e04ca2c673"
source_sha256: "001147e3eec4df3b47c092cac0b059cf11d3ef1aa86dbcd443f452d502fe8314"
original_filename: "TAF_TAP TSI FAQ.md"
media_type: "text/markdown"
imported_at: "2026-08-08T12:35:15Z"
license: "unknown"
canonical_url: "https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/TAF-TAP-TSI-FAQ-13868920"
origin_page_url: "https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/TAF-TAP-TSI-FAQ-13868920"
---

# TAF/TAP TSI FAQ

## Inhalt

Bitte beachten Sie, dass sich Inhalte und Zeitpläne beispielsweise durch übergreifende regulatorische Anforderungen (z. B. TAF/TAP TSI oder weitere EU-Verordnungen) sowie durch technische oder fachliche Anpassungen ändern können. Die hier bereitgestellten Informationen dienen der Orientierung und haben keinen verbindlichen Charakter.

Verbindliche Regelungen und offizielle Informationen entnehmen Sie bitte den jeweils zugrunde liegenden Dokumenten, wie beispielsweise den EU-Verordnungen, dem Sektorhandbuch, der DB InfraGO-Schnittstellendokumentation oder den Informationen auf der Webseite der DB InfraGO AG.

Zur besseren Übersicht sind die Fragen thematisch gruppiert. Aufgrund des Umfangs empfehlen wir die Nutzung der Suchfunktion (Strg + F), um gezielt nach Themen zu navigieren.

## 1\. Übergreifende Themen zu den EVU-Verordnungen

Müssen auch kleinere EVU TAF/TAP umsetzen?

Die Umsetzung von TAF/TAP ist unabhängig von der Größe eines EVU. Sofern ein EIU, über dessen Netz ein EVU fahren möchte, TAF/TAP umsetzt und das in seinen Nutzungsbedingungen verankert, sind alle EVU gezwungen, TAF/TAP umzusetzen.

## 2\. Identifikatoren und Objekte

Gibt es noch so etwas wie Kundennummern und in welchem TAF/TAP-Objekt stecken diese? Hintergrund: bisher unterscheiden einige EVU Linien mit den zugehörigen Zügen nach Kundennummer

Die Kundennummern-Logik der DB InfraGO wird mit der Einführung von TAF/TAF TSI im Fahrplan 2027 nicht geändert. Diese Informationen stecken allerdings formal in keinem TAF/TAP Objekt, sondern sind ein zusätzlicher Parameter in Deutschland bei der DB InfraGO AG.

Ist die ReferenceTrainID die interne Referenznummer der EVU, die vom EIU übernommen wird? Werden Zugnummern damit obsolet?

Die ReferenceTrainID ist ein Element der EVU und wird vom EIU übernommen - das stimmt. Zugnummern wird es weiterhin geben, nur heißen diese künftig OTN, sind aber weitestgehend wie heute. Die ReferenceTrainID ist allerdings die durchgängige Identifikation und somit in keiner Weise eine reine "interne" Referenznummer.

Kann/sollte eine ReferenceTrainID mehrfach vergeben werden, wenn z.B. ein Zuglauf abgeändert wird oder gestrandet ist und ist das z.B. auch für 20h-Bestellungen verwendbar zur besseren Identifikation?

Generell kann eine ReferenceTrainID mehrmals verwendet werden, allerdings muss sie immer je Verkehrstag eindeutig sein. Wird sie wiederholt verwendet, so müssen die zugehörigen Anmeldungen „zusammengehören“ (hinsichtlich Zug, Route, Zeiten etc.) und kein Verkehrstag darf doppelt vorkommen.

Kann die ReferenceTrainID auch grenzüberschreitend genutzt werden bzw. sollte es ggf. sogar? Wie sieht es EVU-übergreifend aus an z.B. Übergabepunkten?

Ja, sie soll auch grenzüberschreitend genutzt werden. Das federführende EVU (LeadRU) legt ReferenceTrainID und RouteID fest und kommuniziert sie an die Partner-EVU, welche diese dann wiederum in den entsprechenden Anmeldesystemen angeben müssen.

## 3\. Stammdaten

Wo sind die aktuellen Infrastrukturstammdaten zu finden?

Die aktuellen Stammdaten sind unter folgendem Link auf unserer Webseite abrufbar: [Fahrplan: EVU-Schnittstelle](https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/evu_schnittstelle-11089208)

Kann bzw. muss jedes EVU einen Company Code/Organisation Code beantragen?

Ja. Bis zum 31.12.2025 ist für den TAF/TAP-Nachrichtenaustausch für jedes beteiligte Unternehmen zwingend ein Company Code erforderlich. Dieser kann ohne großen Aufwand und derzeit kostenfrei bei der UIC beantragt werden. Ab dem 1.1.2026 wird die ERA diese Aufgabe übernehmen und der Company Code durch den Organisation Code ersetzt. Alle Telematics Stakeholder, die vor dem 01.01.2026 einen Company Code besitzen, müssen bei der ERA oder noch besser über das EBA einen gleichlautenden Organisation Code beantragen. Unternehmen des deutschen Eisenbahnsektors, die bisher weder über einen Company Code noch über einen Organisation Code verfügen, beantragen bitte bis zum 01.01.2026 einen Organisation Code, entweder über die ERA oder das EBA. Über folgenden Link kann der Antrag bei der ERA gestellt werden: [Antrag ERA](https://www.era.europa.eu/domains/registers/ocr_en).

Über folgenden Link kann der Antrag beim EBA gestellt werden: [Antrag EBA](https://www.eba.bund.de/DE/Themen/Fahrzeugeinstellungsregister/OCR/ocr_node.html)

Wir empfehlen Ihnen dringend die Beantragung über das EBA, da Sie einen direkten Ansprechpartner mit Kommunikation in deutscher Sprache haben, der Sie in allen Belangen unterstützt. Besondere Aufmerksamkeit gilt für die EVUs. Sind Sie EVU und beantragen die Angleichung Ihres Organisation Codes an den Company Code, dann müssen Sie nach Anpassung des Organisation Code auch die Einträge im Nationalen und Europäischen Fahrzeugeinstellungsregister (NVR/EVR) aktualisieren.

Anschließend muss der Company Code/Organisation Code an die Eisenbahninfrastrukturunternehmen gemeldet werden. Im Falle einer Angleichung des Organisation Code an den Company Code muss keine Meldung erfolgen, da der bisher unter dem Namen Company Code hinterlegte Code gleichbleibt. Bei der DB InfraGO bitte direkt an die Kundenberatung melden. Mehr kann im aktuellen Flyer auf der Informationsplattform nachgelesen werden.

Leider gibt es weiterhin eine hohe Anzahl an EVU, die entweder keinen Company Code/Organisation Code haben oder diesen noch nicht an die DB InfraGO gemeldet haben. Da der Company Code/Organisation Code mit TAF/TAP ein verpflichtendes Element wird, ist es nicht zielführend, diesen aus (persönlichen) Gründen zu verweigern. Mit Einführung von TAF/TAP wird der Company Code/Organisation Code voraussichtlich via INB als Pflicht-Element im G-INV verankert.

Können einem Company Code mehrere der heutigen Kundennummern zugeordnet sein? So, wie ein EVU heute verschiedene Kundennummern für die Trassenanmeldung nutzen kann?

Ja - der Company Code ist ein vorgegebenes Element der TAF/TAP bzw. EU-Vorgaben. Jedes EVU (bzw. jedes Unternehmen), was an TAF/TAP beteiligt ist, benötigt zwingend (!) einen solchen Code. Die Kundennummern-Logik ist DB InfraGO-eigen. In der Regel gibt es je EVU/ZB eine Hauptkundennummer (für die es dann einen Company Code gibt) mit untergeordneten Kundennummern. Diese Kundennummern können gemeinsam den Company Code der Hauptkundennummer verwenden.

Wird der Company Code/Organisation Code bei einem Betreiberwechsel automatisch an den neuen Betreiber übertragen oder muss dieser neu beantragt/vergeben werden?

Kommt es zu einem Betreiberwechsel, gilt der Organisation Code des neuen Betreibers.

Verfügt ein neuer Betreiber weder über den alten Company Code noch über den neuen Organisation Code, muss er bei der ERA oder dem EBA einen Organisation Code beantragen. Dabei empfehlen wir Ihnen die Antragstellung über das EBA vorzunehmen, da dies folgende Vorteile hat:

- Unterstützung durch Mitarbeiter des EBA
- Antragsstellung aus einer Hand
- Geringerer administrativer Aufwand für den Antragssteller
- Schnellere Bearbeitung

Sofern ein Betreiber bisher noch keinen Code hatte, kann er einen alphanumerischen Organisation Code beziehen.

Hat ein neuer Betreiber bereits einen Company Code aber keinen Organisation Code, muss er bei der ERA oder dem EBA einen dem Company Code gleichlautenden Organisation Code beantragen.

Sollte ein neuer Betreiber über einen Company Code und einen abweichenden Organisation Code verfügen, muss er den bestehenden Organisation Code löschen lassen und einen dem Company Code gleichlautenden Organisation Code bei der ERA oder dem EBA beantragen.

Verfügt ein neuer Betreiber bereits über gleichlautende Codes (Company und Organisation Code stimmen überein), muss er nichts beantragen und es gilt der bestehende Organisation Code.

Können weiterhin die bisherigen Bezeichnungen und Ril100-Codes bzw. DS100 Codes genutzt werden?

Im Webportal von pathOS können die Laufwegspunkte auch mit Ril100-Code oder dem Klarnamen angegeben werden und werden automatisch dem PLC zugeordnet. Wer eine Schnittstellenlösung entwickelt, muss hingegen den PLC als eindeutigen Schlüssel verwenden. Die zusätzliche Angabe des Klarnamens in der Schnittstelle erleichtert die Lesbarkeit der xml-Datei, ist aber nicht unbedingt erforderlich.

## 4\. Trassenanmeldung allgemein

Wie weit (zeitlich, fachlich, prozessual) reicht der Kanalzwang?

Bei einer Trassenbestellung über das Webportal oder via Formular (Vordruck nach Ril 402.0202A01-A03) erfolgt keine Kommunikation über die PathOS Schnittstelle. Man muss sich die InfraGO-Angebote aus dem Portal manuell holen bzw. eine OIM (ObjectInfoMessage) exportieren. Wenn der Trassenbestellprozess so gestartet wurde, erfolgt prozessual bis zum Trassennutzungsvertrag keine Kommunikation über die PathOS Schnittstelle (ausgenommen KOMBau).

Würde eine Netzausgelöste Änderung nach Vertrag dann wieder über die Schnittstelle kommen?

Der Kanalzwang gilt bis zum Abschluss des jeweiligen Prozesses; bei einer über das Portal initiierten Trassenbestellung bis zum Vertragsschluss. Währenddessen erfolgt die Kommunikation ausschließlich über den Startkanal. Nach Vertragsschluss werden netzausgelöste Änderungen (NAÄ) initial parallel über CI und Portal bereitgestellt (sofern ein CI existiert). Der weitere NAÄ-Prozess richtet sich nach Ihrer ersten Reaktion: Reagieren Sie über das CI (z. B. per RCM), wird der Prozess über das CI fortgeführt; andernfalls über das Portal. Unabhängig davon erfolgt die Kommunikation zu GPE und FPE grundsätzlich ohne Kanalzwang; eine Reaktion ist jederzeit entweder über das CI oder über die KomBau möglich.

Wird Click & Ride mit Einführung von TAF/TAP weitergeführt?

Ja. Click & Ride wird künftig für TAF/TAP ertüchtigt. Am generellen Anwendungsfall für C&R ändert sich durch die TAF/TAP Einführung nichts. Für das Fahrplanjahr 2025 und 2026 bleibt Click&Ride parallel zu TPN als Eingangskanal verfügbar.

Bis wann kann TPN für GelV 2026 noch genutzt werden?

TPN bleibt bis zum Fahrplanwechsel am 13.12.2026 produktiv für GelV verfügbar.

Legt man im PlannedCalendar fest, ob es sich um Regeltrassen oder Ad-hoc Trassen handelt?

Nein. Ob es sich um einen Regel- oder Sonderzug handelt, ergibt sich aus dem Bestellzeitpunkt und den bestellten Verkehrstagen. Daher muss das EVU dies nicht gesondert angeben.

Wie stellt man den Bezug von Zug und Gegenzug her? Beispiel: ein EVU will 3x von A nach B und zurück fahren mit jeweils 15 Min. Aufenthalt, dann stehen diese Trassen in Bezug zueinander?

Man kann auf eine Vor- oder Nachleistung referenzieren. Dies geschieht über die TrainActivityCodes 0044 bzw. 0045. Sie können dabei über die OTN oder die TrainID auf den anderen Zug verweisen.

Betrifft die Umstellung von TAF/TAP TSI auch die Trassenabrechnung? Verändern sich dadurch Dateiformate (heute CSV) und Inhalte?

In den Abrechnungssystemen wird aktuell der Umgang mit den neuen Identifikatoren geprüft.

Ganz grob gesprochen soll die Abrechnung mit Attributen aus TAF/TAP TSI erweitert und eventuell vorhandene Attribute durch die jeweiligen neuen ausgetauscht werden. Das trifft zum einen unsere internen Systeme aber auch die CSV-Dateien. Grundsätzlich werden wir erstmal die Dateien weiter im CSV-Format verwenden, analog zu heute.

Perspektivisch gibt es die Idee mit der Umstellung der Abrechnung auf TAF/TAP TSI künftig die Abrechnungsdaten komfortabel in einem Webportal zur Verfügung zu stellen. Der Zeitpunkt der Umsetzung ist aber offen, das aktuelle LB-Portal bleibt also weiterhin der gewohnte Kanal.

## 5\. Common Interface / Schnittstelle

Wenn mehrere Kundennummern demselben Company Code zugewiesen sind, können diese Kunden dann dasselbe Common Interface verwenden? Gibt es eine gute Möglichkeit die Nachrichten dann im Common Interface nach Kundennummer zu routen?

Auch hier gilt, generell können mehrere Kundennummern einen Company Code verwenden (z.B. wenn diese in der DB InfraGO-Logik einer Hauptkundennummer zugeordnet sind).

Ein Common Interface ist immer auf Ebene Company Code angelegt und kann dementsprechend auch von mehreren Kundennummern verwendet werden (gilt dann auch für die entsprechenden Softwares).

DB InfraGO-seitig routen wir auf Ebene Company Code, d.h. bei uns wird EIN Empfänger je Company Code hinterlegt. Ein Routing nach Kundennummern sollte dann entsprechend auf Kundenseite (im CI bzw. nach dem CI) erfolgen.

Ist es richtig, dass ujBau-Nachrichten ausschließlich über das Fahrplan-CI eines EVU (und nicht etwa über das CI für operativen Betrieb) gesendet werden?

Die Nachrichten für den Prozess zum unterjährigen Bau erfolgen nur über das Fahrplan-CI. Im Anschluss an den Bauprozess erfolgt die Aktualisierung des Vertrages dann über pathOS, es bleibt also bei dem gleichen CI. Der Versand der Nachrichten zum unterjährigen Bau erfolgt nicht über das CI des operativen Betriebs.

Wie werden die neuen betrieblichen Nachrichten von einem EVU technisch an die DB InfraGO AG übermittelt?

Diese Meldungen werden vom Common Interface des EVU an das Common Interface (Betriebsdatenverteiler, BDV) der DB InfraGO gesendet. Dies sind die gleichen Schnittstellen, die auch bei TAF/TAP-Meldungen von DB InfraGO an die EVU genutzt werden - nur eben in umgekehrter Richtung.

## 6\. pathOS Webportal

Gibt es die Möglichkeit im Webportal Vorlagen (Muster) abzuspeichern und für eine neue Trassenanmeldung zu nutzen?

Ja, das neue Onlineportal hat selbstverständlich eine Entwurfsfunktion. Diese Entwürfe können auf verschiedene Wege erstellt werden: Über eine neue, leere Anmeldung, aus bestehenden Entwürfen, aus abgeschickten Anmeldungen, aus Verträgen oder aus dem Archiv. Prinzipiell kann aus jedem Vorgang in Sekunden eine Vorlage erstellt werden.

## 7\. Kundensupport

Zu welchen Zeiten ist die Telefonhotline +49 69 26515555 erreichbar?

Unser fachliches Support-Team von pathOS steht Montag bis Freitag zwischen 8 Uhr und 16:30 Uhr zur Verfügung. Danach erfolgt eine Weiterleitung auf ein anderes Supportteam, sodass wir Ihre Anliegen auch außerhalb dieser Zeiten aufnehmen können und bspw. auf IT-Ausfälle reagieren können.
