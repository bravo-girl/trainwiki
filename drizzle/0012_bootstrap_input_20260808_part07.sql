INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f49a4eaa86a0402a33db19dd','wiki/sources/flyer-company-code-data.md',1,'Seite 2','Eine Beantragung ist auch über die ERA-Webseite möglich aber aus folgenden

Gründen nicht empfehlenswert:

− Zu lange Bearbeitungszeit durch ERA

− Beim EBA haben Sie einen direkten Ansprechpartner in deutscher Sprache

− Unterstützung bei den Anträgen und fachliche Prüfung der Unterlagen

Vorgehensweise

Company Code und Organisation Code vorhanden und identisch

keine Aktion notwendig

Company Code und Organisation vorhanden und unterschiedlich

Löschung aktueller OC und Beantragung gleichlautenden OC

Company Code vorhanden aber kein Organisation Code

Beantragung gleichlautenden OC

Weder Company Code noch Organisation Code vorhanden

Beantragung OC (Code kann beliebig sein, melden Sie bitte den OC an ihre

Kundenberatung der DB InfraGO und/oder an weitere EIU und Partner)

Auswirkungen auf das NVR/EVR

Als EVU mit vorhandenem Organisation Code müssen Sie nach Anpassung des

OC auch die Einträge im Nationalen Fahrzeugeinstellungsregister

(NVR)/Europäischem Fahrzeugeinstellungsregister (EVR) aktualisieren.

Bei Antragsstellung über das EBA unterstützt Sie das EBA!

Kontakt: [E-Mail-Adresse entfernt]

https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi',146,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089290/4d0d46e1e07b0fb5a22f8a6bd4cff0b7/Flyer-Company-Code-data.pdf","normalized_sha256":"cae117e243401d941e992896498a6e83cf35f458715ccc5199a8660257b87615","page":2,"source_id":"src_d2976558d7a33946b943","source_sha256":"c0cdd67495939c10345fbc122514c4a42332ec0d1801c888943e96cc57039861","source_version_id":"sv_c0cdd67495939c10345fbc12"}','a9a85ab7f7b6c03883b041790b65f83ea71f1cc27b019121de2f938a2aa8ce84');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_b1e36372becf6e4cd12f','file','Flyer Location Coding','https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_eea6b839bbd8c7cb46a03b73','src_b1e36372becf6e4cd12f','eea6b839bbd8c7cb46a03b73e72caa8b027e935dcf3f68d65504e188f65dcdd4','1c3abeedc18493bcc73122b4bcd3e8d9b4025ba4547b4e73c2e5da86fc71dbee',206513,'application/pdf','Flyer-Location-Coding-data.pdf','sources/normalized/bootstrap/flyer-location-coding-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/flyer-location-coding-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Flyer-Location-Coding-data.pdf","page_count":2,"raw_binary_committed":false,"schema_version":1,"size_bytes":206513,"source_id":"src_b1e36372becf6e4cd12f","source_sha256":"eea6b839bbd8c7cb46a03b73e72caa8b027e935dcf3f68d65504e188f65dcdd4","source_version_id":"sv_eea6b839bbd8c7cb46a03b73","title":"Flyer Location Coding","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','eea6b839bbd8c7cb46a03b73e72caa8b027e935dcf3f68d65504e188f65dcdd4','src_b1e36372becf6e4cd12f','sv_eea6b839bbd8c7cb46a03b73','{"content_duplicate_group":null,"original_filename":"Flyer-Location-Coding-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','1c3abeedc18493bcc73122b4bcd3e8d9b4025ba4547b4e73c2e5da86fc71dbee','src_b1e36372becf6e4cd12f',NULL,'{"content_duplicate_group":null,"original_filename":"Flyer-Location-Coding-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','35583daff6ca12837aec28a7111df630b7742de97686679c3028497ef26909fe','src_b1e36372becf6e4cd12f',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_eea6b839bbd8c7cb46a03b73' WHERE id='src_b1e36372becf6e4cd12f';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/flyer-location-coding-data.md','Flyer Location Coding','Umstellung auf Primary und Subsidiary Locations Location Coding gemäß TAF/TAP TSI Mit der Umsetzung von TAF/TAP TSI kommt es im Rahmen der Harmonisierung von Prozessen und Verfahren zur Einführung eines europaweit standardisierten Formats zur Codierung von Betriebsstellen. Dadurch entsteht die Aufteilung von Betriebsstellen in Primary und Subsidiary Location','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','4ffad7cfeb775f479268e8ad094fe15f419bc9193eb7ec57f76ab3294fb4740a','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_b1e36372becf6e4cd12f","source_version_id":"sv_eea6b839bbd8c7cb46a03b73"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/flyer-location-coding-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e95048c71165c7ad7ba42de9','wiki/sources/flyer-location-coding-data.md',0,'Seite 1','Umstellung auf Primary und Subsidiary

Locations

Location Coding gemäß TAF/TAP TSI

Mit der Umsetzung von TAF/TAP TSI kommt es im Rahmen der

Harmonisierung von Prozessen und Verfahren zur Einführung eines

europaweit standardisierten Formats zur Codierung von Betriebsstellen.

Dadurch entsteht die Aufteilung von Betriebsstellen in Primary und

Subsidiary Locations.

Was ist eine Primary Location?

Definiert im Allgemeinen eine Betriebsstelle eines EIU, an der Züge beginnen, enden,

halten, durchfahren oder die Strecke wechseln.

Codiert wird diese mit einem Primary Location Code (PLC):

Ländercode Location Code Betriebsstelle

DE + 13276 = Frankfurt (Main) Hbf

(2 Buchstaben) (1-5 stellig, Zahlencode)

Was ist eine Subsidiary Location?

Der untergeordnete Betriebsstellenteil (Subsidiary) muss mit einer Primary Location

verknüpft sein und spezifiziert einen bestimmten Teil, die Attribute oder die Verwendung

der Primary Location. Beispiele sind Gleis, Verladestellen oder Bahnsteig.

Codiert wird dieser mit einem Subsidiary Location Code (SLC):

Ländercode Location Code Location Subsidiary Location Subsidiary Company Code

Type Code Code

DE + 13276 + 37 + VL01856NM9 + 0080

(= Verladestelle) (1-10 stellig, (= DB InfraGO)

alphanummerisch)

Kontakt: [E-Mail-Adresse entfernt]

dbinfrago.com/taf-tap-tsi Location Coding | Seite 1 von 2',180,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf","normalized_sha256":"1c3abeedc18493bcc73122b4bcd3e8d9b4025ba4547b4e73c2e5da86fc71dbee","page":1,"source_id":"src_b1e36372becf6e4cd12f","source_sha256":"eea6b839bbd8c7cb46a03b73e72caa8b027e935dcf3f68d65504e188f65dcdd4","source_version_id":"sv_eea6b839bbd8c7cb46a03b73"}','be3fe5784e1a5bcfb7c4045d563cc9a054f70d33b7c7b82a7022adbfb06b0895');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0270e6bf55051472ed15a323','wiki/sources/flyer-location-coding-data.md',1,'Seite 2','Wo werden die Location Codes verwaltet?

Die Central Reference Files Database (CRD) ist die zentrale Datenbank in

Europa für die Location Codes (PLC und SLC), Company Codes (CC) und

Länder. Betrieben wird die CRD von Rail Net Europe (RNE)

CRD

Wo werden die Retail Location Codes der TAP TSI geführt?

Die für Reisende relevanten Örtlichkeiten des vertrieblichen Teils der TAP

TSI sind in einer eigenen Datenbank, der Retail Reference Database (RRD)

in Verantwortung der TAP TSI Services Governance Association (TSGA)

RRD

Wie ist der nationale Prozess der Codevergabe und das Hochladen in die

Referenzdatenbanken?

Die Revisionen der TAF und TAP TSI beinhalten dazu eine neue Rolle:

Die National Allocation Entity (NAE) hat die Hoheit für die

einheitliche und eindeutige Vergabe von Location Codes auf

nationaler Ebene und die Pflege der Codes in die

National Allocation

Referenzdatenbanken CRD und RRD sowie für deren Aktualität

Entity (NAE)

Verantwortliches EIU/ NAE oder

Antragsteller

Responsible IM Delegierter

EIU Übertragung

Antrag auf...

nationaler Location

- Vergabe Codes in CRD

EVU - Änderung

- Löschung Überprüft und Finale

Station validiert Anfrage Überprüfung und CRD/RRD

Manager Validierung sowie

Prozesshoheit

Wie wird mit den heutigen Ril100 Codes und deren Vergabe verfahren?

Vorerst hat dieser Prozess keine Auswirkungen auf die Vergabe von Ril100 Codes. Die

heutigen Codes werden also zunächst weitergenutzt

Wer nimmt die Funktion der National Allocation Entity (NAE) in Deutschland wahr?

Das Bundesministerium für Verkehr (BMV) und die DB InfraGO AG haben sich darauf

verständigt, dass diese Funktion durch die DB InfraGO AG wahrgenommen wird. Somit

wurde in der Folge die Funktion zum 01.08.2024 bei der DB InfraGO AG eingerichtet.',263,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf","normalized_sha256":"1c3abeedc18493bcc73122b4bcd3e8d9b4025ba4547b4e73c2e5da86fc71dbee","page":2,"source_id":"src_b1e36372becf6e4cd12f","source_sha256":"eea6b839bbd8c7cb46a03b73e72caa8b027e935dcf3f68d65504e188f65dcdd4","source_version_id":"sv_eea6b839bbd8c7cb46a03b73"}','ef0a647b63adb3c459bd0884e67a3793ae34965286e1ef7338aa624fe059c318');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_047154e1c1707e053658bf90','wiki/sources/flyer-location-coding-data.md',2,'Seite 2','Kontakt: [E-Mail-Adresse entfernt] (Hr. [Kontaktname entfernt], DB InfraGO AG, [Dienstanschrift entfernt], Mobil: [Telefonnummer entfernt])

dbinfrago.com/taf-tap-tsi Location Coding | Seite 2 von 2',22,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf","normalized_sha256":"1c3abeedc18493bcc73122b4bcd3e8d9b4025ba4547b4e73c2e5da86fc71dbee","page":2,"source_id":"src_b1e36372becf6e4cd12f","source_sha256":"eea6b839bbd8c7cb46a03b73e72caa8b027e935dcf3f68d65504e188f65dcdd4","source_version_id":"sv_eea6b839bbd8c7cb46a03b73"}','ace86b8221ec90cd858685ff88b8d8b277459c6aab05bea8c48f67d58acab1aa');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_ef37beb95dff453ad8f1','file','Flyer National Contact Point','https://www.dbinfrago.com/resource/blob/11089296/2af27698e8ca6f1897d945b1bfe322b9/Flyer-National-Contact-Point-data.pdf','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_8b33fdc8de9e5fb970f80c2f','src_ef37beb95dff453ad8f1','8b33fdc8de9e5fb970f80c2f79eca631cf3a98e8f281c7b9a4a4582fb3f5d948','95db98c6c47898fc3145139e086bb67c7547e36f20dbe6d8b43441aa02dbc8f3',196594,'application/pdf','Flyer-National-Contact-Point-data.pdf','sources/normalized/bootstrap/flyer-national-contact-point-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089296/2af27698e8ca6f1897d945b1bfe322b9/Flyer-National-Contact-Point-data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/flyer-national-contact-point-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Flyer-National-Contact-Point-data.pdf","page_count":1,"raw_binary_committed":false,"schema_version":1,"size_bytes":196594,"source_id":"src_ef37beb95dff453ad8f1","source_sha256":"8b33fdc8de9e5fb970f80c2f79eca631cf3a98e8f281c7b9a4a4582fb3f5d948","source_version_id":"sv_8b33fdc8de9e5fb970f80c2f","title":"Flyer National Contact Point","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','8b33fdc8de9e5fb970f80c2f79eca631cf3a98e8f281c7b9a4a4582fb3f5d948','src_ef37beb95dff453ad8f1','sv_8b33fdc8de9e5fb970f80c2f','{"content_duplicate_group":null,"original_filename":"Flyer-National-Contact-Point-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','95db98c6c47898fc3145139e086bb67c7547e36f20dbe6d8b43441aa02dbc8f3','src_ef37beb95dff453ad8f1',NULL,'{"content_duplicate_group":null,"original_filename":"Flyer-National-Contact-Point-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','45f34c6ebb7d8bb503ff41d295235f8bf7d611d34ffa922f146106497b2511d6','src_ef37beb95dff453ad8f1',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089296/2af27698e8ca6f1897d945b1bfe322b9/Flyer-National-Contact-Point-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_8b33fdc8de9e5fb970f80c2f' WHERE id='src_ef37beb95dff453ad8f1';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/flyer-national-contact-point-data.md','Flyer National Contact Point','D e r N a t io n a l Co n t a c t P o in t ( N C P ) für TA F / T A P T S I im Üb e rb lic k Der NCP nimmt im Auftrag des Bundesministeriums für Verkehr (BMV) die Interessenvertretung des deutschen Bahnsektors auf europäischer Ebene zu TAF/TAP TSI wahr. Die Einrichtung einer Nationalen Anlaufstelle für alle Bahnakteure zur Umsetzung TAF/TAP TSI ist in der EU','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','e98e7fa7b62423d5e7f31e7e7449552a1dd2e275bc3a573244ade0a3a0f7c33a','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/11089296/2af27698e8ca6f1897d945b1bfe322b9/Flyer-National-Contact-Point-data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_ef37beb95dff453ad8f1","source_version_id":"sv_8b33fdc8de9e5fb970f80c2f"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/flyer-national-contact-point-data.md';
--> statement-breakpoint
