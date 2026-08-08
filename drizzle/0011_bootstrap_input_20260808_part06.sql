INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_128107883692e64dbd4f9f60','wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md',9,'Seite 6','entsprechende Übermittlung, werden die Zugangsberechtigten erneut von der

DB InfraGO AG aufgefordert innerhalb von 5 Arbeitstagen zu antworten. Somit

stehen knapp sechs Wochen für die Stellungnahme zur Verfügung.

2. Wie validiert DB InfraGO die von den EVU im Rahmen der Stellungnahmen

übermittelten Angaben, wenn es derzeit systemseitig nicht möglich ist,

kurzfristige, durch DB InfraGO verursachte Stornierungen in den Systemen von

DB InfraGO zu erfassen, sodass diese im Anschluss automatisiert aus der

Stornoquote herausgerechnet werden können?

Die DB InfraGO AG verfügt über die erforderlichen Informationen, allerdings

sind diese in verschiedenen Systemen gespeichert und können nur manuell

validiert werden.

4. Wenn das Trassenangebot in NEP 1 von InfraGO nicht zu meinem Verkehr passt,

(z.B. Zeitlich nicht fahrbar) und daher die Angebotene Trasse nicht vom EVU

angenommen wird, sinkt die Annahmequote?

Es ist richtig, dass sofern zum ENP angebotene Trassen nicht angenommen

werden, sich dies negativ auf die Annahmequote auswirkt.

a. Kommentar als Ergänzung: Warum? also muss ich die Trassen alle

annehmen um sie danach zu stornieren?

Wenn die Trassenangebote angenommen, später aber wieder storniert

werden, hat diese Stornierung wiederum negative Auswirkungen auf die

Stornoquote.

b. Kommentar als Ergänzung: um somit meine Annahme Quote zu retten?

Um nicht von der Stornoquote oder der Annahmequote negativ betroffen

zu sein, müssen Sie bereits zum Zeitpunkt der Anmeldung Ihren

tatsächlichen Bedarf anmelden. Darüber hinaus sollten Sie erweiterten

Konstruktionsspielräumen nur so zustimmen, dass wir Ihnen ein Ihrem

Bedarf entsprechendes Trassenangebot erstellen können.

Sofern im Rahmen der vereinfachten oder komplexen Koordinierung keine',244,'{"canonical_url":null,"normalized_sha256":"ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c","page":6,"source_id":"src_b5fb8ccb80d176b38310","source_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","source_version_id":"sv_4fbe32d73c5618c02a183f43"}','8871cf6282f3f871d575a78576b268bd83fa14e06373fe12fad47f4ff9eb2c12');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0ceac7f7783af845704ab736','wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md',10,'Seite 6','annehmbare Lösung möglich ist, besteht die Möglichkeit einer Abmeldung

bis zum VNP. In diesem Fall entstehen keine negativen Auswirkungen auf

die Annahme- oder Stornoquote.',24,'{"canonical_url":null,"normalized_sha256":"ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c","page":6,"source_id":"src_b5fb8ccb80d176b38310","source_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","source_version_id":"sv_4fbe32d73c5618c02a183f43"}','00c964fbde0fb649377bc2f925098270f77e7d08630d4065ca922720c34665a7');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_a17ac4dcb38672799aa4','file','Flyer Common Interface','https://www.dbinfrago.com/resource/blob/11089300/4ecb2b413d7c89a1eb2c6d9d7fe4bb80/Flyer-Common-Interface-data.pdf','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_e519d2e39261121ea3f27952','src_a17ac4dcb38672799aa4','e519d2e39261121ea3f27952b47e1d7f8d485c2d3721e6b48ddf52d9d1fa417d','3dbb09ceb66f9f7999813d89471e025806efa3f8d0ec45bc656d8475e48c629a',206796,'application/pdf','Flyer-Common-Interface-data.pdf','sources/normalized/bootstrap/flyer-common-interface-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089300/4ecb2b413d7c89a1eb2c6d9d7fe4bb80/Flyer-Common-Interface-data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/flyer-common-interface-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Flyer-Common-Interface-data.pdf","page_count":1,"raw_binary_committed":false,"schema_version":1,"size_bytes":206796,"source_id":"src_a17ac4dcb38672799aa4","source_sha256":"e519d2e39261121ea3f27952b47e1d7f8d485c2d3721e6b48ddf52d9d1fa417d","source_version_id":"sv_e519d2e39261121ea3f27952","title":"Flyer Common Interface","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','e519d2e39261121ea3f27952b47e1d7f8d485c2d3721e6b48ddf52d9d1fa417d','src_a17ac4dcb38672799aa4','sv_e519d2e39261121ea3f27952','{"content_duplicate_group":null,"original_filename":"Flyer-Common-Interface-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','3dbb09ceb66f9f7999813d89471e025806efa3f8d0ec45bc656d8475e48c629a','src_a17ac4dcb38672799aa4',NULL,'{"content_duplicate_group":null,"original_filename":"Flyer-Common-Interface-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','8063b35fbcb7d5c3d6709f290338181d321eb3c675d316e3659c55f08091a0cf','src_a17ac4dcb38672799aa4',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089300/4ecb2b413d7c89a1eb2c6d9d7fe4bb80/Flyer-Common-Interface-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_e519d2e39261121ea3f27952' WHERE id='src_a17ac4dcb38672799aa4';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/flyer-common-interface-data.md','Flyer Common Interface','D a s „Co m m o n In t e r fa ce“ – S c h n it t st e lle für Me ld un g s a ust a us c h m it TA F / T A P T S I Ziel der TAF/TAP TSI ist es, europaweiten Datenaustausch ohne Zusatzaufwand zu ermöglichen, unabhängig davon in welchem Land ein beteiligter Bahnakteur ist. TAF/TAP definiert daher neben dem Meldungsaustausch auch eine harmonisierte System-Schnit','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','a982a8ce04f53cefc1d7eddf3543b6d1859ccae81951fc113db1d9588b4840f6','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/11089300/4ecb2b413d7c89a1eb2c6d9d7fe4bb80/Flyer-Common-Interface-data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_a17ac4dcb38672799aa4","source_version_id":"sv_e519d2e39261121ea3f27952"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/flyer-common-interface-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_06f0cca69bd1f70ec0093d0c','wiki/sources/flyer-common-interface-data.md',0,'Seite 1','D a s „Co m m o n In t e r fa ce“ – S c h n it t st e lle

für Me ld un g s a ust a us c h m it TA F / T A P T S I

Ziel der TAF/TAP TSI ist es, europaweiten Datenaustausch ohne Zusatzaufwand

zu ermöglichen, unabhängig davon in welchem Land ein beteiligter Bahnakteur

ist. TAF/TAP definiert daher neben dem Meldungsaustausch auch eine

harmonisierte System-Schnittstelle mit erforderliche Spezifikationen. Diese wird

in TAF/TAP „Common Interface“ – kurz: CI – genannt.

• Eine Software, die strukturierte Datenformate aus Systemen beteiligter Unternehmen in

TAF/TAP-Meldungen übersetzt bzw. TAF/TAP-Meldungen zurück in das jeweilige lokale

Format. Dies kann man sich wie eine Art „Dolmetscher“ vorstellen:

• Grundsätzlich benötigt jedes Unternehmen zur Teilnahme am TAF/TAP-Datenaustausch

ein CI. Zusätzlich bietet die DB InfraGO AG für verschiedene Elemente aber eigene

Lösungen an, wie z.B. das Trassen-Bestellportal (bisher: TPN). Daher ist ein eigenes CI

nicht für alle Beteiligten immer notwendig, nur dann wenn eigene Software verwendet

wird

• Die Standard CI-Software kann als fertiges Produkt bei der RNE (RailNetEurope)

erworben werden, genau wie das für den Datenaustausch vorgeschriebene

Sicherheitszertifikat: https://rne.eu/it/products/ccs/

• Alternativ kann eine selbst entwickelte oder von einem anderen Anbieter erworbene

Schnittstellen-Software für die Bereiche Fahrplanung und Betrieb genutzt werden; die

Spezifikationen gibt die RNE bzw. die ERA vor. Unternehmen können sich natürlich

zusammentun, um Aufwand und Kosten zu reduzieren.

• Es ist kein zentrales System bei RNE oder einem anderen europäischen Akteur. Der

TAF/TAP-Meldungsaustausch erfolgt standardmäßig bilateral zwischen den Unternehmen.

dbinfrago.com/taf-tap-tsi',256,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089300/4ecb2b413d7c89a1eb2c6d9d7fe4bb80/Flyer-Common-Interface-data.pdf","normalized_sha256":"3dbb09ceb66f9f7999813d89471e025806efa3f8d0ec45bc656d8475e48c629a","page":1,"source_id":"src_a17ac4dcb38672799aa4","source_sha256":"e519d2e39261121ea3f27952b47e1d7f8d485c2d3721e6b48ddf52d9d1fa417d","source_version_id":"sv_e519d2e39261121ea3f27952"}','79a13d1eb0ffab3b1b07a52c8926cd9978ad032d012e9360c483fb4f4112a855');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_d2976558d7a33946b943','file','Flyer Company Code','https://www.dbinfrago.com/resource/blob/11089290/4d0d46e1e07b0fb5a22f8a6bd4cff0b7/Flyer-Company-Code-data.pdf','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_c0cdd67495939c10345fbc12','src_d2976558d7a33946b943','c0cdd67495939c10345fbc122514c4a42332ec0d1801c888943e96cc57039861','cae117e243401d941e992896498a6e83cf35f458715ccc5199a8660257b87615',512725,'application/pdf','Flyer-Company-Code-data.pdf','sources/normalized/bootstrap/flyer-company-code-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089290/4d0d46e1e07b0fb5a22f8a6bd4cff0b7/Flyer-Company-Code-data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/flyer-company-code-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Flyer-Company-Code-data.pdf","page_count":2,"raw_binary_committed":false,"schema_version":1,"size_bytes":512725,"source_id":"src_d2976558d7a33946b943","source_sha256":"c0cdd67495939c10345fbc122514c4a42332ec0d1801c888943e96cc57039861","source_version_id":"sv_c0cdd67495939c10345fbc12","title":"Flyer Company Code","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','c0cdd67495939c10345fbc122514c4a42332ec0d1801c888943e96cc57039861','src_d2976558d7a33946b943','sv_c0cdd67495939c10345fbc12','{"content_duplicate_group":null,"original_filename":"Flyer-Company-Code-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','cae117e243401d941e992896498a6e83cf35f458715ccc5199a8660257b87615','src_d2976558d7a33946b943',NULL,'{"content_duplicate_group":null,"original_filename":"Flyer-Company-Code-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','5510ed8c9dcde4d3d4609dac20e7a9ca12ae71f53db26274c2f3b768eadaa6f7','src_d2976558d7a33946b943',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089290/4d0d46e1e07b0fb5a22f8a6bd4cff0b7/Flyer-Company-Code-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_c0cdd67495939c10345fbc12' WHERE id='src_d2976558d7a33946b943';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/flyer-company-code-data.md','Flyer Company Code','Wichtige Information zum Company Code (CC) und zur Umstellung auf den Organisation Code (OC) Verbindlich zur Nutzung von TAF/TAP TSI Bis zum 31.12.2025 benötigt noch jedes Unternehmen für den TAF/TAPkonformen Nachrichtenaustausch (z.B. zur Trassenanmeldung und im Betrieb) u.a. zur eindeutigen Identifizierung, einen Company Code. Ab dem 01.01.2026 tritt der O','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','05229f4308665054251cce3c43ce80a04e6b3bd4d744e0e64364dbff5dd59a07','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/11089290/4d0d46e1e07b0fb5a22f8a6bd4cff0b7/Flyer-Company-Code-data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_d2976558d7a33946b943","source_version_id":"sv_c0cdd67495939c10345fbc12"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/flyer-company-code-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1eadc89bffc0a74c02b50bef','wiki/sources/flyer-company-code-data.md',0,'Seite 1','Wichtige Information zum Company Code (CC)

und zur Umstellung auf den Organisation Code

(OC)

Verbindlich zur Nutzung von TAF/TAP TSI

Bis zum 31.12.2025 benötigt noch jedes Unternehmen für den TAF/TAPkonformen Nachrichtenaustausch (z.B. zur Trassenanmeldung und im Betrieb)

u.a. zur eindeutigen Identifizierung, einen Company Code. Ab dem 01.01.2026

tritt der Organisation Code an die Stelle des Company Code. Daher beantragen

Sie bitte bis zum 01.01.2026 einen zum Company Code gleichlautenden

Organisation Code!

Beantragung des Company Codes

Sollten Sie bisher noch keinen Company Code haben und noch dieses Jahr mit

dem Nachrichtenaustausch gemäß TAF/TAP TSI beginnen wollen, müssen Sie

bei der UIC (International Union of Railways) einen Company Code

beantragen.

https://uic.org/supportactivities/it/rics

Der Company Code ist ebenfalls unter der Bezeichnung RICS-Code bekannt

(Railway Interchange Coding System).

Umstellung auf Organisation Code

Ab dem 01.01.2026 wird im TAF/TAP-Nachrichtenaustausch auf den

Organisation Code umgestellt. Für die Vergabe des Organisation Codes ist die

die ERA (European Union Agency for Railways, EUAR) zuständig.

Beantragung Organisation Code

Unsere Empfehlung: Bitte beantragen Sie den Organisation Code beim EBA!

https://www.eba.bund.de/DE/Themen/Fahrzeugeinst

ellungsregister/OCR/ocr_node.html

Kontakt: [E-Mail-Adresse entfernt]

https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi',174,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089290/4d0d46e1e07b0fb5a22f8a6bd4cff0b7/Flyer-Company-Code-data.pdf","normalized_sha256":"cae117e243401d941e992896498a6e83cf35f458715ccc5199a8660257b87615","page":1,"source_id":"src_d2976558d7a33946b943","source_sha256":"c0cdd67495939c10345fbc122514c4a42332ec0d1801c888943e96cc57039861","source_version_id":"sv_c0cdd67495939c10345fbc12"}','425701d68f548c2b1f2fac2b4b3f5d24f2575af105c2c067053260660670536b');
--> statement-breakpoint
