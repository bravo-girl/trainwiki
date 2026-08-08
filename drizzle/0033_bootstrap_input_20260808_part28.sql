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
