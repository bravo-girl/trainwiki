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
