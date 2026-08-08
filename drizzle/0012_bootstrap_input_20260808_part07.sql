INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2429adf266fe67fb1231c5c5','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',8,'Inhalt','</xs:element>

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

</xs:annotation>',152,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','2cb0ff2d55100a545dfb06be2c61cf300681226b43558de863950999aae015d1');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c0d6d456d3d75709e9414bac','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',9,'Inhalt','</xs:element>

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

<xs:documentation>Betriebsstelle eines Zuglaufs</xs:documentation>',124,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','71003cd0d66202ec9a5525bda3bc73dd6ecdedd5be4b7535f7ad99cc251283f8');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e50902f399b1049e10145c6c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',10,'Inhalt','</xs:annotation>

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

<xs:documentation>Mindesbremshundertstel des zugehörigen Verweises</xs:documentation>',103,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','46a287b0f35c776a5bb03626b43a31a7de65261139524b64177dbbf53ab60982');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d83c650efd145a0ace5f16bf','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',11,'Inhalt','</xs:annotation>

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

<xs:annotation>',106,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','cdc569f58ebabd42f164721724074a8f01f3add95b42452b4d799a59dae76a45');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_aa786ebef378d4b14930da19','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',12,'Inhalt','<xs:documentation>Beschreibt den Abschnitt Laufweg</xs:documentation>

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

<xs:documentation>Es werden die Betriebsstellen aufgelistet, die durch eine Umleitung betroffen sind und somit ausfallen</xs:documentation>',119,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','27297d06027ca443d3ad0bdb097302fc6c4551dd1b08f268ef8f0e129d62de28');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7b42b903ae8e5a237254f61c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',13,'Inhalt','</xs:annotation>

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

<xs:annotation>',104,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','5a648ad05949cd5c5c6523f9cac5f37b2090df406b0346bd3507b593201d2419');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ac2662559cc49c0922a26641','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',14,'Inhalt','<xs:documentation>Inhalt des Hinweises oder der Regelung</xs:documentation>

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

<xs:annotation>',115,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','b66addd2058afc06bd5dcab2414839bc8eb585bab5eef9497e1129c380e64b87');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ca91fde0741c7e0f4763ecc1','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',15,'Inhalt','<xs:documentation>Kundennummer des bestellenden EVU</xs:documentation>

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

<xs:annotation>',105,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','9fce78b94c3d9cd0dcc6bd7c8dbb7e4de6c9a57a29ea949c92e967c8473c0892');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d3160e17d39fa32801da3a01','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',16,'Inhalt','<xs:documentation>Kennzeichnet, ob dieser Trassenlaufpunkt Teil einer Umleitung ist</xs:documentation>

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

<xs:documentation>Abfahrtszeit des Fahrplans (ohne Zeitumstellung) bei dieser Betriebsstelle. Im Falle der Zielbetriebsstelle entfällt dieses Attribut</xs:documentation>',150,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','fcd1e6ff5e74771bd4f6bcac7faf5e159296ae8f0415ddca431cfbeb36eb8514');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b3d209fb0d8ee89f68db266c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',17,'Inhalt','</xs:annotation>

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

<xs:annotation>',116,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','351977741c1496c9b907f35d08ab3b324f63fb35c51416bb56d7e5af67942181');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_fe28a115e5257f74877eab4f','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',18,'Inhalt','<xs:documentation>Beschreibt die Eigenschaften der Betriebsnamen</xs:documentation>

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

<xs:element minOccurs="0" name="betriebsstelleStart" type="Betriebsstelle">',100,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','1d287420488fa9d79f61aab73239838c35673b84f34bc2eabf731632eff3eeb5');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_024edef47c1da4477c19d8b8','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',19,'Inhalt','<xs:annotation>

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

<xs:element minOccurs="0" name="unpaged" type="xs:boolean"/>',120,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','9e42b1b87dd9f6e115d540b761ab9ec2f8e74a5c88baa300dd6be414af226851');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3483e67073a5e517888c6582','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',20,'Inhalt','<xs:element minOccurs="0" name="offset" type="xs:long"/>

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

<xs:element minOccurs="0" name="bpolMeldepflichtig" type="xs:boolean">',125,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','3d2618e447fb4301d57ea5d8f311d08187416e14778961fea54c340a3f03cbbd');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_bc61dae77c3012613e8432f9','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',21,'Inhalt','<xs:annotation>

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

<xs:annotation>',96,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','6510374856f566f41daed8d7cf612c89a82979cf3479f5917a5f24f3ae83a1ef');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_56318b3df1030bd40e02e244','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',22,'Inhalt','<xs:documentation>Beschreibt die Beförderungsbesonderheit Frontstellung</xs:documentation>

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

</xs:element>',107,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','8b9f3f5c4245b48ce6805c4d7ed4bdddacb1a6fde6d155f259d3b84f456b02fe');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3bb154a5020145e016f3c07c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',23,'Inhalt','<xs:element minOccurs="0" name="gefahrgut" type="RahmendatenGefahrgut"/>

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

<xs:complexType name="RahmendatenZugcharakteristik">',94,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','f44e3f8b58ac62df26d55091beeece7e1d9dbbe8f7ea93dbc4676869218ceae1');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a80bc32858eb2d95ed7b7c14','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',24,'Inhalt','<xs:sequence>

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

<xs:annotation>',128,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','e1a7d1758654b430c4c988293decf8d00496e30908747d4e16a4c4017aa83566');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_82b62bd600b6044fa89260db','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',25,'Inhalt','<xs:documentation>Angabe, ob nicht bestellte, aber konstruktionsbedingte Richtungswechsel zugelassen sind</xs:documentation>

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

</xs:element>',107,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','796d97edac96ec11b737e2bd19227ebb2d6a3e5bf11477716265eadcce438d8e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_06469297aa4f331b831b6b7f','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',26,'Inhalt','<xs:element minOccurs="0" maxOccurs="unbounded" name="kvProfil" type="xs:string">

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

</xs:complexType>',115,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','736fd93da640750654b936d88a4ff02042ef48ed993511f363b0ad148c4a8a9a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2df5e8ba3d07e84f4d1823a9','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',27,'Inhalt','<xs:complexType name="Triebfahrzeug">

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

<xs:element minOccurs="0" name="betriebsstelleEndeId" type="xs:integer">',112,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','ea16709de813ceb6b39965eb9c670678b6ab141b2063f16ad97937c7926d65c0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_74fb73cd059fc04fde8ebe42','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',28,'Inhalt','<xs:annotation>

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

</xs:element>',110,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','84a09f34f819673d403467ece4b80f079ab7e6dcd743d2677b34f007a02e5ffe');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_162cb49cf175e35e15b211e9','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',29,'Inhalt','</xs:sequence>

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

<xs:element minOccurs="0" name="hauptnummer" type="xs:integer">',109,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','6c9bf0e14fbc3f9e0930b37d2f466bd2b2cbeb98d2d7ef17fd4c753201610554');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_116c14284ae0dfde517377fc','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',30,'Inhalt','<xs:annotation>

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

<xs:annotation>',102,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','b4729a98ebf02d8f852f3f4fd4c861e8c516d3db1c91fcc973669bbe42d46fd2');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_956d7966a1608f99865412a1','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',31,'Inhalt','<xs:documentation>Beschreibt die Ausrüstung mit CIR (CIR-ELKE (Abk. Computer Integrated Railroading – Erhöhung der Leistungsfähigkeit im Kernnetz))</xs:documentation>

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

<xs:enumeration value="WEST"/>',126,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','4e039d4d736362d9611b1a5d0ed9294a662356f079da1cda84146dee711e9803');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_bf5b389ee02e4117d492ab2c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',32,'Inhalt','<xs:enumeration value="SUEDOST"/>

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

</xs:schema>',38,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','4b81ff153d7019c3a50efea865bb8beb4a49c162621e823d5061c8e88e5f47a1');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_fd6211533b1f4da5f776','file','TAF/TAP TSI Dialog 21 Mai 2026 Antworten und offene Punkte',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_7c053a98498b96504a8dc7de','src_fd6211533b1f4da5f776','7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a','ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6',625224,'application/pdf','TAF-TAP-TSI-Dialog-21-Mai-2026-Antworten-und-offene-Punkte-data.pdf','sources/normalized/bootstrap/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"TAF-TAP-TSI-Dialog-21-Mai-2026-Antworten-und-offene-Punkte-data.pdf","page_count":16,"raw_binary_committed":false,"schema_version":1,"size_bytes":625224,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de","title":"TAF/TAP TSI Dialog 21 Mai 2026 Antworten und offene Punkte","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a','src_fd6211533b1f4da5f776','sv_7c053a98498b96504a8dc7de','{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-21-Mai-2026-Antworten-und-offene-Punkte-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6','src_fd6211533b1f4da5f776',NULL,'{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-21-Mai-2026-Antworten-und-offene-Punkte-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_7c053a98498b96504a8dc7de' WHERE id='src_fd6211533b1f4da5f776';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md','TAF/TAP TSI Dialog 21 Mai 2026 Antworten und offene Punkte','Follow-up 15. TAF/TAP TSI-Dialog Fragen und Antworten Versand im Nachgang','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','604ce591973f19250fa34971738706cf3d93f3582bd107a6e3962fa701674980','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_fd6211533b1f4da5f776","source_version_id":"sv_7c053a98498b96504a8dc7de"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7cf9d0587381445f2f5777b8','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',0,'Seite 1','Follow-up 15. TAF/TAP TSI-Dialog

Fragen und Antworten

Versand im Nachgang',10,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":1,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','f19d7715227c9069c94e6e67549c0663db3d430b6e999691271c9652905f6b51');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a572bf5c80b80fb1afa456e2','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',1,'Seite 2','Agenda

1. Informationen zu ujBau Prozessen

1. Informationen zu ujBau Prozessen

2. Baubedingte Zusatzleistungen bei Anlagen

2. Baubedingte Zusatzleistungen bei Anlagen

3. Baubedingte Zusatzleistungen

3. Baubedingte Zusatzleistungen

4. Baubedingte Stornierungen

4. Baubedingte Stornierungen

5. Umgang mit >24 h verspäteten einbrechenden Zügen

5. Umgang mit >24 h verspäteten einbrechenden Zügen

6. Nicht-baubedingte netzausgelöste Änderung (NAÄ)

6. Nicht-baubedingte netzausgelöste Änderung (NAÄ)

7. pathOS Push-Benachrichtigungen

7. pathOS Push-Benachrichtigungen

8. Information zur Schnittstellenaktualisierung NEP1 2028

8. Information zur Schnittstellenaktualisierung NEP1 2028

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 2',88,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":2,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','42837209e47254be59cdfc1c9337c2808f7a082548bff3a10f1e5d03a4b765e3');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b28e022169031a24a40f9ecd','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',2,'Seite 3','1. Informationen zu ujBau Prozessen (1/5)

Frage Antwort DB InfraGO

Wie werden Umläufe und wann in Auszug RiL 402.0305, §8 Vierte Konsultationsphase, Absatz (8) ZB-Ressourcenplanung:

welcher Detaillierung kommuniziert?

„Sofern die Fahrplanregelungen Auswirkungen auf die Ressourcenplanung von ZB haben, werden

diese durch die DB InfraGO AG bei der Erarbeitung des FPE mit berücksichtigt. Hierfür ist es

erforderlich, dass die ZB ihre geänderte Ressourcenplanung mit der Stellungnahme zum GPE der DB

InfraGO AG vorlegen.“

DB InfraGO wird im nächsten TTT-Dialog detailliert vorstellen, welche Umlaufinformationen benötigt

werden.

Der E-Mailversand zwischen GPE und Auszug aus Ril 402.0305 siehe vorherige Zeile. Darin ist das Medium nicht festgelegt.

FPE war neu für mich. Ich dachte, Für detaillierte Umlaufinformation wird das Medium E-Mail sein.

alles was Einfluss auf die FPE nimmt, DB InfraGO wird im nächsten TTT-Dialog detailliert darauf eingehen.

muss zwingend über die SST und

vorgegebene Formate erfolgen. Steht

das im Regelwerk auch so drin?

Rückfrage, Umläufe per Mail oder per Das ist situationsabhängig. Aufschlüsselung der Fälle erfolgt im nächsten TTT-Dialog. Wenn es eine

TrainActivity verschicken? Ist das kleine Menge an betroffenen Folgezügen ist, erfolgt die Angabe über die SN direkt. Dort wird der

eine neue Normatik? Der Versand entsprechende Zug mit einem TrainActivityCode (TAC) dargestellt, mit dem Hinweis der Bitte um

kann per E-Mail erfolgen, muss aber Ausfall.

nicht, richtig? Wenn es sich um eine große Menge von betroffenen Folgezügen handelt, bitte Umlaufliste senden.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 3',240,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":3,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','05d678e4803d6eeb042cdda968677178ea3d986ce67d709227749f5af5bba21a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b6f17baac67deb27a10029aa','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',3,'Seite 4','1. Informationen zu ujBau Prozessen (2/5)

Frage Antwort DB InfraGO

Wenn ich die Rückmeldefrist auf GPE Eine baubedingte Zusatzleistung kann bis z-5 über PathOS bestellt werden.

schon abgeschickt habe und dann Siehe auch Agendapunkt 2 dieser Präsentation.

feststelle, dass ich die Leerfahrt

vergessen habe. Muss ich dann alles

nochmal schicken, wenn ich die Leerfahrt

als baubedingte Zusatzleistung nochmal

schicke?

Lässt sich diese Information, dass DB InfraGO wird über die in dieser Präsentation enthaltenen Antworten hinaus diesen Punkt im

Umlaufkonzepte per Mail versendet nächsten TTT-Dialog darstellen.

werden können, irgendwo

verschriftlichen? Das ist eine

Information, die sich bis dato auf keiner

Präsentation wiederfindet.

Das Thema mit dem Versand von Die Information über Umläufe ist mandatorisch. Ohne diese Information können keine Folgezüge

Umläufen ging jetzt zu schnell. Können mitgeplant werden.

Sie das bitte nochmal erklären, DB InfraGO wird über die in dieser Präsentation enthaltenen Antworten hinaus diesen Punkt im

insbesondere ob das optional oder nächsten TTT-Dialog darstellen.

mandatorisch ist.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 4',167,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":4,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','8069ddb7b36ea3d980ea1babefb0cb5f07eb29d1db5edf2144fb7686be104f8f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8c0165c73a6c207462b8af9f','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',4,'Seite 5','1. Informationen zu ujBau Prozessen (3/5)

Frage Antwort DB InfraGO

Wie würde es sich in folgendem Beispiel verhalten: Wir Die Umläufe müssen bis z-21 vorliegen.

geben eine Stellungnahme auf ein GPE -> Im Rahmen der

SN-Frist versenden Umläufe mit -> im FPE erfahren wir,

dass die SN nicht eingearbeitet werden konnte und wir auf

das GPE zurückfallen.

Wie und bis zu welcher Frist müssen dann die Umläufe

übersendet werden? Dies kann zu einem erheblichen

Mehraufwand bei den EVU führen, da Umläufe mehrfach zu

verschiedenen Zuständen (GPE / FPE) geplant werden

müssen und nicht erst zum finalen Zustand (FPE).

Wer kümmert sich um Trassen, die grundsätzlich nicht Das ist situationsabhängig. Aufschlüsselung der Fälle erfolgt im nächsten TTTbaubetroffen sind, aufgrund der Baubetroffenheit einer Dialog. Wenn es eine kleine Menge an betroffenen Folgezügen ist, erfolgt die

anderen Trasse aber umlaufbedingt angepasst werden Angabe über die SN direkt. Dort wird der entsprechende Zug mit einem

müssen? Wie gelangt diese Information vom EVU an das TrainActivityCode (TAC) dargestellt, mit dem Hinweis der Bitte um Ausfall.

EIU? Wenn es sich um eine große Menge von betroffenen Folgezügen handelt, bitte

Umlaufliste senden.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 5',196,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":5,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','a3d25ca6234dda2c2d5ea6cc23bc0fadeb9f763b24caca8f95393154269c7986');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_67a99aa9b6ba9e11e6dc9f4b','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',5,'Seite 6','1. Informationen zu ujBau Prozessen (4/5)

Frage Antwort DB InfraGO

Wäre es nicht sinnvoller, wenn der Kunde die Die Referenz mittels PathID ist eine genauere Angabe als die auf eine

Baumaßnahmennummer angibt bei einer baubedingten Baumaßnahme. Für die Bearbeitung ist keine räumliche Angabe

Zusatzleistung, damit Sie wissen welche Baumaßnahme es ist, statt notwendig.

eine PathID, die u.U. einen Verlauf über ganz Deutschland hat und

zig Baumaßnahmen trifft?

Wie werden Trassen aus der NEP2 behandelt, für die noch kein Die Fristen der NEP 2 wurden so vorgezogen, dass sie immer vor der

Trassenvertrag vorliegt, wenn das GPE bereits auf Grundlage der FPE-Frist liegen und in der NEP2 können nur Neubestellungen

NEP1 VNP versendet wurde? vorgenommen werden. Daher kann es keine NEP 2 -Trassen geben, für

die bereits ein NEP1-GPE vorliegt und damit existiert dieser Fall nicht.

Ich verstehe nicht ganz die Notwendigkeit eines kompletten DB InfraGO wird im nächsten TTT-Dialog detailliert vorstellen, welche

Umlaufs im Rahmen der Stellungnahme zum GPE. Umlaufinformationen benötigt werden.

Nachvollziehbar wäre wenn Verschiebungen auf Folgezügen

angegeben werden

Kompletter Umlauf bedeutet, dass alle Umläufe schon fertig sein

müssten. Bezug ist ja auch auf das ganze Netz nicht nur ein

einzelnes GPE. Am Ende weiß ich erst ob der Umlauf aufgeht,

wenn ich ein FPE habe. Da gehen sehr viele Fragezeichen auf.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 6',224,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":6,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','0225204647c8862b3ab20e2c9ad4e24059b58ea8e8b5f469972e3f499438ac8a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_516a704b89c44354f34f8ba2','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',6,'Seite 7','1. Informationen zu ujBau Prozessen (5/5)

Frage Antwort DB InfraGO

Gegebenenfalls ist dies an mir vorbei gegangen aber Das ist situationsabhängig. Aufschlüsselung der Fälle erfolgt im nächsten TTTin welcher Form/Format hat die Übermittlung der Dialog. Wenn es eine kleine Menge an betroffenen Folgezügen ist, erfolgt die

Umläufe (per Mail) zu erfolgen? Angabe über die SN direkt. Dort wird der entsprechende Zug mit einem

TrainActivityCode (TAC) dargestellt, mit dem Hinweis der Bitte um Ausfall.

Wenn es sich um eine große Menge von betroffenen Folgezügen handelt, bitte

Umlaufliste senden.

Es gab zuletzt in verschiedenen Runden Mit TTT sind in vielen Fällen bereits die Vertragstrassen an Mo-Fr und Sa-So

unterschiedliche Aussagen dazu, ob nach der unterschiedlich. Daher versenden wir in diesen bereits mindestens zwei GPE, eins

Stellungnahme zum GPE auch mehrere FPE erstellt für Mo-Fr und eins für Sa-So, sollte die Ausregelung es zulassen. Eine tagesscharfe

werden können. Hier bitte ich nochmal um Stellungnahme auf ein GPE ist aktuell nicht möglich.

Klarstellung ob dies möglich ist.

Bspw. GPE mit tgl betroffener Trasse - Umlaufbedingt

aber unterschiedliche Stellungnahmen Mo-Fr

(Zustimmung) und Sa-So (Anpassung GPE->FPE

notwendig) und damit einhergehend verschiedene

FPE/NAÄ notwendig.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 7',198,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":7,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','076d78fac6c27896646e4d30f2c0510ec90a57358143cec87fffa88398ec30b4');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f6658aae91f5a8b3c6c48ea0','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',7,'Seite 8','2. Baubedingte Zusatzleistungen bei Anlagen

Frage Antwort DB InfraGO

Wie werden Baubedingte DB InfraGO befindet sich hierzu aktuell in der fachlichen Klärung. Im nächsten TTT-Dialog wird DB

Zusatzleistungen für BAEn bestellt? InfraGO den aktuellen Stand sowie das weitere Vorgehen zur Bestellung baubedingter

Welche Angaben sind notwendig, Zusatzleistungen für BAEn vorstellen.

damit diese kostenfrei sind?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 8',65,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":8,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','5d9696448ff2b8f83ab8ed5ac87907dbd57c475e3da950d4d6b29b16787fd0de');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_201bb9f49477759ab1b93d0e','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',8,'Seite 9','3. Baubedingte Zusatzleistungen (1/2)

Frage Antwort DB InfraGO

Übersicht Baubedingte Ril 402.0305 „Baubedingte Fahrplanregelungen abstimmen und kommunizieren “

Zusatzleistungen

11 Trassenanmeldungen baubedingter zusätzlicher Leistungen

(1) Sind im Rahmen der vierten Konsultationsphase seitens der ZB in den unter Absatz (2) genannten Fällen

baubedingte zusätzliche Trassen erforderlich, so melden diese die erforderlichen Trassen im Bestellportal mit

Referenzbezug auf die baubetroffene Trasse, kommuniziert durch GPE/FPE spätestens fünf Wochen vor

Beginn der maßgebenden Bauwoche bei der DB InfraGO AG, Gelegenheitsverkehr an.

Basis der Abstimmung und Voraussetzung für die Anmeldung ist das FPE.

(2) Hierunter fallen insbesondere zusätzliche baubedingte Anmeldungen für

− Zu- und Abführungsfahrten zu einem Schienenersatzverkehr,

− Drehfahrten,

− Zu- und Abführungsfahrten zu einer anderen als der gewöhnlichen Abstell- oder Tankanlage,

− Zu- und Abführungsfahrten von Triebfahrzeugen oder

− zusätzliche Verkehre auf Grund einer Änderung der Zugcharakteristik (z.B. Ablasten auf Grund

geringerer Grenzlast einer Umleitungsstrecke).

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 9',153,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":9,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','e4e69e7905ab1424c2da040b2ff9c66762ee210ba2ac165039459af31b2786d4');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_58bafefb8ed6a9ec43502a42','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',9,'Seite 10','3. Baubedingte Zusatzleistungen (2/2)

Frage Antwort DB InfraGO

Bestellung baubedingte Ablauf und Kennzeichnung baubedingter Zusatzleistungen

Zusatzleistung:

Bei der Bestellung wird ein Verweis des EVUs auf die PathID der Bautrasse erforderlich sein. Dieser

Wäre toll wenn sie bei so was ein

wird als „RelatedPlannedTransportID“ angegeben. Zusätzlich muss beim NSP*

Beispiel mit in ihre Folien einfügen

„verkehrsArtKundeZusatz“ die Ausprägung „BaubedingteZusatzleistung“ angegeben werden.

könnten – Für Bestellung auf Folie in

TTT-Dialog

Beispiel pathOS

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 10',81,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":10,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','f070c21d1bffdbc56d4766b4574f98ec020001de95fd5f04f1c62eec9de79bae');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_244f38b72b74b5edb9d132a4','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',10,'Seite 11','4. Baubedingte Stornierungen

Frage Antwort DB InfraGO

Bitte in der schriftlichen Die Stornoquote bezieht sich ausschließlich auf kundenausgelöste Stornierungen. Eine netzausgelöste

Rückmeldung noch einmal genau Stornierung (NAS) bei baubedingten Ausfällen ist daher nicht enthalten.

aufzeigen, wie sich die Stornoquote

bei Baubedingten Ausfällen sowie in Eine netzausgelöste Änderung (NAÄ) gilt nach Versand direkt als angenommen. Für ZB besteht jedoch

Folge von nicht abgestimmten NAÄ die Möglichkeit, die Trasse innerhalb von drei Arbeitstagen (Montag bis Freitag, ausgenommen

verhält. bundeseinheitliche Feiertage) kostenfrei zu stornieren.

Die DB InfraGO AG stellt sicher, dass eine Stornierung binnen der Frist von 3 Arbeitstagen nach Erhalt

einer NAÄ für den Kunden kostenlos bleibt. Bautrassen, die innerhalb von drei Tagen storniert

werden, zählen nicht in die Stornoquote.

Wird die Stornierung der Eine baubedingt erforderliche Stornierung ist grundsätzlich im Rahmen der GPE Stellungnahme

Gegenrichtungsleistung automatisch anzugeben und wird dann im Rahmen einer netzausgelösten Stornierung umgesetzt. Darüber ist die

erfolgen, weil die Verknüpfung über kostenfreie Stornierung gewährleistet.

die TrainActivities verstanden wird?

Wie bestelle ich einen baubedingten Eine baubedingt erforderliche Stornierung ist grundsätzlich im Rahmen der GPE Stellungnahme

Ausfall einer indirekt baubetroffenen anzugeben und wird dann im Rahmen einer netzausgelösten Stornierung umgesetzt. Darüber ist die

Trasse, damit dieser kostenfrei kostenfreie Stornierung gewährleistet.

erfolgt?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 11',212,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":11,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','2a60d2ddbca7c0a6c2f1ce2e14d34e7f6d37a013df9499d1e4d8746ecaf1b119');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2d36a0cddf9406e224d5371e','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',11,'Seite 12','5. Umgang mit >24 h verspäteten einbrechenden Zügen

Frage Antwort DB InfraGO

Wie wird umgegangen wenn ein Zug Erklärung des Sonderfalls eines täglich verkehrenden Zuges, der bei Einbruch ins Netz der DB InfraGO

mit 24h Verspätung fährt im Bezug etwa 24h verspätet ist:

auf TAF-Identifier und Trasse?

Mündlich nachgeschärfte Frage: Wie In diesem Falle ist es aus fahrplanerischer Sicht möglich, dass die Trasse der ursprünglichen Zugfahrt

erfolgt die Umbuchung, wenn eine storniert wird und der Zug auf der Trasse des aktuellen Tages verkehrt. Da im Fahrplan keinerlei

Trasse, die für gestern bestellt wurde tagesscharfe Identifikatoren verwendet werden, ist dies unschädlich.

ausfällt (wg. Verspätung) und mit der Für die betrieblichen Meldungen ist zu beachten, dass der Zug einen Wechsel der tagesscharfen

ReferenceTrainID von heute (einen Identifikatoren benötigt, da sich der Tag der Zugfahrt um den einen Tag verändert.

Tag später) fährt.

Inwiefern dies zu ihren internen Abläufen und IT-Systemen passt, ist durch Sie zu prüfen.

Wie im TTT-Dialog kommuniziert, wird es zeitnah eine Übersicht zum Verfahren mit "großen"

Verspätungen, Stichwort 20h-Zug, geben.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 12',182,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":12,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','c42124f140f4331f5e4a4ceb6aa7117d91643ddfd5cfe29ee79be7db1de91f2a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_77b1aea47a4b3c2b60cb2759','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',12,'Seite 13','6. Nicht-baubedingte netzausgelöste Änderung (NAÄ)

Frage Antwort DB InfraGO

NAÄ auch außerhalb des Ja, Sie haben danach 3 Tage Zeit, um die netzausgelöste Änderung kostenlos zu stornieren.

Bauprozesses erfolgen ohne

Zustimmung des EVU.

Danach kann bis zu 3 Tage storniert

werden.

Die Frist für eine NAÄ ist mit z-8 Die Frist z-8 bezieht sich auf das NAÄ aus dem unterjährigen Bau, nicht auf das allgemeine NAÄ.

benannt. Verstehe ich es richtig, dass

bei der NAÄ (ohne Baubezug) zu

einer ENP-Trasse, die vom

13.12.2026 bis 11.12.2027 gültig ist,

somit der 13.10.2026 der

Kommunikationspunkt ist und

danach keine Änderung (ohne

Baubezug) mehr erfolgen kann?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 13',113,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":13,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','10495d3fa2a5902e09dee762ce4dba3e0e25acbe21b5231d7190ffc57e0d404f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_024130620b23c110c2b1b388','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',13,'Seite 14','7. pathOS Push-Benachrichtigungen

Frage Antwort DB InfraGO

Wie werden EVU über Angebote und Ein Push-Mechanismus innerhalb des pathOS Webportals, der über neue Angebote und

Netzausgelöste Änderungen Netzausgelöste Änderungen informiert, ist auf Basis des aktuellen Nutzer- und Berechtigungskonzepts

benachrichtigt? (Z.B. durch Push- im pathOS Portal nicht kurzfristig umsetzbar.

Nachrichten aus pathOS?) DB InfraGO prüft, welche Optionen zur proaktiven Benachrichtigung möglich sind und gibt Feedback

im nächsten TTT-Dialog.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 14',77,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":14,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','eec798a7fb95d103ad9163f40e7e97f0fbf671f56a02529860c9a08fc11d5a57');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_13176d6003107a1f25a963b7','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',14,'Seite 15','8. Information zur Schnittstellenaktualisierung NEP1 2028

Frage Antwort DB InfraGO

Ab wann ist eine aktualisierte SST- Es war vorgesehen, das nächste Update der Schnittstellendokumentation mit Inkrafttreten zur

Beschreibung für NEP1 2028 zu Anmeldephase für die NEP 2028 zu veröffentlichen. Hierin werden gefundenen Unklarheiten und

erwarten? notwendigen Anpassungen aus der NEP 2027 und den Tests zum unterjährigen Bau aufgenommen.

Ebenfalls werden Verbesserungen hinsichtlich der Lesbarkeit und Übersichtlichkeit basierend auf

Feedback von Schnittstellenpartnern durchgeführt. Die Veröffentlichung wird zeitlich so gestaltet,

dass wir Rückmeldungen Ihrerseits bis Ende August einarbeiten und veröffentlichen können.

Vorher wird es eine einzelne Anpassung der Anlage 1 geben, damit diese zum Fahrplanwechsel am

13.12.2026 wirksam werden kann. Die Veröffentlichung ist spätestens am 11. Juni geplant. Auf eine

Anpassung der weiteren Dokumente wird in diesem Rahmen verzichtet.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 15',138,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":15,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','63b0b18d7b4ce80e30bffa518bf2519325c7c41b341e6c46647940e04f4795e2');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_1f6c2d00fd116ecf0611','file','TAF/TAP TSI Dialog 21 Mai 2026 Terminunterlage',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_12227c0c6672e3e4736d2c8b','src_1f6c2d00fd116ecf0611','12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3','ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e',679668,'application/pdf','TAF-TAP-TSI-Dialog-21-Mai-2026-Terminunterlage-data.pdf','sources/normalized/bootstrap/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"TAF-TAP-TSI-Dialog-21-Mai-2026-Terminunterlage-data.pdf","page_count":22,"raw_binary_committed":false,"schema_version":1,"size_bytes":679668,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b","title":"TAF/TAP TSI Dialog 21 Mai 2026 Terminunterlage","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3','src_1f6c2d00fd116ecf0611','sv_12227c0c6672e3e4736d2c8b','{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-21-Mai-2026-Terminunterlage-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e','src_1f6c2d00fd116ecf0611',NULL,'{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-21-Mai-2026-Terminunterlage-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_12227c0c6672e3e4736d2c8b' WHERE id='src_1f6c2d00fd116ecf0611';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md','TAF/TAP TSI Dialog 21 Mai 2026 Terminunterlage','15. TAF/TAP TSI-Dialog der DB InfraGO Austausch mit dem Markt 21.05.2026 – virtuell','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','6cc7ea5b1931cecd8405048ffc24581032c91fdb8241de877b992664ae0f25a7','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_1f6c2d00fd116ecf0611","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ad9fdf0d74cccf6a993d4871','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',0,'Seite 1','15. TAF/TAP TSI-Dialog der DB InfraGO

Austausch mit dem Markt

21.05.2026 – virtuell',13,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":1,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','7287506d87bb2a4046215873a3a4aa29c7985fe0a50d8847a6486e47e08f4061');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_aba1e2cc127f8b5468e8f469','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',1,'Seite 2','Agenda

1. Begrüßung

2. Status TTT Einführung

3. Update pathOS

4. Click & Ride mit TTT

5. Fragen & Antworten

6. Zum Nachlesen: Nächste Termine

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 2',34,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":2,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','3a4f2fa7e96722377aff736d16a875bf1025c1b39681519114cb1ab707cadd5f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_55684be8d5f69310ec083380','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',2,'Seite 3','Wir wollen mit Ihnen in den Dialog treten – Welche Fragen

haben Sie? Schreiben Sie diese bitte in den Chat

So können Sie eine Frage platzieren:

Bitte wählen Sie in MS Teams in der Menüleiste

das Icon „Chat“ aus und schreiben Ihre Frage

in das sich öffnende Fenster.

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 3',57,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":3,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','2a02700b8dcb52a8d25e8ba5debb7e6e0effdefce745901ea97055a073ad4cac');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e0b9e02b716fe489169b0327','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',3,'Seite 4','2. Status TTT Einführung

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 4',13,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":4,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','deef74fd570cfd53ddce30965e3370bbd3de490b23849bdbf34f084bb2a3d891');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8fe290687c7734d00249262e','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',4,'Seite 5','Status TTT

Ergebnisse seit letztem TTT-Dialog

✓ Lieferung GelV Funktionalitäten vollständig im Markttest (letzte Lieferung ergänzte u.a.

Anmeldung mit Annahmeverzicht = Anmeldung mit Annahmeerklärung)

✓ Mittiger Teilausfall im Markttest mit Testeinschränkung zum Versand NAÄ

✓ Informationsveranstaltungen zu unterjährigem Bau mit Fokus auf Digitale Bau Fplo (20.5.)

✓ Stammdaten für Trassenbestellung aktualisiert und als Ordnungsrahmen Jahresfahrplan 2027.3

bereitgestellt: Es wurden ausländische Betriebsstellen ergänzt und die Strecke 6814 korrigiert

▪ Netzfahrplanerstellung läuft

Nächste Schritte

• Markttests für Trassenanmeldung/ujBau und Defect-Behebung kontinuierlich fortsetzen

• Markttest TTT mit Identifiern im Betrieb fortsetzen;

weiterer Testzeitraum für EVU, die aktuell noch nicht testfähig sind, wird geplant

• Maßnahmen basierend auf Feedback zu KOMBau Kundentests, Schulungsmaterial und Planung

definieren und umsetzen

• Nächster TTT-Dialog am 24.06.2026

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 5',128,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":5,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','2056033145202678b8f772cfb98f33574dbc51b136c7089eb59d719e9e94e1bc');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7ac64c2e8b77eb91d4809b27','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',5,'Seite 6','3. Update pathOS

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 6',12,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":6,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','f811958e0cd33721fabdb3e587569f836843e2332fb4366bfb55f2206f7a01c8');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7aa9176e4f00b52461de1e48','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',6,'Seite 7','Weiterhin Schulungen und Sprechstunden

Informationen & Schulungen Sprechstunden

• Web-based-Trainings (WBT) • Für die Einführungsphase GelV sind wieder

Sprechstunden geplant

• Erklärvideos zur Vertiefung einzelner

Wissen teilen. • Die Frequenz der Sprechstunden wird durch die

Anwendungsfälle

Fragen klären.

Teilnahme gesteuert

• Handbuch mit umfangreichem Detailwissen Erfolg

gemeinsam

• Vertiefungsworkshops

gestalten.

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 7',59,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":7,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','0b0815f16722571af31907d9485972a62d319a42d816272a7372c18c2b316f22');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_303ee321dc9ebc8b34c3af06','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',7,'Seite 8','Supportkanäle und Hinweis zu VNP

E-Mail Kontaktformular Telefon Fragen zu einem

konkreten Angebot?

[E-Mail-Adresse entfernt] Kontaktformular pathOS [Telefonnummer entfernt] Bitte nutzen Sie direkt die im

jeweiligen Angebot

Homepage DB InfraGO

hinterlegten Kontaktdaten.

Support

→ Aktuelle Informationen zur Anwendung sind im Infraportal unter Aktuelles zu den Tools zu finden.

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 8',57,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":8,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','2f789156851af42cf2651c094e5883d5a1924a61f39a8e1f4a6b85912f638e31');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b7f0078da45caab814473408','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',8,'Seite 9','Onboarding dauert im Mittel 5 Wochen! Sehr viele unterschiedliche

(Minimum 2 Wochen, Maximum 12 Wochen) Herausforderungen bei den

Kundensystemen

Wenn Sie planen per IT-Schnittstelle (Common Interface – CI) zu bestellen, d.h. eine

eigene Software zur Bestellung zu nutzen und noch nicht ongeboardet sind,

kommen Sie möglichst bald auf uns zu.

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 9',59,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":9,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','f84837ea1ec3bacb61697c855a0b2a34913c4b87f9c2451fc8da6491c8bfaf7c');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ddcea4bd4b0c74e95c08fa87','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',9,'Seite 10','4. Click & Ride mit TTT

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 10',15,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":10,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','fe0c4113cf37bba8b4ade8fb61a5e8a4a4b89342833aa907b5beaea3f8878609');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_eff9f1254d1334b3d6563d11','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',10,'Seite 11','Was ändert sich in Click & Ride mit TTT?

• Click&Ride unterstützt ab Fahrplanjahr 2027 TTT

• TTT-Identifier sind eingebbar (siehe Screenshot)

• Erfolgt keine Vergabe durch das bestellende EVU,

vergibt DB InfraGO im Namen des EVU hilfsweise

die Identifier

• Stornierung und Änderung von Trassen erfolgen in

pathOS

• Nach Buchung zeigt Click&Ride die TTT-Identifier in der

Oberfläche und in der Bestätigungs-E-Mail

• Eingabeoptionen ansonsten weitgehend unverändert

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 11',77,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":11,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','6bff70482db90664ab4803b2d22e7268bc4dd79dc13e5972542daa15d18a98fe');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_bbe2e01e7e6eba2fc1ef664f','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',11,'Seite 12','5. Fragen & Antworten

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 12',13,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":12,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','90fff194be71a14c006697261f07774ce6a92f0e5694fd3ed8c1f55133b87273');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f9f4fd9cdc4db19aca7b8684','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',12,'Seite 13','Information „Kanalzwang“ (GPE/FPE vs. Trassenanmeldung)

Prozess Prozessbeginn Prozessende Mögliche Kanäle Kanalzwang Hinweise

(ja/nein)

Trassenerst- Abgabe der Trassen- Bestätigung einer neuen Web-Oberfläche Jede Trasse wird

bestellungen bestellung bei InfraGO Trasse, Nichtkonstruier- pathOS oder separat behandelt

Ja

barkeit oder Abbruch Click&Ride

durch Kunden

Kunden- IT & Ja

Common Interface

Trassen- Abgabe der Änderung Geänderte Trasse, Web-Oberfläche Ja Jede Trasse wird

änderungen* bei InfraGO Nichtkonstruierbarkeit pathOS separat behandelt

durch Besteller /Erhalt Bestand,

Abbruch durch Kunden

Kunden- IT & Ja

Common Interface

Trassen- Bereitstellung der Geänderte Trasse, Web-Oberfläche siehe Hinweise Kanalzwang entsteht

änderungen* Änderung Nichtkonstruierbarkeit pathOS durch Wahl des

InfraGO /Erhalt Bestand, Kanals durch den

Kunden-IT &

Abbruch durch Kunden Kunden

Common Interface

ujBau Bereitstellung GPE Bereitstellung FPE KOMBau nein

Kunden- IT & nein

Common Interface

* Subsummiert Änderungen und Stornierungen inkl. Folgeaktivitäten aus ujBau

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 13',140,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":13,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','cc397bc1e7ba176fff1bdeb4cd301aef5f35f74fd4df8c74c0ad470e8138d4e3');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_75a2934a28de0d61de751406','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',13,'Seite 14','Information zur Trassenkommunikation 2026: VNP, GPE und

NAÄ/NAS

Vorläufiger Netzfahrplan (VNP):

• Hinweis: Technisch wird der VNP nicht „auf einmal“ versendet, sondern der Versand wird durch

die Konstrukteure durch entsprechende Auswahl von Trassen ausgelöst. Daher wird der Empfang

nicht auf genau einem Zeitpunkt liegen sondern etwas verteilt sein.

Versand GPE:

• Es wird prozessual sichergestellt, dass das GPE erst nach dem VNP versandt wird. Der VNP ist

Basis der ersten GPE, damit kann das GPE nicht vor dem VNP verschickt werden.

Start Versand Netzausgelöste Änderung & Stornierung (NAÄ & NAS):

• Es liegt aktuell eine Testeinschränkung vor, weil die automatische Annahme des NAÄ noch nicht

vollständig korrekt implementiert ist. ​

• Die Lieferung in den Kundentest ist für spätestens 29. Juli geplant.

• DB InfraGO AG wird diese Lücke vor der Versendung der ersten NAÄ schließen. Es ist nicht

notwendig sich auf Seiten der EVU auf alternative Prozesse einzustellen.

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 14',158,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":14,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','8537158d3b0f6af751a512f4521ce180839796fbbb27b7c8043c43b85973f81d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_fd00e6ac3d281acc4f531fd2','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',14,'Seite 15','Änderungen an Rechnungsinhalten im Kontext TTT

Auswirkungen von TTT auf Rechnungsinhalte

DB InfraGO wird im August 2026 die genauen Rechnungsinhalte mit TTT

veröffentlichen. Eine Ergänzung der Rechnungsdokumente mit TTT-Attributen

ist geplant. Die Rechnung wird weiterhin die OTN enthalten.

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 15',47,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":15,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','b8ff650a82f0e6ea6d474d48b3c36cef8d719a28c8dcce3a755dd3dc52edcac6');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f9399215acf627857057bfe1','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',15,'Seite 16','Prozess zur baubedingten Zusatzleistung im Kontext TTT

Ablauf und Kennzeichnung baubedingter Zusatzleistungen

Bei der Bestellung wird ein Verweis des EVUs auf die PathID der Bautrasse

erforderlich sein. Dieser wird als „RelatedPlannedTransportID“ angegeben.

Zusätzlich muss beim NSP* „verkehrsArtKundeZusatz“ die Ausprägung

„BaubedingteZusatzleistung“ angegeben werden.

* NSP: network specific parameter

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 16',56,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":16,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','00b0aad3d1825ab772caca93f1c1de77a2d960f009e3cab603a2813e2580940d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8c481ab6871d37df29241fd8','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',16,'Seite 17','Zeit für Ihre Fragen!

Gerne beantworten wir Ihnen

Ihre Fragen direkt im Termin.

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 17',22,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":17,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','d05be6edc486c9469a182d166ec9634c04ab4c4a531ffb858f715d445aae9e47');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5c68f1f22f29a23159955753','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',17,'Seite 18','6. Zum Nachlesen:

Nächste Termine

Alle Informationen immer aktuell unter:

www.dbinfrago.com/taf-tap-tsi

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 18',20,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":18,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','aaa8cb94e9a7f380a02ce8acfc35ad844a139e4deb40754a914b93023d80368d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_12930f8f00cbf6d9c1654863','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',18,'Seite 19','Nächster TTT-Dialog: 24.06., 12:30-14:30 Uhr

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 19',14,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":19,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','5f0d482887dbcd5097ad3d479bbf521ed0ab59dffb1543dce0daddd78b4e53e0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3365d44be991b837d6c8b4fd','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',19,'Seite 20','Übersicht TAF/TAP TSI-Kommunikation

Arbeitsweise (A)/Turnus (T)

Teilnehmer: Management & Experten aller EVU u. deren IT-Partner A: online

TAF/TAP TSI

1 Ziel: Überblick für GF-Ebene, allg. Infos (Betrieb + Fahrplan), zzgl. Vertiefung T: ca. monatlich

-Dialog

aktueller Fokusthemen in Entwicklung/Testing Nächster Termin: 24.06.

TAF/TAP TSI –

2 Teilnehmer: Schnittstellenpartner Fahrplan, die bereits mit uns testen A: online

Schnittstellen-

Ziel: Aktuelle Informationen/Entwicklungen; Sprechstunde, Updates T: nach Bedarf

partner Fahrplan

Teilnehmer: Alle künftigen Anwendenden von pathOS A: online

pathOS -

3 Ziel: Erklärung der Grundlagen und wesentlichen Inhalte von pathOS in einzelnen T: seit 23.10.2025 – Termine auf

Schulungen

Terminen pathOS-Homepage (unter Kapitel 2.4)

TAF/TAP TSI - Teilnehmer: Gesamtmarkt inkl. EIU A: online / in Präsenz

e 4

g Sektormeeting Ziel: nationale Spiegelgruppe TTT (Infos zu TTT, Verordnungen, ...) T: 4x jährlich, Nächster Termin: 11.06.

o

la

i

D A: in Präsenz

Runder Tisch Bau Teilnehmer: 35 Mitglieder aus SPNV, SPV, SGV, BNetzA, Verbände, AT

5 T: 4x p.a.

(RTB) AG 3 Ziel: Beratung DB InfraGO bei Erarbeitung und Entwicklung für ujBau

Nächster Termin: 01.09.

EVU-Informations- Teilnehmer: Gesamtmarkt

A: online

6 veranstaltung unter- Ziel: Information zum neuen unterjährigen Baufahrplanprozess mit neuen

T: nach Bedarf

jähriger Bau Fahrplanprodukten und der digitalen BauFplo

Teilnehmer: Geschäftspartner mit G-INV A: online

7 BDV

Ziel: Informationen, To-Dos vermitteln Nächster Termin: in Planung

o Homepage + Teilnehmer: für alle zugängliches Format, KI an Verteiler (inkl. IT-Partner, nicht alle EVU) A: Homepage',232,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":20,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','2787912e244c9df507710d4a24a96ac96567cfb12a86e9099d827421627ec8fa');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4a7484f76e1c8c4f8af4413f','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',20,'Seite 20','f n 8 Newsletter (KI) Ziel: aktuelle Informationen zum Nachlesen: Testing-Zugang, Ansprechpartner, Updates T: kontinuierlich

I

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 20',25,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":20,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','4c3e5351320ee4f54827d35b9d2fc1e74b1b1aa8e038dc9851568f4fec23ada5');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e6ea23ffe2112ef421590776','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',21,'Seite 21','Übersicht KOMBau-Kommunikation

Arbeitsweise (A)/Turnus (T)

Einweisungstermin Teilnehmer: Gesamtmarkt inkl. EIU

A: online

1 4. Konsultationsphase Ziel: Teilnehmenden die Funktionen, Prozesse und Anwendungsmöglichkeiten der KOMBau

T: 29.04.2026 + 07.05.2026

(KP) Thema BKE/BAE in der 4. KP anschaulich zu vermitteln

Kundentesttage

A: online*

Frontend 4. Teilnehmer: Fachexperten und Anwender der EVU, Verkehrsarten repräsentativ abgedeckt

2 T: 11.05.2026, 13.05.2026 +

Konsultationsphase Ziel: Verproben des Workflows 4. KP GPE bis FPE und Feedback

18.05.2026

(GPE bis FPE)

Einweisungstermin

Teilnehmer: Gesamtmarkt A: online*

4. Konsultationsphase

3 Ziel: Teilnehmenden die Funktionen, Prozesse und Anwendungsmöglichkeiten der KOMBau T: 12.06.2026, 19.06.2026 +

(KP) Thema GPE/

in der 4. KP anschaulich zu vermitteln 26.06.2026

GPEnS/FPE

*Kund:inneninformationen und Einladungen werden in den kommenden Wochen versendet

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 21',124,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":21,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','108a3c2ce79d9206563c95e504ffc8aada8631d2c46cd2ba0f0a6693d6e128a4');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_8b2e5ffa1f464bee18cf','file','TAF/TAP TSI Dialog 22 April 2026 Antworten und offene Punkte',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_abacab26d0837e86a436bb01','src_8b2e5ffa1f464bee18cf','abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703','0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7',231431,'application/pdf','TAF-TAP-TSI-Dialog-22-April-2026-Antworten-und-offene-Punkte-data.pdf','sources/normalized/bootstrap/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"TAF-TAP-TSI-Dialog-22-April-2026-Antworten-und-offene-Punkte-data.pdf","page_count":7,"raw_binary_committed":false,"schema_version":1,"size_bytes":231431,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01","title":"TAF/TAP TSI Dialog 22 April 2026 Antworten und offene Punkte","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703','src_8b2e5ffa1f464bee18cf','sv_abacab26d0837e86a436bb01','{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-22-April-2026-Antworten-und-offene-Punkte-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7','src_8b2e5ffa1f464bee18cf',NULL,'{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-22-April-2026-Antworten-und-offene-Punkte-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_abacab26d0837e86a436bb01' WHERE id='src_8b2e5ffa1f464bee18cf';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md','TAF/TAP TSI Dialog 22 April 2026 Antworten und offene Punkte','14. TAF/TAP TSI-Dialog der DB InfraGO Follow-up: Ausgewählte Antworten aus dem Termin 22.04.2026 Versand im Nachgang','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','c79119c1695cbf077ffa336c7cb4a9553fc3d7d1c548000c145408dbd036fa38','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_8b2e5ffa1f464bee18cf","source_version_id":"sv_abacab26d0837e86a436bb01"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_88b72f48231ad531d58302e7','wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md',0,'Seite 1','14. TAF/TAP TSI-Dialog der DB InfraGO

Follow-up: Ausgewählte Antworten aus dem Termin

22.04.2026 Versand im

Nachgang',16,'{"canonical_url":null,"normalized_sha256":"0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7","page":1,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01"}','a7b1617c3b716deb5196d815c3ba791cbbb691a35e76fb7bfc455accabdabbfe');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d1cc1bcc58ca6ac0393f762f','wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md',1,'Seite 2','Offene Punkte und Antworten (1/5)

Frage Antwort DB InfraGO

Ist für die Nutzung der Schnittstelle zur Nein. EVU, die das Onboarding für NEP bereits erfolgreich absolviert haben, sind auf Produktion

Trassenanmeldung im GelV ein angebunden und müssen kein weiteres Onboarding für GelV durchlaufen.

erneutes Onboarding erforderlich,

wenn das Onboarding für NEP bereits

erfolgt ist?

Ob und wann werden die TTT- Click&Ride wird für die Nutzung um Fahrplan 2027 mit TAF/TAF ertüchtigt. Die zugehörige

Komponenten / ID''s bei Click and Ride Entwicklung ist bereits in Vorbereitung. Die zugehörigen Meilensteine mit Fokus auf Schulungen und

implementiert. Gibt es hierzu auch Testmöglichkeiten werden im nächsten TTT-Dialog vorgestellt.

Schulungsunterlagen/ Möglichkeiten

oder eine Testplattform?

Rückfrage zur genannten Frist für Eine NAÄ gilt nach Versand direkt als angenommen. Für ZB besteht jedoch die Möglichkeit, die

kostenlose Stornierung nach NAÄ: Sind Trasse innerhalb von drei Arbeitstagen (Montag bis Freitag, ausgenommen bundeseinheitliche

3 Arbeitstage oder 3 Werktage hier Feiertage) kostenfrei zu stornieren.

gemeint?

Wenn wir die NAÄ bzw. Trassenvertrag Die DB InfraGO AG stellt sicher, dass eine Stornierung binnen der Frist von 3 Arbeitstagen nach Erhalt

ablehnen, dann sorgt DB InfraGO für einer netzausgelösten Änderung für den Kunden kostenlos bleibt.

Kostenlose Stornierung. Wird die Bautrassen, die innerhalb von drei Tagen storniert werden, zählen nicht in die Stornoquote.

wird auch aus Stornierungsquote

rausgenommen.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 22.04.2026 ​ 2',225,'{"canonical_url":null,"normalized_sha256":"0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7","page":2,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01"}','486bb799fe9f8e4bb7963b4fd96156cb99e86e821fafd8d672c9637fab723fe9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4c9b3f73c970920cdf0872a0','wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md',2,'Seite 3','Offene Punkte und Antworten (2/5)

Frage Antwort DB InfraGO

Muss man fest entscheiden, ob Stellungnahmen zu GPE können sowohl über die KOMBau als auch das Common Interface abgegeben

Stellungnahmen zum GPE über werden, jedoch wird nur die zuletzt abgegebene Stellungnahme verwendet.

KOMBau oder CI erfolgen, oder kann Das GPE selbst sowie GPEnS, FPE und NAÄ werden sowohl in der KOMBau angezeigt als auch über

man das auch parallel nutzen? das Common Interface bereitgestellt.

Verhält sich dies anders als pathOS und Beim Trassenmanagement (Bestellung, Änderung, Stornierung) muss jeder einzelne Vorgang in dem

das CI bei der Trassenanmeldung? gewählten Kanal – via Common Interface CI oder pathOS Webportal – bis zum Abschluss des

Prozesses bearbeitet werden. D.h. die Reaktion auf ein Angebot muss im gleichen Kanal erfolgen wie

die Trassenanmeldung.

Das ist ein anderes Verhalten als die Abgabe von Stellungnahmen zum GPE.

Gerne kommen wir dem Wunsch aus dem Termin nach und bringen dieses Thema im nächsten TTT-

Dialog nochmals im Detail mit.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 22.04.2026 ​ 3',172,'{"canonical_url":null,"normalized_sha256":"0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7","page":3,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01"}','dcc3ca2110e320b3eaf093de744ec29c23bc192d9f7adfed2d418f3c7271ad9e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1f8265c94c9d927544c6aa02','wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md',3,'Seite 4','Offene Punkte und Antworten (3/5)

Frage Antwort DB InfraGO

Wenn aufgrund einer NAÄ nicht nur die Ziffer 5.6.4 der INB:

direkt betroffene Trasse storniert wird "Einschränkungen, die aus der Sphäre des Infrastrukturbetreibers stammen, erfolgt abweichend von

sondern auch eine abhängige Trasse, den folgenden Regelungen keine Bepreisung der dadurch verursachten Stornierung sowie keine

weil z.B. der Umlauf nicht mehr Bepreisung der Stornierung eines davon betroffenen Umlaufs."

möglich ist, ist dann diese Stornierung

ebenfalls kostenfrei?

Vorhin gab es eine Frage zu Ziffer 5.6.2.2 der INB:

Stornierungen von nicht Für Zugtrassen, die aufgrund nicht im ENV berücksichtigter Baumaßnahmen zusätzlich notwendig

baubetroffenen Trassen, die werden, ist kein Trassenentgelt zu entrichten. Zu diesen Zugtrassen zählen u. a. Zu- und

erforderlich werden, wenn Umläufe Abführungsfahrten zu einem Schienenersatzverkehr, Drehfahrten aufgrund baubedingter

aufgrund von FPE/NAÄ, die nicht zu Einschränkungen, Zu- und Abführungsfahrten zu einer anderen als der gewöhnlichen Abstell- oder

den Stellungnahmen der EVU passen, Tankanlage, Zu- und Abführungsfahrten von Triebfahrzeugen oder zusätzliche Verkehre aufgrund

nicht mehr aufgehen. Folge solcher einer Änderung der Zugcharakteristik (z. B. Ablasten aufgrund geringerer Grenzlast einer

Abweichungen könnten aber auch Umleitungsstrecke). Die genauen Voraussetzungen entnehmen Sie bitte der Ziffer 5.6.2.2 der INB.

Bestellungen weiterer Trassen sein.

Wie wird hier sichergestellt, dass dies

für EVUs kostenneutral erfolgt?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 22.04.2026 ​ 4',215,'{"canonical_url":null,"normalized_sha256":"0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7","page":4,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01"}','3452740402d995e8000f3e3f2dd4c08a4a379a264fb03f3755d05ce5779b6d59');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_23b4b5551b060378f8164c02','wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md',4,'Seite 5','Offene Punkte und Antworten (4/5)

Frage Antwort DB InfraGO

Der Prozess zum NAÄ ist aktuell – und Es liegt aktuell eine Testeinschränkung vor, weil die automatische Annahme des NAÄ noch nicht

seit längerem – nicht vollständig korrekt implementiert ist.

testbar, da die automatische Annahme Die Lieferung in den Kundentest ist für 29. Juli vorgesehen.

nicht funktioniert.

DB InfraGO wird diese Lücke vor der Versendung der ersten NAÄ schließen. Es ist nicht notwendig

Bis wann wird der blockierende Fehler sich auf Seiten der EVU auf alternative Prozesse einzustellen.

behoben und wie stabil ist die Planung?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 22.04.2026 ​ 5',105,'{"canonical_url":null,"normalized_sha256":"0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7","page":5,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01"}','ba47d7624d49b021a9c5be2693592cde15e29ebef1feb427f218927ec51fbb75');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_dee7a47548a07192f9047619','wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md',5,'Seite 6','Offene Punkte und Antworten (5/5)

Frage Antwort DB InfraGO

Oh, das ist ein guter Punkt, der Zug Im Fall eines mittigen Teilausfalls (Schienenersatzverkehr) muss das EVU eine Änderungsbestellung

würde ja ggf. im Planungssystem des vornehmen, um dem zweiten Trassenteil eine neue ReferenceTrainID zu geben. Dabei dürfen keine

EVU bereits geändert sein! Dann anderen Änderungen vorgenommen werden.

werden zwangsweise neue Daten

übertragen. Muss man sich den also Umgang mit geändertem Fremdinfrastrukturanteil:

"wegspeichern" unverändert? Und was Geänderte/vertragsgeschlossene Anteile auf Fremdnetzen dürfen „korrekt“ angegeben werden. Diese

ist mit Änderungen auf haben auf unsere Konstruktion und die Durchführung der Änderungsbestellung keine Auswirkung und

Fremdinfrastruktur, die halt auch in der sind genauso in unserem Angebot enthalten. Etwaige Änderungen an diesen Anteilen in der

Trasse liegen? Zwischenzeit werden nicht berücksichtigt.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 22.04.2026 ​ 6',135,'{"canonical_url":null,"normalized_sha256":"0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7","page":6,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01"}','406421042db260046663daa5894c31ab20341d04f03f73fbbf471615826cfd48');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_ea6d92cb2a3f2e4138ef','file','TAF/TAP TSI Dialog 22 April 2026 Terminunterlage',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
