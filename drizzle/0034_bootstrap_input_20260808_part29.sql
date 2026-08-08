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
