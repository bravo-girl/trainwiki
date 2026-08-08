INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c9746e39ec9ec628a11f73d2','wiki/sources/celex-32017d2075-de-txt.md',12,'Seite 5','Absatz 1, die Kosten des Infrastrukturbetreibers zu senken. Der Infrastrukturbetreiber veröffentlicht diese Kriterien

zusammen mit einer vorläufigen Zuweisung der verbleibenden Kapazität für die einzelnen Arten von Schienenver

kehrsdiensten im Rahmen der Maßnahmen gemäß Nummer 8 in seinen Schienennetz-Nutzungsbedingungen. Nach

dem Ende der Konsultation und unbeschadet der Verpflichtungen des Infrastrukturbetreibers gemäß Anhang IV

Nummer 3 stellt der Infrastrukturbetreiber den betroffenen Eisenbahnunternehmen auf der Grundlage der

Rückmeldungen der Antragsteller eine vorläufige Aufschlüsselung nach Art der Dienstleistung für die verbleibende

Kapazität bereit.“',79,'{"canonical_url":null,"normalized_sha256":"6f9374549aa7339e6c8e0655477ac6f91fae79fee7391e4033e1a0a5b952c710","page":5,"source_id":"src_fb87aaf72d699df68d35","source_sha256":"ee9fc6b3ca6f222446aef1bb77496672f1cf3083ed0a9ef6d493178d4e70839c","source_version_id":"sv_ee9fc6b3ca6f222446aef1bb"}','f4bc42731942b3bd50687b3ea5f540b1f41219f75051a026c9b15a4e76a29b64');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_9a8ac84849939f0108ef','file','Changelog BauFplo API EVU 2 17 0',NULL,'de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_9aacda759a56475d3f64f6e0','src_9a8ac84849939f0108ef','c78844566eba2b02b0ca49e411141537e83f45f357a5682c0ae52f5858b99ccb','910e8db9cbe296cd124592f82fabbfe4ac780700209d436e5c31aa4de59cc428',137463,'application/pdf','Changelog-BauFplo-API-EVU-2-17-0-data.pdf','sources/normalized/bootstrap/changelog-baufplo-api-evu-2-17-0-data/sv_9aacda759a56475d3f64f6e0.md','pdfplumber','0.11.9','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"c78844566eba2b02b0ca49e411141537e83f45f357a5682c0ae52f5858b99ccb","converter":{"name":"pdfplumber","profile":"bootstrap-markdown-v2","version":"0.11.9"},"final_url":null,"import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_9aacda759a56475d3f64f6e0.json","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/changelog-baufplo-api-evu-2-17-0-data/sv_9aacda759a56475d3f64f6e0.md","normalized_sha256":"910e8db9cbe296cd124592f82fabbfe4ac780700209d436e5c31aa4de59cc428","origin_page_url":null,"original_filename":"Changelog-BauFplo-API-EVU-2-17-0-data.pdf","page_count":4,"raw_binary_committed":false,"requested_url":null,"schema_version":2,"size_bytes":137463,"source_id":"src_9a8ac84849939f0108ef","source_sha256":"c78844566eba2b02b0ca49e411141537e83f45f357a5682c0ae52f5858b99ccb","source_version_id":"sv_9aacda759a56475d3f64f6e0","supersedes_source_version_id":null,"title":"Changelog BauFplo API EVU 2 17 0","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','c78844566eba2b02b0ca49e411141537e83f45f357a5682c0ae52f5858b99ccb','src_9a8ac84849939f0108ef','sv_9aacda759a56475d3f64f6e0','{"content_duplicate_group":null,"original_filename":"Changelog-BauFplo-API-EVU-2-17-0-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','910e8db9cbe296cd124592f82fabbfe4ac780700209d436e5c31aa4de59cc428','src_9a8ac84849939f0108ef',NULL,'{"content_duplicate_group":null,"original_filename":"Changelog-BauFplo-API-EVU-2-17-0-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_9aacda759a56475d3f64f6e0' WHERE id='src_9a8ac84849939f0108ef';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/changelog-baufplo-api-evu-2-17-0-data.md','Changelog BauFplo API EVU 2 17 0','DB Changelog BauFplo API EVU Inhaltsverzeichnis 1. Einleitung. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1 2. Version 2.17.0 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1 2.1. Zusammenfassung der Auswirkungen','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','1b4e098d04d2c4475816ce0819398df6285ff1d748473d225d71ec9f1aa5a811','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_9a8ac84849939f0108ef","source_version_id":"sv_9aacda759a56475d3f64f6e0"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/changelog-baufplo-api-evu-2-17-0-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_dbba9e8d8ff88994e53eab19','wiki/sources/changelog-baufplo-api-evu-2-17-0-data.md',0,'Seite 1','DB

Changelog BauFplo API EVU

Inhaltsverzeichnis

1. Einleitung. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1

2. Version 2.17.0 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1

2.1. Zusammenfassung der Auswirkungen . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1

3. Version 2.16.4 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1

3.1. Zusammenfassung der Auswirkungen . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1

3.2. Detaillierte Änderungen. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1

4. Version 2.16.1 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2

4.1. Zusammenfassung der Auswirkungen . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2

4.2. Detaillierte Änderungen. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2

5. Version 2.8.0 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 3

5.1. Zusammenfassung der Auswirkungen . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 3

5.2. Detaillierte Änderungen. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 3

6. Version 2.2.0 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4

1. Einleitung

Diese Änderungsübersicht der Schnittstellenbeschreibung der Digitalen',700,'{"canonical_url":null,"normalized_sha256":"910e8db9cbe296cd124592f82fabbfe4ac780700209d436e5c31aa4de59cc428","page":1,"source_id":"src_9a8ac84849939f0108ef","source_sha256":"c78844566eba2b02b0ca49e411141537e83f45f357a5682c0ae52f5858b99ccb","source_version_id":"sv_9aacda759a56475d3f64f6e0"}','8871c6fdced54e5f70468706ea36a29656ea3bf9b816924ba2692cff47c8e34d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_32fb7d0aa6862651a4ec8e78','wiki/sources/changelog-baufplo-api-evu-2-17-0-data.md',1,'Seite 1','Baufahrplananordnung wird fortlaufend gepflegt und informiert über Anpassungen,

Erweiterungen und Korrekturen der Schnittstelle. Ziel ist es, relevante Änderungen kompakt

darzustellen und die Bewertung möglicher Auswirkungen auf Ihre Systeme zu unterstützen.

Bitte prüfen Sie die aufgeführten Punkte und planen Sie erforderliche Anpassungen

rechtzeitig ein. Bei Fragen nutzen Sie bitte die bekannten Support-Kanäle.

2. Version 2.17.0

2.1. Zusammenfassung der Auswirkungen

Erhöhung der Versionsnummer, um der bereitgestellten Version auf dem DB API

Marketplace zu entsprechen. Keine weiteren Änderungen im Vergleich zu Version 2.16.4.

3. Version 2.16.4

3.1. Zusammenfassung der Auswirkungen

▮ Breaking Changes: keine

▮ Deprecations ohne Ersatz:

▮ „Baumassnahme"

▮ „nummer"

▮ „zeitraum"

▮ „artDerArbeiten"

3.2. Detaillierte Änderungen

Tabelle 1. Beschreibung der Änderungen zwischen Version 2.16.4 und 2.16.1

Changelog BauFplo API EVU 1',121,'{"canonical_url":null,"normalized_sha256":"910e8db9cbe296cd124592f82fabbfe4ac780700209d436e5c31aa4de59cc428","page":1,"source_id":"src_9a8ac84849939f0108ef","source_sha256":"c78844566eba2b02b0ca49e411141537e83f45f357a5682c0ae52f5858b99ccb","source_version_id":"sv_9aacda759a56475d3f64f6e0"}','fdb2a5238bcc80d9c42a6e454ff25f35ff9749ddfc6748472d709b10b2241d2f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ee533dfa6e4ee31d78e0b364','wiki/sources/changelog-baufplo-api-evu-2-17-0-data.md',2,'Seite 2','DB

Thema Änderung

Baumassnahme Das Element „Baumassnahme" ist deprecated

mit dem Hinweis in der Beschreibung, dass es

nur noch für das Fahrplanjahr 2026 relevant ist

und ab Fahrplanjahr 2027 nicht mehr befüllt wird.

Baumassnahme > properties > nummer Attribut „nummer" ist deprecated mit dem

Hinweis in der Beschreibung, dass es nur noch

für das Fahrplanjahr 2026 relevant ist und ab

Fahrplanjahr 2027 nicht mehr befüllt wird.

Baumassnahme > properties > zeitraum Attribut „zeitraum" ist deprecated mit dem

Hinweis in der Beschreibung, dass es nur noch

für das Fahrplanjahr 2026 relevant ist und ab

Fahrplanjahr 2027 nicht mehr befüllt wird.

Baumassnahme > properties > artDerArbeiten Attribut „artDerArbeiten" ist deprecated mit dem

Hinweis in der Beschreibung, dass es nur noch

für das Fahrplanjahr 2026 relevant ist und ab

Fahrplanjahr 2027 nicht mehr befüllt wird.

4. Version 2.16.1

4.1. Zusammenfassung der Auswirkungen

▮ Breaking Changes: keine

▮ Deprecations mit Ersatz:

▮ „hatNotbremsueberbrueckung" am Zugverband wird ersetzt durch

„notbremsueberbrueckung" an den Regelungen

▮ „hatNotbremsueberbrueckung" am RahmendatenZugverband wird ersetzt durch

„notbremsueberbrueckung" an den Regelungen

▮ Additive Erweiterungen:

▮ „keineangabe" am Fahrplan

▮ „startBetriebsstelleRoute"

▮ „zielBetriebsstelleRoute"

▮ „bpolMeldepflichtig"

▮ „leichterNahverkehrstriebwagen"

▮ „notbremsueberbrueckung"

4.2. Detaillierte Änderungen

Tabelle 2. Beschreibung der Änderungen zwischen Version 2.16.1 und 2.8.0

Thema Änderung

Fahrplan > properties > keineangabe Neues Element „keineangabe" vom Typ

„KeineAngabe". Enthält Informationen zu Teilen

des Laufwegs, bei denen keine

Fahrplanangaben erfolgen (mit Angaben zu

Start-/Zielbetriebsstelle, Einreihung, Art und',230,'{"canonical_url":null,"normalized_sha256":"910e8db9cbe296cd124592f82fabbfe4ac780700209d436e5c31aa4de59cc428","page":2,"source_id":"src_9a8ac84849939f0108ef","source_sha256":"c78844566eba2b02b0ca49e411141537e83f45f357a5682c0ae52f5858b99ccb","source_version_id":"sv_9aacda759a56475d3f64f6e0"}','f7c378a84c3905cecdc374f3ad3e247a6f293d33c9c1260109bba94e96be0cba');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_99d0ef6198a77ada56e95a0c','wiki/sources/changelog-baufplo-api-evu-2-17-0-data.md',3,'Seite 2','Beschreibung).

Changelog BauFplo API EVU 2',6,'{"canonical_url":null,"normalized_sha256":"910e8db9cbe296cd124592f82fabbfe4ac780700209d436e5c31aa4de59cc428","page":2,"source_id":"src_9a8ac84849939f0108ef","source_sha256":"c78844566eba2b02b0ca49e411141537e83f45f357a5682c0ae52f5858b99ccb","source_version_id":"sv_9aacda759a56475d3f64f6e0"}','bc47b6132e4ed1ce599ba17c8df600695a9b02baab9d88db8c48012e68716f57');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e4fcbeb029e49b726bac725f','wiki/sources/changelog-baufplo-api-evu-2-17-0-data.md',4,'Seite 3','DB

Thema Änderung

Rahmendaten > properties > Attribut „startBetriebsstelleRoute" neu. Erste

startBetriebsstelleRoute Betriebsstelle der Gesamtzugroute (weicht von

„startBetriebsstelle" ab, wenn der Zug im

Fremdnetz beginnt).

Rahmendaten > properties > Attribut „zielBetriebsstelleRoute" neu. Letzte

zielBetriebsstelleRoute Betriebsstelle der Gesamtzugroute (weicht von

„zielBetriebsstelle" ab, wenn der Zug im

Fremdnetz endet).

Rahmendaten > properties > bpolMeldepflichtig Attribut „bpolMeldepflichtig" neu. Gibt an, ob die

Zugtrasse an die Bundespolizei gemeldet

werden muss.

RahmendatenZugcharakteristik > properties > Attribut „leichterNahverkehrstriebwagen" neu.

leichterNahverkehrstriebwagen Angabe, ob es sich um einen leichten

Nahverkehrstriebwagen handelt.

RahmendatenRegelungen > properties > Attribut „notbremsueberbrueckung" neu. Angabe,

notbremsueberbrueckung ob eine NBÜ erforderlich ist.

RahmendatenZugverband > properties > Attribut „hatNotbremsueberbrueckung" ist

hatNotbremsueberbrueckung deprecated mit dem Hinweis in der

Beschreibung, dass „notbremsueberbrueckung"

gilt. Bitte nutzen Sie dieses Attribut nicht mehr.

Zugverband > properties > Attribut „hatNotbremsueberbrueckung" ist

hatNotbremsueberbrueckung deprecated mit dem Hinweis in der

Beschreibung, dass „notbremsueberbrueckung"

gilt. Bitte nutzen Sie dieses Attribut nicht mehr.

5. Version 2.8.0

5.1. Zusammenfassung der Auswirkungen

▮ Breaking Changes:

▮ „zugfolgevermerk“ entfernt (Ablösung über „hinweise“)

▮ Deprecations mit Ersatz:

▮ „abfahrzeit“ wird ersetzt durch „abfahrtuhrzeit“

▮ „ankunftzeit“ wird ersetzt durch „ankunftuhrzeit“

▮ „betriebsname“ am Buchfahrplanverweis wird ersetzt durch „betriebsname“ am

Laufwegpunkt

▮ Additive Erweiterungen:

▮ „strecke“',194,'{"canonical_url":null,"normalized_sha256":"910e8db9cbe296cd124592f82fabbfe4ac780700209d436e5c31aa4de59cc428","page":3,"source_id":"src_9a8ac84849939f0108ef","source_sha256":"c78844566eba2b02b0ca49e411141537e83f45f357a5682c0ae52f5858b99ccb","source_version_id":"sv_9aacda759a56475d3f64f6e0"}','31d593a16f79d724eff6939e9469416e1992a6e83f33faa0fda3620e1ce18492');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ad4d19944316e64c15c902a0','wiki/sources/changelog-baufplo-api-evu-2-17-0-data.md',5,'Seite 3','▮ Validierungsänderung:

▮ „minItems“ bei „textbausteine“ entfällt

5.2. Detaillierte Änderungen

Tabelle 3. Beschreibung der Änderungen zwischen Version 2.8.0 und 2.2.0

Changelog BauFplo API EVU 3',25,'{"canonical_url":null,"normalized_sha256":"910e8db9cbe296cd124592f82fabbfe4ac780700209d436e5c31aa4de59cc428","page":3,"source_id":"src_9a8ac84849939f0108ef","source_sha256":"c78844566eba2b02b0ca49e411141537e83f45f357a5682c0ae52f5858b99ccb","source_version_id":"sv_9aacda759a56475d3f64f6e0"}','4924d4bc450e5cd7841732fe4d34c77cf4c050238d4c30211cc65769657c3a81');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a3e6fb4999ffa6450caa01e6','wiki/sources/changelog-baufplo-api-evu-2-17-0-data.md',6,'Seite 4','DB

Thema Änderung

Allgemeines > properties > textbausteine Attribut „minItems“ entfällt.

Laufwegpunkt > properties > betriebsname Attribut „betriebsname“ am „Laufwegpunkt“ neu.

Buchfahrplanverweis > properties > Attribut „betriebsname“ am

betriebsname „Buchfahrplanverweis“ ist deprecated, da dieser

am „Laufwegpunkt“ gepflegt wird.

Laufwegpunkt > properties > abfahrtuhrzeit Attribut „abfahrtuhrzeit“ neu.

Laufwegpunkt > properties > abfahrzeit Attribut „abfahrzeit“ ist deprecated mit dem

Hinweis in der Beschreibung, dass

„abfahrtuhrzeit“ gilt. Bitte nutzen Sie dieses

Attribut nicht mehr.

Laufwegpunkt > properties > ankunftuhrzeit Attribut „ankunftuhrzeit“ neu.

Laufwegpunkt > properties > ankunftzeit Attribut „ankunftzeit“ ist deprecated mit dem

Hinweis in der Beschreibung, dass

„ankunftuhrzeit“ gilt. Bitte nutzen Sie dieses

Attribut nicht mehr.

Laufwegpunkt > properties > strecke Attribut „strecke“ wurde hinzugefügt.

Laufwegpunkt > properties > zugfolgevermerk Attribut „zugfolgevermerk“ entfällt. Ein

Zugfolgevermerk wird über die „hinweise“ am

„Laufwegpunkt“ übergeben.

6. Version 2.2.0

Initialerstellung

Changelog BauFplo API EVU 4',139,'{"canonical_url":null,"normalized_sha256":"910e8db9cbe296cd124592f82fabbfe4ac780700209d436e5c31aa4de59cc428","page":4,"source_id":"src_9a8ac84849939f0108ef","source_sha256":"c78844566eba2b02b0ca49e411141537e83f45f357a5682c0ae52f5858b99ccb","source_version_id":"sv_9aacda759a56475d3f64f6e0"}','d524a3f05a9243d40f4d493b0a469218585037c2dc81129cbfa7170021e5081c');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_87a0d1da7ffe15350d9d','file','Click & Ride','https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236','de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_2e22d860175ac7f66366cbe9','src_87a0d1da7ffe15350d9d','a564b36a60a9e35982e72efd9cc2532b4b6399e780ae1be060c0104a5bf66e09','8d41ec8cb8e71bddb957af0f0b485d4120af7639a8996a6ff0c2021d1619e916',10091,'text/markdown','Click & Ride.md','sources/normalized/bootstrap/click-ride/sv_2e22d860175ac7f66366cbe9.md','identity-markdown','1','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236","contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"a564b36a60a9e35982e72efd9cc2532b4b6399e780ae1be060c0104a5bf66e09","converter":{"name":"identity-markdown","profile":"bootstrap-markdown-v2","version":"1"},"final_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236","import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_2e22d860175ac7f66366cbe9.json","media_type":"text/markdown","normalized_repo_path":"sources/normalized/bootstrap/click-ride/sv_2e22d860175ac7f66366cbe9.md","normalized_sha256":"8d41ec8cb8e71bddb957af0f0b485d4120af7639a8996a6ff0c2021d1619e916","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236","original_filename":"Click & Ride.md","page_count":null,"raw_binary_committed":false,"requested_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236","schema_version":2,"size_bytes":10091,"source_id":"src_87a0d1da7ffe15350d9d","source_sha256":"a564b36a60a9e35982e72efd9cc2532b4b6399e780ae1be060c0104a5bf66e09","source_version_id":"sv_2e22d860175ac7f66366cbe9","supersedes_source_version_id":null,"title":"Click & Ride","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','a564b36a60a9e35982e72efd9cc2532b4b6399e780ae1be060c0104a5bf66e09','src_87a0d1da7ffe15350d9d','sv_2e22d860175ac7f66366cbe9','{"content_duplicate_group":null,"original_filename":"Click & Ride.md"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','8d41ec8cb8e71bddb957af0f0b485d4120af7639a8996a6ff0c2021d1619e916','src_87a0d1da7ffe15350d9d',NULL,'{"content_duplicate_group":null,"original_filename":"Click & Ride.md"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','daf1240ee2303bd9945b06008260763b22f1034269435ad1e712e77a0104eca2','src_87a0d1da7ffe15350d9d',NULL,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
