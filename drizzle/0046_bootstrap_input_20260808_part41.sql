INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','2707428f8a5de87a76dce3960edf9feb69fd9e662c6437dc25f58af56a9ccd51','src_4189235db5c801f1cc06',NULL,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/trassenportal-netz-11249618"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_40ae35c7249fd4a5720382ff' WHERE id='src_4189235db5c801f1cc06';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/trassenanmeldung-uber-das-trassenportal-netz-tpn.md','Trassenanmeldung über das Trassenportal-Netz (TPN)','Über das Trassenportal-Netz (TPN) können die Kund:innen (Eisenbahnverkehrsunternehmen und andere Zugangsberechtigte) online ihre Trassenanmeldungen, -änderungen und -abmeldungen abgeben und verwalten. Dadurch wird der Informationsaustausch zwischen unseren Kunden und der DB InfraGO AG beschleunigt. Bestellungen können einerseits über den Internetclient erfas','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','927a15a869241b0321ba868b2f65a62f95a43b4a922a73a1de2601e5a78c2d37','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/trassenportal-netz-11249618","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/trassenportal-netz-11249618","source_id":"src_4189235db5c801f1cc06","source_version_id":"sv_40ae35c7249fd4a5720382ff"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/trassenanmeldung-uber-das-trassenportal-netz-tpn.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f80bdce276f68c1071599590','wiki/sources/trassenanmeldung-uber-das-trassenportal-netz-tpn.md',0,'Inhalt','Über das Trassenportal-Netz (TPN) können die Kund:innen (Eisenbahnverkehrsunternehmen und andere Zugangsberechtigte) online ihre Trassenanmeldungen, -änderungen und -abmeldungen abgeben und verwalten. Dadurch wird der Informationsaustausch zwischen unseren Kunden und der DB InfraGO AG beschleunigt.

Bestellungen können einerseits über den Internetclient erfasst und verwaltet oder über eine elektronische EVU-Schnittstelle direkt an TPN übertragen werden. Zusätzlich steht Ihnen der Internetclient auch als Webclient (nur über Google Chrome) zur Verfügung.

Zugriff auf das TPN über den Internetclient

Die Freischaltung (User Account) zur Nutzung des Trassenportals DB InfraGO AG über den Internetclient können unsere Kund:innen über ihre Kundenbetreuung beantragen.

Weitere Detailinformationen über den Internetclient stehen hier ebenfalls zum Download zur Verfügung.

[Antragsformular Zugang TPN über den Internetclient (DOCX | 138,5 KB)](https://www.dbinfrago.com/resource/blob/11249642/579aaf69632303bde889896a80fd6687/antragsformular_tpn_internetclient-data.docx "Es wird eine Datei heruntergeladen")

Zugriff auf das TPN über die EVU-Schnittstelle

Weitere Detailinformationen über die elektronische EVU-Schnittstelle stehen hier zum Download zur Verfügung.

Detaillierte Informationen zu TPN-EVU-Schnittstellen erhalten sie über die Mailadresse [trassenportal@deutschebahn.com](mailto:trassenportal@deutschebahn.com).

[Dokumentation TPN-EVU-Schnittstelle, Version 2.6.10 (gültig ab 21.02.2021) (ZIP | 1,4 MB)](https://www.dbinfrago.com/resource/blob/11249650/ed49ecdb61dfd4673df596ee800caef1/Dokumentation-TPN-EVU-Schnittstelle-Version-2-6-10-data.zip "Es wird eine Datei heruntergeladen")',166,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/trassenportal-netz-11249618","normalized_sha256":"78d68f0333d4bddedbfdb77051a27c238ff7c7f0dc1e870f003ff434e687c391","page":null,"source_id":"src_4189235db5c801f1cc06","source_sha256":"6fea9e881dee67549dce2be1ff6a8a006e5c8ce23e005ecbe75b8facbf532860","source_version_id":"sv_40ae35c7249fd4a5720382ff"}','6b58bbdd482ffbe520b74f6de68fb7b1e798502aef1e2a5758fd25bef06fae1b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e044e11fc450606cf0168f08','wiki/sources/trassenanmeldung-uber-das-trassenportal-netz-tpn.md',1,'Inhalt','[Dokumentation TPN-EVU-Schnittstelle, Version 3.0.7 (gültig ab 21.02.2021) (ZIP | 1,4 MB)](https://www.dbinfrago.com/resource/blob/11249652/f7f6de2fc9c53d24aa2ca522431f5549/Dokumentation-TPN-EVU-Schnittstelle-Version-3-0-7-data.zip "Es wird eine Datei heruntergeladen")

**Bitte senden Sie die ausgefüllten Antragsformulare an Ihre zuständige Kundenberatung.**',26,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/trassenportal-netz-11249618","normalized_sha256":"78d68f0333d4bddedbfdb77051a27c238ff7c7f0dc1e870f003ff434e687c391","page":null,"source_id":"src_4189235db5c801f1cc06","source_sha256":"6fea9e881dee67549dce2be1ff6a8a006e5c8ce23e005ecbe75b8facbf532860","source_version_id":"sv_40ae35c7249fd4a5720382ff"}','a6546f30e079c6bb125504906fbe6561bd866939267ddfb72813fe61fecd9fe2');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_5cbb3fe592ef3e699d7a','file','Unterlage Infoveranstaltung Netzfahrplan 2027',NULL,'de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_d4d4bc1ade38ec7d2950d4f6','src_5cbb3fe592ef3e699d7a','c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9','75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa',4555991,'application/pdf','Unterlage-Infoveranstaltung-Netzfahrplan-2027-data.pdf','sources/normalized/bootstrap/unterlage-infoveranstaltung-netzfahrplan-2027-data/sv_d4d4bc1ade38ec7d2950d4f6.md','pdfplumber','0.11.9','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","converter":{"name":"pdfplumber","profile":"bootstrap-markdown-v2","version":"0.11.9"},"final_url":null,"import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_d4d4bc1ade38ec7d2950d4f6.json","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/unterlage-infoveranstaltung-netzfahrplan-2027-data/sv_d4d4bc1ade38ec7d2950d4f6.md","normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","origin_page_url":null,"original_filename":"Unterlage-Infoveranstaltung-Netzfahrplan-2027-data.pdf","page_count":21,"raw_binary_committed":false,"requested_url":null,"schema_version":2,"size_bytes":4555991,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6","supersedes_source_version_id":null,"title":"Unterlage Infoveranstaltung Netzfahrplan 2027","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9','src_5cbb3fe592ef3e699d7a','sv_d4d4bc1ade38ec7d2950d4f6','{"content_duplicate_group":null,"original_filename":"Unterlage-Infoveranstaltung-Netzfahrplan-2027-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa','src_5cbb3fe592ef3e699d7a',NULL,'{"content_duplicate_group":null,"original_filename":"Unterlage-Infoveranstaltung-Netzfahrplan-2027-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_d4d4bc1ade38ec7d2950d4f6' WHERE id='src_5cbb3fe592ef3e699d7a';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md','Unterlage Infoveranstaltung Netzfahrplan 2027','Netzfahrplan 2027 Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen April 2026 | Frankfurt','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','d4106f90bc308b5346d18a0b4c6a7c3e7e9344e4ba088a7ebcdcefe1d7cb64c7','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_5cbb3fe592ef3e699d7a","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_668108127d49ac9c251c7001','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',0,'Seite 1','Netzfahrplan 2027

Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote

und E-Mailtypen

April 2026 | Frankfurt',13,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":1,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','3a04224dbf1651cebd98e5363c41d21788816c2f940b4ac12112669abd45684b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_70041418e80188fc15501c18','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',1,'Seite 2','Modus Operandi – Fragen? Bitte nutzen sie „F&A“ bei MS Teams

Die gezeigte Unterlage wird im Nachgang verteilt

Sie haben Fragen im Rahmen der Veranstaltung?

• In MS Teams Menüleiste das Icon „F&A“ auswählen und

in das sich öffnende Fenster Ihre Frage schreiben

• Bereits eingestellte Fragen voten

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 2',66,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":2,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','717d6ef806c5b4a63ee26457a59f3e87d2679865410e70314159110e43d4ede0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1076d20ef657e59bc199f840','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',2,'Seite 3','Scope

NEP 2027

(1) Teilzuweisung

(2) Storno-/

Annahmequote

(3) Mailtypen/

Antwortoptionen

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 3',29,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":3,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','281008ca0536a88f620b2e86b745231fba791346697a49eb1417d89be8fc450a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c4650bcf877e3bbcb043a034','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',3,'Seite 4','Agenda

Storno-/Annahmequote

Teilzuweisung

Mailtypen/Antwortoptionen

Beantwortung von Fragen

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 4',25,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":4,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','f387350652652533664700d2e81df57fdbab88c1c48c042ae9711d735a703ac5');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5968e8bd596d2b788efe84e6','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',4,'Seite 5','Storno- und Annahmequote – Prozess*

„Erhöhtes Storno- und

Stornierungsentgelt“ Annahmequote

Quoten Stellungnahmen Finale Quoten

abfragen prüfen abfragen festgelegt

• Quoten sowie Storno-/Annahme- • Finale Quoten auf Basis der • DB InfraGO fragt Akzeptanz • Storno- und

details werden zur Stellungnahme Stellungnahmen werden “Erhöhtes Stornierungsentgelt“ Annahmequoten

an die ZB/EVU versendet durch DB InfraGO ermittelt

bei ZB/EVU ab Informationen zur 1. NEP

 Stornoquote überschritten 2027 liegen DB InfraGO

• Eingegangene Stellungnahmen der  Empfänger: ZB/EVU mit

bei > 30 %

ZB/EVU werden durch DB InfraGO vor und werden zur

überschrittener Stornoquote

geprüft  Annahmequote 1. NEP-Bearbeitung

und/oder unterschrittener

unterschritten bei: < 95% verwendet

• Prüfungsergebnisse inkl. ggf. Annahmequote

 Neu für 1. NEP 27: Quoten

korrigierte Quoten werden an die  Finale Quoten

kommen zum Tragen wenn  Ziel: Verlässlichkeit ggü.

ZB/EVU versendet

der Schwellwert in 2 von 3 DB InfraGO anzeigen  Umgang “Erhöhtes

Jahren über- bzw. Stornierungsentgelt“

unterschritten wurde

*

gemäß Ziffer 4.2.1.9 lit. c) – e) der INB 2027

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 5',179,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":5,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','567aea6a8e32834ce1b52f66c5ac2c6d924a48435942f64cb904499b9b6d6012');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_78795a4f1c47344bec72948e','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',5,'Seite 6','Storno- und Annahmequote – ZB/EVU gilt als „nicht verlässlich“,

wenn die vorgegebenen Quoten nicht eingehalten werden

ZB/EVU gilt als “verlässlich“

Annahmequote mind. 2 aus 3 Jahren >= 95 %

A B • Keine weitere Handlung notwendig

• Egal wo der Wert innerhalb der Grenzwerte liegt

Stornoquote mind. 2 aus 3 Jahren <= 30% (auch in Folgejahren)

EVU gilt als „nicht verlässlich“

• ZB/EVU wird im Konfliktfall nachrangig

behandelt ggü. jenen ZB/EVU, die die Quoten

Annahmequote mind. 2 aus 3 Jahren < 95 %*

eingehalten haben

A B

 Verfügbare Kapazitäten werden zunächst

unter Berücksichtigung weiterer Kriterien

Stornoquote mind. 2 aus 3 Jahren > 30%*

(Vorrangkriterien, Regelentgelt, PaP) an

*gilt auch, wenn nur eine der beiden Quoten nicht erfüllt ist

“zuverlässige” ZB/EVU vergeben

 ggf. weitere verfügbare Kapazitäten werden

anschließend unter den nachrangigen ZB/EVU

vergeben (hier Rangfolge nach Quoten

entsprechend INB-Regelungen)

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 6',158,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":6,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','9170bf958be2d29ba7e4e058f450d671c4e45f9bd74657efafdf8244d0bcf664');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0e32c3e3ef7bbbb8a79fd949','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',6,'Seite 7','Storno-/Annahmequote – “Erhöhtes Stornierungsentgelt“

Erhöhtes Stornierungsentgelt

Durch Akzeptanz des „Erhöhten Stornierungsentgelts“ wird die betreffende Trasse im Konflikt nicht nachrangig behandelt (sondern wie

eine Trasse eines ZB/EVU mit unterschrittener Storno- und überschrittener Annahmequote).

Im Konfliktfall werden Vorrangkriterien, Regelentgelt und PaP zur Entscheidung herangezogen

• Zielgruppe: ZB/EVU, die die Storno- und/oder Annahmequoten über- bzw. unterschreiten

• Umfang: Die Abfrage des erhöhten Stornierungsentgelts umfasst entweder eine pauschale Aussage (akzeptiert für alle oder keine im

Konflikt befindlichen Trassen) oder einzelne Zugnummern, die im Konfliktfall angefragt werden.

• Höhe: Das erhöhte Stornierungsentgelt beträgt 70 % des Trassenentgelts laut Trassenangebot zum Netzfahrplan

• Anwendung: Nur bei jenen Zeitscheiben1 die konfliktbehaftet sind und nur im Falle einer künftigen Stornierung dieser Zeitscheibe(n)1

Stunde 8 zeitlicher Konflikt (Jul-Aug)

Mo Di Mi Do Fr Sa So

Zug 4711

Zeitscheibe A B C D

Jul - Sep räumlicher Konflikt

Zug 4711

Zeitscheibe D

A

Okt - Dez

1 Path Requests

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 7',167,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":7,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','dfd298897ffc8e5a93e5cf723aa025fc4feed5d13ba1489750c14efbe8ec9dbb');
--> statement-breakpoint
