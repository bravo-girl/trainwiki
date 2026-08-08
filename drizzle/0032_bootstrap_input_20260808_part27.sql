INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_82e4d2c230f72e289c6eeb29','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',22,'Inhalt','"description": "Beschreibt die Eigenschaften des Zugverbands",

"properties":

{

"streckenklasseGefordert":

{

"type": "string",

"description": "Angabe geforderter Streckenklassen",

"example": "D4"

},

"hatTrailer":

{

"type": "boolean",

"description": "Angabe, ob ein Wagenzug einen Trailer hat",

"example": true

},

"kvProfile":

{

"type": "array",

"description": "Liste der KV-Profile",

"example":

[

"70",

"400",

"P/C 70 P/C 400"

],

"items":

{

"type": "string",

"xml":

{

"name": "kvProfil"

}

},

"xml":

{

"name": "kvProfil"

}

},

"cirAusruestungen":

{

"type": "array",

"description": "Beschreibt die Ausrüstung mit CIR (CIR-ELKE (Abk. Computer Integrated Railroading – Erhöhung der Leistungsfähigkeit im Kernnetz))",

"example":

[

"CIR-ELKE I",

"CIR-ELKE I+II",

"CIR-ELKE II"

],

"items":

{

"type": "string",

"xml":

{

"name": "cirAusruestung"

}

},

"xml":

{

"name": "cirAusruestung"

}

},

"hatNotbremsueberbrueckung":

{

"type": "boolean",

"deprecated": true,

"description": "Beschreibt, ob Notbremsüberbrückung vorhanden ist.<br/>\n<b>Hinweis:</b> Das Attribut \"hatNotbremsueberbrueckung\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"notbremsueberbrueckung\"",

"example": true

}

}

},

"SortObject":

{

"type": "object",

"properties":

{

"sorted":

{

"type": "boolean"

},

"empty":

{

"type": "boolean"

},

"unsorted":

{

"type": "boolean"

}

}

},

"Textbaustein":

{

"type": "object",

"description": "Beschreibt die Textbausteine",

"properties":

{

"key":

{

"type": "string",

"description": "Identifikation des Textbausteins",

"example": "MIND_1ZUG_EBULA"

},

"value":

{

"type": "string",

"description": "Beschreibung der Textbausteine",',200,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','8829f2d4ff8aba523043379f78193fd7f6303963fdd19aa76749bd1f425eca0f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_176974c7a5f69b8798799c8c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',23,'Inhalt','"example": "Fplo gilt als Fahrplanmitteilung auf Streckenabschnitten mit Bfpl-Angaben."

}

}

},

"Triebfahrzeug":

{

"type": "object",

"properties":

{

"tfzBrNummer":

{

"type": "string",

"description": "Bezeichnung der Baureihe",

"example": "6112"

},

"tfzStellungsart":

{

"type": "string",

"description": "Wertemenge für die Stellung des Triebfahrzeugs",

"example": "Zuglok Vorne"

},

"tfzStellungsartkey":

{

"type": "string",

"description": "Schlüssel der Stellungsart des Triebfahrzeugs",

"example": "SP"

}

},

"required":

[

"tfzBrNummer",

"tfzStellungsart"

]

},

"Umleitungregelungsart":

{

"allOf":

[

{

"$ref": "#/components/schemas/Laufwegregelungsart"

},

{

"type": "object",

"properties":

{

"betriebsstelleStartId":

{

"type": "integer",

"format": "int32",

"description": "Start der Regelungsart"

},

"betriebsstelleEndeId":

{

"type": "integer",

"format": "int32",

"description": "Ende der Regelungsart"

},

"entfalleneBetriebsstellen":

{

"type": "array",

"description": "Es werden die Betriebsstellen aufgelistet, die durch eine Umleitung betroffen sind und somit ausfallen",

"items":

{

"$ref": "#/components/schemas/Betriebsstelle"

},

"xml":

{

"name": "entfalleneBetriebsstelle"

}

}

}

}

],

"description": "Beschreibt den Abschnitt Umleitung",

"required":

[

"regelungsart"

]

},

"Unterzeichner":

{

"type": "object",

"description": "Kontaktdaten des Freigebenden der Baufplo",

"properties":

{

"nachname":

{

"type": "string",

"description": "Nachname des Freigebenden",

"example": "Sommer"

},

"vorname":

{

"type": "string",

"description": "Vorname des Freigebenden",

"example": "Ludwig"

},

"abteilung":

{

"type": "string",

"description": "Abteilung des Freigebenden",

"example": "I.NM-SO-L 4"

},',188,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','8c0ee5048ca63ac6f2419e4f020ed2097b9c2bdbf4c020798b5141ca32c112df');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_41e089681a795181280a4b05','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',24,'Inhalt','"rufnummer":

{

"type": "string",

"description": "Rufnummer des Freigebenden",

"example": "0341 1337"

}

},

"required":

[

"abteilung",

"nachname"

]

},

"Verweis":

{

"type": "object",

"discriminator":

{

"propertyName": "ebula"

},

"properties":

{

"ebula":

{

"type": "boolean",

"description": "Information darüber, ob nach EBuLa gefahren werden kann"

},

"zugcharakteristikId":

{

"type": "integer",

"format": "int32",

"description": "Referenz auf Zugcharakteristik",

"example": 1

}

}

},

"Vorgaenger":

{

"type": "object",

"properties":

{

"veroeffentlichung":

{

"type": "string",

"format": "date",

"description": "Tag der Veröffentlichung der vorherigen Version der BauFplo"

}

},

"required":

[

"veroeffentlichung"

]

},

"Zeitraum":

{

"type": "object",

"properties":

{

"start":

{

"type": "string",

"format": "date",

"description": "Startdatum des Zeitraumes",

"example": "2023-01-20"

},

"ende":

{

"type": "string",

"format": "date",

"description": "Enddatum des Zeitraumes",

"example": "2023-01-30"

}

}

},

"Zug":

{

"type": "object",

"properties":

{

"nummer":

{

"type": "string",

"description": "Zugnummer des Zuges",

"example": "18039"

},

"zuggattung":

{

"$ref": "#/components/schemas/Zuggattung",

"description": "Beschreibt die Eigenschaften der Zuggattung"

},

"zugart":

{

"type": "string",

"description": "Kennzeichen für die Zugart",

"example": "B"

}

},

"required":

[

"nummer",

"zugart",

"zuggattung"

]

},

"Zuggattung":

{

"type": "object",

"description": "Beschreibt die Eigenschaften der Zuggattung",

"properties":

{

"produktBezeichnung":

{

"type": "string",

"description": "Produktbezeichnung der Zuggattung",

"example": "RB-D"

},

"hauptnummer":

{

"type": "integer",

"format": "int32",',198,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','c2b43cadd33c7626e1add30247ff97d3431fb81c52db665cfc8f1dc32576b1da');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_716046b32d4d146ddae80e02','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',25,'Inhalt','"description": "Hauptnummer der Zuggattung",

"example": 41

},

"unternummer":

{

"type": "integer",

"format": "int32",

"description": "Unternummer der Zuggattung",

"example": 1

}

}

},

"Zugverband":

{

"type": "object",

"properties":

{

"streckenklasseGefordert":

{

"type": "string",

"description": "Angabe geforderter Streckenklassen",

"example": "C2"

},

"hatTrailer":

{

"type": "boolean",

"description": "Angabe, ob der Wagenzug einen Trailer hat",

"example": true

},

"kvProfilC2":

{

"type": "string",

"description": "Erste Eckhöhen-Kodierung für Wechselbehälter; zweistellige Zahl",

"example": "70"

},

"kvProfilC3":

{

"type": "string",

"description": "Zweite Eckhöhen-Kodierung für Wechselbehälter; dreistellige Zahl",

"example": "400"

},

"kvProfilP2":

{

"type": "string",

"description": "Erste Eckhöhen-Kodierung für Sattelanhänger; zweistellige Zahl",

"example": "70"

},

"kvProfilP3":

{

"type": "string",

"description": "Zweite Eckhöhen-Kodierung für Sattelanhänger; dreistellige Zahl",

"example": "400"

},

"cirAusruestung":

{

"type": "string",

"description": "Beschreibt die Ausrüstung mit CIR (CIR-ELKE (Abk. Computer Integrated Railroading – Erhöhung der Leistungsfähigkeit im Kernnetz))",

"example": "CIR-ELKE I+II"

},

"hatLZB":

{

"type": "boolean",

"description": "Beschreibt, ob LZB (Linienzugbeeinflussung) vorhanden ist",

"example": true

},

"hatNotbremsueberbrueckung":

{

"type": "boolean",

"deprecated": true,

"description": "Beschreibt, ob Notbremsüberbrückung vorhanden ist.<br/>\n<b>Hinweis:</b> Das Attribut \"hatNotbremsueberbrueckung\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"notbremsueberbrueckung\"",

"example": true

},

"etcsAusruestung":

{',184,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','db7f699bca62d3c09333ee9313b1f30fa22ce5af0c6405cd3fb7b9687a056829');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2250790c569711f28778b702','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',26,'Inhalt','"type": "string",

"description": "Beschreibt die Ausrüstung mit ETCS (european traffic control system)",

"example": "ETCS SRS 3"

}

}

}

}

}

}',22,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','cdfe58aef861c8a421834c9dfc5626c8907c2ec8e15080c1abf6a80ab9921f7e');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_c4db283f6617a89c2018','file','Schnittstellenbeschreibung BauFplo API EVU Test 2 8 0 im xsd Format',NULL,'de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_aa3457828c7cc06b65f8cfa2','src_c4db283f6617a89c2018','bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7','148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8',70074,'application/xml','Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-8-0-im-xsd-Format-data.xml','sources/normalized/bootstrap/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data/sv_aa3457828c7cc06b65f8cfa2.md','identity-structured-text','1','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","converter":{"name":"identity-structured-text","profile":"bootstrap-markdown-v2","version":"1"},"final_url":null,"import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_aa3457828c7cc06b65f8cfa2.json","media_type":"application/xml","normalized_repo_path":"sources/normalized/bootstrap/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data/sv_aa3457828c7cc06b65f8cfa2.md","normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","origin_page_url":null,"original_filename":"Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-8-0-im-xsd-Format-data.xml","page_count":null,"raw_binary_committed":false,"requested_url":null,"schema_version":2,"size_bytes":70074,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2","supersedes_source_version_id":null,"title":"Schnittstellenbeschreibung BauFplo API EVU Test 2 8 0 im xsd Format","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7','src_c4db283f6617a89c2018','sv_aa3457828c7cc06b65f8cfa2','{"content_duplicate_group":null,"original_filename":"Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-8-0-im-xsd-Format-data.xml"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8','src_c4db283f6617a89c2018',NULL,'{"content_duplicate_group":null,"original_filename":"Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-8-0-im-xsd-Format-data.xml"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_aa3457828c7cc06b65f8cfa2' WHERE id='src_c4db283f6617a89c2018';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md','Schnittstellenbeschreibung BauFplo API EVU Test 2 8 0 im xsd Format','<?xml version="1.0" encoding="utf-8"?> <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"><xs:element name="PageBaufplo" type="PageBaufplo"/> <xs:complexType name="Allgemeines"> <xs:annotation> <xs:documentation>Beschreibt den Abschnitt Allgemeines</xs:documentation> </xs:annotation> <xs:sequence> <xs:element minOccurs="0" maxOccurs="unbounded" name="tex','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','12e33747647a9226d35611a5c66ce862d43e38e9a777187af42ddb00d603a739','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_c4db283f6617a89c2018","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c11b6d152c8d6df84f531d31','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',0,'Inhalt','<?xml version="1.0" encoding="utf-8"?>

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

</xs:element>',105,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','c9e9f3cf2fefd156ab3904ab0b48367e3f199c7155fc175e8b8fc3fadc56ef94');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_57c88272cede2c61ef0fed0e','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',1,'Inhalt','<xs:element minOccurs="1" name="bremsstellung" type="xs:string">

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

</xs:element>',124,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','fe0bb78de09675dfc1875cfccf5a44f24caa657520dfd01d8ecad95ebca1e615');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f2d474b2da6bfc904bd12315','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',2,'Inhalt','<xs:element minOccurs="0" name="gueterzugOhneNennenswertenGrenzaufenthalt" type="xs:boolean">

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

<xs:annotation>',110,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','c3199f3d2162a65771b0b7736c21993681199480a6bdfe0590e7c9ff3ce2034c');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1114aad4799cb4c16a3a28e2','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',3,'Inhalt','<xs:documentation>Besonderheiten oder Hinweise aus der Fahrplankonstruktion für das Eisenbahnverkehrsunternehmen (EVU) bzw. den Triebfahrzeugführer (Tf) zur weiteren Beachtung.</xs:documentation>

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

</xs:element>',110,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','f292cd83de1807d7cfcc7693661be968baf008db5cb64e909bf537e45ef41aae');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e08b113fdc26b3e6ac24a0a9','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',4,'Inhalt','<xs:element minOccurs="1" name="bremsstellung" type="xs:string">

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

</xs:element>',121,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','f09f1fa4b2738044ac7ca86af7af9c4592c34ad3cb5251a96282ee402d533989');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5cdae58b54bed86ecd23faa6','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',5,'Inhalt','<xs:element minOccurs="0" maxOccurs="unbounded" name="befoerderungsbesonderheit" type="Befoerderungsbesonderheit">

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

<xs:annotation>',113,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','16b115478da0f701ab7739f2fc466250b2c9e7b7db3d0a4add2d7cfc7617d60a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8623ab2c330df99b7d6c7072','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',6,'Inhalt','<xs:documentation>Besonderheiten oder Hinweise aus der Fahrplankonstruktion für das Eisenbahnverkehrsunternehmen (EVU) bzw. den Triebfahrzeugführer (Tf) zur weiteren Beachtung.</xs:documentation>

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

<xs:annotation>',107,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','21fd3db95659e5b70c76279770f84f05d4d12da50f787f91c0fea3c45a62151d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2e0f8ec26082e96e67930c10','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',7,'Inhalt','<xs:documentation>Definiert, ob es sich um eine Erstveröffentlichung, einen Nachtrag oder eine Rücknahme handelt</xs:documentation>

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

</xs:annotation>',125,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','2adfa10029c569acbf095a7e1fa7c5560bc3b9792df22e5d7d47ff46360d7bff');
--> statement-breakpoint
