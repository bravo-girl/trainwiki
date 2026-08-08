INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','6dba466a03d1ceb021c9954b4288a73fd7299fb223e7eda5a3a92506e1588e9e','src_1e82f73ce6a5ce5ccce9','sv_a96e68d9b5a30593484c1ee0','{"content_duplicate_group":null,"original_filename":"Internationale Trassenanmeldung über das PCS - _Path Coordination System_.md"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','4039a05de1d6ac757d5456ce5e264aa30d6ba5ece223710efb81c7563d871082','src_1e82f73ce6a5ce5ccce9',NULL,'{"content_duplicate_group":null,"original_filename":"Internationale Trassenanmeldung über das PCS - _Path Coordination System_.md"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','bb0b016a2e344298a1702ce5c7413cfaabd49a1df275d0fa94a4da871fed3dba','src_1e82f73ce6a5ce5ccce9',NULL,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/path-coordination-system-11249694"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_a96e68d9b5a30593484c1ee0' WHERE id='src_1e82f73ce6a5ce5ccce9';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/internationale-trassenanmeldung-uber-das-pcs-path-coordination-system.md','Internationale Trassenanmeldung über das PCS - \"Path Coordination System\','Das Path Coordination System ist eine gemeinsame Webanwendung der in RailNetEurpoe (RNE) zusammengeschlossenen Infrastrukturbetreiber. PCS unterstützt die Abstimmungsprozesse für internationale Trassenanträge zwischen den Antragstellern und ermöglicht die Abgabe harmonisierter internationaler Trassenanmeldungen in einem einzigen Vorgang bei allen beteiligten','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','05a29d5eac0f466ebe446533b5f8822eb7807aea142c91b2c984d645bd0ab65c','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/path-coordination-system-11249694","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/path-coordination-system-11249694","source_id":"src_1e82f73ce6a5ce5ccce9","source_version_id":"sv_a96e68d9b5a30593484c1ee0"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/internationale-trassenanmeldung-uber-das-pcs-path-coordination-system.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3734701b5010583f65ea64cf','wiki/sources/internationale-trassenanmeldung-uber-das-pcs-path-coordination-system.md',0,'Inhalt','Das Path Coordination System ist eine gemeinsame Webanwendung der in RailNetEurpoe (RNE) zusammengeschlossenen Infrastrukturbetreiber. PCS unterstützt die Abstimmungsprozesse für internationale Trassenanträge zwischen den Antragstellern und ermöglicht die Abgabe harmonisierter internationaler Trassenanmeldungen in einem einzigen Vorgang bei allen beteiligten Infrastrukturmanagern. Um die reibungslose Weiterverarbeitung der PCS Trassenanmeldung bei der DB InfraGO AG zu gewährleisten, ist die korrekte und vollständige Dateneingabe erforderlich. Der One Stop Shop unterstützt Sie gerne bei der Erstellung und Abgabe Ihrer internationalen Trassenanmeldung.

Bitte beachten Sie, dass PCS bei der DB InfraGO AG derzeit in erster Linie für internationaleTrassenanmeldungen im Netzfahrplan genutzt werden kann. Aus IT-technischen Gründen ist eine Nutzung von PCS für unterjährige Änderungen zum Jahresfahrplan und für Gelegenheitsverkehre derzeit noch nicht empfehlenswert.

Ausführliche Informationen zur Anwendung von PCS stehen auf der Internetseite von RNE zur Verfügung. Der Link auf der rechten Seite führt direkt dorthin.',139,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/path-coordination-system-11249694","normalized_sha256":"4039a05de1d6ac757d5456ce5e264aa30d6ba5ece223710efb81c7563d871082","page":null,"source_id":"src_1e82f73ce6a5ce5ccce9","source_sha256":"6dba466a03d1ceb021c9954b4288a73fd7299fb223e7eda5a3a92506e1588e9e","source_version_id":"sv_a96e68d9b5a30593484c1ee0"}','09dfacb097ef2f06da949941ab0b3049cde0abfd9840b719d0972b60f27bd63b');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_bda60942e2d392ff9207','file','NBN 2024 Anlage 4 2 2 Nutzungsbedingungen Click Ride',NULL,'de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_c0a33d60eedb5a985aae5933','src_bda60942e2d392ff9207','74d906b570aadeca32ba6c7bae3a4743b5304f098f92406c5b9d6bdb5675d399','9d2e0d203eebd5c2d3c89066d98eeb669997e41368e25a84fd3f6454df4539b9',176241,'application/pdf','NBN_2024_Anlage_4-2-2_Nutzungsbedingungen-Click-Ride-data.pdf','sources/normalized/bootstrap/nbn-2024-anlage-4-2-2-nutzungsbedingungen-click-ride-data/sv_c0a33d60eedb5a985aae5933.md','pdfplumber','0.11.9','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"74d906b570aadeca32ba6c7bae3a4743b5304f098f92406c5b9d6bdb5675d399","converter":{"name":"pdfplumber","profile":"bootstrap-markdown-v2","version":"0.11.9"},"final_url":null,"import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_c0a33d60eedb5a985aae5933.json","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/nbn-2024-anlage-4-2-2-nutzungsbedingungen-click-ride-data/sv_c0a33d60eedb5a985aae5933.md","normalized_sha256":"9d2e0d203eebd5c2d3c89066d98eeb669997e41368e25a84fd3f6454df4539b9","origin_page_url":null,"original_filename":"NBN_2024_Anlage_4-2-2_Nutzungsbedingungen-Click-Ride-data.pdf","page_count":6,"raw_binary_committed":false,"requested_url":null,"schema_version":2,"size_bytes":176241,"source_id":"src_bda60942e2d392ff9207","source_sha256":"74d906b570aadeca32ba6c7bae3a4743b5304f098f92406c5b9d6bdb5675d399","source_version_id":"sv_c0a33d60eedb5a985aae5933","supersedes_source_version_id":null,"title":"NBN 2024 Anlage 4 2 2 Nutzungsbedingungen Click Ride","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','74d906b570aadeca32ba6c7bae3a4743b5304f098f92406c5b9d6bdb5675d399','src_bda60942e2d392ff9207','sv_c0a33d60eedb5a985aae5933','{"content_duplicate_group":null,"original_filename":"NBN_2024_Anlage_4-2-2_Nutzungsbedingungen-Click-Ride-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','9d2e0d203eebd5c2d3c89066d98eeb669997e41368e25a84fd3f6454df4539b9','src_bda60942e2d392ff9207',NULL,'{"content_duplicate_group":null,"original_filename":"NBN_2024_Anlage_4-2-2_Nutzungsbedingungen-Click-Ride-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_c0a33d60eedb5a985aae5933' WHERE id='src_bda60942e2d392ff9207';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/nbn-2024-anlage-4-2-2-nutzungsbedingungen-click-ride-data.md','NBN 2024 Anlage 4 2 2 Nutzungsbedingungen Click Ride','Anlage 4.2.2 zu den Nutzungsbedingungen Netz der DB Netz AG 2024 Nutzungsbedingungen Click&Ride Seite 1 von 6 Die DB InfraGO AG bietet ab dem 17.12.2019 mit Click&Ride (C&R) eine neue Anwendung zur Trassenanmeldung. Trassenanmeldungen über C&R sind nur für Trassen des Gelegenheitsverkehrs im Schienengüterverkehr, für Leerfahrten im Schienenpersonenverkehr un','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','39c8913aaa442b2bdb67322baa283b199cfa6c98b3dfe5e2051d52d7f165173c','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_bda60942e2d392ff9207","source_version_id":"sv_c0a33d60eedb5a985aae5933"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/nbn-2024-anlage-4-2-2-nutzungsbedingungen-click-ride-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4ae8fa6e9c47f4955682b1f0','wiki/sources/nbn-2024-anlage-4-2-2-nutzungsbedingungen-click-ride-data.md',0,'Seite 1','Anlage 4.2.2 zu den Nutzungsbedingungen Netz

der DB Netz AG 2024

Nutzungsbedingungen Click&Ride

Seite 1 von 6

Die DB InfraGO AG bietet ab dem 17.12.2019 mit Click&Ride (C&R) eine neue Anwendung zur

Trassenanmeldung. Trassenanmeldungen über C&R sind nur für Trassen des Gelegenheitsverkehrs im Schienengüterverkehr, für Leerfahrten im Schienenpersonenverkehr und Überführungsfahrten im Schienengüter- und Schienenpersonenverkehr mit einer Frist von weniger als 5 Arbeitstagen vor gewünschter Abfahrtszeit möglich, sofern diese Trassenanmeldungen

 ausschließlich das Schienennetz der DB InfraGO AG und/oder die unter Abschnitt 9 aufgezählten Strecken, auf denen die DB InfraGO AG fahrplanbildend ist, nutzen,

 keinen Fall einer besonders aufwändigen Bearbeitung darstellen (ausgenommen sind Züge

des Kombinierten Verkehrs, die über C&R bestellbar sind) und

 keinen Ankunftszeitpunkt haben, der später als 23.59h am Folgetag des Abfahrtstages liegt.

(1) Zugang

Die Anmeldung zur Anwendung (das Login) erfolgt über das DB NetzCockpit. Näheres ist den Nutzungsbedingungen zum NetzCockpit (Anlage 3.4.3.1 der NBN) zu entnehmen.

Um Click&Ride zu benutzen, navigieren Sie in Ihrem Browser1 einfach zu

https://clickandride.dbinfrago.com und melden sich mit Ihren Zugangsdaten an.

Click&Ride ist benutzbar auf Smartphones, Tablets und Desktop-Computern.

(2) Dokumentation

Die DB Netz AG stellt den angemeldeten Zugangsberechtigten in elektronischer Form ein aktuelles

Handbuch zur Verfügung, das die wesentlichen Funktionen und Abläufe bei der Nutzung von C&R

beschreibt.

Weitere Informationen sind im Internet unter https://www.dbnetze.com/clickandride erhältlich.

(3) Beratung',218,'{"canonical_url":null,"normalized_sha256":"9d2e0d203eebd5c2d3c89066d98eeb669997e41368e25a84fd3f6454df4539b9","page":1,"source_id":"src_bda60942e2d392ff9207","source_sha256":"74d906b570aadeca32ba6c7bae3a4743b5304f098f92406c5b9d6bdb5675d399","source_version_id":"sv_c0a33d60eedb5a985aae5933"}','7205d46fe79d94bb3a2c44e718069e670e8d6695431ccc682325b02cd3e463e9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_89f7839081b6498f728c5f1e','wiki/sources/nbn-2024-anlage-4-2-2-nutzungsbedingungen-click-ride-data.md',1,'Seite 1','Die DB Netz AG berät und unterstützt ihre Kunden umfassend bei fachlichen und technischen Fragen in Zusammenhang mit C&R. Die fachliche Betriebsführung steht telefonisch für Rückfragen von

Montag bis Freitag von 08.00 bis 15.30 Uhr zur Verfügung. Darüber hinaus können jederzeit rund

um die Uhr Rückfragen auch per E-Mail unter [E-Mail-Adresse entfernt] gestellt werden.

(4) Verfügbarkeit

Der Zugang zu C&R steht grundsätzlich uneingeschränkt, d.h. 24 Stunden am Tag, 365 Tage im

Jahr, zur Verfügung. Hiervon ausgenommen sind notwendige geplante Wartungsfenster sowie Stö-

1 Aktuell ist Click&Ride auf den Webbrowser Chrome (Mobil und Desktop) optimiert. Mit anderen Webbrowsern kann eine

erfolgreiche Benutzung aktuell noch nicht gewährleistet werden.

Gültig ab: 11.09.2024',109,'{"canonical_url":null,"normalized_sha256":"9d2e0d203eebd5c2d3c89066d98eeb669997e41368e25a84fd3f6454df4539b9","page":1,"source_id":"src_bda60942e2d392ff9207","source_sha256":"74d906b570aadeca32ba6c7bae3a4743b5304f098f92406c5b9d6bdb5675d399","source_version_id":"sv_c0a33d60eedb5a985aae5933"}','3dd146ed03d7c53fe1fc2306e133b90a1019ebe949448afeab7542c76bda9bec');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5cbb38d56b00bb80dfdf39d0','wiki/sources/nbn-2024-anlage-4-2-2-nutzungsbedingungen-click-ride-data.md',2,'Seite 2','Anlage 4.2.2 zu den Nutzungsbedingungen Netz

der DB Netz AG 2024

Nutzungsbedingungen Click&Ride

Seite 2 von 6

rungsfälle. Geplante Wartungsarbeiten werden, sofern möglich, in Tagesrandlagen bzw. nachts

durchgeführt.

Der Zugangsberechtigte ist selbst verantwortlich, die zur Nutzung von C&R notwendigen technischen Voraussetzungen (z.B. Ladezustände, Tk-Abdeckung Arbeitsspeicher) zu erfüllen.

(5) Rückfallebene

Im Fall des technischen Ausfalls bzw. im Fall von Übertragungsstörungen von C&R steht für alle

Zugangsberechtigten als Rückfallebene die Trassenanmeldemöglichkeit über TPN zur Verfügung.

(6) Datensicherheit

Für die Datensicherheit beim Zugang zu C&R ist der ZB durch Sicherstellen der ausschließlichen

Nutzung durch den/die befugten Mitarbeiter und/oder geeignete technische Vorkehrungen (Passwortsicherung) zu gewährleisten.

Die Anwendung C&R hält keine kunden- bzw. nutzerbezogenen Daten vor. Solche Daten werden

aus angebundenen, internen Systemen der DB Netz AG bezogen und nur soweit für die Transsenanfrage verwendet, wie dies für die Anmeldung, Konstruktion der jeweiligen Trasse und das sich

hierauf beziehende Angebot erforderlich ist. Ziff. 3.3.4.6 NBN bleibt unberührt. Session-Daten werden ausschließlich lokal auf den Endgeräten des ZB gespeichert und können dort nach Ende der

Session gelöscht werden.

(7) Missbräuchliche Verwendung

Der Kunde verpflichtet sich, die Anwendung C&R nicht missbräuchlich zu nutzen, insbesondere

 die Verfügbarkeit des C&R-Systems nicht durch übermäßig wiederholte (insbesondere innerhalb kürzerer Zeit wiederholte) Anmeldungen und/oder automatische Anmeldesysteme zu

beeinträchtigen,',206,'{"canonical_url":null,"normalized_sha256":"9d2e0d203eebd5c2d3c89066d98eeb669997e41368e25a84fd3f6454df4539b9","page":2,"source_id":"src_bda60942e2d392ff9207","source_sha256":"74d906b570aadeca32ba6c7bae3a4743b5304f098f92406c5b9d6bdb5675d399","source_version_id":"sv_c0a33d60eedb5a985aae5933"}','5e8476e9a0fc3b848975c631dd7b4bc90cd0162afde3ada15ccfa279533a80f4');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_6b9bd5fd8ef4bc0bcab672c2','wiki/sources/nbn-2024-anlage-4-2-2-nutzungsbedingungen-click-ride-data.md',3,'Seite 2',' keine Viren, unzulässige Werbesendungen, Ketteninformationen oder sexistische, rassistische oder anderweitig belästigende Kommentare zu übertragen,

 keine Rechte Dritter, insbesondere Rechte der genutzten TK-Unternehmen, Schutzrechte

(z.B. Urheber- und Markenrechte) zu verletzen,

 nicht gegen eisenbahnrechtliche Vorschriften und Regelungen des betrieblich-technischen

Regelwerks der DB Netz AG (vgl. Ziff.3.2.1.2.3 NBN) zu verstoßen.

Bei Zuwiderhandlungen behält sich die DB Netz AG vor, den Zugang zu C&R nutzerscharf zeitweilig

zu sperren. Der betroffene ZB wird hierüber schriftlich in Kenntnis gesetzt.

Bei wiederholten oder besonders schwerwiegenden Missbräuchen sperrt die DB Netz AG den Zugang endgültig.

Gültig ab: 11.09.2024',93,'{"canonical_url":null,"normalized_sha256":"9d2e0d203eebd5c2d3c89066d98eeb669997e41368e25a84fd3f6454df4539b9","page":2,"source_id":"src_bda60942e2d392ff9207","source_sha256":"74d906b570aadeca32ba6c7bae3a4743b5304f098f92406c5b9d6bdb5675d399","source_version_id":"sv_c0a33d60eedb5a985aae5933"}','8d40256a30e931fdf30d088b899d9535a02efdaa6e2217dcdc8ec099c8a4fe29');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b03d971cc2ee239368e50c8c','wiki/sources/nbn-2024-anlage-4-2-2-nutzungsbedingungen-click-ride-data.md',4,'Seite 3','Anlage 4.2.2 zu den Nutzungsbedingungen Netz

der DB Netz AG 2024

Nutzungsbedingungen Click&Ride

Seite 3 von 6

(8) Laufzeit/Kündigung

Nutzerzugänge zu C&R sind während des Vorliegens der Allgemeinen Zugangsvoraussetzungen zu

den Schienenwegen der DB Netz AG gem. Ziff. 3.2 NBN gültig. Entfallen die dort genannten Voraussetzungen (z.B. durch Kündigung von Nutzungsverträgen), erfolgt eine automatische Sperrung

aller zugeordneten Zugänge. ZB oder einbezogene EVU, für die Regelungen nach Ziff. 5.9.2 NBN

bestehen, sind von der Nutzung von C&R ausgeschlossen.

(9) Fahrplanbildende Strecken der DB InfraGO AG im Sinne von Ziffer 4.2.2 f) erster Aufzählungspunkt der NBN und Anlage 4.2.2. Einleitungstext

Zusätzlich zu den DB InfraGO-eigenen Strecken können in C&R für folgende Strecken Trassenanmeldungen abgegeben werden:

Streckennummer Strecke / Abschnitt

1043 Neumünster - Neumünster Süd AKN

1117 Lübeck-Kücknitz - Lübeck Skandinavienkai

1137 Brandenbaum - Lübeck Konstinbahnhof

1248 Hamburg-Veddel - Hamburg Süd

1253, 1294, 1295, 1296 Hamburg Süderelbbrücke - Hamburg-Waltershof

1254 Hamburg-Wilhelmsburg - Hamburg Hohe Schaar Süd

1293 Hamburg-Hausbruch - Hamburg-Hausbruch Mitte

1297 Hamburg Süd DB-Grenze - Hamburg Süd

1415, 9149 Bremen-Neustadt - Bremen-Grolland

1425 Bremen Inlandshafen Stw If - Bremen Stahlwerke

1554 Wilhelmshaven Ölweiche - Wilhelmshaven JadeWeserPort

1576 Emden - Emden Hbf Volkswagenwerk

1824 Einbeck-Salzderhelden - Einbeck Mitte

1922 Groß Gleidingen - Beddingen VPS

2316 Duisburg Sigle - Duisburg Hafen

Gültig ab: 11.09.2024',210,'{"canonical_url":null,"normalized_sha256":"9d2e0d203eebd5c2d3c89066d98eeb669997e41368e25a84fd3f6454df4539b9","page":3,"source_id":"src_bda60942e2d392ff9207","source_sha256":"74d906b570aadeca32ba6c7bae3a4743b5304f098f92406c5b9d6bdb5675d399","source_version_id":"sv_c0a33d60eedb5a985aae5933"}','02d84fc96c4c48c694d45bf495ced049dee3769c7b51b7c0b2a4b1a8976384f3');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3506269ac22729217a18900f','wiki/sources/nbn-2024-anlage-4-2-2-nutzungsbedingungen-click-ride-data.md',5,'Seite 4','Anlage 4.2.2 zu den Nutzungsbedingungen Netz

der DB Netz AG 2024

Nutzungsbedingungen Click&Ride

Seite 4 von 6

Streckennummer Strecke / Abschnitt

2423, 2727 Düsseldorf-Gerresheim - Wuppertal-Dornap Abzw

2530 Neuss Pbf Westseite - Kaarster See

2950 Hörne - Dissen-Bad Rothenfelde DB-Grenze

3443, 9498 Wörth (Rhein) - Wörth (Rhein) Alte Bahnmeisterei

4201 Eppingen - Stebbach

4220 Karlsruhe West - Karlsruhe Hafen

4228 Karlsruhe Rheinbrücke - Karlsruhe Rheinbrücke Raffinerien

4633 Tübingen Hbf - Herrenberg (ZÖA)

4841 Maulbronn West - Maulbronn

4850, 4851 Pforzheim Maihälden - Bad Wildbad

5865 Regensburg Hafenbrücke - Regensburg Bayernhafen

5941 Nürnberg-Eibach - Nürnberg Hafen

6264 Schwarzenberg (Erzgebirge) - Zwickau (Sachsen) Hbf

6426 Borstel (Kreis Stendal) - Niedergörne

6533 Fredersdorf (bei Berlin) - Rüdersdorf (bei Berlin)

6559, 6560 Wiesenau (Abzw) - Ziltendorf EKO - Ziltendorf

6623 Cranzahl - Annaberg-Buchholz

6624 Annaberg-Buchholz Süd - Schwarzenberg (Erzgebirge)

6626 Johanngeorgenstadt - Schwarzenberg (Erzgebirge)

6644 Annaberg-Buchholz - Flöha

6645 Chemnitz Süd - Aue (Sachsen)

6661 Kayna - Raitzhain

Gültig ab: 11.09.2024',157,'{"canonical_url":null,"normalized_sha256":"9d2e0d203eebd5c2d3c89066d98eeb669997e41368e25a84fd3f6454df4539b9","page":4,"source_id":"src_bda60942e2d392ff9207","source_sha256":"74d906b570aadeca32ba6c7bae3a4743b5304f098f92406c5b9d6bdb5675d399","source_version_id":"sv_c0a33d60eedb5a985aae5933"}','a82dc18d28340bc2a87a7706ef7a91140019f89e8e68bfb0e3373c519f491bc8');
--> statement-breakpoint
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
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ccfe9fee82f5f8689b262b52','wiki/sources/ril-402-0202-inb-2027-data.md',10,'Seite 6','stellphase NEP 1 mit der Trassenanmeldung abgegeben *

werden. Folgende Voraussetzungen müssen erfüllt sein, *

damit eine Flex-Abfahrt an einem Halt angemeldet werden *

darf: *

- Die planmäßige Haltezeit an der jeweiligen Betriebs- *

stelle muss mindestens 1,0 Minuten betragen, *

Gültig ab 13.12.2026',45,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":6,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','abe760a688b7d7d508cfb599f009d947a16dcd8bd660f2c93cdddd53c2e3a405');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3ed55318509da559af06b5c7','wiki/sources/ril-402-0202-inb-2027-data.md',11,'Seite 7','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 7

* - die Abfahrtsminute der verkehrlichen Abfahrtszeit

* darf nicht vor der Ankunftsminute der betrieblichen

* Ankunftszeit liegen,

*

- die verkehrliche Abfahrtszeit muss vor der betriebli-

*

chen Abfahrtszeit liegen,

*

* - e Abfahrtsminute der verkehrlichen Abfahrtszeit darf

* an Start-Bahnhöfen höchstens 3,0 Minuten vor der

* Abfahrtsminute der betrieblichen Abfahrtszeit liegen,

*

- die Abfahrtsminute der verkehrlichen Abfahrtszeit

*

darf an Unterwegs-Bahnhöfen höchstens 1,0 Minuten

*

vor der Abfahrtsminute der betrieblichen Abfahrts-

*

zeit liegen,

*

* - an sicherheitsrelevanten Stellen wie Strecken mit

wärterbedienten Schrankenanlagen ist die Anmel-

*

dung einer Flex-Abfahrt nicht zulässig.

*

* Sind Flex-Abfahrten unter Verletzung der o.g. Bedingungen

* angemeldet, dann werden sie nicht umgesetzt.

*

Anschlüsse an andere Verkehrsleistungen werden anhand

*

der betrieblichen Abfahrtszeit sichergestellt, bei Nutzung

*

der verkehrlichen Abfahrtszeit liegt die Sicherstellung des

*

Anschlusses beim EVU.

*

* Flex-Abfahrten ersetzen keine 1+1 Halte, diese bleiben

* weiterhin unverändert bestehen.

*

Bei Zügen des Nahverkehrs darf eine Haltezeit von 0,5 Minuten nicht unterschritten werden.

Auf Stadtschnellbahnstrecken darf die Mindesthaltezeit

nur dann unterschritten werden, wenn die gewünschte Reduktion durch das EVU unter Beachtung der technischen

und verkehrlichen Erfordernisse nachvollziehbar nachgewiesen wurde.

Bei Fahrtrichtungswechsel innerhalb eines Zuglaufs darf

die Mindesthaltezeit grundsätzlich 5 Minuten nicht unterschreiten.

Bei Vereinigen konventioneller Züge mit wirksamer Magnetschienenbremse sind mindestens 8 Minuten Haltezeit',225,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":7,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','4635db61add1b1cda611952c7d1590ab664a68c9020a012a2e6a3fe2439219bd');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7777c6c548c4ccc80c923b87','wiki/sources/ril-402-0202-inb-2027-data.md',12,'Seite 7','vorzusehen.

(4) Mindestwendezeiten schaffen die Voraussetzungen, dass Mindestwendeein am Zugendbahnhof pünktlich ankommender Zug mit zeiten

derselben Wagengarnitur pünktlich zurückfahren kann. Für

Gültig ab 13.12.2026',24,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":7,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','a30449ff5eb9f51f4ecf95d0c888532308985ba2def7d3a0289f0e3fa107e995');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_9130b2086d35b0378f341542','wiki/sources/ril-402-0202-inb-2027-data.md',13,'Seite 8','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 8

Triebwagen, Triebzüge und Wendezüge ist eine Mindestwendezeit von 5 Minuten erforderlich. Abweichende Wendezeiten müssen seitens der EVU nachgewiesen und mit

der DB InfraGO AG vereinbart werden.

Unterschreitung (5) Mindesthalte- und –Wendezeiten dürfen nicht unterschrit-

Mindestzeiten ten werden. Sofern dies bei der Trassenanmeldung nicht

berücksichtigt wird, betrachtet die DB InfraGO AG die

Trassenanmeldung als nicht plausibel.

Anzeigegeführte (6) Wird es notwendig, bei einem Zug innerhalb einer anzei-

Züge gegeführten Strecke oder zwischen zwei anzeigegeführten

Strecken die größte zulässige Geschwindigkeit eines Zuges

zu verändern, muss auch der Zugdateneinsteller im Triebfahrzeug umprogrammiert werden. Diese Umprogrammierung ist nur bei Stillstand des Zuges möglich, daher muss in

der Trassenanmeldung für eine zwischen den beiden anzeigegeführten Strecken liegende Betriebsstelle ein Halt

angemeldet werden. Eine Umprogrammierung ist nicht erforderlich, wenn die größte zulässige Geschwindigkeit des

Zuges höher ist als die zulässige Geschwindigkeit der anzeigegeführten Strecke.

Anzumeldende (7) Alle Züge sind grundsätzlich in der nach den technischen

Bremsstellung Normen höchstmöglichen Bremsstellung anzumelden.

der Züge Hierbei sind die besonderen Bedingungen beim Einsatz

von Wirbelstrombremsen zu beachten.

Alternative (8) Zu einem Fahrplan ist eine alternative Zugkonfiguration

Fahrplan- möglich, sofern diese sich nicht elementar von den urelement- sprünglichen Fahrplanangaben unterscheidet. So ist zum

kombinationen

Beispiel als Alternativbespannung zur angegebenen Ellok-

Baureihe eine alternative Ellok möglich. Ausgeschlossen',212,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":8,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','13a4b3c36cce787bf1abe62d9d4257b676913e9812fbc6ab1399376132c0a3b9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_6b606583b2268a96826e37b4','wiki/sources/ril-402-0202-inb-2027-data.md',14,'Seite 8','sind grundsätzlich die folgenden Kombinationen:

- Alternierende Traktionsarten (E-Traktion alternativ

zu Dieseltraktion) (Ellok kann keine Alternative zu

Dieseltraktion sein),

- Alternativen zwischen Zügen mit außergewöhnlichen

Eigenschaften gem. 402.0208 (z.B. ICE-A <-> ICE-W;

ICE-A <-> ICE-T),

- alternative Höchstgeschwindigkeiten (Ausnahme: Auf

den betroffenen Strecken sind keine Bahnübergänge

vorhanden oder die Fahrzeitdifferenz zwischen den

benachbarten Zugmeldestellen auf diesen Strecken

ist kleiner als 1 Minute).

Gültig ab 13.12.2026',65,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":8,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','89479af0ba0e7dc80ad195b886bcdb9ed9bd0528b54b54fc81c3af9ce226690e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c2e8c6cf536bb693a4000d97','wiki/sources/ril-402-0202-inb-2027-data.md',15,'Seite 9','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 9

Generell ausgeschlossen ist die Kombination „mit/ohne

Zugsicherungssystem ETCS“, da diese Alternativen je nach

Streckenanforderungen nicht gefahren werden können.

Werden Trassen mit alternativer Fahrplanelementkombination angemeldet, so ist als Basisversion immer die Zugkonfiguration mit den fahrplantechnisch ungünstigsten Parametern anzumelden (z.B. geringste Bremshundertstel bei

gewünschter niedrigster Bremsstellung; größere Zuglänge;

leistungsschwächstes Triebfahrzeug; Baureihen mit bestehender Brückenrestriktion mit dem Suffix „-B“).

In Zweifelsfällen kann die fahrplantechnisch ungünstigere

Zugkonfiguration nach Rücksprache mit der DB InfraGO

AG identifiziert werden.

(9) Aus betrieblich-technischen Gründen beträgt die Mindest- Mindestgeschwindigkeit in der Trassenkonstruktion 20 km/h. geschwindigkeit

(10) VO (EU) 1304/2014 definiert ein Streckennetz („leisere Lärmschutz nach

Strecken“), auf dem grundsätzlich nur „leise“ Züge verkeh- VO (EU)

ren dürfen. Züge mit mindestens einem „lauten“ Güterwa- 1304/2014

gen können grundsätzlich nur Strecken des „lauten Netzes"

nutzen.

Bezüglich der weiteren Ausführungen zur Umsetzung der „Laute"

Vorgaben der VO (EU) 1304/2014 siehe Ziffer 3.4.7. der Güterzüge

INB und insbesondere zu „lauten“ Güterzügen die Ziffer

3.4.7.2 der INB.

* Im Bestellportal werden durch Nutzung der Felder „laut“, Trassenanmelbzw. „leise“ die entsprechenden Angaben zum Zug ange- dung

klickt. Bei nicht zutreffenden/fehlenden Angaben wird die

Trassenanmeldung gem. Ril 402.0203 bzw. 402.0204

plausibilisiert.

Gültig ab 13.12.2026',195,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":9,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','667d5c8503cc1013883698a58f7a6c816e5928407b451fd10cf19c3853d2bc9e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a264d22ce494d075c0296662','wiki/sources/ril-402-0202-inb-2027-data.md',16,'Seite 10','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 10

Lärmschutz- (11) Als „leise“ sind bei der Trassenanmeldung anzugeben:

angabe in der

- Züge ohne Güterwagen,

Trassenanmeldung - Züge mit Güterwagen im Netzfahrplan und Gelegenheitsverkehr, wenn die eingesetzten Güterwagen nicht laut im Sinne Art. 5a der VO

(EU) 1304/2014 sind (vgl. Ziffer 3.4.7.2 der

INB ),

- Züge mit Güterwagen, die vom Betriebsverbot

des Art. 5a gemäß Nummer 7.2.2 des Anhangs

der VO (EU) 1304/2014ausgenommen sind,

Als „laut“ sind bei der Trassenanmeldung anzugeben:

- wenn die eingesetzten Güterwagen laut im Sinne des Art. 5a der VO (EU) 1304/2014 sind

(vgl. Ziffer 3.4.7.2 der INB),

- Züge mit Güterwagen, wenn die eingesetzten

Güterwagen laut im Sinne des Art. 5a der VO

(EU) 1304/2014 sind und den Ausnahmen der

Nummer 4.4.1 des Anhangs der VO (EU)

1304/2014 i.V.m. Ziffer 3.4.7.6a der INB und

Nummer 4.4.2 des Anhangs der VO (EU)

1304/2014 i.V.m. Ziffer 3.4.7.6b der INB unterliegen.

Hinweis: Auf besondere Umstände dieser Ausnahmen (z.B. „laute“ Schadfahrzeugfahrten, die

bei Fahrten zur Instandsetzung leise Strecken

befahren müssen, da keine Alternative zur Verfügung steht), ist im Feld „Bemerkungen Kunde

an DB InfraGO“ in der Trassenanmeldung hinzuweisen.

Ermittlung des (12) Zur Ermittlung des richtigen Laufwegs für die Trassenanzutreffenden meldung auf dem Schienennetz der DB InfraGO AG werden

Laufwegs die leiseren Strecken des Netzes im ISR unter „Gehört zu

einer leiseren Eisenbahnstrecke“ im Reiter „Infrastruktur“

als „leisere“ ausgewiesen.

Für Bundespoli- (13) Die EVU/ZB sind verpflichtet bei der Trassenanmeldung',238,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":10,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','9cbf4a494845d375085b745fad81a2f065353a0ad7f7e566f2b6da3966424320');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_55a150a8e0a9be894dbbc807','wiki/sources/ril-402-0202-inb-2027-data.md',17,'Seite 10','zei sicherheits- mitzuteilen, ob es sich um einen für die Bundespolizei sirelevanter Zug cherheitsrelevanten Zug handelt. Ein für die Bundespolizei

sicherheitsrelevanter Zug liegt in folgenden Fällen vor:

Gültig ab 13.12.2026',30,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":10,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','4976b6af07fe3c8eddf79a2f4d7d2834dfbef36390deb4a04c12bc99941f9456');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_aaae386dc4337f3dee0038e2','wiki/sources/ril-402-0202-inb-2027-data.md',18,'Seite 11','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 11

- im Personenverkehr bei Personentransporten zu

- Versammlungen (insb. Demonstrationen),

- Eishockeyspiele u.ä. sowie Großveranstaltungen wie z.B. Kirchentage, Tag der Deutschen Einheit).

- im Güterverkehr bei Transporten von

- Truppenkontingenten bzw. Militärgütern

(z.B. Waffen, Munition, Waffensystemen,

Gefechtsfahrzeugen)

- Uranhexafluorid / Uranerzkonzentrat,

- Schusswaffen, Munition oder Sprengstoffen.

Alle Trassenanmeldungen für derartige Züge müssen im

* Bestellportal durch Aktivieren der Checkbox „BPOLmeldepflichtig“ gekennzeichnet werden. Die Kennzeichnung muss stets für den kompletten Datensatz (inkl. evtl.

Ergänzungsfahrpläne) erfolgen, auch wenn die zuvor genannten Tatbestände nur auf einer Teilstrecke eines Laufwegs erfüllt sind. Bei Nutzung der Trassenanmeldevordrucke 402.0202V01 und V02 muss jeweils das Kästchen

„BPOL-meldepflichtig“ angekreuzt werden.

Fahrplanunterlagen für als „BPOL-meldepflichtig“ markierte Züge werden inkl. allen Änderungen und Ergänzungen

nach ihrer jeweiligen Inkraftsetzung von der DB InfraGO

AG an die in Ziffer 3.3.4.6 e) der INB genannten Stellen

übermittelt.

(14) Das Trassen anmeldende EVU/der ZB legt fest, an welchen Mehrkraft-

Betriebsstellen die Traktionsart gewechselt werden soll. Triebfahrzeuge

Dort wird die jeweils zutreffende Tfz-Baureihe (mit/ohne

Oberleitungsbetrieb) eingetragen, sowie folgende Aussagen:

* - Bei einem Halt: Angabe des bestellten Kundenhaltes Halteart

* in Verbindung mit der Angabe zum Traktionsart-

* wechsel. Damit wird im Fahrplan ein Halt vorgesehen.

* Der Traktionsartwechsel erfolgt während des Haltes

* bei Stillstand des Zuges,

* - Bei einer Durchfahrt: Angabe der Durchfahrt in Ver-',220,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":11,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','f76d205567b4a28445f0f0f0d8e9e48c6d4bbde4f20b1dac424f583cb8a6ea29');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_9772d7bc818195b2fbffae91','wiki/sources/ril-402-0202-inb-2027-data.md',19,'Seite 11','* bindung mit der Angabe zum Traktionsartwechsel.

Gültig ab 13.12.2026',10,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":11,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','4d3896a4614bfcd234e834c72028b44051b5f49607f2daec5825d347bb688e9e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f0587c4087094acfde05d0bb','wiki/sources/ril-402-0202-inb-2027-data.md',20,'Seite 12','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 12

Damit erfolgt der Traktionsartwechsel während der

Fahrt ohne Halt.

Hinweis: Die Baureihe des Mehrkrafttriebfahrzeugs wird in

der bekannten Schreibweise nach UIC-Merkblatt 438-3 und

unter Berücksichtigung der gewünschten Traktionsart angegeben, z. B. 80 2159 für Oberleitungsbetrieb bzw. 80

9991 für Betrieb ohne Oberleitung.

Akkumulatoren Wenn ein Halt zum Laden genutzt werden soll, ist ein Kun- *

laden denhalt in Verbindung mit der Angabe zum „Akku laden“ *

zu bestellen. *

*

Oberleitungsen- Soll ein Traktionsartwechsel beim Ende der Oberleitung *

de auf freier auf freier Strecke vorgenommen werden, so ist die an die- *

Strecke ser Stelle vorgesehene Traktionsart-Wechselstelle als Be- *

triebsstelle anzugeben. Die übrigen Regelungen dieses Ab- *

satzes gelten entsprechend. *

3 Bearbeitungszeiten im Gelegenheitsverkehr

Fristen für die (1) Die Zeiten zur Bearbeitung teilen sich auf in

Anmeldung

- die Zeit für die Trassenbearbeitung bei der DB Infra-

GO AG (Bearbeitungsfrist),

- die Zeit für die Annahme des Angebots durch das

EVU/den ZB (Annahmefrist) und

- die Zeit für die Bekanntgabe des Fahrplans durch die

DB InfraGO AG an alle beteiligte Stellen (Frist Fahrplanbekanntgabe).

Gültig ab 13.12.2026',186,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":12,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','b88bcf88db0569f9aef6524c516e7ce8ba68a6c0d0a2a08eb4e9136e8e99879a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_cc2c5a9423049706fe1efa03','wiki/sources/ril-402-0202-inb-2027-data.md',21,'Seite 13','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 13

Anmeldungen Frist für Tras- Frist des Kun- Frist für die

für Zuweisun- senbearbei- den zur An- Erstellung der

gen einzelner tung nahme des Fahrplan-

Zugtrassen Angebots bekanntgabe

Unverzüglich, 1 Arbeitstag 1 Arbeitstag

spätestens

jedoch innerhalb von 5

Arbeitstagen

Gültig ab 13.12.2026',48,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":13,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','5e8c96527c1784d2a9106a8220d605e0fbd2a5da9e0ef9cad1ba509207be4e76');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_26851061fb088dbb69fd37ab','wiki/sources/ril-402-0202-inb-2027-data.md',22,'Seite 14','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 14

mit folgenden Unverzüglich, 1 Arbeitstag 1 Arbeitstag

Eigenschaften spätestens

(besonders jedoch inneraufwändige halb von 5

Bearbeitun- Arbeitstagen

gen):

Fahrten mit

Dampflokomotiven (kohle- und ölgefeuert),

Transporte bei

denen eine

Einzelgrenzlastberechnung erforderlich bzw. gewünscht ist,

Messfahrten

und Probefahrten,

Fahrten mit

Fahrzeugen,

die nicht

schneller als

50 km/h fahren können

bzw. dürfen (z.

B. Nebenfahrzeuge,

Schadfahrten),

Fahrten, die

aufgrund der

angemeldeten Fahrzeuge, der

Streckenverhältnisse oder

anderer Parameter eine

besondere

Gültig ab 13.12.2026',76,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":14,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','d2af819cbfca2845e0fa46e10a7788998b79e27780ffe375dd8fb08e995ae09d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3b994e02365251eeaace7204','wiki/sources/ril-402-0202-inb-2027-data.md',23,'Seite 15','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 15

Form des

Fahrplans erfordern (z. B.

Zugleitbetrieb),

Änderungsmeldungen zu

Zugtrassen

des Netzfahrplans nach

dem Anmeldetermin im Sinne der Ziffer

4.2.1.2 Satz 3

INB,

für Fahrten im 2 Wochen 1 Arbeitstag 1 Arbeitstag

Gelegenheitsverkehr auf

nicht als geöffnet i.S.d.

Ziffer 2.5.5

INB gekennzeichneten

Strecken,

für grenzüber- es gelten die 1 Arbeitstag 1 Arbeitstag

schreitende Maximalfris-

Fahrten gem. ten der von

Ziffer 4.2.4 der jeweiligen

INB, Trassenanmeldung

betroffenen

ausländischen Infrastrukturbetreibern

für Transporte 5 Arbeitstage 1 Arbeitstag 5 Arbeitstage

i. S. der Ziffer

3.4.3 INB ,

für Versuchs- 4 Wochen 1 Arbeitstag 5 Arbeitstage

fahrten i. S.

der Ril

408.3431 Gültig ab 13.12.2026',107,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":15,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','c5dd5f135d77bb0559e35607e68a8f280df1cb8f988be64b83cb927bd29801a0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7a0cda6c3013c27034cb8d6c','wiki/sources/ril-402-0202-inb-2027-data.md',24,'Seite 16','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 16

Die vorgenannten Fristen sind Maximalfristen

Bei Anmeldungen für Zuweisung einzelner Zugtrassen ist

unverzüglich, spätestens aber in dem zuvor aufgeführten

Bearbeitungszeiten ein Trassenangebot abzugeben.

Änderungen von (2) Ändert das EVU/der ZB eine vollständig vorliegende Tras-

Anmeldungen senanmeldung, beginnt die Bearbeitungsfrist nach Abschnitt 4 erneut.

Fehlende oder (3) Der Beginn der Bearbeitungszeit richtet sich nach dem

nicht plausible Zeitpunkt, zu welchem die fehlenden Angaben der DB In-

Angaben fraGO AG vorliegen. Werden die Angaben nicht übermittelt, kann die Anmeldung zur Trassenbearbeitung nicht angenommen werden.

Großprogramme (4) Zur Vorbereitung von Großprogrammen (z. B. Messen,

Festveranstaltungen, Feiertagsverkehre) ist eine vorherige

Abstimmung mit der DB InfraGO AG über die Bearbeitungszeiten erforderlich.

4 Außergewöhnliche Transporte

Arten (1) Für außergewöhnliche Transporte gelten die Regeln der

Technischen Netzzugangsbedingungen (TNB). Folgende

Arten außergewöhnlicher Transporte können auftreten:

a) Lademaßüberschreitungen

Sendungen mit Lademaßüberschreitung sind Ladungen,

die unter Berücksichtigung der vorgeschriebenen Breiteneinschränkungen nach UIC-Verladerichtlinien das für die

jeweilige Strecke kleinste Lademaß überschreiten.

Kodifizierte Ladungseinheiten auf zugelassenen kodierten

Tragwagen des Kombinierten Verkehrs (KV), die das kleinste Lademaß einer der am Laufweg beteiligten Bahnen

überschreiten, werden ohne Beförderungsanmeldung nur

in festgelegten KV-Zügen auf einem besonders geprüften

Streckennetz befördert.

b) übergroße Fahrzeuge',194,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":16,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','aff7f6e114c3c53dc184a620915a9ca03acce5763581c2cfb58f240932720735');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8e347003365d72a200a6c0d2','wiki/sources/ril-402-0202-inb-2027-data.md',25,'Seite 16','Übergroße Fahrzeuge sind Fahrzeuge, welche die eingeschränkte Bezugslinie (Fahrzeugbegrenzungslinie) G1 bzw.

national G2 überschreiten.

Gültig ab 13.12.2026',17,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":16,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','d5eb5944ca8b2dc91ee2dfa8489b82687cba601f39a800f1c630ce47a8cec2cd');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d89d578ab234133cbbee3378','wiki/sources/ril-402-0202-inb-2027-data.md',26,'Seite 17','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 17

c) Schwerwagen

Schwerwagen sind alle Fahrzeuge, deren Lastmerkmale eines oder beide der folgenden Kriterien überschreiten:

- eine Radsatzlast von 22,5 t bei einem Mindestraddurchmesser von 840 mm und einem Mindestradsatzabstand von 1500 mm.

- Lastwerte der Normstreckenklasse (DB-

Streckenklasse D4).

d) Transporte mit Besonderheiten

Fahrzeuge oder Sendungen mit sonstigen technischen oder

betrieblichen Besonderheiten, z. B.: Fahrzeuge, deren Beschaffenheit nicht den Bestimmungen der EBO entsprechen oder Fahrzeuge, die keine Anschriften tragen, mit

denen die Kompatibilität des Fahrzeuges für den Bereich

der DB InfraGO AG ausgewiesen wird.

Hierunter fallen u. a.

- Baumaschinen und Kranwagen, die nur mit betrieblicher Sonderbehandlung befördert werden dürfen,

- geschleppte Fahrzeuge mit Übergangskupplung der

Bauart Scharfenberg,

- Fahrzeuge, die nicht in Regelzüge eingestellt werden

dürfen.

Fahrzeuge auf Hilfsdrehgestellen sind keine Außergewöhnlichen Transporte, wenn außer Geschwindigkeitsbeschränkungen keine weiteren Bedingungen angemeldet werden.

(2) Für jeden außergewöhnlichen Transport muss eine Mach- Trassenanbarkeitsstudie aT durchgeführt und eine Bearbeitungs- meldung

nummer (DB-Bza-Nummer) erteilt worden sein. Für regelmäßig verkehrende Transporte können Machbarkeitsstudien aT für den Zeitraum einer Fahrplanperiode durchgeführt und eine entsprechend gültige Bearbeitungsnummer

(Dauer-DB-Bza-Nr.) erteilt werden.

Ist in der Machbarkeitsstudie aT gefordert, dass vor der

Abgabe der Trassenanmeldung eine „Betriebsprogrammstudie für aT und Versuchsfahrten“ gem. Ziffer 5.5.4 INB

durchzuführen ist, muss deren Ergebnis vor Abgabe der',211,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":17,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','9fb833c0f8e58cb80421f143bc56608b96c08bb383bf23a077a1aa829df86ae1');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e921b231ba6aeb189929cf85','wiki/sources/ril-402-0202-inb-2027-data.md',27,'Seite 17','Trassenanmeldung vorliegen. In der Trassenanmeldung

Gültig ab 13.12.2026',8,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":17,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','deaed05652ea31b8148dd501ae5a784fedf150d802e5f7d35817f76fba0e4c1d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_47d6215737c2ab1497281d98','wiki/sources/ril-402-0202-inb-2027-data.md',28,'Seite 18','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 18

muss durch einen entsprechenden Eintrag im Bemerkungsfeld „Kunde an DB InfraGO AG“ ein Bezug zu dieser Betriebsprogramm-studie hergestellt werden. Die in der

Machbarkeitsstudie aT genannten betrieblichen Bedingungen und die in der Betriebsprogrammstudie übergebenen

verkehrlichen Bedingungen (Laufweg, Verkehrstag) sind

bei der Trassenanmeldung vom EVU zu beachten.

Werden die Vorgaben aus Machbarkeitsstudie aT bzw.

„Betriebsprogrammstudie für aT und Versuchsfahrten“ bei

der Trassenanmeldung vom EVU/ZB nicht vollständig berücksichtigt, wird die Trassenanmeldung als nicht plausibel

im Sinne der Ziffer 4.2.2.2 INB behandelt.

Ist für einen einzelnen außergewöhnlichen Transport die

Beförderung in einem Zug vorgesehen, für den bereits ein

Einzelnutzungsvertrag ohne Berücksichtigung dieses aT

abgeschlossen wurde, kann der ZB über den Vordruck

402.0202V04 die DB InfraGO AG beauftragen, die Durchführbarkeit eines aT innerhalb eines bestimmten zuvor geschlossenen Einzelnutzungsvertrags zu prüfen. Im Zuge

der Prüfung ermittelt die DB InfraGO AG, ob die betrieblichen Bedingungen des aT zu einer Veränderung der im

ENV festgelegten Fahrzeiten oder zu neuen Belegungskonflikten mit anderen bereits geplanten Trassen führen. In

diesem Fall ist eine Einstellung des aT nicht durchführbar.

Es findet keine Änderungskonstruktion, sondern nur eine

Machbarkeitsprüfung ohne Anpassung der Trasse statt.

Die Beauftragung muss mindestens 5 Arbeitstage vor dem

gewünschten Versandtag bei der DB InfraGO AG eingehen.

Geht die Beauftragung kurzfristiger ein, besteht keine Leistungspflicht der DB InfraGO AG.',216,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":18,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','67a5582b2d02bd14e8670ebd12f932813637c108885dfe03c114384af84e1d8f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_23825d3bb546fd1d0b57beb4','wiki/sources/ril-402-0202-inb-2027-data.md',29,'Seite 18','(3) Triebfahrzeuge, deren Streckenklasseneinstufung die Streckenklasse einer zu befahrenden Strecke überschreiten

benötigen eine Machbarkeitsstudie aT. In der Dauerbeförderungsanordnung (DA) 1110 sind alle bisher aus diesem

Grund erstellten Machbarkeitsstudien aT zusammengefasst. Die Gesamtausgabe der DA 1110 ist bei den Ansprechpartnern der Regionen erhältlich. Für Triebfahrzeuge deren Streckenklasseneinstufung die Streckenklasse einer zu befahrenden Strecke überschreiten und die bereits

in der DA 1110 für die zu befahrende Strecke enthalten

sind, ist unter „Beförderungsanordnung“ die 1110 anzugeben. Die Erstellung einer gesonderten Machbarkeitsstu-

Gültig ab 13.12.2026',81,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":18,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','00f1bb2e985bdc99edc39541319e945efa45d108444c1300fc4250f9435beca2');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4ae48f25abd3edda2b66a31a','wiki/sources/ril-402-0202-inb-2027-data.md',30,'Seite 19','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 19

die aT ist in diesem Fall für die Überschreitung der Streckenklasse nicht erforderlich. Für Triebfahrzeuge deren

Streckenklasseneinstufung die Streckenklasse einer zu befahrenden Strecke überschreiten und die nicht in der DA

1110 enthalten sind, ist eine Machbarkeitsstudie aT gemäß

Abschnitt 4 (2) dieser Richtlinie durchzuführen. Die für

diesen Fall erteilte Bza-Nr. ist unter „BZA“ anzugeben. Die

Aufnahme des Triebfahrzeugs in die DA 1110 wird automatisch geprüft und erfolgt zum jeweiligen Fahrplanwechsel, sofern die zugrundliegende Machbarkeitsstudie aT

auch allgemein gewährt werden kann. Sofern Triebfahrzeuge aus anderen Gründen als der Überschreitung der

Streckenklasse einer Machbarkeitstudie aT bedürfen bzw.

weitere Tatbestände im Wagenzug vorliegen, die einer

Machbarkeitstudie aT bedürfen, ist nach Abschnitt 4 (2) zu

verfahren.

5 Fahrdynamische Triebfahrzeugdaten

(1) Die Kenntnis der fahrdynamischen Triebfahrzeugdaten ist Definition

eine der wesentlichen Voraussetzungen für die Konstruktion von Zugtrassen. Hierzu benötigt die DB InfraGO AG

vom EVU Angaben zum Fahrverhalten der zum Einsatz

kommenden Fahrzeuge. Neben Triebfahrzeugen sind diese

Angaben auch für Triebzüge oder andere Fahrzeuge mit

eigenem Antrieb erforderlich.

(2) Sieht die Anmeldung von Zugtrassen den Einsatz von Bekanntgabe der

Triebfahrzeugen vor, deren fahrdynamische Daten der DB Daten an

InfraGO AG noch nicht bekannt sind, muss ein Antrag auf die DB InfraGO

AG

Aufnahme dieses Triebfahrzeugs in die Tfz-Datenbank gestellt werden. Um Verzögerungen bei der Bearbeitung zu

vermeiden, müssen diese Angaben spätestens zwei Monate

vor Abgabe der entsprechenden Trassenanmeldung bei der',232,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":19,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','497b18b4586a4728406b306a102f18c69a0145fae3cb1d22c24fc6343d8255fb');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_78780e5b4aba6e38e6659a12','wiki/sources/ril-402-0202-inb-2027-data.md',31,'Seite 19','DB InfraGO AG vorliegen.

(3) Im Einzelnen sind die im Vordruck 402.0202V05 enthalte- Vordruck

nen Datenelemente anzugeben. Eine tabellarische Erläuterung der Pflichtangaben ist auf Seite 1 des Vordrucks angegeben. Ohne diese Angaben kann das Triebfahrzeug

nicht in die IT-Systeme eingestellt werden.

Gültig ab 13.12.2026',44,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":19,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','9b4a5afa0b6c838a16cb61a22f17f73fbd48397c531dc50bbf312d8788f27f99');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d4bade0e9ae5fa737628fc01','wiki/sources/ril-402-0202-inb-2027-data.md',32,'Seite 20','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 20

6 Besondere Bedingungen für Schnellfahrstrecken (SFS)

Besonderheiten (1) Auf den folgenden Streckenabschnitten mit Tunneln der

bei Gefahrgut- SFS Hannover – Würzburg und Mannheim - Stuttgart dürzügen fen keine Gefahrgutzüge (beladene geschlossene Ganzzüge

mit gefährlichen Gütern nach GGVSEB (einschließlich dem

RID) sowie die daraus aufkommenden geschlossenen

Leerwagenganzzüge mit ungereinigten Kesselwagen und

Tankcontainern) verkehren:

- Abzw. Sorsum bis Abzw. Edesheim,

- Göttingen Abzw. Siekweg bis Bf. Fuldatal-

Ihringshausen,

- Ksl-Oberzwehren bis Fulda Pbf.,

- Fulda Bft. Bronnzell bis Würzburg Hbf,

- Abzw. Nantenbach bis Rohrbach,

- Mannheim Hbf bis Hockenheim,

- Üst. Forst bis Streckenende bei Stg-Zuffenhausen.

Keine offenen (2) Auf den Streckenabschnitten nach Absatz 1 sowie auf den

Autotransport- Streckenabschnitten

wagen

- Bf Siegburg – Abzw. Mönchhof der SFS Köln –

Rhein/Main,

- Bf Allersberg – Bf Ingolstadt Nord der SFS Nürnberg

– Ingolstadt,

- Bf Unterleiterbach – Bf Erfurt Hbf der SFS Nürnberg

– Erfurt

- Abzw. Rübholz bis Einfahrsignale Ulm Hbf der SFS

Wendlingen - Ulm

dürfen keine Reisezüge mit offenen, beladenen Autotransportwagen verkehren.

Kein Güterver- (3) Auf den Streckenabschnitten Bf Siegburg – Abzw. Mönchkehr hof der SFS Köln – Rhein/Main und Bf Allersberg – Bf Ingolstadt Nord der SFS Nürnberg – Ingolstadt dürfen keine

Güterzüge verkehren.

Gültig ab 13.12.2026',208,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":20,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','1f278a3f9628318e5579b48804498aefe776ea26349d5e68b37a30a47f54c20a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_62cdbed0ae026171d7bffce7','wiki/sources/ril-402-0202-inb-2027-data.md',33,'Seite 21','Bahnbetrieb Trassenmanagement

Planungsprocedere; 402.0202

Trassenanmeldungen Seite 21

(4) Auf den Streckenabschnitten Fulda Bft Bronnzell – Bf Keine Güterzüge

Burgsinn der SFS Hannover-Würzburg und Bf Unterleiter- mit besetzten

bach – Erfurt Hbf der SFS Nürnberg – Erfurt dürfen keine Reisezugwagen

Güterzüge verkehren, die mit Personen besetzte Reisezugwagen mitführen (z.B. „rollende Landstraße“, Militärzüge mit Personenbeförderung).

(5) Die strukturelle Festigkeit der Fahrzeuge muss für die Be- Befahren mit

lastung aus der Begegnung mit anderen Fahrzeugen, deren mehr als 250

Geschwindigkeit entsprechend den örtlichen Bedingungen km/h

mehr als 250 km/h betragen kann, ausgelegt sein. Hierbei

ist die Belastung bei Tunnelbegegnungen besonders zu berücksichtigen.

(6) Auf dem Streckenabschnitt Bf Siegburg – Abzw. Mönchhof SFS Kölnder SFS Köln – Rhein/Main muss bei Geschwindigkeiten Rhein/Main

von über 200 km/h die Bremsausrüstung der Fahrzeuge

für die entsprechende Geschwindigkeit (max. 300 km/h)

und 40 Promille geeignet sein.

(7) Auf den Streckenabschnitten, die mit mehr als 200 km/h Toilettenanbefahren werden können, dürfen nur Reisezüge mit ge- lagen

schlossenem System der Toilettenanlagen eingesetzt werden.

(8) Für lokbespannte Reisezüge (auch im Wendezugbetrieb) gilt Vmax 230 km/h

auf allen SFS eine Höchstgeschwindigkeit von 230 km/h.



Gültig ab 13.12.2026',186,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699814/21ef89a8cc867ed4a02809b3c981bdf4/Ril-402-0202-INB-2027-data.pdf","normalized_sha256":"ebf31d00f297d7678e3b05e1cb6d945c509edfd42f599db8331473176f8c37cb","page":21,"source_id":"src_185a09c3daddf7c8a278","source_sha256":"eb5fbe913792a6714c1d9e8df82b2794b40dcb4b69b4eb47dbef6712dae5737a","source_version_id":"sv_eaa9bd42fea1960a09060098"}','a619082103bf0f774c881fae9f90c4ddc7c92ebeefad459923f741d31b1ccdde');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_020acbee32d4681c346b','file','Ril 402 0202A01 INB 2027','https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf','de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_b97562496bb6bb640477c1e5','src_020acbee32d4681c346b','7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237','23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b',1118371,'application/pdf','Ril-402-0202A01-INB-2027-data.pdf','sources/normalized/bootstrap/ril-402-0202a01-inb-2027-data/sv_b97562496bb6bb640477c1e5.md','pdfplumber','0.11.9','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","converter":{"name":"pdfplumber","profile":"bootstrap-markdown-v2","version":"0.11.9"},"final_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_b97562496bb6bb640477c1e5.json","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/ril-402-0202a01-inb-2027-data/sv_b97562496bb6bb640477c1e5.md","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/netzfahrplan-11861526","original_filename":"Ril-402-0202A01-INB-2027-data.pdf","page_count":12,"raw_binary_committed":false,"requested_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","schema_version":2,"size_bytes":1118371,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5","supersedes_source_version_id":null,"title":"Ril 402 0202A01 INB 2027","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237','src_020acbee32d4681c346b','sv_b97562496bb6bb640477c1e5','{"content_duplicate_group":null,"original_filename":"Ril-402-0202A01-INB-2027-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b','src_020acbee32d4681c346b',NULL,'{"content_duplicate_group":null,"original_filename":"Ril-402-0202A01-INB-2027-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','da617b1120ac5d20d3ec0e668d30479e24c9d6fe6fbcb2bf2f35b63c192fb884','src_020acbee32d4681c346b',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_b97562496bb6bb640477c1e5' WHERE id='src_020acbee32d4681c346b';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/ril-402-0202a01-inb-2027-data.md','Ril 402 0202A01 INB 2027','Richtlinie Bahnbetrieb Trassenmanagement Trassenanmeldung 402.0202A01 Netzfahrplan Seite 1 1 Vorbemerkungen Das nachfolgende Formular findet Anwendung für die Anmeldung von Trassen zum Netzfahrplan sowie für Gelegenheitsverkehre mit mehr als 10 Verkehrstagen. Darüber hinaus kann es für die Stornierung und die Änderung bestehender Trassen im Rahmen noch verfü','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','b6049b6251c57d720b1cc33ba5d58189615dcf9ec6ea19c553003d84cdad284a','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/netzfahrplan-11861526","source_id":"src_020acbee32d4681c346b","source_version_id":"sv_b97562496bb6bb640477c1e5"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/ril-402-0202a01-inb-2027-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4022b5d49e72a8174512ea87','wiki/sources/ril-402-0202a01-inb-2027-data.md',0,'Seite 1','Richtlinie

Bahnbetrieb Trassenmanagement

Trassenanmeldung 402.0202A01

Netzfahrplan Seite 1

1 Vorbemerkungen

Das nachfolgende Formular findet Anwendung für die Anmeldung von Trassen zum Netzfahrplan

sowie für Gelegenheitsverkehre mit mehr als 10 Verkehrstagen. Darüber hinaus kann es für die

Stornierung und die Änderung bestehender Trassen im Rahmen noch verfügbarer Kapazitäten

verwendet werden.

Wird das Formular zur Anmeldung von Änderungen bestehender Trassen verwendet, genügt die

Angabe der Trassen-ID (PAID) der zu ändernden gebuchten Trasse und der geänderten

Konstruktionsvorgaben. Wird das Formular zur Stornierung bestehender Trassen genutzt, genügt die

Angabe der PAID und der zu stornierenden Verkehrstage und / oder Laufwegabschnitte.

Fehlende Angaben fordert die DB InfraGO AG bei den vom anmeldenden EVU/ZB benannten

Personen oder Stellen unverzüglich nach. Nach Ablauf der Anmeldefrist sind diese Angaben

innerhalb von 3 Arbeitstagen – nach Anforderung – zu übermitteln. Übermitteln die EVU/ZB die

Angaben nach Ablauf dieser Frist, behandelt die DB InfraGO AG die Anmeldung als

Gelegenheitsverkehr außerhalb des Netzfahrplans.

Sowohl beim elektronischen Datenaustausch über die EDV-Schnittstelle als auch bei der Nutzung

des Clients des Bestellportals sind zur Angabe der gewünschten Informationen ausschließlich die

dafür vorgesehenen Felder, Attribute und Kodierungen zu verwenden.

2 Leitfaden für die Verwendung des Formulars „Netzfahrplan“

Das Formular dient der Übermittlung aller notwendigen Daten, die bezogen auf den

Verwendungszweck des Formulars von der DB InfraGO AG benötigt werden.

Der Kunde wird gebeten, durch Ankreuzen in der Kopfzeile des Formulars den aktuellen

Verwendungszweck festzulegen.',229,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":1,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','75194c63ac9cb4b5ff0d6e3143af4d8f6f06b88959c194d6e9248fbbc484d214');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7bba0e6c658cbd8993023897','wiki/sources/ril-402-0202a01-inb-2027-data.md',1,'Seite 1','Dieser Leitfaden erläutert die Feldinhalte und stellt dar, ob die jeweilige Angabe für die Bearbeitung

der Trassenanmeldung zwingend erforderlich ist (M = Mussangabe) oder ob es sich um optionale

Angaben (O) handelt. Einige Felder sind nur unter bestimmten Voraussetzungen zu verwenden. Sind

diese gegeben, die jeweiligen Angaben aber zwingend erforderlich, wurden diese Felder mit (M)

gekennzeichnet.

Weiterhin werden Erläuterungen gegeben, wozu die DB InfraGO AG die Angaben benötigen und auf

welche Quellen zurückgegriffen werden kann.

Fachautor: I.IBF 31; Volker Butzbach, Tel.: 0160/97437 162 Gültig ab: 13.12.2026',86,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":1,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','efa4e152e2c9f281b2c8ec56a4c2cadcde116d426b465dd7e4209f97bf589b01');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f6834f3b4ad6f886074dda3c','wiki/sources/ril-402-0202a01-inb-2027-data.md',2,'Seite 2','Bahnbetrieb Trassenmanagement

Trassenanmeldung 402.0202A01

Netzfahrplan Seite 2

Anmeldung zum Netzfahrplan

Gelegenheitsverkehr mit mehr als 10 Verkehrstagen

Trassenanmeldung / Änderung einer Trasse

Storno zu Trasse (Zutreffendes bitte ankreuzen) (1) (1a)

Rahmenvertragskapazitätsnummer (2)

TainID TR

[24-stellig] Objekttyp CompanyCode Core-Element Variant Fahrplanjahr

(6a) [2-stellig] (RA) [12-stellig] [2-stellig] [4-stellig]

PathRequestID PR

[24-stellig] Objekttyp CompanyCode Core-Element Variant Fahrplanjahr

(6b) [2-stellig] (RA) [12-stellig] [2-stellig] [4-stellig]

[4-stellig]

(3) (4) (5) (6) (6c) (7)

Zuggattungshaupt- und -unternummer Zugnummer bestehende Vergleichstrasse Interne Bearbeitungs-ID Kunde CompanyCode (RRU) Kunden-Nr

(8) (8) (8) (8) (8)

Kunde, Bevollmächtigter laut INB Telefon Fax E-Mail Eingang der Anmeldung

Verkehrsart (9) Marktsegment (9a) sicherheitsrelevanter Zug (9b)

SPFV Lok-/Leerfahrt „Schnell“ Charter-/ Punkt-zu-Punkt-Verkehr

Schienenpersonen- Nostalgieverkehr

fernverkehr

SPNV Lok-/Leerfahrt “ÖDLA“ BPOL meldepflichtig

Schienenpersonennahverk.

SGV Lokfahrt „Schnell“ „Z-Flex“ Gefahrgutganzzug

Schienengüterverkehr

Verkehrszeitraum

ab Ort (10) Verkehrszeitraum (11) Verkehrstage (12) Zusatztage (13) Nichtverkehrstage (14)

Betrieblich-technische/konstruktionsbedingte Angaben (Zugcharakteristik)

1. Personenverkehr

ja

nein

ja

nein

ab Ort Vmax Tfz 1 Tfz 2 wende Länge Last Brems- Brh LZB PZB 90 ETCS NBÜ Bfpl- üFz Dosto- Nei- Strecken-

(15) (16) (17) (19) zug- (22) (23) stellung (25) (26) (26) (26) (27) Daten (29) Fz tech klasse,

fähig (24) elektron. (31) (33) Besonder-

(20) (z.B. heiten,

EBuLa) (35)

(28)

Taktangaben:

CaseReferenceID, Taktbezeichnung, Linienbezeichnung, Startbf. der Linie, Zielbf. der Linie.',203,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":2,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','397ca8fbdcdd78fe4a46280f8ebc430216564d801ffc31952fd0d546d6db867a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_9e4a49594c037d869ba5035f','wiki/sources/ril-402-0202a01-inb-2027-data.md',3,'Seite 2','Gültig ab: 13.12.2026',3,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":2,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','9908fbbcacbcc732f61b5c4456d6f7667496ee253b4df2f60db64afd2f61affb');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_fc80b93ae7b04d9aea881ff2','wiki/sources/ril-402-0202a01-inb-2027-data.md',4,'Seite 3','Bahnbetrieb Trassenmanagement

Trassenanmeldung 402.0202A01

Netzfahrplan Seite 3

Bei der Trassenbestellung ist nur die CaseReferenceID des Taktes anzugeben. Das Objekt für den Takt ist mit den

genannten Attributen separat zu erfassen und gilt für den gesamten Verlauf der Fahrlage/Trasse.

2. Güterverkehr

KV-Profil:

KV-Profil:

KV-Profil:

ab V Tfz Tfz Schie Gekup- Länge Last Brems Brh LZB PZB 90 ETCS elektron. Streck BZA/ (34) Lärmschutz Besonderheiten,

Ort max 1 2 be-Tfz pelt (22) (23) stel- (25) (26) (26) (26) Bord- en- Bef. (leise, laut mit Lü, Gefahrgut,

(15) (16) (18) (19) (21) (21) lung gerät klasse Anord. Befreiung, laut) Gefahrklasse,

(24) (z.B. (32) (30) (36a) Einzelgrenz-

EBuLa) lastber. (36)

(28)

Angaben zur Route

Kundenanmeldung Konstruktionsergebnisse

1 2

Ort Gleis Ank Halt Art Abf Vorgaben// Änderungen der Ank Abf Ank Abf

Zugcharakteristik

(37) (38) (39) (40) (41) (42) (43)

weitere Kundenwünsche: Hinweise aus der Konstruktion:

(44)

(45)

Mbr

Gültig ab: 13.12.2026',147,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":3,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','4d1b47494df8333d80c9179b3f36de86e428388b2f05c69f8a2ddf84d5107e0b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a7cfed68459f4901b384f309','wiki/sources/ril-402-0202a01-inb-2027-data.md',5,'Seite 4','Bahnbetrieb Trassenmanagement

Trassenanmeldung 402.0202A01

Netzfahrplan Seite 4

Versicherung: Der Besteller versichert, dass die eingesetzten Fahrzeuge für den bestellten Zuglauf zugelassen sind und den

„Anforderungen an Fahrzeuge des EVU“ gemäß der aktuellen Infrastruktur-Nutzungsbedingungen (INB) entsprechen. Für den Fall, dass

neben dem Trassenentgelt weitere Kosten (Gestellung streckenkundiger Mitarbeiter, Streckenuntersuchungen, Personaleinsatz außerhalb

der Besetzungszeiten o.ä.) erforderlich sind, erklärt er sich damit einverstanden, dass diese Kosten an ihn verrechnet werden. Für die evtl.

erforderliche Nutzung von Eisenbahninfrastruktur vor bzw. nach der Zugfahrt bestehen entsprechende Vereinbarungen zur Nutzung der

Eisenbahninfrastruktur (bei DB InfraGO AG bzw. Anschlussbahnen, Energieversorgern, anderen EIU usw.). (46)

Unterschrift des Kunden (47)

Feld- Art Inhalt Erläuterung

Nr. M/O

(1) M Das Formular kann für mehrere Zwecke verwendet

werden. Bitte kreuzen Sie den aktuellen

Verwendungszweck an.

(1a) M Bei Änderungen oder Stornierungen zu einer

gebuchten Trasse ist deren PAID anzugeben.

(2) (M) Soweit bei einer Trassenanmeldung zum Bei Anmeldungen zum Gelegenheitsverkehr

Netzfahrplan auf eine rahmenvertraglich kann keine rahmenvertraglich gesicherte

gesicherte Kapazität Bezug genommen werden Kapazität angegeben werden, da

soll, muss die entsprechende ID für die Rahmenverträge ihre Wirkung nur bei der

Rahmenvertragskapazität immer angeben Netzfahrplanerstellung entfalten.

werden.

(3) M Eingabe der vorgesehenen Zuggattungs-Haupt- u. Das Verzeichnis der Zuggattungen ist

Unternummer, z.B. 33.1, 50.2 ... Bestandteil der Planungsparameter. Die

Zuggattung wird durch die DB InfraGO AG

auch auf Anfrage mitgeteilt.',216,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":4,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','3336c5abaae69a9f54cdee617607bdc5dc0ef581d9aafd36a9b111179c9d793d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a7f8a65b7596c16c60ed6fda','wiki/sources/ril-402-0202a01-inb-2027-data.md',6,'Seite 4','(4) (M) Eingabe der vorgesehenen Zugnummer ohne Die Richtlinie 402.0207 beschreibt die

vorangestellte Nullen z.B. 695 (nicht 00695) Verwendung von Zugnummern.

(5) (M) Eingabe der PAID einer referenzierten Trasse (ggf. Die Angabe erleichtert das Auffinden der im

des vorhergehenden Fahrplans). EDV-System gespeicherten Daten.

(6) O Dieses Feld steht Ihnen zur freien Verfügung für

interne Angaben

(6a) M Angabe der TrainID gemäß TAF/TAP TSI

(6b) M Angabe der PathRequestID gemäß TAF/TAP TSI

(6c) M Angabe des CompanyCodes des durchführenden

EVU (ResponsibleRU)

(7) M Kundennummer Eine Kunden-Nr. erhalten Sie bei der

Aufnahme in unsere Kundendatei; dient der

Identifikation als EVU.

(8) M Die Kurzbezeichnung Ihres Unternehmens und der Bei Nutzungskonflikten ist innerhalb einer

Bevollmächtigte laut INB; dazu die Erreichbarkeit angemessenen Frist zum Lösungsvorschlag

über verschiedene Medien eine schriftliche Antwort abzugeben.

Gültig ab: 13.12.2026',131,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":4,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','dd8c0e56bc0941e9dbfacd6129845c89068caed7d523dd137a3ec549f88e0a2f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8bf4cf99bfbbfa9cf3a55a3a','wiki/sources/ril-402-0202a01-inb-2027-data.md',7,'Seite 5','Bahnbetrieb Trassenmanagement

Trassenanmeldung 402.0202A01

Netzfahrplan Seite 5

Feld- Art Inhalt Erläuterung

Nr. M/O

(9) M Kreuzen Sie bitte das entsprechende Feld an. An dieser Stelle ist auszuwählen, ob es sich

bei der Trasse um eine Anmeldung im SPFV,

SPNV oder SGV handelt.

(9a) M Kreuzen Sie bitte die entsprechenden Felder an. Die zutreffenden Marktsegmente sind zu

kennzeichnen. Erfolgt keine Auswahl, ergibt

sich die Zuordnung zu den übrigen

Marktsegmenten automatisch aus den

Anmeldeparametern. Siehe dazu Ziffer 5.3.2

der INB für den SPFV, Ziffer 5.3.3 der INB für

den SPNV und Ziffer 5.3.4 der INB für den

SGV.

Bei SPNV-Verkehren kreuzen Sie „ÖDLA“

an, wenn es sich um Verkehre auf Grundlage

eines öffentlichen Dienstleistungsauftrags

handelt.

(9b) (M) Kreuzen Sie bitte das entsprechende Feld an An dieser Stelle ist auszuwählen, ob es sich

bei der Trasse um einen für die

Bundespolizei sicherheitsrelevanten Zug

handelt (siehe 402.0202 Abschnitt 2 (13).

(10) (M) (entfällt, da VZR für die gesamte Kürzel oder Bezeichnung der Betriebsstelle

Trassenbestellung/Trasse gilt) gem. Richtlinie 100; bei jedem Wechsel des

Verkehrszeitraums ist eine neue Zeile

anzulegen.

(11) M Gewünschte Verkehrsperiode als Zeitabschnitt in Format: tt.mm.jj

der Schreibweise von tt.mm.jj bis tt.mm.jj.

(12) M Verkehrstag, z.B. tgl für tägliche Trasse. Format: tt.mm.jj

(13) (M) einzelne zusätzliche Verkehrstage (tt.mm.jj) Format: tt.mm.jj

(14) (M) einzelne ausgeschlossene Verkehrstage Format: tt.mm.jj

(15) (M) Siehe Angaben zu (10) Vorzugsweise sind die

PrimaryLocationCodes anzugeben, für

Betriebsstellen der DB InfraGO AG ist auch die Ril

100-Abkürzung zulässig.

(16) M Höchstgeschwindigkeit, mit der die Trasse Sie kann kleiner sein als die',250,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":5,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','e2d87b4c6327e11113429fe3113792ae36ee20520b074342fe75e71d61839b47');
--> statement-breakpoint
