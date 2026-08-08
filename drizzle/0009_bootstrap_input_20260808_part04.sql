INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_c5afa20ea56973906da4','file','code of conduct netzfahrplan',NULL,'de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_eb5996835007d62cfc7ee534','src_c5afa20ea56973906da4','3d0b374d1fc6e56ea3c13a99524ac6f09f9ee5304577300702bd4a78c61c2578','8c7fc89d6cc0282642e4740caa000d3a73642da60daaca5e9028c8534039a28a',365594,'application/pdf','code-of-conduct-netzfahrplan-data.pdf','sources/normalized/bootstrap/code-of-conduct-netzfahrplan-data/sv_eb5996835007d62cfc7ee534.md','pdfplumber','0.11.9','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"3d0b374d1fc6e56ea3c13a99524ac6f09f9ee5304577300702bd4a78c61c2578","converter":{"name":"pdfplumber","profile":"bootstrap-markdown-v2","version":"0.11.9"},"final_url":null,"import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_eb5996835007d62cfc7ee534.json","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/code-of-conduct-netzfahrplan-data/sv_eb5996835007d62cfc7ee534.md","normalized_sha256":"8c7fc89d6cc0282642e4740caa000d3a73642da60daaca5e9028c8534039a28a","origin_page_url":null,"original_filename":"code-of-conduct-netzfahrplan-data.pdf","page_count":3,"raw_binary_committed":false,"requested_url":null,"schema_version":2,"size_bytes":365594,"source_id":"src_c5afa20ea56973906da4","source_sha256":"3d0b374d1fc6e56ea3c13a99524ac6f09f9ee5304577300702bd4a78c61c2578","source_version_id":"sv_eb5996835007d62cfc7ee534","supersedes_source_version_id":null,"title":"code of conduct netzfahrplan","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','3d0b374d1fc6e56ea3c13a99524ac6f09f9ee5304577300702bd4a78c61c2578','src_c5afa20ea56973906da4','sv_eb5996835007d62cfc7ee534','{"content_duplicate_group":null,"original_filename":"code-of-conduct-netzfahrplan-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','8c7fc89d6cc0282642e4740caa000d3a73642da60daaca5e9028c8534039a28a','src_c5afa20ea56973906da4',NULL,'{"content_duplicate_group":null,"original_filename":"code-of-conduct-netzfahrplan-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_eb5996835007d62cfc7ee534' WHERE id='src_c5afa20ea56973906da4';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/code-of-conduct-netzfahrplan-data.md','code of conduct netzfahrplan','RTK - Runder Tisch Kapazität Code of conduct Netzfahrplan: Verhaltenskodex zum kapazitätsoptimierten Bestellverhalten Runder Tisch Kapazität | Branchen-Projekt | AG 2| Frankfurt am Main | 16.03.2020','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','33df3b0ad7c07108b40a4220578b506325cfa9a0513b6f663e5df816c45adaea','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_c5afa20ea56973906da4","source_version_id":"sv_eb5996835007d62cfc7ee534"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/code-of-conduct-netzfahrplan-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_909c1c0b897c4d555078bf32','wiki/sources/code-of-conduct-netzfahrplan-data.md',0,'Seite 1','RTK - Runder Tisch Kapazität

Code of conduct Netzfahrplan:

Verhaltenskodex zum kapazitätsoptimierten Bestellverhalten

Runder Tisch Kapazität | Branchen-Projekt | AG 2| Frankfurt am Main | 16.03.2020',26,'{"canonical_url":null,"normalized_sha256":"8c7fc89d6cc0282642e4740caa000d3a73642da60daaca5e9028c8534039a28a","page":1,"source_id":"src_c5afa20ea56973906da4","source_sha256":"3d0b374d1fc6e56ea3c13a99524ac6f09f9ee5304577300702bd4a78c61c2578","source_version_id":"sv_eb5996835007d62cfc7ee534"}','84bf14164a629793481ffed89baba992d96bcaba227e6a62818d312c49369010');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_193a6629d2f34b3dbadc3472','wiki/sources/code-of-conduct-netzfahrplan-data.md',1,'Seite 2','Code of conduct Netzfahrplan: Verhaltenskodex

zum kapazitätsoptimierten Bestellverhalten

Gemeinsam tragen wir als Zugangsberechtigte bei der Trassenanmeldung durch

unser Bestellverhalten dazu bei, dass die kostbare Kapazität auf dem Schienennetz

der Bundesrepublik Deutschland optimal für das Wachstum auf der Schiene genutzt

werden kann.

Folgenden Verhaltenskodex legen wir dabei zugrunde:

 Wir wählen den optimalen Bestellzeitpunkt (Netzfahrplan, 2.Netzfahrplanperiode,

unterjährig im Netzfahrplan. Gelegenheitsverkehr).

 Wir vermeiden Doppelbestellungen. Wenn das unvermeidbar ist, machen wir es

transparent.

 Wir bestellen das, was wir fahren wollen. Wir bestellen nicht taktisch.

 Nicht benötigte Trassen bestellen wir unmittelbar nach Bekanntwerden der

Nichtnutzung ab. Das gilt insbesondere nach Bekanntgabe des endgültigen Netzfahrplans.

 Wir nehmen an der Fahrlagenberatung teil. Gesprächswünschen verschließen wir uns

nicht. Auch an von anderen Zugangsberechtigten initiierten Konfliktlösungsgesprächen

nehmen wir teil.

2 RTK | 16.03.2020',129,'{"canonical_url":null,"normalized_sha256":"8c7fc89d6cc0282642e4740caa000d3a73642da60daaca5e9028c8534039a28a","page":2,"source_id":"src_c5afa20ea56973906da4","source_sha256":"3d0b374d1fc6e56ea3c13a99524ac6f09f9ee5304577300702bd4a78c61c2578","source_version_id":"sv_eb5996835007d62cfc7ee534"}','49c5f21c63b32f7351dba1fc6e6d58097ee8fb276e665a28e484a97522105b6e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_da4f43a9125fa9ff1ee1c91f','wiki/sources/code-of-conduct-netzfahrplan-data.md',2,'Seite 3','Code of conduct Netzfahrplan: Verhaltenskodex zum

kapazitätsoptimierten Verhalten für die DB InfraGO AG

Wir als DB InfraGO AG tragen dazu bei, dass die kostbare Kapazität auf

dem Schienennetz der Bundesrepublik Deutschland optimal für das Wachstum auf

der Schiene genutzt werden kann.

Folgenden Verhaltenskodex legen wir dabei für uns zugrunde:

 Wir zeigen bei Koordinierungsverfahren die Zeitlinie und die dazugehörige Schrittfolge

auf.

 Wir benennen nach Freigabe der Offenlegung der relevanten Geschäftsgeheimnisse

unverzüglich die konfliktbehafteten Parteien.

 Wir zeigen für jeden Konflikt alternative Lösungsmöglichkeiten – soweit vorhanden –

auf.

 Wir unterrichten nach der Koordinierung und Entscheidung beabsichtigte Ablehnungen

unverzüglich an die Bundesnetzagentur und ermöglichen so eine kurzfristige

Kommunikation an die Zugangsberechtigten.

 Wir schaffen schrittweise beginnend im Netzfahrplan 2022 Anreize für die

Zugangsberechtigten ihre Trassen zum aus Kapazitätssicht optimalen Bestellzeitpunkt

(Netzfahrplan, 2.Netzfahrplanperiode, unterjährig im Netzfahrplan. Gelegenheitsverkehr)

zu bestellen.

3 RTK | 16.03.2020',142,'{"canonical_url":null,"normalized_sha256":"8c7fc89d6cc0282642e4740caa000d3a73642da60daaca5e9028c8534039a28a","page":3,"source_id":"src_c5afa20ea56973906da4","source_sha256":"3d0b374d1fc6e56ea3c13a99524ac6f09f9ee5304577300702bd4a78c61c2578","source_version_id":"sv_eb5996835007d62cfc7ee534"}','9a8b1d9163b71de72ed5d163c9cbbe4c88882ddd712855a1e6668a84476bc4b4');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_660bf8039cf0527ee7b6','file','Download TAF/TAP Glossar',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_51fb412fc4f0d41650cb55bf','src_660bf8039cf0527ee7b6','51fb412fc4f0d41650cb55bfbd30199f90cdff881090b1f2af568d45ea8636e2','daa4d8e870f689a51764d980e10aa769e347a381d3d4a1cc30e57d7898bfd51e',186552,'application/pdf','Download-TAF-TAP-Glossar-data.pdf','sources/normalized/bootstrap/download-taf-tap-glossar-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/download-taf-tap-glossar-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Download-TAF-TAP-Glossar-data.pdf","page_count":3,"raw_binary_committed":false,"schema_version":1,"size_bytes":186552,"source_id":"src_660bf8039cf0527ee7b6","source_sha256":"51fb412fc4f0d41650cb55bfbd30199f90cdff881090b1f2af568d45ea8636e2","source_version_id":"sv_51fb412fc4f0d41650cb55bf","title":"Download TAF/TAP Glossar","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','51fb412fc4f0d41650cb55bfbd30199f90cdff881090b1f2af568d45ea8636e2','src_660bf8039cf0527ee7b6','sv_51fb412fc4f0d41650cb55bf','{"content_duplicate_group":null,"original_filename":"Download-TAF-TAP-Glossar-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','daa4d8e870f689a51764d980e10aa769e347a381d3d4a1cc30e57d7898bfd51e','src_660bf8039cf0527ee7b6',NULL,'{"content_duplicate_group":null,"original_filename":"Download-TAF-TAP-Glossar-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_51fb412fc4f0d41650cb55bf' WHERE id='src_660bf8039cf0527ee7b6';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/download-taf-tap-glossar-data.md','Download TAF/TAP Glossar','Glossar mit den wesentlichen Begriffen aus TAF/TAP TSI Stand Dezember 2023 - dieses Dokument wird laufend aktualisiert und online bereitgestellt Viele weitere Begriffe werden zudem im Glossar der TAF TSI und der TAP TSI erklärt (sowohl in Deutsch als auch Englisch) - an dieser Stelle beschränken wir uns auf einen Auszug - die deutschen Verordnungen finden Si','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','7c5b0cc2c4646c2fda2b5b58e0c52f19ecb9f4b60665994d69ee7c4f14c902af','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_660bf8039cf0527ee7b6","source_version_id":"sv_51fb412fc4f0d41650cb55bf"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/download-taf-tap-glossar-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_03b44018829e7dd5155845bc','wiki/sources/download-taf-tap-glossar-data.md',0,'Seite 1','Glossar mit den wesentlichen Begriffen aus TAF/TAP TSI

Stand Dezember 2023 - dieses Dokument wird laufend aktualisiert und online bereitgestellt

Viele weitere Begriffe werden zudem im Glossar der TAF TSI und der TAP TSI erklärt (sowohl in Deutsch als auch Englisch) - an dieser Stelle beschränken wir uns

auf einen Auszug - die deutschen Verordnungen finden Sie auch auf unserer Internetseite im Kapitel 3:

https://www.dbinfrago.com/taf-tap-tsi

Begriff Beschreibung

BDV Betriebsdatenverteiler. Datenschnittstelle des Betriebs der DB InfraGO AG, die sich gemäß den

Spezifikationen eines Common Interface verhält

CI (Common Interface) Die Abkürzung für das "Common Interface", also die technische Schnittstelle, die sowohl für die

Datenübertragung im Betrieb als auch in der Trassenanmeldung erforderlich ist. Neben den

Schnittstellen existieren allerdings auch Webanwendungen, die eine eigene Schnittstelle ersetzen (z.B.

das neue Bestellportal für Trassenanmeldungen)

Company Code Eindeutiger Code zur Identifikation eines Unternehmens, welches am Datenaustausch mit TAF/TAP

teilnimmt. Zwingende Voraussetzung für alle beteiligten Unternehmen. Beantragung erfolgt derzeit

bei der UIC, ab 2026 erfolgt die Beantragung für alle Akteure innerhalb der EU bei der ERA. Für

weitere Details s. bereits veröffentlichter Flyer

ERA Die ERA ist die European Union Agency of Railways mit dem Mandat: "The EU Agency for Railways is

mandated to issue single safety certificates and vehicle (type) authorisations valid in multiple

European countries and to ensure an interoperable European Rail Traffic Management System, in the

development and implementation of the Single European Railway Area." (zitiert von der ERA-

Homepage)',237,'{"canonical_url":null,"normalized_sha256":"daa4d8e870f689a51764d980e10aa769e347a381d3d4a1cc30e57d7898bfd51e","page":1,"source_id":"src_660bf8039cf0527ee7b6","source_sha256":"51fb412fc4f0d41650cb55bfbd30199f90cdff881090b1f2af568d45ea8636e2","source_version_id":"sv_51fb412fc4f0d41650cb55bf"}','bfbe2c96cb79fbdd9133266f78f17fb518e48a161ad7d0770df8999221eaa392');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_230476f029d841c4cf950a5d','wiki/sources/download-taf-tap-glossar-data.md',1,'Seite 1','Die ERA ist zudem für den Organisation Code verantwortlich (und grundsätzlich auch für den Company

Code)

IM Die englische Bezeichnung für ein EIU (Eisenbahninfrastrukturunternehmen), also ein "Infrastructure

Manager"

JSG JSG steht für die "Joint Sector Group". Die "TAF and TAP TSI RU/IM Joint Sector Group" wurde 2012

als eine freiwillige Organisation gegründet, um die Einführung der TAF TSI zu begleiten. Seit 2014 ist

auch die TAP TSI hier aufgenommen. Primär bereitet die JSG Positionen des Sektors für das TAF/TAP

Steering Committee vor, koordiniert Change Requests und unterstützt den Einführungsprozess der

ERA

LeadRU, auch LRU Das federführende EVU einer Verkehrsleistung. In der TAF/TAP ist kein Datenaustausch zwischen

diesem EVU und dem EIU vorgesehen, außer es ist in einem Trassenabschnitt gleichzeitig auch

ResponsibleRU. Es kann sein, dass ein und dasselbe EVU die Rollen des LeadRU, RA und ResponsibleRU

einnimmt

NAE Die National Allocation Entity ist eine Rolle, die durch die TAF/TAP TSI definiert ist und innerhalb eines

Landes für die eindeutige und einheitliche Vergabe von Location Codes (Primary und Subsidiary

Location Codes) verantwortlich ist. Die Location Codes werden von der NAE in einer eindeutigen Liste

verwaltet. In Deutschland ist die DB InfraGO AG von den Behörden mit der Durchführung dieser Rolle

betraut worden.

NBN Die Nutzungsbedingungen Netz - also die Vertragsgrundlage zur Nutzung von Trassen im Schienennetz

der DB InfraGO AG - Nachfolger der SNB

NCP Die Abkürzung steht für National Contact Point. Der National Contact Point fungiert im Auftrag des

Bundesministeriums für Digitales und Verkehr (BMDV) als nationale Anlaufstelle für den Deutschen',251,'{"canonical_url":null,"normalized_sha256":"daa4d8e870f689a51764d980e10aa769e347a381d3d4a1cc30e57d7898bfd51e","page":1,"source_id":"src_660bf8039cf0527ee7b6","source_sha256":"51fb412fc4f0d41650cb55bfbd30199f90cdff881090b1f2af568d45ea8636e2","source_version_id":"sv_51fb412fc4f0d41650cb55bf"}','ebfaea98e9fe9343c34da98d5913cfa014800372a6600b11ca5a7e490e403e89');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e00e5a9144c94aa2cf224841','wiki/sources/download-taf-tap-glossar-data.md',2,'Seite 1','Bahnsektor zur Umsetzung von TAF/TAP TSI und ist bei der DB InfraGO AG ansässig. Dabei nimmt er

die Interessenvertretung des EU-Mitgliedstaates Deutschland in den europäischen TAF/TAP Gremien

wahr. Beschrieben sind die Aufgaben des NCP auch in den EU-Verordnungen zu TAF/TAP TSI.

ObjectInfo TAF/TAP-Meldung im betrieblichen Datenaustausch, welche Angaben zu TrainAcitvities enthält. Sie

wird vom EVU an das EIU geschickt und beinhaltet aktuelle Informationen zu Anschluss- oder

Umlaufverknüpfungen zwischen Zügen. Einführung ist für 09/2023 geplant

Operations Der Bereich von TAF/TAP, der sich primär mit dem laufenden Betrieb beschäftigt. Die Bereiche

"Operations" und "Planning" sind die beiden fachlichen Säulen von TAF/TAP

OTN Operational Train Number (betriebliche Zugnummer). Entspricht in ihrer Funktion auf dem Gebiet der

DB InfraGO der heutigen Zugnummer.

Path Trasse. Objekt im Kontext des TAF/TAP-Modells. Also die Kapazität, der "Slot", auf dem der Zug fährt.

Wird durch eine PathID identifiziert

PDM bzw. Path Details Abkürzung für die Path Details Message, eine Pflichtnachricht in der Trassenanmeldung und eine

ebenfalls im Betrieb genutzte Nachricht. Diese Nachricht wird vom EIU an die EVU geschickt

Planning Der Bereich von TAF/TAP, der sich primär mit Trassenanmeldungen und dem Fahrplan beschäftigt. Die

Bereiche "Operations" und "Planning" sind die beiden fachlichen Säulen von TAF/TAP

Glossar zu TAF/TAP TSI, Stand Dezember 2023 Seite 1 von 3',208,'{"canonical_url":null,"normalized_sha256":"daa4d8e870f689a51764d980e10aa769e347a381d3d4a1cc30e57d7898bfd51e","page":1,"source_id":"src_660bf8039cf0527ee7b6","source_sha256":"51fb412fc4f0d41650cb55bfbd30199f90cdff881090b1f2af568d45ea8636e2","source_version_id":"sv_51fb412fc4f0d41650cb55bf"}','68d593d057dd33389fd32c85fcb478f95882a4fea00560edcd23278441c47fe0');
--> statement-breakpoint
