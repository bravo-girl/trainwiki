---
title: "Schnittstellenbeschreibung BauFplo API EVU Test 2 8 0 im xsd Format"
source_id: "src_c4db283f6617a89c2018"
source_version_id: "sv_aa3457828c7cc06b65f8cfa2"
source_sha256: "bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7"
original_filename: "Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-8-0-im-xsd-Format-data.xml"
media_type: "application/xml"
imported_at: "2026-08-08T12:35:15Z"
license: "unknown"
---

# Schnittstellenbeschreibung BauFplo API EVU Test 2 8 0 im xsd Format

## Inhalt

<?xml version="1.0" encoding="utf-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"><xs:element name="PageBaufplo" type="PageBaufplo"/>
<xs:complexType name="Allgemeines">
<xs:annotation>
<xs:documentation>Beschreibt den Abschnitt Allgemeines</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" maxOccurs="unbounded" name="textbaustein" type="Textbaustein">
<xs:annotation>
<xs:documentation>Beschreibt die Textbausteine</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="AlternativeZugcharakteristik">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Alternativen Zugcharakteristik</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" name="id" type="xs:integer">
<xs:annotation>
<xs:documentation>Eindeutige Identifikation der Zugcharakteristik innerhalb der BauFplo</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" maxOccurs="unbounded" name="triebfahrzeug" type="Triebfahrzeug">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften des Triebfahrzeugs</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="gesamtzuglaenge" type="xs:double">
<xs:annotation>
<xs:documentation>Gesamtlänge des Zuges</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="last" type="xs:double">
<xs:annotation>
<xs:documentation>Masse des Wagenzuges in Tonnen</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="mindestbremshundertstel" type="xs:integer">
<xs:annotation>
<xs:documentation>Mindestbremshundertstel, die für die Durchführung der Zugfahrt benötigt werden</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="bremsstellung" type="xs:string">
<xs:annotation>
<xs:documentation>Wertemenge für Bremsstellung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="hoechstgeschwindigkeit" type="xs:integer">
<xs:annotation>
<xs:documentation>Höchstgeschwindigkeit des Zuges in km/h</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="zuggattung" type="Zuggattung">
<xs:annotation>
<xs:documentation>Produktbezeichnung der Zuggattung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="befoerderungsanordnung" type="xs:string">
<xs:annotation>
<xs:documentation>Angabe der Nummer einer gültigen Beförderungsanordnung, mit der die Durchführung bestimmter Zugfahrten mit besonderen technischen Eigenschaften vorab geprüft wurde und genehmigt wird</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="bzaNummer" type="xs:string">
<xs:annotation>
<xs:documentation>Bza ist die Abkürzung für „Betrieb Zugförderung außergewöhnlich“.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="bzaBedingung" type="xs:string">
<xs:annotation>
<xs:documentation>Hinweise zur besonderen Beachtung bei der Durchführung von Zugfahrten in Betriebsstellen oder Streckenabschnitten als Freitext, sofern die Bedingungen nicht in einer Dauer-Beförderungsanordnung hinterlegt sind.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="imGrenzlastBereich" type="xs:boolean">
<xs:annotation>
<xs:documentation>Angabe, ob die angegebenen Lasten bereits den Grenzlastbereich darstellen</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="gueterzugOhneNennenswertenGrenzaufenthalt" type="xs:boolean">
<xs:annotation>
<xs:documentation>Gibt an, dass für den Zug am Grenzübergang (in der Regel die Grenzbetriebsstelle) kein längerer Aufenthalt (z.B. wegen Zollabwicklung) erforderlich ist.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="befoerderungsbesonderheit" type="Befoerderungsbesonderheit">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Beförderungsbesonderheiten</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="beladung" type="Beladung">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Beladung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="zugverband" type="Zugverband">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften des Zugverbands</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="istRichtungswechselZugelassen" type="xs:boolean">
<xs:annotation>
<xs:documentation>Angabe, ob nicht bestellte, aber konstruktionsbedingte Richtungswechsel zugelassen sind</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="keinRichtungswechselZugelassenGrund" type="xs:string">
<xs:annotation>
<xs:documentation>Wenn Attribut „istRichtungswechselZugelassen“ = false, dann kann hier ein Grund für den nicht erlaubten Richtungswechsel angegeben werden</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="besonderheit" type="xs:string">
<xs:annotation>
<xs:documentation>Besonderheiten oder Hinweise aus der Fahrplankonstruktion für das Eisenbahnverkehrsunternehmen (EVU) bzw. den Triebfahrzeugführer (Tf) zur weiteren Beachtung.</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="BasisZugcharakteristik">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Zugcharakteristik</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" name="id" type="xs:integer">
<xs:annotation>
<xs:documentation>Eindeutige Identifikation der Zugcharakteristik innerhalb der BauFplo</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="alternativeZugcharakteristik" type="AlternativeZugcharakteristik">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Alternativen Zugcharakteristik</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" maxOccurs="unbounded" name="triebfahrzeug" type="Triebfahrzeug">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften des Triebfahrzeugs</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="gesamtzuglaenge" type="xs:double">
<xs:annotation>
<xs:documentation>Gesamtlänge des Zuges</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="last" type="xs:double">
<xs:annotation>
<xs:documentation>Masse des Wagenzuges in Tonnen</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="mindestbremshundertstel" type="xs:integer">
<xs:annotation>
<xs:documentation>Mindestbremshundertstel, die für die Durchführung der Zugfahrt benötigt werden</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="bremsstellung" type="xs:string">
<xs:annotation>
<xs:documentation>Wertemenge für Bremsstellung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="hoechstgeschwindigkeit" type="xs:integer">
<xs:annotation>
<xs:documentation>Höchstgeschwindigkeit des Zuges in km/h</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="zuggattung" type="Zuggattung">
<xs:annotation>
<xs:documentation>Produktbezeichnung der Zuggattung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="befoerderungsanordnung" type="xs:string">
<xs:annotation>
<xs:documentation>Angabe der Nummer einer gültigen Beförderungsanordnung, mit der die Durchführung bestimmter Zugfahrten mit besonderen technischen Eigenschaften vorab geprüft wurde und genehmigt wird</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="bzaNummer" type="xs:string">
<xs:annotation>
<xs:documentation>Bza ist die Abkürzung für „Betrieb Zugförderung außergewöhnlich“.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="imGrenzlastBereich" type="xs:boolean">
<xs:annotation>
<xs:documentation>Angabe, ob die angegebenen Lasten bereits den Grenzlastbereich darstellen</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="gueterzugOhneNennenswertenGrenzaufenthalt" type="xs:boolean">
<xs:annotation>
<xs:documentation>Gibt an, dass für den Zug am Grenzübergang (in der Regel die Grenzbetriebsstelle) kein längerer Aufenthalt (z.B. wegen Zollabwicklung) erforderlich ist.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="befoerderungsbesonderheit" type="Befoerderungsbesonderheit">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Beförderungsbesonderheiten</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="beladung" type="Beladung">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Beladung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="zugverband" type="Zugverband">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften des Zugverbands</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="istRichtungswechselZugelassen" type="xs:boolean">
<xs:annotation>
<xs:documentation>Angabe, ob nicht bestellte, aber konstruktionsbedingte Richtungswechsel zugelassen sind</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="keinRichtungswechselZugelassenGrund" type="xs:string">
<xs:annotation>
<xs:documentation>Wenn Attribut „istRichtungswechselZugelassen“ = false, dann kann hier ein Grund für den nicht erlaubten Richtungswechsel angegeben werden</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="bzaBedingung" type="xs:string">
<xs:annotation>
<xs:documentation>Hinweise zur besonderen Beachtung bei der Durchführung von Zugfahrten in Betriebsstellen oder Streckenabschnitten als Freitext, sofern die Bedingungen nicht in einer Dauer-Beförderungsanordnung hinterlegt sind.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="besonderheit" type="xs:string">
<xs:annotation>
<xs:documentation>Besonderheiten oder Hinweise aus der Fahrplankonstruktion für das Eisenbahnverkehrsunternehmen (EVU) bzw. den Triebfahrzeugführer (Tf) zur weiteren Beachtung.</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Baufplo">
<xs:sequence>
<xs:element minOccurs="0" name="disclaimer" type="xs:string">
<xs:annotation>
<xs:documentation>Wenn das Feld gefüllt ist, handelt es sich um Testdaten</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="zugnummer" type="xs:string">
<xs:annotation>
<xs:documentation>Fachlicher Schlüssel des Zuges</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="verkehrstag" type="xs:date">
<xs:annotation>
<xs:documentation>Verkehrstag des Zuges</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="abfahrtstag" type="xs:date">
<xs:annotation>
<xs:documentation>Abfahrtstag des Zuges</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="ankunftstag" type="xs:date">
<xs:annotation>
<xs:documentation>Ankunftstag des Zuges</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="fploVersion" type="xs:integer">
<xs:annotation>
<xs:documentation>Version der Baufplo</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="vorgaenger" type="Vorgaenger">
<xs:annotation>
<xs:documentation>Zuvor veröffentlichte Baufplo</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="veroeffentlichungsart" type="Veroeffentlichungsart">
<xs:annotation>
<xs:documentation>Definiert, ob es sich um eine Erstveröffentlichung, einen Nachtrag oder eine Rücknahme handelt</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="veroeffentlichung" type="xs:date">
<xs:annotation>
<xs:documentation>Tag der Veröffentlichung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" maxOccurs="unbounded" name="regionenabfolge" type="xs:string">
<xs:annotation>
<xs:documentation>Abfolge der Regionen, die der Zug verkehrt</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" maxOccurs="7" name="freigabe" type="Freigabe">
<xs:annotation>
<xs:documentation>Region und Kontaktdaten der Freigebenden der BauFplo</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="rahmendaten" type="Rahmendaten"/>
<xs:element minOccurs="0" maxOccurs="unbounded" name="baumassnahme" type="Baumassnahme">
<xs:annotation>
<xs:documentation>Beschreibt den Abschnitt der Bauvorgänge _**Hinweis:** Das Attribut \"baumassnahmen\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="allgemeines" type="Allgemeines"/>
<xs:element minOccurs="1" name="fahrplan" type="Fahrplan"/>
<xs:element minOccurs="0" maxOccurs="unbounded" name="ergaenzung" type="xs:string"/>
<xs:element minOccurs="0" name="konzeptSchaetzung" type="xs:boolean">
<xs:annotation>
<xs:documentation>Angabe für Konzeptschätzung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="qualifizierteSchaetzung" type="xs:boolean">
<xs:annotation>
<xs:documentation>Angabe für qualifizierte Schätzung</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Baumassnahme">
<xs:annotation>
<xs:documentation>Beschreibt den Abschnitt der Bauvorgänge _**Hinweis:** Das Attribut \"Baumassnahme\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="1" name="nummer" type="xs:string">
<xs:annotation>
<xs:documentation>Vorgangs-Nr des betrachteten Bauvorgangs _**Hinweis:** Das Attribut \"nummer\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="zeitraum" type="Zeitraum">
<xs:annotation>
<xs:documentation>Beschreibt den Zeitraum des Bauvorgangs _**Hinweis:** Das Attribut \"zeitraum\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="artDerArbeit" type="xs:string">
<xs:annotation>
<xs:documentation>Beschreibung der Arbeiten, die in diesem Bauvorgang durchgeführt werden _**Hinweis:** Das Attribut \"artDerArbeiten\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Befoerderungsbesonderheit">
<xs:annotation>
<xs:documentation>Beschreibt die Beförderungsbesonderheiten</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" name="schluessel" type="xs:string">
<xs:annotation>
<xs:documentation>Schluessel der Beförderungsbesonderheit</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="text" type="xs:string">
<xs:annotation>
<xs:documentation>Wert der Beförderungsbesonderheit</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Beladung">
<xs:sequence>
<xs:element minOccurs="0" name="lueLeitziffer" type="xs:string">
<xs:annotation>
<xs:documentation>Für die Durchführung von Lü-Sendungen mit einheitlichen Umrissen werden Dauerl-Lü-Anordnungen-E (DLA-E) genutzt.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="ladegut" type="xs:string">
<xs:annotation>
<xs:documentation>Angaben zum Ladegut im Zug</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="gefahrgut" type="Gefahrgut">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften des Gefahrguts</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Betriebsname">
<xs:sequence>
<xs:element minOccurs="0" name="bezeichnung" type="xs:string">
<xs:annotation>
<xs:documentation>Betrieblicher Name zu einem Gleis oder einer Strecke</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="position" type="xs:string">
<xs:annotation>
<xs:documentation>Kennzeichnet die Position des angegebenen Betriebsnamen. gueltigAb: der Startpunkt zum Betriebsnamen liegt an selber Kilometrierung wie die Betriebsstelle. gueltigNach: der Startpunkt zum Betriebsnamen liegt in Fahrtrichtung hinter der Betriebsstelle.</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Betriebsstelle">
<xs:annotation>
<xs:documentation>Betriebsstelle eines Zuglaufs</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="1" name="ril100" type="xs:string">
<xs:annotation>
<xs:documentation>RIL 100-Code der Betriebsstelle (ds100-Code)</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="name" type="xs:string">
<xs:annotation>
<xs:documentation>Kurzname der Betriebsstelle</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Buchfahrplanverweis">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Verweise</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" name="ebula" type="xs:boolean">
<xs:annotation>
<xs:documentation>Information darüber, ob nach EBuLa gefahren werden kann</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="zugcharakteristikId" type="xs:integer">
<xs:annotation>
<xs:documentation>Referenz auf Zugcharakteristik</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="heftnummer" type="xs:string">
<xs:annotation>
<xs:documentation>Heftnummer des zugehörigen Ersatzfahrplanheftverweises</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="seite" type="xs:integer">
<xs:annotation>
<xs:documentation>Seite des zugehörigen Ersatzfahrplanheftverweises</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="geschwindigkeitsbezeichnung" type="xs:string">
<xs:annotation>
<xs:documentation>Geschwindigkeitsbezeichnung des zugehörigen Verweises</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="mbr" type="xs:integer">
<xs:annotation>
<xs:documentation>Mindesbremshundertstel des zugehörigen Verweises</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="betriebsname" type="xs:string"/>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Ebulaverweis">
<xs:sequence>
<xs:element minOccurs="0" name="ebula" type="xs:boolean">
<xs:annotation>
<xs:documentation>Information darüber, ob nach EBuLa gefahren werden kann</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="zugcharakteristikId" type="xs:integer">
<xs:annotation>
<xs:documentation>Referenz auf Zugcharakteristik</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Fahrplan">
<xs:annotation>
<xs:documentation>Beschreibt den Abschnitt Fahrplan</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" name="zugcharakteristik" type="BasisZugcharakteristik"/>
<xs:element minOccurs="0" maxOccurs="unbounded" name="laufwegaenderung" type="Laufwegaenderung">
<xs:annotation>
<xs:documentation>Beschreibt den Abschnitt Laufwegänderungen</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="laufwegregelungsart" type="FahrplanLaufwegregelungsartenInner">
<xs:annotation>
<xs:documentation>Beschreibt den Abschnitt Laufwegregelungsart</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="besonderheit" type="xs:string">
<xs:annotation>
<xs:documentation>Besonderheiten oder Hinweise aus der Fahrplankonstruktion für das Eisenbahnverkehrsunternehmen (EVU) bzw. den Triebfahrzeugführer (Tf) zur weiteren Beachtung.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="2" maxOccurs="unbounded" name="laufweg" type="Laufwegpunkt">
<xs:annotation>
<xs:documentation>Beschreibt den Abschnitt Laufweg</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="keineangabe" type="KeineAngabe">
<xs:annotation>
<xs:documentation>Enthält Informationen zu Teilen des Laufwegs, bei denen keine Fahrplanangaben erfolgen</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="FahrplanLaufwegregelungsartenInner">
<xs:sequence>
<xs:element minOccurs="0" name="betriebsstelleStart" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Betriebsstelle, ab der die Regelung gilt</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="betriebsstelleEnde" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Betriebsstelle, bis zu der die Regelung gilt. Bei Entfall gilt die Regelung aus dem Feld \"betriebsstelleStart\" bis zum Laufwegsende</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="regelungsart" type="xs:string">
<xs:annotation>
<xs:documentation>Die geltende Regelungsart</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="betriebsstelleStartId" type="xs:integer">
<xs:annotation>
<xs:documentation>Start der Regelungsart</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="betriebsstelleEndeId" type="xs:integer">
<xs:annotation>
<xs:documentation>Ende der Regelungsart</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="entfalleneBetriebsstelle" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Es werden die Betriebsstellen aufgelistet, die durch eine Umleitung betroffen sind und somit ausfallen</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Freigabe">
<xs:annotation>
<xs:documentation>Region und Kontaktdaten der Freigebenden der BauFplo</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="1" name="region" type="Region">
<xs:annotation>
<xs:documentation>Region des Freigebenden der Baufplo</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="unterzeichner" type="Unterzeichner">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften des Freigebenden der Baufplo</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Gefahrgut">
<xs:sequence>
<xs:element minOccurs="0" name="ridKlasse" type="xs:string">
<xs:annotation>
<xs:documentation>RID-Klasse des Gefahrenguts</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="ggveNummer" type="xs:string">
<xs:annotation>
<xs:documentation>Gefahrengut-Nummer</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="ggveUnternummer" type="xs:string">
<xs:annotation>
<xs:documentation>Gefahrengut-Unternummer</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="verpackungsgruppe" type="xs:string">
<xs:annotation>
<xs:documentation>Gefahrengut-Verpackungsgruppe</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Hinweis">
<xs:sequence>
<xs:element minOccurs="0" name="betreff" type="xs:string">
<xs:annotation>
<xs:documentation>Schlüssel des Hinweises oder der Regelung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="text" type="xs:string">
<xs:annotation>
<xs:documentation>Inhalt des Hinweises oder der Regelung</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="KeineAngabe">
<xs:annotation>
<xs:documentation>Enthält Informationen zu Teilen des Laufwegs, bei denen keine Fahrplanangaben erfolgen</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="1" name="betriebsstelleStart" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Betriebsstelle, ab der die Information zur Laufwegsunterbrechung gilt</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="betriebsstelleEnde" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Betriebsstelle, bis zu der die Information zur Laufwegsunterbrechung gilt</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="einreihungNetzVon" type="xs:integer">
<xs:annotation>
<xs:documentation>Laufende Nummer (Einreihung) des Startpunkts im Laufweg</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="einreihungNetzBis" type="xs:integer">
<xs:annotation>
<xs:documentation>Laufende Nummer (Einreihung) des Endpunkts im Laufweg</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="art" type="xs:string">
<xs:annotation>
<xs:documentation>Art der Laufwegsunterbrechung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="beschreibung" type="xs:string">
<xs:annotation>
<xs:documentation>Beschreibung der Laufwegsunterbrechung</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Kunde">
<xs:sequence>
<xs:element minOccurs="1" name="nummer" type="xs:string">
<xs:annotation>
<xs:documentation>Kundennummer des bestellenden EVU</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="name" type="xs:string">
<xs:annotation>
<xs:documentation>Name des bestellenden EVU</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Laufwegaenderung">
<xs:annotation>
<xs:documentation>Beschreibt den Abschnitt Laufwegänderungen</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="1" name="betriebsstelle" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Erste Bestriebsstelle, ab der die Charakteristik gilt</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="zugcharakteristik" type="BasisZugcharakteristik">
<xs:annotation>
<xs:documentation>Zugcharakteristik, die ab der zugehörigen Bestriebsstelle gilt</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Laufwegpunkt">
<xs:annotation>
<xs:documentation>Detailinformation zum Laufweg</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" name="id" type="xs:integer">
<xs:annotation>
<xs:documentation>Laufende Nummer startend bei 1</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="betriebsstelle" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Beschreibt die Betriebsstelle</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="ausfallKennzeichen" type="xs:boolean">
<xs:annotation>
<xs:documentation>Kennzeichnet, ob dieser Trassenlaufpunkt ausfällt</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="istUmleitung" type="xs:boolean">
<xs:annotation>
<xs:documentation>Kennzeichnet, ob dieser Trassenlaufpunkt Teil einer Umleitung ist</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="ankunftzeit" type="xs:dateTime">
<xs:annotation>
<xs:documentation>Ankunftszeit bei dieser Betriebsstelle. Im Falle einer Durchfahrt oder bei der Startbetriebsstelle entfällt dieses Attribut. _**Hinweis:** Das Attribut \"ankunftzeit\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"ankunftuhrzeit\"._</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="ankunftuhrzeit" type="xs:string">
<xs:annotation>
<xs:documentation>Ankunftszeit des Fahrplans (ohne Zeitumstellung) bei dieser Betriebsstelle. Im Falle einer Durchfahrt oder bei der Startbetriebsstelle entfällt dieses Attribut. _**Hinweis:** Das Attribut \"abfahrtzeit\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"abfahrtuhrzeit\"._</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="ankunftDifferenz" type="xs:string">
<xs:annotation>
<xs:documentation>Gibt an, welche zeitliche Differenz zum ursprünglichen Fahrplan besteht</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="abfahrtzeit" type="xs:dateTime">
<xs:annotation>
<xs:documentation>Abfahrtszeit bei dieser Betriebsstelle. Im Falle der Zielbetriebsstelle entfällt dieses Attribut</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="abfahrtuhrzeit" type="xs:string">
<xs:annotation>
<xs:documentation>Abfahrtszeit des Fahrplans (ohne Zeitumstellung) bei dieser Betriebsstelle. Im Falle der Zielbetriebsstelle entfällt dieses Attribut</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="abfahrtDifferenz" type="xs:string">
<xs:annotation>
<xs:documentation>Gibt an, welche zeitliche Differenz zum ursprünglichen Fahrplan besteht</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="strecke" type="xs:integer">
<xs:annotation>
<xs:documentation>Angabe der Streckennummer der bis zum nächsten Zugtrassenlaufpunkt konstruierten Strecke</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="haltart" type="xs:string">
<xs:annotation>
<xs:documentation>Art des Haltes H für Verkehrshalt , +TM für Betriebshalt, X für Bedarfshalt</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="hatRichtungswechsel" type="xs:boolean">
<xs:annotation>
<xs:documentation>Information darüber, ob an dieser Betriebsstelle ein Richtungswechsel vorliegt</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="verweis" type="LaufwegpunktVerweiseInner">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Verweise</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="hinweis" type="Hinweis">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Hinweise</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="regelung" type="Hinweis">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Regelungen</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="betriebsname" type="Betriebsname">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Betriebsnamen</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="LaufwegpunktVerweiseInner">
<xs:sequence>
<xs:element minOccurs="0" name="ebula" type="xs:boolean">
<xs:annotation>
<xs:documentation>Information darüber, ob nach EBuLa gefahren werden kann</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="zugcharakteristikId" type="xs:integer">
<xs:annotation>
<xs:documentation>Referenz auf Zugcharakteristik</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="heftnummer" type="xs:string">
<xs:annotation>
<xs:documentation>Heftnummer des zugehörigen Ersatzfahrplanheftverweises</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="seite" type="xs:integer">
<xs:annotation>
<xs:documentation>Seite des zugehörigen Ersatzfahrplanheftverweises</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="geschwindigkeitsbezeichnung" type="xs:string">
<xs:annotation>
<xs:documentation>Geschwindigkeitsbezeichnung des zugehörigen Verweises</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="mbr" type="xs:integer">
<xs:annotation>
<xs:documentation>Mindesbremshundertstel des zugehörigen Verweises</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="betriebsname" type="xs:string"/>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Laufwegregelungsart">
<xs:annotation>
<xs:documentation>Beschreibt den Abschnitt Laufwegregelungsart</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" name="betriebsstelleStart" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Betriebsstelle, ab der die Regelung gilt</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="betriebsstelleEnde" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Betriebsstelle, bis zu der die Regelung gilt. Bei Entfall gilt die Regelung aus dem Feld \"betriebsstelleStart\" bis zum Laufwegsende</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="regelungsart" type="xs:string">
<xs:annotation>
<xs:documentation>Die geltende Regelungsart</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="PageBaufplo">
<xs:sequence>
<xs:element minOccurs="0" name="totalElements" type="xs:long"/>
<xs:element minOccurs="0" name="numberOfElements" type="xs:integer"/>
<xs:element minOccurs="0" name="pageable" type="PageableObject"/>
<xs:element minOccurs="0" name="sort" type="SortObject"/>
<xs:element minOccurs="0" name="totalPages" type="xs:integer"/>
<xs:element minOccurs="0" name="size" type="xs:integer"/>
<xs:element minOccurs="0" name="number" type="xs:integer"/>
<xs:element minOccurs="0" name="first" type="xs:boolean"/>
<xs:element minOccurs="0" name="last" type="xs:boolean"/>
<xs:element minOccurs="0" name="empty" type="xs:boolean"/>
<xs:element minOccurs="0" maxOccurs="unbounded" name="content" type="Baufplo"/>
</xs:sequence>
</xs:complexType>
<xs:complexType name="PageableObject">
<xs:sequence>
<xs:element minOccurs="0" name="paged" type="xs:boolean"/>
<xs:element minOccurs="0" name="pageNumber" type="xs:integer"/>
<xs:element minOccurs="0" name="pageSize" type="xs:integer"/>
<xs:element minOccurs="0" name="sort" type="SortObject"/>
<xs:element minOccurs="0" name="unpaged" type="xs:boolean"/>
<xs:element minOccurs="0" name="offset" type="xs:long"/>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Rahmendaten">
<xs:annotation>
<xs:documentation>Der Abschnitt Rahmendaten gibt einen umfassenden Überblick über zentrale Informationen der BauFplo. In den Rahmendaten sind aggregierte Werte der BauFplo zusammengefasst.</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="1" name="kunde" type="Kunde">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften des bestellenden EVU</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="zug" type="Zug">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften des Zuges</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="startBetriebsstelleRoute" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Erste Betriebsstelle der Gesamtzugroute (weicht von startBetriebsstelle ab, wenn der Zug im Fremdnetz beginnt)</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="zielBetriebsstelleRoute" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Letzte Betriebsstelle der Gesamtzugroute (weicht von zielBetriebsstelle ab, wenn der Zug im Fremdnetz endet)</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="startBetriebsstelle" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Erste Betriebsstelle des Zuglaufs</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="zielBetriebsstelle" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Letzte Betriebsstelle des Zuglaufs</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="bpolMeldepflichtig" type="xs:boolean">
<xs:annotation>
<xs:documentation>Gibt an, ob die Zugtrasse an die Bundespolizei gemeldet werden muss</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="zugcharakteristik" type="RahmendatenZugcharakteristik">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Zugcharakteristik</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="regelungen" type="RahmendatenRegelungen"/>
</xs:sequence>
</xs:complexType>
<xs:complexType name="RahmendatenBefoerderungsbesonderheiten">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Befoerderungsbesonderheiten</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" maxOccurs="unbounded" name="radMeterlastbeschraenkung" type="xs:string">
<xs:annotation>
<xs:documentation>Beschreibt die Beförderungsbesonderheit Rad- Meterlastbeschränkung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="niederflurwagen" type="xs:string">
<xs:annotation>
<xs:documentation>Beschreibt die Beförderungsbesonderheit Niederflurwagen </xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="schwerlastwagen" type="xs:boolean">
<xs:annotation>
<xs:documentation>Beschreibt die Beförderungsbesonderheit Schwerlastwagen</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="automatischeKupplung" type="xs:boolean">
<xs:annotation>
<xs:documentation>Beschreibt die Beförderungsbesonderheit Automatische Kupplung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="frontstellung" type="xs:boolean">
<xs:annotation>
<xs:documentation>Beschreibt die Beförderungsbesonderheit Frontstellung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="laermzug" type="xs:string">
<xs:annotation>
<xs:documentation>Hinweis auf mindestestens einen eingestellten lauten Güterwagen in einen Güterzug.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="unNummer" type="xs:string">
<xs:annotation>
<xs:documentation>Vierstellige Nummer des Gefahrenguts</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="freierText" type="xs:string">
<xs:annotation>
<xs:documentation>Beschreibt die Beförderungsbesonderheit Freitextfeld</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="etcsTbv" type="xs:string">
<xs:annotation>
<xs:documentation>Beschreibt die Beförderungsbesonderheit ETCS TBV Nummer</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="RahmendatenBeladung">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Beladung</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" maxOccurs="unbounded" name="lueLeitziffer" type="xs:string">
<xs:annotation>
<xs:documentation>Für die Durchführung von Lü-Sendungen mit einheitlichen Umrissen werden Dauerl-Lü-Anordnungen-E (DLA-E) genutzt.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="ladegut" type="xs:string">
<xs:annotation>
<xs:documentation>Angaben zum Ladegut im Zug</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="gefahrgut" type="RahmendatenGefahrgut"/>
</xs:sequence>
</xs:complexType>
<xs:complexType name="RahmendatenGefahrgut">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften des Gefahrguts</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" maxOccurs="unbounded" name="ridKlasse" type="xs:string">
<xs:annotation>
<xs:documentation>RID-Klasse des Gefahrenguts</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="ggveNummer" type="xs:string">
<xs:annotation>
<xs:documentation>Gefahrengut-Nummer</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="ggveUnternummer" type="xs:string">
<xs:annotation>
<xs:documentation>Gefahrengut-Unternummer</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="verpackungsgruppe" type="xs:string">
<xs:annotation>
<xs:documentation>Gefahrengut-Verpackungsgruppe</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="RahmendatenRegelungen">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Regelungen</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" maxOccurs="unbounded" name="zugbegleitung" type="xs:string">
<xs:annotation>
<xs:documentation>Angabe für Zugbegleitung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="notbremsueberbrueckung" type="xs:boolean">
<xs:annotation>
<xs:documentation>Angabe, ob eine NBÜ erforderlich ist</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="RahmendatenZugcharakteristik">
<xs:sequence>
<xs:element minOccurs="0" maxOccurs="unbounded" name="befoerderungsanordnung" type="xs:string">
<xs:annotation>
<xs:documentation>Angabe der Nummer einer gültigen Beförderungsanordnung, mit der die Durchführung bestimmter Zugfahrten mit besonderen technischen Eigenschaften vorab geprüft wurde und genehmigt wird</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="bzaNummer" type="xs:string">
<xs:annotation>
<xs:documentation>Bza ist die Abkürzung für „Betrieb Zugförderung außergewöhnlich“.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="bzaBedingung" type="xs:string">
<xs:annotation>
<xs:documentation>Hinweise zur besonderen Beachtung bei der Durchführung von Zugfahrten in Betriebsstellen oder Streckenabschnitten als Freitext, sofern die Bedingungen nicht in einer Dauer-Beförderungsanordnung hinterlegt sind.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="imGrenzlastBereich" type="xs:boolean">
<xs:annotation>
<xs:documentation>Angabe, ob die angegebenen Lasten bereits den Grenzlastbereich darstellen</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="gueterzugOhneNennenswertenGrenzaufenthalt" type="xs:boolean">
<xs:annotation>
<xs:documentation>Gibt an, dass für den Zug am Grenzübergang (in der Regel die Grenzbetriebsstelle) kein längerer Aufenthalt (z.B. wegen Zollabwicklung) erforderlich ist.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="istRichtungswechselZugelassen" type="xs:boolean">
<xs:annotation>
<xs:documentation>Angabe, ob nicht bestellte, aber konstruktionsbedingte Richtungswechsel zugelassen sind</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="keinRichtungswechselZugelassenGrund" type="xs:string">
<xs:annotation>
<xs:documentation>Wenn Attribut „istRichtungswechselZugelassen“ = false, dann kann hier ein Grund für den nicht erlaubten Richtungswechsel angegeben werden</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="leichterNahverkehrstriebwagen" type="xs:boolean">
<xs:annotation>
<xs:documentation>Angabe, ob es sich um einen leichten Nahverkehrstriebwagen handelt.</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="befoerderungsbesonderheiten" type="RahmendatenBefoerderungsbesonderheiten">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Befoerderungsbesonderheiten</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="beladung" type="RahmendatenBeladung"/>
<xs:element minOccurs="1" name="zugverband" type="RahmendatenZugverband"/>
</xs:sequence>
</xs:complexType>
<xs:complexType name="RahmendatenZugverband">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften des Zugverbands</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" name="streckenklasseGefordert" type="xs:string">
<xs:annotation>
<xs:documentation>Angabe geforderter Streckenklassen</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="hatTrailer" type="xs:boolean">
<xs:annotation>
<xs:documentation>Angabe, ob ein Wagenzug einen Trailer hat</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="kvProfil" type="xs:string">
<xs:annotation>
<xs:documentation>Liste der KV-Profile</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="cirAusruestung" type="xs:string">
<xs:annotation>
<xs:documentation>Beschreibt die Ausrüstung mit CIR (CIR-ELKE (Abk. Computer Integrated Railroading – Erhöhung der Leistungsfähigkeit im Kernnetz))</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="hatNotbremsueberbrueckung" type="xs:boolean">
<xs:annotation>
<xs:documentation>Beschreibt, ob Notbremsüberbrückung vorhanden ist.&lt;br/&gt; &lt;b&gt;Hinweis:&lt;/b&gt; Das Attribut \"hatNotbremsueberbrueckung\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"notbremsueberbrueckung\"</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="SortObject">
<xs:sequence>
<xs:element minOccurs="0" name="sorted" type="xs:boolean"/>
<xs:element minOccurs="0" name="unsorted" type="xs:boolean"/>
<xs:element minOccurs="0" name="empty" type="xs:boolean"/>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Textbaustein">
<xs:annotation>
<xs:documentation>Beschreibt die Textbausteine</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" name="key" type="xs:string">
<xs:annotation>
<xs:documentation>Identifikation des Textbausteins</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="value" type="xs:string">
<xs:annotation>
<xs:documentation>Beschreibung der Textbausteine</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Triebfahrzeug">
<xs:sequence>
<xs:element minOccurs="1" name="tfzBrNummer" type="xs:string">
<xs:annotation>
<xs:documentation>Bezeichnung der Baureihe</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="tfzStellungsart" type="xs:string">
<xs:annotation>
<xs:documentation>Wertemenge für die Stellung des Triebfahrzeugs</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="tfzStellungsartkey" type="xs:string">
<xs:annotation>
<xs:documentation>Schlüssel der Stellungsart des Triebfahrzeugs</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Umleitungregelungsart">
<xs:annotation>
<xs:documentation>Beschreibt den Abschnitt Umleitung</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" name="betriebsstelleStart" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Betriebsstelle, ab der die Regelung gilt</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="betriebsstelleEnde" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Betriebsstelle, bis zu der die Regelung gilt. Bei Entfall gilt die Regelung aus dem Feld \"betriebsstelleStart\" bis zum Laufwegsende</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="regelungsart" type="xs:string">
<xs:annotation>
<xs:documentation>Die geltende Regelungsart</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="betriebsstelleStartId" type="xs:integer">
<xs:annotation>
<xs:documentation>Start der Regelungsart</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="betriebsstelleEndeId" type="xs:integer">
<xs:annotation>
<xs:documentation>Ende der Regelungsart</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" maxOccurs="unbounded" name="entfalleneBetriebsstelle" type="Betriebsstelle">
<xs:annotation>
<xs:documentation>Es werden die Betriebsstellen aufgelistet, die durch eine Umleitung betroffen sind und somit ausfallen</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Unterzeichner">
<xs:annotation>
<xs:documentation>Kontaktdaten des Freigebenden der Baufplo</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="1" name="nachname" type="xs:string">
<xs:annotation>
<xs:documentation>Nachname des Freigebenden</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="vorname" type="xs:string">
<xs:annotation>
<xs:documentation>Vorname des Freigebenden</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="abteilung" type="xs:string">
<xs:annotation>
<xs:documentation>Abteilung des Freigebenden</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="rufnummer" type="xs:string">
<xs:annotation>
<xs:documentation>Rufnummer des Freigebenden</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Verweis">
<xs:sequence>
<xs:element minOccurs="0" name="ebula" type="xs:boolean">
<xs:annotation>
<xs:documentation>Information darüber, ob nach EBuLa gefahren werden kann</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="zugcharakteristikId" type="xs:integer">
<xs:annotation>
<xs:documentation>Referenz auf Zugcharakteristik</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Vorgaenger">
<xs:sequence>
<xs:element minOccurs="1" name="veroeffentlichung" type="xs:date">
<xs:annotation>
<xs:documentation>Tag der Veröffentlichung der vorherigen Version der BauFplo</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Zeitraum">
<xs:sequence>
<xs:element minOccurs="0" name="start" type="xs:date">
<xs:annotation>
<xs:documentation>Startdatum des Zeitraumes</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="ende" type="xs:date">
<xs:annotation>
<xs:documentation>Enddatum des Zeitraumes</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Zug">
<xs:sequence>
<xs:element minOccurs="1" name="nummer" type="xs:string">
<xs:annotation>
<xs:documentation>Zugnummer des Zuges</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="zuggattung" type="Zuggattung">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Zuggattung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="1" name="zugart" type="xs:string">
<xs:annotation>
<xs:documentation>Kennzeichen für die Zugart</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Zuggattung">
<xs:annotation>
<xs:documentation>Beschreibt die Eigenschaften der Zuggattung</xs:documentation>
</xs:annotation>
<xs:sequence>
<xs:element minOccurs="0" name="produktBezeichnung" type="xs:string">
<xs:annotation>
<xs:documentation>Produktbezeichnung der Zuggattung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="hauptnummer" type="xs:integer">
<xs:annotation>
<xs:documentation>Hauptnummer der Zuggattung</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="unternummer" type="xs:integer">
<xs:annotation>
<xs:documentation>Unternummer der Zuggattung</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:complexType name="Zugverband">
<xs:sequence>
<xs:element minOccurs="0" name="streckenklasseGefordert" type="xs:string">
<xs:annotation>
<xs:documentation>Angabe geforderter Streckenklassen</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="hatTrailer" type="xs:boolean">
<xs:annotation>
<xs:documentation>Angabe, ob der Wagenzug einen Trailer hat</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="kvProfilC2" type="xs:string">
<xs:annotation>
<xs:documentation>Erste Eckhöhen-Kodierung für Wechselbehälter; zweistellige Zahl</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="kvProfilC3" type="xs:string">
<xs:annotation>
<xs:documentation>Zweite Eckhöhen-Kodierung für Wechselbehälter; dreistellige Zahl</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="kvProfilP2" type="xs:string">
<xs:annotation>
<xs:documentation>Erste Eckhöhen-Kodierung für Sattelanhänger; zweistellige Zahl</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="kvProfilP3" type="xs:string">
<xs:annotation>
<xs:documentation>Zweite Eckhöhen-Kodierung für Sattelanhänger; dreistellige Zahl</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="cirAusruestung" type="xs:string">
<xs:annotation>
<xs:documentation>Beschreibt die Ausrüstung mit CIR (CIR-ELKE (Abk. Computer Integrated Railroading – Erhöhung der Leistungsfähigkeit im Kernnetz))</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="hatLZB" type="xs:boolean">
<xs:annotation>
<xs:documentation>Beschreibt, ob LZB (Linienzugbeeinflussung) vorhanden ist</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="hatNotbremsueberbrueckung" type="xs:boolean">
<xs:annotation>
<xs:documentation>Beschreibt, ob Notbremsüberbrückung vorhanden ist.&lt;br/&gt; &lt;b&gt;Hinweis:&lt;/b&gt; Das Attribut \"hatNotbremsueberbrueckung\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"notbremsueberbrueckung\"</xs:documentation>
</xs:annotation>
</xs:element>
<xs:element minOccurs="0" name="etcsAusruestung" type="xs:string">
<xs:annotation>
<xs:documentation>Beschreibt die Ausrüstung mit ETCS (european traffic control system)</xs:documentation>
</xs:annotation>
</xs:element>
</xs:sequence>
</xs:complexType>
<xs:simpleType name="Veroeffentlichungsart">
<xs:annotation>
<xs:documentation>Definiert, ob es sich um eine Erstveröffentlichung, einen Nachtrag oder eine Rücknahme handelt</xs:documentation>
</xs:annotation>
<xs:restriction base="xs:string">
<xs:enumeration value="ERSTVEROEFFENTLICHUNG"/>
<xs:enumeration value="NACHTRAG"/>
<xs:enumeration value="RUECKNAHME"/>
</xs:restriction>
</xs:simpleType>
<xs:simpleType name="Regionenabfolge">
<xs:annotation>
<xs:documentation>Abfolge der Regionen, die der Zug verkehrt</xs:documentation>
</xs:annotation>
<xs:restriction base="xs:string">
<xs:enumeration value="OST"/>
<xs:enumeration value="NORD"/>
<xs:enumeration value="WEST"/>
<xs:enumeration value="SUEDOST"/>
<xs:enumeration value="MITTE"/>
<xs:enumeration value="SUEDWEST"/>
<xs:enumeration value="SUED"/>
</xs:restriction>
</xs:simpleType>
<xs:simpleType name="Region">
<xs:annotation>
<xs:documentation>Region des Freigebenden der Baufplo</xs:documentation>
</xs:annotation>
<xs:restriction base="xs:string">
<xs:enumeration value="OST"/>
<xs:enumeration value="NORD"/>
<xs:enumeration value="WEST"/>
<xs:enumeration value="SUEDOST"/>
<xs:enumeration value="MITTE"/>
<xs:enumeration value="SUEDWEST"/>
<xs:enumeration value="SUED"/>
</xs:restriction>
</xs:simpleType>
</xs:schema>
