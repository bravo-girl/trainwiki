UPDATE sources SET current_version_id='sv_abacab26d0837e86a436bb01' WHERE id='src_8b2e5ffa1f464bee18cf';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md','TAF/TAP TSI Dialog 22 April 2026 Antworten und offene Punkte','14. TAF/TAP TSI-Dialog der DB InfraGO Follow-up: Ausgewählte Antworten aus dem Termin 22.04.2026 Versand im Nachgang','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','c79119c1695cbf077ffa336c7cb4a9553fc3d7d1c548000c145408dbd036fa38','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_8b2e5ffa1f464bee18cf","source_version_id":"sv_abacab26d0837e86a436bb01"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_88b72f48231ad531d58302e7','wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md',0,'Seite 1','14. TAF/TAP TSI-Dialog der DB InfraGO

Follow-up: Ausgewählte Antworten aus dem Termin

22.04.2026 Versand im

Nachgang',16,'{"canonical_url":null,"normalized_sha256":"0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7","page":1,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01"}','a7b1617c3b716deb5196d815c3ba791cbbb691a35e76fb7bfc455accabdabbfe');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d1cc1bcc58ca6ac0393f762f','wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md',1,'Seite 2','Offene Punkte und Antworten (1/5)

Frage Antwort DB InfraGO

Ist für die Nutzung der Schnittstelle zur Nein. EVU, die das Onboarding für NEP bereits erfolgreich absolviert haben, sind auf Produktion

Trassenanmeldung im GelV ein angebunden und müssen kein weiteres Onboarding für GelV durchlaufen.

erneutes Onboarding erforderlich,

wenn das Onboarding für NEP bereits

erfolgt ist?

Ob und wann werden die TTT- Click&Ride wird für die Nutzung um Fahrplan 2027 mit TAF/TAF ertüchtigt. Die zugehörige

Komponenten / ID''s bei Click and Ride Entwicklung ist bereits in Vorbereitung. Die zugehörigen Meilensteine mit Fokus auf Schulungen und

implementiert. Gibt es hierzu auch Testmöglichkeiten werden im nächsten TTT-Dialog vorgestellt.

Schulungsunterlagen/ Möglichkeiten

oder eine Testplattform?

Rückfrage zur genannten Frist für Eine NAÄ gilt nach Versand direkt als angenommen. Für ZB besteht jedoch die Möglichkeit, die

kostenlose Stornierung nach NAÄ: Sind Trasse innerhalb von drei Arbeitstagen (Montag bis Freitag, ausgenommen bundeseinheitliche

3 Arbeitstage oder 3 Werktage hier Feiertage) kostenfrei zu stornieren.

gemeint?

Wenn wir die NAÄ bzw. Trassenvertrag Die DB InfraGO AG stellt sicher, dass eine Stornierung binnen der Frist von 3 Arbeitstagen nach Erhalt

ablehnen, dann sorgt DB InfraGO für einer netzausgelösten Änderung für den Kunden kostenlos bleibt.

Kostenlose Stornierung. Wird die Bautrassen, die innerhalb von drei Tagen storniert werden, zählen nicht in die Stornoquote.

wird auch aus Stornierungsquote

rausgenommen.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 22.04.2026 ​ 2',225,'{"canonical_url":null,"normalized_sha256":"0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7","page":2,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01"}','486bb799fe9f8e4bb7963b4fd96156cb99e86e821fafd8d672c9637fab723fe9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4c9b3f73c970920cdf0872a0','wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md',2,'Seite 3','Offene Punkte und Antworten (2/5)

Frage Antwort DB InfraGO

Muss man fest entscheiden, ob Stellungnahmen zu GPE können sowohl über die KOMBau als auch das Common Interface abgegeben

Stellungnahmen zum GPE über werden, jedoch wird nur die zuletzt abgegebene Stellungnahme verwendet.

KOMBau oder CI erfolgen, oder kann Das GPE selbst sowie GPEnS, FPE und NAÄ werden sowohl in der KOMBau angezeigt als auch über

man das auch parallel nutzen? das Common Interface bereitgestellt.

Verhält sich dies anders als pathOS und Beim Trassenmanagement (Bestellung, Änderung, Stornierung) muss jeder einzelne Vorgang in dem

das CI bei der Trassenanmeldung? gewählten Kanal – via Common Interface CI oder pathOS Webportal – bis zum Abschluss des

Prozesses bearbeitet werden. D.h. die Reaktion auf ein Angebot muss im gleichen Kanal erfolgen wie

die Trassenanmeldung.

Das ist ein anderes Verhalten als die Abgabe von Stellungnahmen zum GPE.

Gerne kommen wir dem Wunsch aus dem Termin nach und bringen dieses Thema im nächsten TTT-

Dialog nochmals im Detail mit.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 22.04.2026 ​ 3',172,'{"canonical_url":null,"normalized_sha256":"0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7","page":3,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01"}','dcc3ca2110e320b3eaf093de744ec29c23bc192d9f7adfed2d418f3c7271ad9e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1f8265c94c9d927544c6aa02','wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md',3,'Seite 4','Offene Punkte und Antworten (3/5)

Frage Antwort DB InfraGO

Wenn aufgrund einer NAÄ nicht nur die Ziffer 5.6.4 der INB:

direkt betroffene Trasse storniert wird "Einschränkungen, die aus der Sphäre des Infrastrukturbetreibers stammen, erfolgt abweichend von

sondern auch eine abhängige Trasse, den folgenden Regelungen keine Bepreisung der dadurch verursachten Stornierung sowie keine

weil z.B. der Umlauf nicht mehr Bepreisung der Stornierung eines davon betroffenen Umlaufs."

möglich ist, ist dann diese Stornierung

ebenfalls kostenfrei?

Vorhin gab es eine Frage zu Ziffer 5.6.2.2 der INB:

Stornierungen von nicht Für Zugtrassen, die aufgrund nicht im ENV berücksichtigter Baumaßnahmen zusätzlich notwendig

baubetroffenen Trassen, die werden, ist kein Trassenentgelt zu entrichten. Zu diesen Zugtrassen zählen u. a. Zu- und

erforderlich werden, wenn Umläufe Abführungsfahrten zu einem Schienenersatzverkehr, Drehfahrten aufgrund baubedingter

aufgrund von FPE/NAÄ, die nicht zu Einschränkungen, Zu- und Abführungsfahrten zu einer anderen als der gewöhnlichen Abstell- oder

den Stellungnahmen der EVU passen, Tankanlage, Zu- und Abführungsfahrten von Triebfahrzeugen oder zusätzliche Verkehre aufgrund

nicht mehr aufgehen. Folge solcher einer Änderung der Zugcharakteristik (z. B. Ablasten aufgrund geringerer Grenzlast einer

Abweichungen könnten aber auch Umleitungsstrecke). Die genauen Voraussetzungen entnehmen Sie bitte der Ziffer 5.6.2.2 der INB.

Bestellungen weiterer Trassen sein.

Wie wird hier sichergestellt, dass dies

für EVUs kostenneutral erfolgt?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 22.04.2026 ​ 4',215,'{"canonical_url":null,"normalized_sha256":"0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7","page":4,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01"}','3452740402d995e8000f3e3f2dd4c08a4a379a264fb03f3755d05ce5779b6d59');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_23b4b5551b060378f8164c02','wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md',4,'Seite 5','Offene Punkte und Antworten (4/5)

Frage Antwort DB InfraGO

Der Prozess zum NAÄ ist aktuell – und Es liegt aktuell eine Testeinschränkung vor, weil die automatische Annahme des NAÄ noch nicht

seit längerem – nicht vollständig korrekt implementiert ist.

testbar, da die automatische Annahme Die Lieferung in den Kundentest ist für 29. Juli vorgesehen.

nicht funktioniert.

DB InfraGO wird diese Lücke vor der Versendung der ersten NAÄ schließen. Es ist nicht notwendig

Bis wann wird der blockierende Fehler sich auf Seiten der EVU auf alternative Prozesse einzustellen.

behoben und wie stabil ist die Planung?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 22.04.2026 ​ 5',105,'{"canonical_url":null,"normalized_sha256":"0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7","page":5,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01"}','ba47d7624d49b021a9c5be2693592cde15e29ebef1feb427f218927ec51fbb75');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_dee7a47548a07192f9047619','wiki/sources/taf-tap-tsi-dialog-22-april-2026-antworten-und-offene-punkte-data.md',5,'Seite 6','Offene Punkte und Antworten (5/5)

Frage Antwort DB InfraGO

Oh, das ist ein guter Punkt, der Zug Im Fall eines mittigen Teilausfalls (Schienenersatzverkehr) muss das EVU eine Änderungsbestellung

würde ja ggf. im Planungssystem des vornehmen, um dem zweiten Trassenteil eine neue ReferenceTrainID zu geben. Dabei dürfen keine

EVU bereits geändert sein! Dann anderen Änderungen vorgenommen werden.

werden zwangsweise neue Daten

übertragen. Muss man sich den also Umgang mit geändertem Fremdinfrastrukturanteil:

"wegspeichern" unverändert? Und was Geänderte/vertragsgeschlossene Anteile auf Fremdnetzen dürfen „korrekt“ angegeben werden. Diese

ist mit Änderungen auf haben auf unsere Konstruktion und die Durchführung der Änderungsbestellung keine Auswirkung und

Fremdinfrastruktur, die halt auch in der sind genauso in unserem Angebot enthalten. Etwaige Änderungen an diesen Anteilen in der

Trasse liegen? Zwischenzeit werden nicht berücksichtigt.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 22.04.2026 ​ 6',135,'{"canonical_url":null,"normalized_sha256":"0629a1f4df3af0861459be12aad8be05d74e88666f80dab4353848fabc5e63e7","page":6,"source_id":"src_8b2e5ffa1f464bee18cf","source_sha256":"abacab26d0837e86a436bb01429fc0431caffc556ac17a01fa1a0bd5ac1a0703","source_version_id":"sv_abacab26d0837e86a436bb01"}','406421042db260046663daa5894c31ab20341d04f03f73fbbf471615826cfd48');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_ea6d92cb2a3f2e4138ef','file','TAF/TAP TSI Dialog 22 April 2026 Terminunterlage',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_0c0b08c0adcc9c32c1dcad55','src_ea6d92cb2a3f2e4138ef','0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1','c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8',879482,'application/pdf','TAF-TAP-TSI-Dialog-22-April-2026-Terminunterlage-data.pdf','sources/normalized/bootstrap/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"TAF-TAP-TSI-Dialog-22-April-2026-Terminunterlage-data.pdf","page_count":20,"raw_binary_committed":false,"schema_version":1,"size_bytes":879482,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55","title":"TAF/TAP TSI Dialog 22 April 2026 Terminunterlage","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1','src_ea6d92cb2a3f2e4138ef','sv_0c0b08c0adcc9c32c1dcad55','{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-22-April-2026-Terminunterlage-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8','src_ea6d92cb2a3f2e4138ef',NULL,'{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-22-April-2026-Terminunterlage-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_0c0b08c0adcc9c32c1dcad55' WHERE id='src_ea6d92cb2a3f2e4138ef';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md','TAF/TAP TSI Dialog 22 April 2026 Terminunterlage','14. TAF/TAP TSI-Dialog der DB InfraGO Austausch mit dem Markt 22.04.2026 – virtuell','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','a314bda33d3523e543747d5c4385dc663fa6822275df49dfb386af503a816329','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_ea6d92cb2a3f2e4138ef","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_373c26018d8d417f28f509b2','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',0,'Seite 1','14. TAF/TAP TSI-Dialog der DB InfraGO

Austausch mit dem Markt

22.04.2026 – virtuell',13,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":1,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','3f18cdd8c27b451c9a1afd0a9cbafe58e6e9c8506e3b15ce57ea69a3b7a48947');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_da4750a857a179d89ded1de7','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',1,'Seite 2','Agenda

1. Begrüßung

2. Status TTT Einführung

3. Update KOMBau zur 4. Konsultationsphase

4. Umgang mit mittigem Teilausfall (SEV)

5. Fragen & Antworten

6. Zum Nachlesen: Nächste Termine

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 2',37,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":2,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','05cd2001e2f63ee9ee9698f19ee96a13215f1f71e523dc627489d444e5c0b0a2');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_70062a409f557c42fbecba66','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',2,'Seite 3','Wir wollen mit Ihnen in den Dialog treten – Welche Fragen

haben Sie? Schreiben Sie diese bitte in den Chat

So können Sie eine Frage platzieren:

Bitte wählen Sie in MS Teams in der Menüleiste

das Icon „Chat“ aus und schreiben Ihre Frage

in das sich öffnende Fenster.

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 3',57,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":3,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','223e12fd99596d11548e278e4a5c34207a9ed7bdd9f71058351019167a891bba');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5fc4363f6793361d6f98f153','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',3,'Seite 4','2. Status TTT Einführung

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 4',13,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":4,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','4f657387be5ada7391840584d28bee027e025375bcbb7e7f89f160a3af3b979a');
--> statement-breakpoint
