INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_03c1aab7880af5bc32da2556','wiki/sources/nbn-2024-anlage-4-2-2-nutzungsbedingungen-click-ride-data.md',6,'Seite 5','Anlage 4.2.2 zu den Nutzungsbedingungen Netz

der DB Netz AG 2024

Nutzungsbedingungen Click&Ride

Seite 5 von 6

Streckennummer Strecke / Abschnitt

6718 Hohenebra - Ebeleben

6728 Bernterode West - Deuna Zementwerk Werkbahnhof

6775 Bergen auf Rügen - Putbus

6949 Bentwisch - Poppendorf

7318 Passow (Uckermark) - Stendell (PCK)

7353 Wustermark Rbf Wot -Wustermark Rbf

7356 Wustermark Nord (GVZ) - Wustermark Awf

7476 Rommerskirchen RWE Power AG - Rommerskirchen

7630 Beddingen Nordkopf - Beddingen VPS - Beddingen

7636 Bremerhaven Kaiserhafen - Bremerhaven Nordhafen

7644, 7647 Kiel Hbf (Ss) - Kiel Süd (Ss)

7651 Hannover-Linden Hafen - Ha-Li Hafen SHH

7848 Espenhain DB-Grenze - Espenhain

9107 Kiel Süd (Ss) - Kiel Schulen am Langsee

9130 Bremerhaven Kaiserhafen - Bremerhaven Seehafen DB-Grenze

9133 Bremerhaven-Speckenbüttel - Bremerhaven Imsumer Deich

9134 Weddewarden - Bremerhaven Weddewarder

9146 Bremen Inlandshafen DB-Grenze - Bremen Inlandshafen

9170, 9173 Celle Nord DB-Grenze - Celle Nord

9412 Bruchsal - Ubstadt Mülldeponie

9603 Brühl Gbf - Brühl-Vochem

9609 Köln-Bickendorf - Köln-Ehrenfeld DB-Grenze

Gültig ab: 11.09.2024',163,'{"canonical_url":null,"normalized_sha256":"9d2e0d203eebd5c2d3c89066d98eeb669997e41368e25a84fd3f6454df4539b9","page":5,"source_id":"src_bda60942e2d392ff9207","source_sha256":"74d906b570aadeca32ba6c7bae3a4743b5304f098f92406c5b9d6bdb5675d399","source_version_id":"sv_c0a33d60eedb5a985aae5933"}','320e7c37e0186cb802502bf1ae838fc9f600a8c2b09f1f9e4d8c329b9008cf80');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0610898ffffdbfcd5657ffce','wiki/sources/nbn-2024-anlage-4-2-2-nutzungsbedingungen-click-ride-data.md',7,'Seite 6','Anlage 4.2.2 zu den Nutzungsbedingungen Netz

der DB Netz AG 2024

Nutzungsbedingungen Click&Ride

Seite 6 von 6

Streckennummer Strecke / Abschnitt

9617 Köln-Mülheim Grenze - Leverkusen Chemiepark NE

Leuna Streckenwechsel 6810/Anschlussbahn - Lochau Werkbahnhof

9706 MUEG

9707 Schmirchau Gbf - Raitzhain

❑

Gültig ab: 11.09.2024',45,'{"canonical_url":null,"normalized_sha256":"9d2e0d203eebd5c2d3c89066d98eeb669997e41368e25a84fd3f6454df4539b9","page":6,"source_id":"src_bda60942e2d392ff9207","source_sha256":"74d906b570aadeca32ba6c7bae3a4743b5304f098f92406c5b9d6bdb5675d399","source_version_id":"sv_c0a33d60eedb5a985aae5933"}','bb231f9819ffd8dc25fedafca257d9ad63cb4f1ff878989b2415f370a1ea00af');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_185a09c3daddf7c8a278','file','Ril 402 0202 INB 2027','https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf','de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_eaa9bd42fea1960a09060098','src_185a09c3daddf7c8a278','eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a','ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb',422183,'application/pdf','Ril-402-0202-INB-2027-data.pdf','sources/normalized/bootstrap/ril-402-0202-inb-2027-data/sv_eaa9bd42fea1960a09060098.md','pdfplumber','0.11.9','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","converter":{"name":"pdfplumber","profile":"bootstrap-markdown-v2","version":"0.11.9"},"final_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_eaa9bd42fea1960a09060098.json","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/ril-402-0202-inb-2027-data/sv_eaa9bd42fea1960a09060098.md","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/netzfahrplan-11861526","original_filename":"Ril-402-0202-INB-2027-data.pdf","page_count":21,"raw_binary_committed":false,"requested_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","schema_version":2,"size_bytes":422183,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098","supersedes_source_version_id":null,"title":"Ril 402 0202 INB 2027","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a','src_185a09c3daddf7c8a278','sv_eaa9bd42fea1960a09060098','{"content_duplicate_group":null,"original_filename":"Ril-402-0202-INB-2027-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb','src_185a09c3daddf7c8a278',NULL,'{"content_duplicate_group":null,"original_filename":"Ril-402-0202-INB-2027-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','dd2ba72bf695faa8d6be8e26433ca24b0515af53215a98d24df2be8a5cb655ef','src_185a09c3daddf7c8a278',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_eaa9bd42fea1960a09060098' WHERE id='src_185a09c3daddf7c8a278';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/ril-402-0202-inb-2027-data.md','Ril 402 0202 INB 2027','Richtlinie Bahnbetrieb Trassenmanagement Planungsprocedere; 402.0202 Trassenanmeldungen Seite 1 1 Grundsätze der Trassenanmeldung (1) Die Konstruktion von Trassen basiert auf den Trassenan- Qualitätsmeldungen der Zugangsberechtigten. Um eine Trasse zu ansprüche konstruieren, bedarf es spezifischer Angaben zum vorgesehenen Fahrzeugeinsatz, zum gewünschten Ver','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','398845661e9a9c8a581f5aa1e14520d405bcf178cbbac60edc6f87cdec246277','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/netzfahrplan-11861526","source_id":"src_185a09c3daddf7c8a278","source_version_id":"sv_eaa9bd42fea1960a09060098"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/ril-402-0202-inb-2027-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_734ea71406e1cd1bcf4fc29d','wiki/sources/ril-402-0202-inb-2027-data.md',0,'Seite 1','Richtlinie

Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 1

1 Grundsätze der Trassenanmeldung

(1) Die Konstruktion von Trassen basiert auf den Trassenan- Qualitätsmeldungen der Zugangsberechtigten. Um eine Trasse zu ansprüche

konstruieren, bedarf es spezifischer Angaben zum vorgesehenen Fahrzeugeinsatz, zum gewünschten Verkehrszeitraum und zum geplanten Fahrtverlauf. Eine hohe Qualität

in der betrieblichen Durchführung der geplanten Trasse

setzt voraus, dass die angemeldeten und bei der Konstruktion unterstellten Parameter - insbesondere zum Fahrzeugeinsatz - im täglichen Betriebsgeschehen eingehalten

werden.

Die Vorgaben aus relevanten Rechtsnormen (z.B. EBO,

AEG) sind im Rahmen der Trassenanmeldung zu beachten.

(2) Die DB InfraGO AG stellt für die Anmeldung von Trassen Datenaustausch

* ein Bestellportal zur Verfügung, das über eine Schnittstelle

an interne IT-Systeme angebunden und aus dem Internet

zugänglich ist. Die Nutzung des elektronischen Datenaustauschs ist zwischen der DB InfraGO AG und EVU / sonstigen Zugangsberechtigten (ZB) schriftlich zu vereinbaren.

Für den Fall des technischen Aus-

* falls/Übertragungsstörungen des Systems Bestellportal

oder im Fall eines nicht verfügbaren IT-Systems beim Antragsteller werden für die folgenden Trassenanmeldungen

Anmeldeformulare im Internet bereitgestellt:

- Trassenanmeldung zum Netzfahrplan oder Gelegenheitsverkehr mit mehr als 10 Verkehrstagen (Vordruck 402.0202V01)

- Trassenanmeldungen zum Gelegenheitsverkehr für

eine Trasse (Hin- und Rückfahrt) die damit im Zusammenhang stehenden Leerfahrten (Vordruck

402.0202V02)

- Selbstfahrende Baumaschinen und sonstige Nebenfahrzeuge (Vordruck 402.0202V03)

- Trassenanmeldung für außergewöhnliche Transporte',214,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":1,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','75a6b43611de9520df022f341a526c417a366469f613e5317f79a3fe4282a0cb');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_993bb712f2458e7c157b945e','wiki/sources/ril-402-0202-inb-2027-data.md',1,'Seite 1','(Vordruck 402.0202V04) siehe Abschnitt 4

Mündliche oder fernmündliche Trassenanmeldungen sind

in allen Fällen ausgeschlossen.

Fachautor: I.IBF 31; Volker Butzbach; Tel.: 0160/97437 162 Gültig ab 13.12.2026',25,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":1,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','f5afb44e52785ffd66015dffff6df9bd30d2675f7c528b4b4bc99a29b693853c');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8ba3fa0b7090354fd064bfb5','wiki/sources/ril-402-0202-inb-2027-data.md',2,'Seite 2','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 2

Inhalt und Form (3) Die Trassenanmeldungen müssen mindestens enthalten:

der Trassenan-

- Die gemäß TAF/TAP-TSI vorgeschriebenen Identifi- *

meldungen

katoren Reference TRID (für die Identifikation des *

Zuges), Route ID ROID (für die Identifikation der *

Route/des Gesamtzuglaufs), PathRequest ID PRID *

(für die Trassenbestellung/Änderungsbestellung) *

bzw. Trassen ID PAID (für die bebuchte Trasse bei *

Änderungen/Stornierungen), *

- Die zur Trassenkonstruktion erforderlichen betrieblich-technischen Angaben des Zuges,

- Gewünschten Trassenverlauf soweit erforderlich und

gewünschte Verkehrshalte,

Hinweis: Durchfahrtsbetriebsstellen, an denen

kein Verkehrshalt gewünscht ist, werden, sofern

sie in der Trassenanmeldung enthalten sind, bei

der Trassenzuweisung nicht berücksichtigt.

- Angabe der gewünschten Verkehrstage, *

- Benennung einer oder mehrerer Personen, die befugt

und in der Lage sind, verbindliche Erklärungen abzugeben,

- Angabe der preisrelevanten Bestandteile (nach Maßgabe der Infrastrukturnutzungsbedingungen (INB)

Kapitel 5).

- Ggf. Genehmigung einer Sondernutzung von Bahnanlagen, z. B. bei

- Aus- und Einsteigen ohne Bahnsteig durch das

EBA,

- Sonderfahrten nach bzw. von Anschlussbahnen

oder Gleisanschlüssen, die nicht durch die DB

InfraGO AG betrieben werden, die Zustimmung

des Eigentümers der Anschlussbahnen/des

Gleisanschlusses und des Landesbeauftragten

für den Bahnbetrieb.

(4) Einzelheiten zu den Pflicht- und zulässigen bzw. unter be- *

stimmten Bedingungen erforderlichen Angaben werden in *

den Anhängen 1 bis 3 beschrieben, zudem finden sich die *

an die DB InfraGO AG zu übermittelnden Informationen in *',225,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":2,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','d64241f69f617692caeca12c51119d5d91d474413c08014346f100f834d2be1a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a58f1497e8864f14318c06d5','wiki/sources/ril-402-0202-inb-2027-data.md',3,'Seite 2','der TAF/TAP TSI EVU-Schnittstellen-Dokumentation unter *

Gültig ab 13.12.2026',9,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":2,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','df934cdf52717568c654cb56d6e3c36bef741a3d07902b62f2b884205430bcb9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_03429c51bd46c73003906e4f','wiki/sources/ril-402-0202-inb-2027-data.md',4,'Seite 3','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 3

* www.dbinfrago.com/taf-tap-tsi.

Diese Angaben sind auch dann erforderlich, wenn die Trassenanmeldungen über eine Schnittstelle zwischen IT-

Systemen des EVU und der DB InfraGO AG übermittelt

* werden. Fehlen erforderliche Angaben, die zur korrekten

* systemischen Verarbeitung der Trassenanmeldung erfor-

* derlich sind, kommt keine Trassenanmeldung zustande und

* der Übermittlungsversuch wird automatisiert mit einer

* Fehlermeldung quittiert. Gleiches gilt, wenn eine Trassen-

* anmeldung mit einer bereits verwendeten PathRequest ID

* (doppelte Trassenanmeldung) ausgelöst werden soll.

* Zu fehlenden oder nicht plausiblen Angaben in einer sys-

* temisch angenommenen Trassenanmeldung fordert die DB

InfraGO AG bei dem EVU/dem ZB die Korrektur unverzüglich nach.

* Sowohl beim elektronischen Datenaustausch über die

* EVU-Schnittstelle, als auch bei der Nutzung des Clients des

* Bestellportals sind zur Angabe der gewünschten Informa-

* tionen ausschließlich die dafür vorgesehenen Felder, Attri-

* bute und Kodierungen zu verwenden.

Mit der Trassenanmeldung, jedoch spätestens 10 Arbeits- 402.0202A06

tage nach Ablauf der Trassenanmeldefrist reichen die ZB

für die Betriebsstellen gemäß Anlage 402.0202A06 „Betriebsstellen mit einzureichender Wendeliste“ bei

- − beginnenden

- − endenden

- − stärkenden oder

- − schwächenden

Zügen eine betriebsstellenbezogene Wendeliste mit Angaben zu gewünschten

- − Bahnsteigwenden

- − Stärken

- − Schwächen

- − Fahrten in die Abstellung oder

- − Bereitstellung des Zuges aus der Abstellung

ein (siehe Anlage Ril 402.0202A05). Die Angaben sind 402.0202A05

über das im „DB NetzCockpit“ (NeCo) zur Verfügung ge-

Gültig ab 13.12.2026',242,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":3,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','8cbefebb5de2d964e1f257008b1eefa9178e53d95aaad3ebdfd0940f04a4d05c');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5659765949a00e0d24e310bc','wiki/sources/ril-402-0202-inb-2027-data.md',5,'Seite 4','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 4

stellte Tool „Wendelistenkonverter“ zu übermitteln. Alternativ erfolgt die Lieferung der Angaben an die E-

Mailadresse des Netzfahrplans der jeweiligen Region (siehe

Anlage Ril 402.0202A06) zu richten. Die DB InfraGO AG

wird im Rahmen eines Piloten diese Informationen bei der

Trassenkonstruktion zusätzlich berücksichtigen.

Auf dieser Basis erfolgt eine Einschätzung durch die DB InfraGO AG zur Durchführbarkeit der daraus resultierenden

Vor-/Nachlaufleistungen zu den bestellten Zugtrassen aller

beteiligten ZB/EVU in der betreffenden Betriebsstelle.

Sofern nur einzelne beteiligte ZB/EVU die oben genannten

Informationen zur Verfügung stellen, kann die DB InfraGO

AG Annahmen/Prämissen bezüglich der fehlenden Angaben für ihre Einschätzung setzen.

Die Einschätzung ist unverbindlich. Sie wird in Form eines

Entwurfs der zu diesem Zeitpunkt geplanten EVUspezifischen Gleisbelegung (Infoblatt EVU) in der betreffenden Betriebsstelle übermittelt. Im Regelfall erfolgt dies

spätestens 14 Kalendertage nach Übergabe des VNP.

Soweit keine entsprechenden Angaben erfolgen, wird die

DB InfraGO AG dies nicht sanktionieren.

Anmeldeformu- (5) Im Fall des technischen Ausfalls des Bestellportals bei der *

lare DB InfraGO AG oder bei Trassenanmeldungen für den Gelegenheitsverkehr ist für jede Trassenanmeldung ein Formular zu verwenden. Wegen der differenzierten Anforderungen an die Angaben in der Trassenanmeldung wurden

unterschiedliche Vordrucke für die Trassenanmeldungen

aufgelegt. (siehe auch 1(2)).

Der Vordruck für den Gelegenheitsverkehr gilt auch für

Triebfahrzeugfahrten, Messfahrten mit lokbespannten Zügen, Versuchszüge u. ä..',217,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":4,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','08dc7a19129666f79df25a5a31998be8e5f9ce0fed193a02b2faaab1da734f50');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d1f08fc80fe17ea892239496','wiki/sources/ril-402-0202-inb-2027-data.md',6,'Seite 4','Zu den Vordrucken V01 – V03 wurde ein Leitfaden entwickelt, der die Feldinhalte erläutert (vgl. Anhänge 1 bis 3).

Das Formular für Anmeldungen zum Netzfahrplan findet

auch Anwendung für unterjährige Anpassungen zum Netzfahrplan. Wird das Formular zur Anmeldung von Fahrplananpassungen verwendet, genügt die Angabe der Trassen- *

nummer/PathID (PAID) und der geänderten Konstrukti- *

onsvorgaben. Die Änderung erfolgt für die gebuchte Trasse *

mit der angegebenen PAID ausschließlich für die genann- *

*

Gültig ab 13.12.2026',76,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":4,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','00329ac275a61c4676f3f71d2d5435959d5beaf2f9a3d0d24fafc6a35497da69');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8d040b562de06b0e08ccdc9e','wiki/sources/ril-402-0202-inb-2027-data.md',7,'Seite 5','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 5

* ten Verkehrstage. Bei einer gewünschten Reduzierung der

* Verkehrstage sind diese zu stornieren.

Für die Anmeldung von Probefahrten mit besonderen betrieblichen Regelungen gilt der Vordruck nach Ril

408.1431. Dieser Vordruck ist nicht Bestandteil der Ril

402.

* (6) Im Falle des technischen Ausfalls des Systems Bestellportal Empfänger der

ist der Empfänger der Trassenanmeldungen für den Netz- Trassenanfahrplan grundsätzlich das Kundencenter Netzfahrplan. meldung

* (Sofern ein Ausfall des Systems Bestellportal seitens der

DB InfraGO AG festgestellt wird, erfolgt auf elektronischem Weg zusätzlich eine Kundeninformation über das

Vorgehen im Störungsfall).

Empfänger der Trassenanmeldungen im Gelegenheitsverkehr ist grundsätzlich die Region, in der die Trasse beginnt.

Bei Trassenanmeldungen, die einen Teil des Zuglaufs über

mehrere Eisenbahninfrastrukturunternehmen betreffen, ist

der Empfänger der Trassenanmeldung für den Konstruktionsbereich der DB InfraGO AG die Region, in der die Trasse in das Streckennetz der DB InfraGO AG einbricht. Mit

den Zugangsberechtigten können einvernehmlich besondere Regelungen getroffen werden.

(7) Trassenanmeldungen zum Netzfahrplan müssen zu dem im Frist für Abgabe

Terminplan in den Infrastrukturnutzungsbedingungen der Trassenan-

(INB) genannten Anmeldetermin bei der DB InfraGO AG meldung

vorliegen. Für Trassenanmeldungen zum Gelegenheitsverkehr gelten die Bearbeitungszeiten nach Abschnitt 3.

(8) Die DB InfraGO AG kann Angebotstrassen erstellen, die vorkonstruierte

von allen EVU/ZB im Internet eingesehen werden können. Trassen

Auf Basis dieser Angebotstrassen können die EVU/ZB un-

* ter Angabe der entsprechenden Referenznummer (PAID)',227,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":5,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','87338dcd728dfa50bbe900ad1e505d6fed34c76e364b9726d16dd7d7f056c565');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0f0495163e024eaca73cc869','wiki/sources/ril-402-0202-inb-2027-data.md',8,'Seite 5','Anmeldungen abgeben.

* (9) Jede Trassenanmeldung (Path Request) ist einem Ver- Verkehrs-

* kehrsbedürfnis (Reference Train) zuzuordnen. Einem Ver- bedürfnis

* kehrsbedürfnis können mehrere Trassenanmeldungen zu- (Reference

Train)

* geordnet werden.

Gültig ab 13.12.2026',34,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":5,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','97711fd5e8edd3b14250cd399a244515e3459e77927281ada183a28930ad04f9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2ad3e37aa45281bed437a778','wiki/sources/ril-402-0202-inb-2027-data.md',9,'Seite 6','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 6

2 Besonderheiten der Trassenanmeldung

Reisezug/ (1) In Güterzügen dürfen nur Personen befördert werden, die

Güterzug zur Begleitung des Transportgutes notwendig sind. Sollen

in einem Zug, der überwiegend der Güterbeförderung

dient, auch andere Personen befördert werden, ist er als

Reisezug anzumelden.

Haltezeiten (2) Die Haltezeiten sind durch das EVU/ den ZB anzugeben.

Bemessung von Bei der Bemessung von Aufenthaltszeiten bei veröffent-

Aufenthaltszei- lichten Halten von Reisezügen sind vom EVU die physikaliten sche Mindestzeit für Öffnungs- und Schließvorgänge der

Türen der eingesetzten Fahrzeuge und der erwartete Zeitbedarf für den Fahrgastwechsel (insbesondere auch Schülerverkehre und besonders zeitintensive Fahrradbe- und

Entladebahnhöfe) zu berücksichtigen.

Mindestaufent- (3) Unabhängig von ermittelten Haltezeiten müssen in folgenhaltszeiten den Fällen zwei Minuten Mindesthaltezeit berücksichtigt

werden:

- veröffentlichte Kundenhalte von Zügen des

Schienenpersonenfernverkehrs (SPFV),

- Wechsel der Zugnummer,

- Wirbelstrombremse sperren/entsperren.

Bei nachfrageschwachen Kundenhalten des SPV kann zur

Generierung von Fahrzeitreserven im nachfolgenden Stre- *

ckenabschnitt die Mindesthaltezeit auf eine Minute redu- *

ziert werden, wenn dafür eine Minute zusätzlicher Puffer *

in den Ausfahrabschnitt gelegt wird (1+1 Halt). Die Aus- *

wahl der Halte erfolgt in Abstimmung mit dem EVU. *

In den Verkehrssegmenten SPFV und SPNV sind Flex- *

Abfahrten zulässig, bei denen eine verkehrliche Abfahrts- *

zeit vor der betrieblichen Abfahrtszeit veröffentlicht wird. *

Flex-Abfahrten dürfen ausschließlich im Rahmen der Be- *',221,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":6,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','6b9cf7da2963e8d75e66b274e30378f92b1080d68d96bd44b6682afc7c801909');
--> statement-breakpoint
