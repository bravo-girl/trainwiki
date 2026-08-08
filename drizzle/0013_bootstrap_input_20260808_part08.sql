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
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_9bc8c9cb2e6e89d590a44bc6','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',4,'Seite 5','Zentraler Meilenstein für TAF/TAP TSI Einführung erreicht:

Erfolgreicher Abschluss der Trassenanmeldung für NEP1

✓ Alle EVU, die im NEP 1 Trassen anmelden wollten, haben das auch getan1

Vorbereitungen auf Seiten der EVU und Bereitstellung auf Seiten der IT-Dienstleister war

erfolgreich und der anspruchsvolle Zeitplan wurde von den Beteiligten mit umgesetzt.

✓ 96.923 Trassenanmeldungen wurden erfolgreich über pathOS Webportal und CI

durchgeführt.

✓ Anmeldung von 500 zusätzlichen internationalen Trassen über PCS (noch ohne PAP-

Trassen).

✓ Rückmeldungen von 4 EVU zu wenigen unvollständigen Trassenbestellungen sind großteils

bereits geklärt und korrigiert.

(1) Nach Stand der Information an DB InfraGO vom 20.04.2026.

(2) In der technischen Auswertung werden Änderungsbestellungen vor Anmeldeschluss und die zugehörige Erstanmeldung jeweils einmal gezählt.

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 5',124,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":5,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','9d2379edd714aaf84b66519e9dee7c22658c009ee61fac13199610f6ef436fa9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_fcce9c53362f2fd3ac401f1d','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',5,'Seite 6','In den nächsten Wochen rückt der Kundentest für die späteren

Fahrplanphasen verstärkt in den Fokus

Weitere Ergebnisse seit letztem TTT-Dialog

✓ Markttest TTT mit Identifiern im Betrieb zum 14.04. gestartet

✓ Plausibilisierung der Trassenanmeldungen für NEP 1 gestartet

✓ Netzfahrplanerstellung gestartet

Nächste Schritte

• Markttests Trassenanmeldung und Defect-Behebung kontinuierlich fortsetzen

• 04.05.2026: Lieferung GelV 2 in den Markttest (u.a. Anmeldung mit Annahmeverzicht)

• 15.05.2026: Lieferung ujBau 3 in den Markttest (Erweiterung Netzausgelöste Änderungen inkl.

mittiger Teilausfall

• 20.05.2026: EVU-Informationsveranstaltung unterjähriger Bau

• 21.05.2026: 15. TTT-Dialog

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 6',94,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":6,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','2fc3aa4eee712bcf8abfa8f222dbe50fdeef35672f4e55287cc0c87899dd648e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_07d560fc6e96a1f91ce5733a','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',6,'Seite 7','Für die Trassenanmeldung im Gelegenheitsverkehr können die

EVU die Vorbereitung nach ihrem Bedarf starten

Informationen & Schulungen Onboarding Schnittstelle zur

Trassenanmeldung

• Web-based-Trainings (WBT) für Grundlagen zur • Das Onboarding für die Nutzung der Schnittstelle

Bedienung von pathOS sowie 2 komplexen zur Trassenanmeldung (Common Interface) für

Empfehlung:

Anwendungsfällen (SGV und SPV) den GelV wird von DB InfraGO bereits unterstützt.

Starten Sie

frühzeitig, um auf

• EVU können das Onboarding mittels der

• Erklärvideos zur Vertiefung einzelner

unerwartete

bekannten Formulare starten.

Anwendungsfälle

Hindernisse

• Die Anmeldung muss 4 Wochen vor der

• Handbuch mit umfangreichem Detailwissen reagieren zu

angestrebten produktiven Nutzung der

können.

• Vertiefungsworkshops: Durchgehen von Schnittstelle erfolgen.

Anwendungsbeispielen gemeinsam mit → Die Erfahrung zeigt, dass häufig noch Hürden

Experten, für den gesamten Jahresverlauf überwunden werden müssen z.B. Firewallgeplante 3-stündige Vertiefungsworkshop Freischaltungen.

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 7',141,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":7,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','dbb5feccb25014f445136f04a2385b628a66acad323cd1e860327dfbbfa3bea2');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e82452433dec1e62e9cf78b6','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',7,'Seite 8','3. Update KOMBau zur 4.

Konsultationsphase

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 8',15,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":8,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','93d252fddc8a9a8907b1573c5f75a7657eb5e8de0d8d4f2ef12e6be445efb6a7');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_338ec7df395468d963a31035','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',8,'Seite 9','Updates zu Exporten, Kundentests und Massenverarbeitung

Exporte der Planungsergebnisse der 4. Konsultationsphase:

• Zusätzlich zu den Exporten über die TTT-Schnittstelle soll ein möglichst einfacher aber

lesbarer Export der Planungsergebnisse (GPE, GPEnS und FPE) zu baubedingt geänderten

Trassen ermöglicht werden, damit die EVU diese für ihre Zwecke weiterverwenden können.

→ wir ermöglichen den Export der PE aus der jeweiligen Detailansicht

→ geplanter Umsetzungszeitpunkt: bis 30. September 2026

Kundentesttage für die KOMBau Frontend 4. Konsultationsphase (GPE-FPE):

• Termine am 11., 13., und 18.05.2026

• Die verfügbaren Termine und Teilnehmerplätze sind limitiert, daher erfolgt die Vergabe

grundsätzlich nach dem Prinzip „first come, first served“. Wir achten aber darauf, dass die

einzelnen Verkehrsarten repräsentativ abgedeckt sind.

• Die Kundeninformation mit den Anmeldeinformationen wird zeitnah erfolgen

GPE – Grobplanungsergebnis; GPEnS – Grobplanungsergebnis nach Stellungnahme: FPE – Feinplanungsergebnis gemäß Annex VII

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 9',144,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":9,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','0a7baa96c2de788b7f30c46a7706e6071bd9e75ac0b89ab91428072bb4b5230b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_614a746bd7fbba5cf20b3419','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',9,'Seite 10','Updates zu Exporten, Kundentests und Massenverarbeitung

Massenverarbeitung – Mehrfachstellungnahmen:

• Das Konzept zur Mehrfachstellungnahme wurde finalisiert und mit den Teilnehmern der

MasterClass am 17.04.26 validiert

• Die Entwicklung der Funktionalität wird nach dem

aktuellen Planungsstand im Juni starten

→ genauere Infos zur Umsetzung können wir zum Konzept

nächsten TTT-Dialog liefern

→ Das Bild zeigt ein Beispiel aus dem Konzept:

- Auswahl der GPE, auf welche eine vorhandene

Stellungnahme übertragen werden soll

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 10',80,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":10,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','ef257b2cc626f0b57a66574e04d16ab58a13d73312c356268ac44d8068d35d2b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d208decbb7c65abfd099ff04','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',10,'Seite 11','Update zur Bedienungsanleitung

• Die Bedienungsanleitung der KOMBau für die 1.-3. Konsultationsphase wurde überarbeitet und ist auf der

KOMBau-Seite verfügbar.

• Der aktuell in der Bedienungsanleitung enthaltene Ausblick auf die Inhalte für die 4. Konsultationsphase wird

für die Inbetriebnahme und Nutzung der neuen Funktionen kontinuierlich ergänzt.

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 11',55,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":11,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','13582e3af790273f07e3d87e61d79a6ca38e0e62c6b90c77b8ed10d30be18407');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0c3633ffb0d954e73373b74f','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',11,'Seite 12','4. Umgang mit mittigem Teilausfall (SEV)

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 12',15,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":12,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','62d479b6b8c740b2c0e20cbaa37cc85109790a8cb65dcf7e6533cdb55158f46a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f3bde48ceee481763efcd43d','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',12,'Seite 13','Automatische Zustimmung zu NAÄ - Prozesserläuterung

• Ablauf des fachlichen Prozesses

• Alle NAÄ gehen ohne Möglichkeit zur expliziten Annahme/Ablehnung in einen

Vertragsgeschlossenen Zustand über (0s Annahmefrist). Der restliche Ablauf bleibt wie gehabt.

• Diese Angebote sind bereits mit den Bestellern abgestimmt und entsprechen inhaltlich dem

Feinplanungsergebnis (FPE)

• Alle NAÄ können innerhalb von drei Tagen kostenfrei storniert werden– dies gilt bis zum

vollständigen Abschluss des Prozesses. Für nachfolgende Vorgänge beginnt der Prozess erneut;

der initiale Kanal bestimmt dabei den konkreten Ablauf.

• Was heißt das für den Kanalzwang?

• Der Fachprozess geht vom Versand der NAÄ bis zum Vertragsschluss. Da eine automatische

Annahme vorgenommen wird, ist der Vertragsschluss automatisch ohne Einfluss der

Zugangsberechtigten.

Wenn der Organisation Code des Responsible Applicant im CI konfiguriert ist, sendet pathOS die

NAÄ und die nachfolgenden Nachrichten an das CI und stellt den neuen Vertrag im Portal dar.

Ob der Kunde auf die Nachrichten im CI mit einer RCM reagiert prüfen wir nicht.

• Sofern der Kunde, nachdem wir ihm einen neuen Vertrag erzeugt haben, diesen ändern/stornieren

will, handelt es sich um einen neuen Prozess. Der Kunde kann daher entscheiden, ob er diesen im

pathOS Webportal oder über das CI initiieren möchte, ist danach aber an diesen Kanal gebunden

bis erneut ein Vertrag geschlossen ist.

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 13',220,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":13,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','f470653fe30322d70ebdf2e0bfe1ef1d67095b1e848577a8520a1dd0a052d9c2');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2f1701e5582f5946c3cc8b0f','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',13,'Seite 14','Update zum mittigen Teilausfall

• Folgeaktivität vom TTT-Dialog vom 09.03.2026

• Nach Erhalt der Angebote ist durch den Kunden eine Folgeaktivität

auszuführen:

− Änderungsbestellung unter Verwendung des RoR-Codes 1011

− Hinweis: Im Fahrplan 2027 ist die alternative Verwendung der

UpdateLinkMessage nicht möglich

Vorgehen bei der Änderungsbestellung

• Es wird empfohlen, bei der Trasse die RefTrainID zu ändern, die die neue OTN (Zugnummer) erhalten hat

• Bei der Änderung sind in den PlannedTransportID die neue RefTrainID und eine neue PRID zu verwenden

• Die Angabe der aktuell verwendeten RefTrainID und PathID ist in den RelatedTransportID unter Mitführung des

ROR-Codes 1011 anzugeben

• Darüber hinaus dürfen keinerlei Änderungen an der Trasse vorgenommen werden

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 14',120,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":14,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','a05673bb53dc944d539f4494141fb66e0773c08299d340ab94920d136f29e074');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_6f15a8569091a12ba33ebe36','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',14,'Seite 15','5. Fragen & Antworten

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 15',13,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":15,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','3b55da57c01262bcdea0144f1f2ef429448da6e01c94daf478f3f350d64edc0e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1c99621d0af4b004b5cb9016','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',15,'Seite 16','Zeit für Ihre Fragen!

Gerne beantworten wir Ihnen

Ihre Fragen direkt im Termin.

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 16',22,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":16,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','1c0432d405b3ec34df5897ef47f3aaa6c3bbe32bbc552d6fbbc5f22672aa8b28');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4798964ddf0a15a67b042294','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',16,'Seite 17','6. Zum Nachlesen:

Nächste Termine

Alle Informationen immer aktuell unter:

www.dbinfrago.com/taf-tap-tsi

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 17',20,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":17,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','295d2804dd7343d98395ae3a7c4da8c40e3b737ebf92f0023304052b844af3ce');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_cc80022f624ed1fcca047ab3','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',17,'Seite 18','Übersicht TAF/TAP TSI-Kommunikation

Arbeitsweise (A)/Turnus (T)

Teilnehmer: Management & Experten aller EVU u. deren IT-Partner A: online

TAF/TAP TSI

1 Ziel: Überblick für GF-Ebene, allg. Infos (Betrieb + Fahrplan), zzgl. Vertiefung T: ca. monatlich

-Dialog

aktueller Fokusthemen in Entwicklung/Testing Nächster Termin: 21.05.

Sprechstunde Teilnehmer: Alle künftigen Schnittstellenpartner (EVU, ZB) A: online

2 Onboarding für Ziel: Informationen und Sprechstunde zum Onboarding der SST-Partner inkl. T: mittwochs - Details auf pathOS-

Schnittstellenpartner Vorbereitung und Begleitung der Tests und Anbindung an die SST Homepage (unter Kapitel 3)

TAF/TAP TSI –

Teilnehmer: Schnittstellenpartner Fahrplan, die bereits mit uns testen A: online

3 Schnittstellen-

Ziel: Aktuelle Informationen/Entwicklungen; Sprechstunde, Updates T: nach Bedarf

partner Fahrplan

Teilnehmer: Alle künftigen Anwendenden von pathOS A: online

pathOS -

4 Ziel: Erklärung der Grundlagen und wesentlichen Inhalte von pathOS in einzelnen T: seit 23.10.2025 – Termine auf

Schulungen

e

g Terminen. Regelmäßige Sprechstunde gestartet am 22.01.2026 pathOS-Homepage (unter Kapitel 2.4)

o

la

i D TAF/TAP TSI - Teilnehmer: Gesamtmarkt inkl. EIU A: online / in Präsenz

5

Sektormeeting Ziel: nationale Spiegelgruppe TTT (Infos zu TTT, Verordnungen, ...) T: 4x jährlich, Nächster Termin: 11.06.

A: in Präsenz

Runder Tisch Bau Teilnehmer: 35 Mitglieder aus SPNV, SPV, SGV, BNetzA, Verbände, AT

6 T: 4x p.a.

(RTB) AG 3 Ziel: Beratung DB InfraGO bei Erarbeitung und Entwicklung für ujBau

Nächster Termin: 19.05.

EVU-Informations- Teilnehmer: Gesamtmarkt

A: online

7 veranstaltung unter- Ziel: Information zum neuen unterjährigen Baufahrplanprozess mit neuen

T: nach Bedarf, Nächster Termin: 20.05.',241,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":18,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','4e385ca2b42398365cc33e6743a6dfcb47710c66fe1abe446ce0a3e1e459e941');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_eb3f21aa949611eadd0ed344','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',18,'Seite 18','jähriger Bau Fahrplanprodukten und der digitalen BauFplo

Teilnehmer: Geschäftspartner mit G-INV A: online

8 BDV

Ziel: Informationen, To-Dos vermitteln Nächster Termin: in Planung

o Homepage + Teilnehmer: für alle zugängliches Format, KI an Verteiler (inkl. IT-Partner, nicht alle EVU) A: Homepage

f 9

n Newsletter (KI) Ziel: aktuelle Informationen zum Nachlesen: Testing-Zugang, Ansprechpartner, Updates T: kontinuierlich

I

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 18',66,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":18,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','137f1645c2ac9010bb0a9d401724f3595e75316f62146318053b65cfaba470b4');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4dd4dc3b9182e30900c89d18','wiki/sources/taf-tap-tsi-dialog-22-april-2026-terminunterlage-data.md',19,'Seite 19','Übersicht KOMBau-Kommunikation

Arbeitsweise (A)/Turnus (T)

Einweisungstermin Teilnehmer: Gesamtmarkt inkl. EIU

A: online

1 4. Konsultationsphase Ziel: Teilnehmenden die Funktionen, Prozesse und Anwendungsmöglichkeiten der KOMBau

T: 29.04.2026 + 07.05.2026

(KP) Thema BKE/BAE in der 4. KP anschaulich zu vermitteln

Kundentesttage

A: online*

Frontend 4. Teilnehmer: Fachexperten und Anwender der EVU, Verkehrsarten repräsentativ abgedeckt

2 T: 11.05.2026, 13.05.2026 +

Konsultationsphase Ziel: Verproben des Workflows 4. KP GPE bis FPE und Feedback

18.05.2026

(GPE bis FPE)

Einweisungstermin

Teilnehmer: Gesamtmarkt A: online*

4. Konsultationsphase

3 Ziel: Teilnehmenden die Funktionen, Prozesse und Anwendungsmöglichkeiten der KOMBau T: 12.06.2026, 19.06.2026 +

(KP) Thema GPE/

in der 4. KP anschaulich zu vermitteln 26.06.2026

GPEnS/FPE

*Kund:inneninformationen und Einladungen werden in den kommenden Wochen versendet

DB InfraGO AG | TAF/TAP TSI-Dialog am 22.04.2026 19',124,'{"canonical_url":null,"normalized_sha256":"c50ac369395895c1a036e9126326a664c342f6e4f62c0a31cd4c5283b1dedba8","page":19,"source_id":"src_ea6d92cb2a3f2e4138ef","source_sha256":"0c0b08c0adcc9c32c1dcad55bd94be9808b743faa7245e80d1509de084e82df1","source_version_id":"sv_0c0b08c0adcc9c32c1dcad55"}','bce6934b81902ea7f9f3edc2bed548f44dcc041e3d5908f58b9b2c1b8a03d19f');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_fdf7048d9eb0f98e0a93','file','TAF/TAP TSI Dialog 24 Juni 2026 Antworten und offene Punkte',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_0194b5a78c0a2db74d1b0421','src_fdf7048d9eb0f98e0a93','0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360','bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741',726978,'application/pdf','TAF-TAP-TSI-Dialog-24-Juni-2026-Antworten-und-offene-Punkte-data.pdf','sources/normalized/bootstrap/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"TAF-TAP-TSI-Dialog-24-Juni-2026-Antworten-und-offene-Punkte-data.pdf","page_count":13,"raw_binary_committed":false,"schema_version":1,"size_bytes":726978,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421","title":"TAF/TAP TSI Dialog 24 Juni 2026 Antworten und offene Punkte","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360','src_fdf7048d9eb0f98e0a93','sv_0194b5a78c0a2db74d1b0421','{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-24-Juni-2026-Antworten-und-offene-Punkte-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741','src_fdf7048d9eb0f98e0a93',NULL,'{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-24-Juni-2026-Antworten-und-offene-Punkte-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_0194b5a78c0a2db74d1b0421' WHERE id='src_fdf7048d9eb0f98e0a93';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md','TAF/TAP TSI Dialog 24 Juni 2026 Antworten und offene Punkte','Follow-up 16. TAF/TAP TSI-Dialog Fragen und Antworten Versand im Nachgang DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 1','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','5038fbf587b6d18bbbc221642ec9f2cce2e59662d6b7507218b002895d42c344','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_fdf7048d9eb0f98e0a93","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_284f726df854530f89639fdb','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',0,'Seite 1','Follow-up 16. TAF/TAP TSI-Dialog

Fragen und Antworten

Versand im Nachgang

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 1',21,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":1,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','07b1e3931d2d281e5463f23d009cda4a0f3583902aa13065b0dedb8349b9a6cc');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_9653ccfc6b6ded8fd5046734','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',1,'Seite 2','Agenda

1. Digitale Fahrplanmedien: ZLB-Einschränkung

1. Digitale Fahrplanmedien: ZLB-Einschränkung

2. Ersatzabstellung

2. Ersatzabstellung

3. Detaillierung 20h-Zug

3. Detaillierung 20h-Zug

4. Baubedingte Zusatzleistung

4. Baubedingte Zusatzleistung

5. Indirekt betroffene Züge bei Totalausfall

5. Indirekt betroffene Züge bei Totalausfall

6. NAÄ nicht aus unterjährigem Bau

6. NAÄ nicht aus unterjährigem Bau

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 2',60,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":2,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','a91d2c620c5c28add5a7e978b3fd319433c9efd28ac3790399bd5ec8fdef3828');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b37a10ecfebc3654e3eaf9ac','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',2,'Seite 3','1. Digitale Fahrplanmedien: ZLB-Einschränkung

Frage Antwort DB InfraGO

Warum erhalten einige EVU bei Bestellungen auf ZLB- Mit TTT gibt es kein separates Feld „EbuLa" mehr. Die EbuLa-Ausrüstung wird über

Strecken die Rückmeldung, dass ihre Trassen die Ausprägung „EFA" (Wert 14) unter TrainCC_System (Zugsicherungssysteme)

fälschlich mit EbuLa bestellt wurden? abgebildet.

Einige EVU haben in ihrem Bestellsystem das Merkmal „EFA" ausgewählt, weil ihre

Fahrzeuge über diese Eigenschaft verfügen – ohne zu erkennen, dass damit die

EbuLa-Eigenschaft codiert wird. Auf ZLB-Strecken ist EbuLa nicht zulässig, weshalb

die Fahrplaner eine Beanstandung zurückmelden.

Die Zuordnung von EbuLa zu „EFA" unter den Zugsicherungssystemen ist eine

nationale Festlegung von DB InfraGO, da die europäische TTT-Spezifikation keine

eigene Kategorie dafür vorsieht. EVU müssen bei Bestellungen auf ZLB-Strecken

sicherstellen, dass „EFA" nicht gesetzt wird.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 3',136,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":3,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','7b2b1c8f76cfa7a27c6c74b297219a2ff46ccf1576f5939ff4415d4704e91930');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0c3f0035a7160b5dca659a11','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',3,'Seite 4','2. Ersatzabstellung (1/2)

Frage Antwort DB InfraGO AG

Was mache ich, wenn ich keine Rückmeldung zu einer • Eine Verlängerung der Stellungnahmefrist ist nicht möglich. Sofern die

Ersatzabstellung bekomme und davon die Voraussetzungen für die Bereitstellung einer Ersatzabstellung erfüllt sind,

Stellungnahme auf ein GPE (Stichwort Abschnitt eines erhalten Sie in der Regel eine rechtzeitige Rückmeldung.

Teilausfalls) abhängt? Bekomme ich eine • Voraussetzung hierfür ist, dass Sie über einen gültigen Einzelnutzungsvertrag

Verlängerung der Stellungnahmefrist, wenn eine (ENV-SE) oder Mehrjahresvertrag (MV) für eine Serviceeinrichtung der DB

Stellungnahme aufgrund von ausstehenden Antworten InfraGO AG verfügen.

der InfraGO nicht möglich ist?

Die Verfügbarkeit von Ersatzabstellungen ist oftmals • Die Verfügbarkeit von Ersatzabstellungsmöglichkeiten ist abhängig vom

entscheidend für ein Gesamtkonzept, hat also jeweiligen Standort und kann daher eingeschränkt sein. Aus diesem Grund

unmittelbar Einfluss auf die Stellungnahme auf ein informieren wir Sie frühzeitig über baubedingte Kapazitäts- und

GPE: Wie stellen sie sich die Abstimmung derartiger Anlageneinschränkungen, damit Sie diese bereits bei der Bestellung der

Wenn-Dann-Fälle im zukünftigen Prozess vor? Serviceeinrichtungs Gleise (SE Gleise) berücksichtigen können.

• Sofern Infrastrukturmaßnahmen nicht rechtzeitig vor dem SE Bestellzeitraum

kommuniziert werden konnten, haben Sie die Möglichkeit, im Rahmen Ihrer

Stellungnahme zum Fahrplanprodukt (z. B. GPE) oder zu den SE

Einschränkungen Hinweise zu Ihrem Bedarf zu geben. Bitte geben Sie dabei an,

ob Ersatzabstellungskapazitäten benötigt werden oder ob Anpassungsbedarf bei

bereits bestellten Serviceeinrichtungen besteht.',223,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":4,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','e4da1c0718690c34dbd46da7e3817a4f173bb2ececde998273bf1b640e238dc3');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f5b3415d18eb9263e8ab6420','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',4,'Seite 4','DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 4',11,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":4,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','314dfed117b5c49713958f1666f32bc6e2e97e92921e0c41f01d6ca2e23f5b1f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1d525f8635eaccb7094bbe89','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',5,'Seite 5','2. Ersatzabstellung (2/2)

Frage Antwort DB InfraGO AG

Der Regelprozess zu (Ersatz)Abstellungen korreliert • Die Verfügbarkeit von Ersatzabstellungsmöglichkeiten ist abhängig vom

terminlich an keiner Stelle mit dem neuen ujBau jeweiligen Standort und kann daher eingeschränkt sein. Aus diesem Grund

Prozess und der dortigen Terminkette. Es ist daher in informieren wir Sie frühzeitig über baubedingte Kapazitäts- und

vielen Fällen schlichtweg für die EVU unmöglich, Anlageneinschränkungen, damit Sie diese bereits bei der Bestellung der

rechtzeitig zum GPE ein Konzept abzugeben. Wie Serviceeinrichtungs Gleise (SE Gleise) berücksichtigen können.

stellt sich InfraGO die Lösung dieses Problems vor? • Sofern Infrastrukturmaßnahmen nicht rechtzeitig vor dem SE Bestellzeitraum

kommuniziert werden konnten, haben Sie die Möglichkeit, im Rahmen Ihrer

Stellungnahme zum Fahrplanprodukt (z. B. GPE) oder zu den SE

Einschränkungen Hinweise zu Ihrem Bedarf zu geben. Bitte geben Sie dabei an,

ob Ersatzabstellungskapazitäten benötigt werden oder ob Anpassungsbedarf bei

bereits bestellten Serviceeinrichtungen besteht.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 5',157,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":5,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','023a5db871ae6105ea4d193202ecc388d31e6c2036e22a5b12c75fb2e320d816');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_9ac7c9278ac831c24d6c25da','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',6,'Seite 6','3. Detaillierung zum 20h-Zug (1/3)

Frage Antwort DB InfraGO AG

Wie bestellt man • Auswählen von VerkehrsArtKundeZusatz „20h-Zug“

einen 20h-Zug im schaltet das Feld Nachlassnummer frei

pathOS Portal?

• Angabe der Antrags-ID im Feld Nachlassnummer

(Produktausprägungen/Sonstige Angaben)

• Jede ID ist nur einmalig verwendbar

• Berücksichtigung in der Abrechnung kann nur

gewährleistet werden, wenn beide Merkmale korrekt

befüllt sind

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 6',70,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":6,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','f577faa5339aa0d3a5395a32745a889f2f425ef15139007ccc147b3e97fca700');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_cf46b99a717b0e249e708e67','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',7,'Seite 7','3. Detaillierung zum 20h-Zug (2/3)

Frage Antwort DB InfraGO AG

Wie bestellt man einen 20h-Zug über die • Es muss eine Trassenerstbestellung aus dem GelV über die SST ausgelöst

Schnittstelle? werden.

• Das Feld rabattNr darf nur dann mit einer 20h-Antrag-ID befüllt werden, wenn

in verkehrsArtKundeZusatz „20h-Zug“ ausgewählt wurde

• verkehrsArtKundeZusatz „20h-Zug“ ohne Angabe einer 20h-Antrag-ID führt zur

Abrechnung als Regeltrasse

Wie wird die 20h-Antrag-ID vergeben? • Automatisiert durch das 20h-Zug-Tool, sofern die Prüfung des Antrags als

plausibel bestätigt wurde.

Welches Format hat die 20h-Antrag-ID? • [Z][Jahr der Anmeldung][fünfstellige Nummer] → Beispiel: Z202612345

Wo muss die 20h-Antrag-ID hinterlegt werden? • Antrags-ID:

Welche Felder müssen zur Kennung als 20h-Zug • pathOS: Feld „Nachlassnummer“

mitgegeben werden? • Schnittstelle: NSP „rabattNr“

• Kennung:

• verkehrsArtKundeZusatz > Auswahl „20h-Zug“

→ Beide Angaben sind erforderlich.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 7',141,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":7,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','a0677ddb15be7d4ae14cf4864869ca49873845a8e8ac7ea758486e88f13a09fc');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f85ec75f0e14eca65b7eb602','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',8,'Seite 8','3. Detaillierung zum 20h-Zug (3/3)

Frage Antwort DB InfraGO AG

Wird es INB-Änderungen geben? • Nein, die INB selbst werden nicht geändert.

Kann auch eine Änderungsbestellung anstatt einer • Nein, Änderungsbestellungen in die Vergangenheit sind nicht erlaubt.

Stornierung eingereicht werden? Eine Änderungsbestellung würde zu einer Splittung der PathDetailsMessage

führen, da wir keine Änderung der OTN innerhalb einer PDM durchführen

dürften.

Sind in einer PDM alle Laufwegpunkte enthalten, so • Nein, es sind nicht alle Laufwegspunkte enthalten.

dass eine 20h-Teilstorno wirklich ab jedem LWP Bitte wählen Sie bei der Stornierung jene verfügbare Betriebsstelle aus, die

technisch möglich ist? Heutzutage sind in einem TPN- zuletzt durchfahren wurde und geben Sie in dem Stornierungsgrund die zuletzt

Datensatz ja nicht alle LWP enthalten, so dass gefahrene Betriebsstelle an.

Teilstornos nur eingeschränkt möglich sind.

Findet eine Anpassung der SST-Beschreibung statt? • SST-Doku wurde ergänzt (Aufnahme Ausprägung 20h-Zug bei

VerkehrsArtKundeZusatz). Die Veröffentlichung Anlage 1 am 11.6. als Version

4.6.3.1 wurde als KI am 11.6. sowie im TTT-Dialog am 24.6. kommuniziert.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 8',175,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":8,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','c7509b0e12e943360b707ab260df3c819c5164cf1cdb8f2c43b0d490b69b0536');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_52bb56f016463ffd9dd78c6f','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',9,'Seite 9','Weitere Fragen zum Thema 20h-Züge beantworten wir Ihnen gerne

im Vertiefungstermin am 15. Juli

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 9',25,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":9,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','5ec897ff85e23161dc36c44d0f860dc6d476c5496584c9ad6c52ce5e76f9b5e0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c2553ab004c6fdcd309e1bd1','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',10,'Seite 10','4. Baubedingte Zusatzleistung

Frage Antwort DB InfraGO AG

Ist eine kostenlose Änderungsbestellung mit einer Die Angabe „baubedingte Zusatzleistung“ ist bei einer Änderungsbestellung nicht

baubedingten Zusatzleistung möglich? vorgesehen. Siehe Ril 402.0305, §11, Absatz 2:

„Hierunter fallen insbesondere zusätzliche baubedingte Anmeldungen für

- Zu- und Abführungsfahrten zu einem Schienen ersatzverkehr,

- Drehfahrten,

- Zu- und Abführungsfahrten zu einer anderen als der gewöhnlichen Abstell- oder

Tankanlage,

- Zu- und Abführungsfahrten von Triebfahrzeugen oder

- zusätzliche Verkehre auf Grund einer Änderung der Zugcharakteristik (z.B.

Ablasten auf Grund geringerer Grenzlast einer Umleitungsstrecke).“

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 10',98,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":10,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','fa6576187d2a9d46c719ecfb4d4d91ebbc114204e8cb28e9e54c96d43172424f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_eecaa0b029dade94e5634fdc','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',11,'Seite 11','5. Indirekt betroffene Züge bei Totalausfall

Frage Antwort DB InfraGO AG

Wie soll bei einem Totalausfall der andere betroffene Sollte das GPE als Ausfall gesendet werden, ist für die Angabe eines indirekt

Zug angegeben werden? Es gibt ja keine Laufpunkte baubetroffenen Zuges eine Stellungnahme notwendig.

zu Referenz

Diese Angabe muss, wie unten beschrieben, erfolgen:

1. Hinweis im Freitextfeld auf Nachrichtenebene, dass Ausfall akzeptiert wird,

jedoch eine Angabe zu einem indirekt baubetroffenen Zug notwendig ist.

2. Angabe der ersten und letzten Betriebsstelle

3. Angabe der Betriebsstelle, an der der Zug verknüpft ist, sowie der gewünschte

Umgang mit diesem Zug.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 11',109,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":11,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','3442c249ceda9a048850dfcaca1c9257e79ae3e13e2efe7de55632eb9e678f46');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_aae057aaac4cdb208c6105d2','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',12,'Seite 12','5. Prozess indirekt betroffene Züge

Angabe des TrainActivityCodes beim Totalausfall im GPE

Hinweis im Freitextfeld auf

Nachrichtenebene

• Ausfall wird angenommen

• Stellungnahme aufgrund der

Verknüpfung zu anderem Zug

Angabe der

• ersten und letzten Betriebsstelle der

Regeltrasse

• Betriebsstelle, an der die

Zugverknüpfung besteht + TAC + alle

relevanten Angaben

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 12',62,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":12,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','040c58d4163c59b84772962cd5567d12134161232a8bec4e080230c588a26161');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0a31c7b736f638402c8cce59','wiki/sources/taf-tap-tsi-dialog-24-juni-2026-antworten-und-offene-punkte-data.md',13,'Seite 13','6. NAÄ nicht aus unterjährigem Bau

Frage Antwort DB InfraGO

Außerdem bitten wir um Übermittlung der DBInfraGo- • Hier ist keine Fristsetzung möglich. Als Beispiel dient hier der kurzfristige

seitigen Frist für die Auslösung einer NAÄ im Gelegenheitsverkehr, bei denen eine versendete Trasse so nicht mehr bzw. nie

Netzfahrplan ohne Baubezug, wenn z-8 nur für NAÄ in fahrbar gewesen wäre. In diesen Fällen haben wir im Rahmen der

ujBau gilt. Unmöglichkeit, die Notwendigkeit zur Anpassung der Trasse.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 24.06.2026 ​ 13',88,'{"canonical_url":null,"normalized_sha256":"bfceeb86fd85f2d56d54a4b09f7f4dfc7f1f8c0c096a927d009985bfe5c7c741","page":13,"source_id":"src_fdf7048d9eb0f98e0a93","source_sha256":"0194b5a78c0a2db74d1b0421bbf0f4070d7b1420f7d8f1d5f83ccf3fd16c8360","source_version_id":"sv_0194b5a78c0a2db74d1b0421"}','3e7263b0404a9186b1ea6c4efa91182f03ea9a34eba928513562ccfa67daf7b1');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_19a7b48948c766db65df','file','TAF/TAP TSI Dialog 26 Maerz 2026 Antworten und offene Punkte',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_edb2bc1e9f24d50e73b6b8c5','src_19a7b48948c766db65df','edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41','365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f',781885,'application/pdf','TAF-TAP-TSI-Dialog-26-Maerz-2026-Antworten-und-offene-Punkte-data.pdf','sources/normalized/bootstrap/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"TAF-TAP-TSI-Dialog-26-Maerz-2026-Antworten-und-offene-Punkte-data.pdf","page_count":21,"raw_binary_committed":false,"schema_version":1,"size_bytes":781885,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5","title":"TAF/TAP TSI Dialog 26 Maerz 2026 Antworten und offene Punkte","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41','src_19a7b48948c766db65df','sv_edb2bc1e9f24d50e73b6b8c5','{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-26-Maerz-2026-Antworten-und-offene-Punkte-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f','src_19a7b48948c766db65df',NULL,'{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-26-Maerz-2026-Antworten-und-offene-Punkte-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_edb2bc1e9f24d50e73b6b8c5' WHERE id='src_19a7b48948c766db65df';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md','TAF/TAP TSI Dialog 26 Maerz 2026 Antworten und offene Punkte','13. TAF/TAP TSI-Dialog der DB InfraGO Follow-up: Ausgewählte Antworten aus dem Termin 26.03.2026 Versand im Nachgang','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','218d13e4e230490de7ee1e1816d7b5e69ac48dc425087d1a80b817f7ac31a6f9','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_19a7b48948c766db65df","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8a658f41b63399a489938fb2','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',0,'Seite 1','13. TAF/TAP TSI-Dialog der DB InfraGO

Follow-up: Ausgewählte Antworten aus dem Termin

26.03.2026 Versand im

Nachgang',16,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":1,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','262291183d897eb37638d2f4ef4018f97982bb16837df515932429fe69f6f6dd');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c52395bba7174acf73f0ada0','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',1,'Seite 2','• Diese Präsentation beinhaltet die allgemeingültigen Fragen

und Antworten aus dem TTT-Dialog vom 26.03.2026 sowie

Antworten zu den wenigen nicht direkt beantworteten

Fragen.

• Diese wurden nach der Agenda des TTT-Dialogs gruppiert.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 2',43,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":2,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','279d5eb06e232d22dc454ceec95a805a9565ee10d23304a39af11cfc467b599d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c152ef54e822738cc46dfd35','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',2,'Seite 3','Agenda des TTT-Dialog vom 26.03.

1. Begrüßung

1. Begrüßung

2. Status TTT Einführung

3. Zentraler Eingangskanal: Support

4. Update pathOS

5. TTT im Betrieb

6. Update KOMBau

7. ujBau Implementierungsdetails

8. Fragen & Antworten

9. Zum Nachlesen: Nächste Termine & Antworten im

Nachgang zum TTT-Dialog am 09. März

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 3',59,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":3,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','0a8cb9655b0018aee2899289a3d55447f41a8494ee1f853a7b676d45d2d13d20');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_dbca749b4d0c000fc1a8b051','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',3,'Seite 4','DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 4',11,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":4,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','f38c9e317b8e79a87191698adcd9a45a9e2205a4ac81c1335ce99a30a5065d3a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c2dc97e426d1209cc5b52824','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',4,'Seite 5','Frage Antwort DB InfraGO

Sind die PCS Bestellungen in den CI Frage bezieht sich auf Folie 5 des Foliensatzes und darin enthaltende Grafik mit der Darstellung der

Zahlen enthalten? Trassenanmeldungen über das Common Interface. Darin sind die PCS Bestellungen nicht enthalten.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 5',52,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":5,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','fa043785d02983926f87a9c2936dbf8d45ef0b9ca3464aae7fe7752bb84833ab');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d80a4ddbc5929ff85e8200ed','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',5,'Seite 6','DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 6',11,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":6,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','42b663fa9128f2f3515bca4b24bd13149908f37c39b5dabc63518a1ae1ae3275');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_bf58f989d5764db52b1a9ab5','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',6,'Seite 7','Frage Antwort DB InfraGO

PZB90 Grundsätzlich reicht es, wenn PZB90 am ersten Zuglaufpunkt angegeben ist. Bei den aus TPN

1. Am ersten Zuglaufpunkt die PZB90 importierten Entwürfen werden aber an den folgenden Zuglaufpunkten im Hintergrund

angegeben. Muss das nochmal angeben Charakteristiken gespeichert, die PZB90 nicht enthalten. Daher ist es am sichersten, an den folgenden

werden? Zuglaufpunkten die Charakteristiken zu löschen, sodass nur die am Beginn angegebene Charakteristik

2. Kann ich nicht darauf vertrauen, (mit PZB90) über den gesamten Zuglauf wirkt.

dass die PZB90 Angabe sich

durchzieht?

Gibt es eine Möglichkeit, wie in TPN In pathOS gibt es aktuell und für die Trassenanmeldung zum Netzfahrplan 2027 keine Option, den

einen Entwurf mit umgekehrten Laufweg eines Entwurfs umzukehren oder einen Entwurf mit umgekehrtem Laufweg zu erstellen. Wir

Laufweg zu kopieren? haben das Thema aber bereits aufgenommen.

Wer kann sich Export ziehen, noch Man kann sich in der Vorgangsübersicht einen Export über alle Vorgänge ziehen. Dieser enthält die

mehr Details dazu? Kopfdaten zu den Vorgängen, jedoch keine Details wie Laufwege. Zusätzlich kann man in der

Detailansicht einen Export eines einzelnen Entwurfs erstellen. Dieser enthält zu einem Entwurf alle

angegebenen Laufwegspunkte mit Zeiten, jedoch keine Zugcharakteristiken. Diese Übersicht soll aber

noch weiterentwickelt werden.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 7',210,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":7,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','d4c66f4ad00abb1efcdf797ff739219c4b57a062d4f0b64ea1733ca8b9fda1c6');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_febba4b137fd492460778521','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',7,'Seite 8','Frage Antwort DB InfraGO

Muss ich die Kundennummer an jedem Bei neu angelegten Entwürfen wird als Kundennummer des durchführenden EVU automatisch die

Haltepunkt nachtragen? Ich bin davon Kundennummer des Bestellers hinterlegt und kann manuell überschrieben werden. Bei den aus TPN

ausgegangen, dass sich die importierten Entwürfen wird die Kundennummer des durchführenden EVU aber nicht immer an alle

Kundennummer automatisch ausfüllt, Laufwegspunkte geschrieben, weswegen man hier einen Blick darauf werfen sollte.

wenn man die einmal eingibt. Das

müsste doch als Default-Wert

eingestellt sein.

Gibt es seitens DB InfraGO Derzeit gibt es keine konkreten Pläne, PCS für internationale Trassenanmeldungen im Fahrplan

Bestrebungen, Bestellungen zu 2028 verpflichtend zu machen.

internationalen Zügen für DB InfraGO-

Abschnitte ausschließlich aus PCS zu

akzeptieren?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 8',128,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":8,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','3d55d949fb048d06d6e602fb6831ab7ef4702fa1ad638cf95a0a5d09cec8a856');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3a86cda1d4c98434fb8db1d9','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',8,'Seite 9','Frage Antwort DB InfraGO

Die Angaben für das RRU im Grenzabschnitt also hier Korrekt, die Angabe für das durchführende EVU (RRU) bitte nicht auf

eingeben? Fahrtlaufpunktebene hinterlegen.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 9',38,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":9,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','8dab9d0de41f77a7225a2a1e23b831ea816412c227047220d897762d39f020e8');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_df40eeaf380df94939e065b7','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',9,'Seite 10','Frage Antwort DB InfraGO

Wird künftig dann das Feld Ja, die NSPs werden für das Fahrplanjahr 2028 nochmal

Zuggattungsprodukt noch im PCS überarbeitet, sodass hier keine Doppelarbeit mehr

eliminiert? Diese Doppelarbeit ist etwas entsteht.

müßig?

Aktuell dient die zusätzliche Angabe als Eingabehilfe für

die Zuggattung.

In PCS ist allerdings kein Ril100-Code Die PLCs können entweder in der pathOS

hinterlegt, nur PLCs, somit nicht Bestelloberfläche überprüft werden oder entsprechend

erkennbar, ob einer hinterlegt ist. aus den veröffentlichten Stammdaten gezogen werden.

Mindestens zwei PLCs mit DE sollten

dann aber genügen, oder?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 10',100,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":10,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','45703a4d21a433e9d0904426ef100ccb6a6bc8c7ac9c261ea64af565e95a21ae');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_435dcbd00bac9ec8777821ff','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',10,'Seite 11','Frage Antwort DB InfraGO

Wie soll das Freitextfeld angegeben werden in PCS oder Wir erlauben 6 Freitextfelder. Es wird für jeden hinterlegten Kommentar ein

an anderer Stelle? Freitextfeld befüllt, welches bis zu 255 Zeichen zulässt. Bitte darauf achten, dass es

Er ist immer in dem Fall, dass es mehrere EVU gibt bei Dt. nicht mehr als 6 Kommentare sind, da wir sonst Informationen verlieren (PCS lässt

Netz und vorher andere... mehr als 6 Kommentare zu, die beim Übertrag in pathOS verloren gehen)

Sie sollen ausschließlich in PCS bestellen.

1. Baukorridore angeben in PCS (weil nicht auswählbar) 1. Notwendige Angaben zum Baukorridor, können über das Freitextfeld

2. Angabe einer EGB-Nummer „Gesamtkommentar“ angegeben werden.

3. Note auf Location Ebene 2. Formathinweis bei Angabe der EGB-Nr. Beginnend mit „EGB...“. Die zusätzliche

4. ReasonOfReference bei Laufwegsvarianten in Angabe eines PLC ist nicht notwendig

Baukorridoren 3. Gibt es in pathOS nicht. Wird nicht übertragen.

4. DE06 kann nicht angegeben werden

→ manuelle Anpassung dazu notwendig

→ beide Bestellungen kommen bei uns an

RoR wird von PCS nicht unterstützt.

Noch ein wichtiger Hinweis zur PCS Bestellung: Bitte bei allen Fahrtlaufpunkten die

in der Trassenanmeldung von DB InfraGO vorkommen den TrainActitivtyCode

0001,0002,0030 oder 0040 angeben, da es eine Pflichtangabe ist. Eine Ausprägung

muss hinterlegt sein.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 11',219,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":11,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','c29b3bbaf027577529445fa732af9c224d38869df98888e428f7e0080358be23');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1b81f1a01d3778f5ced939a0','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',11,'Seite 12','DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 12',11,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":12,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','687f246d4834b5cf855763cabda428104ba30abe1d590e1be533b358aed933b3');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_84de73e67b33f95954cba58f','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',12,'Seite 13','Frage Antwort DB InfraGO

Wegen NSS: Kann der Zeitraum doch ein wenig erweitert Nein, leider kann der Zeitraum nicht verlängert werden, da sich das Datenvolumen

werden z.B. 40 Tage? dadurch um rund 30 % erhöhen und eine zusätzliche Datenlast entstehen würde.

An wen wurden die Einladungen zu NSS versendet, an die Alle uns bekannten Ansprechpartner EVU und IT-DL wurden eingeladen. Falls

EVUs oder die IT-Dienstleister? jemand die Einladung benötigt, können Sie sich bei

[E-Mail-Adresse entfernt] melden.

Und für die, die nicht an die NSS angebunden sind, bleibt Wenn Sie sich auf die betriebliche Datenversorgung beziehen, sollte es aus unserer

alles wie bisher? Sicht keine wesentlichen Änderungen geben.

Bei Problemen mit der P/TCM Datenqualität bitte direkt Aktuell laufen die Auswertungen der P/TCMs. Die ersten Auffälligkeiten wurden

auf die EVU zugehen und die konkreten Fehler benennen. bereits gemeinsam mit den EVUn besprochen und kurzfristig behoben.

Zukünftig wird der BDV bei Unregelmäßigkeiten in der P/TCM-Datenqualität die

EVUn direkt informieren, sodass identifizierte Probleme zeitnah korrigiert werden

können.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 13',174,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":13,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','df466d8970a7aeabe7c367f5f7973435a0d767e409200b7ded466c04263df8c8');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5db6bfa9efcc2a8a137d7456','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',13,'Seite 14','Frage / Feedback Antwort DB InfraGO

Sie senden die Daten kurz vor Abfahrt und wenn dann Diese Fälle sind nicht vermeidbar. Sofern vom EVU leistbar, kann die Störung mit

noch eine Störung kommt, können Sie die Daten nicht einer neuen PTCM/TCM abgebildet werden.

zurückholen.

Gibt es aktuell Bestrebungen der DB InfraGO, in den Nein, der Meldeweg über GSM-R bleibt alternativ zur TrainReady erhalten.

nächsten Jahren den Versand von TrainReadyMessages Info: Die Telematics TSI (Nachfolge-Verordnung der TAF/TAP TSI) fordert

durch die EVU verpflichtend zu machen? europarechtlich ab voraussichtlich 2030 eine Abfahrtsprognose der EVU für ihre

Züge via TrainReady message. Ab diesem Zeitpunkt wäre insofern für diesen Inhalt

eine Verpflichtung per EU-Verordnung gegeben.

Die betriebliche PDM kommt manchmal nur für Falls es um kurzfristig angemeldete Züge in der BZ geht, so kann passieren, dass

Teillaufwege: Bug oder Feature? erst "untern rollenden Rad" konstruiert werden kann, da wir versuchen im Sinne der

Kunden auch solche kurzfristigsten Bedarfe abzubilden. Falls es um über die

Trassenanmeldung angemeldete Trassen geht bitte unter Angabe konkreter

Beispiele (Zugnummer, Betriebstag, etc.) an:

Ansprechpartner bei Störungen/Problemen mit dem BDV:

Zentrale fachliche Betriebsführung (ZFBF) erreichbar unter:

Hotline: [Telefonnummer entfernt] (Mo-Fr: 07:00 - 18:45 Uhr besetzt)

E-Mail:[E-Mail-Adresse entfernt]

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 14',207,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":14,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','9cbbe846d85b703352097830b393b149853f422730f1c23753c3752d55128b62');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1198f459b6d6c688f1b97214','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',14,'Seite 15','Frage Antwort DB InfraGO

Können wir auch mit kleiner 1h über das CI Trassen Für von der BZ eingelegte Paths kommt über den BDV eine PathDetails message, sobald

bestellen? Wie läuft das sonst mit der PTCM dazu? der Path in den Disposystemen eingelegt wurde. Dies kann zeitverzögert erfolgen, da die

Aufrechterhaltung des Verkehrsflusses natürlich Priorität über die Eingabe von Daten in

die Systeme genießt.

Die PTCM kann vom EVU auch vor Versand der PDM gesendet werden, da eingehende

Meldungen bei der DB InfraGO AG gepuffert werden.

Gibt es Aussagen der DB InfraGO AG zum zeitlichen Die InfraGO informiert hier transparent, wie das Sendeverhalten der Meldungen ist. Dies

Ablauf von Durchführen einer Disposition und ist auch so in der entsprechenden Technischen Beschreibung sowie der Präsentation zu

Versand der zugehörigen Nachrichten (Beispiel TTT im Betrieb auf unserer TTT-Homepage so beschrieben. Die InfraGO kann keine

PSNM, PDM)? Aussage dazu treffen, welche Verfahren auf Seiten des EVU man auf Basis dessen auf

Hintergrund: müssen wir einplanen das erst manuell diesen Meldungen aufsetzen kann, diese Beurteilung kann nur das jeweilige EVU selbst

zu erfassen und dann die "überflüssige" Nachricht treffen.

zu verarbeiten, oder können wir davon ausgehen,

das immer die Nachricht zuerst da ist?

Wunsch: Zusatztermin für eine Der Zusatztermin findet am 17.04.2026 von 11-12 Uhr statt.

Informationsveranstaltung zum Markttest mit TTT-

Identifiern

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 15',229,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":15,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','69b82c3877d814073a810c1a6045ecda4288eb641b569e72377488580d5536c8');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_fe8f1921421eb1e0e0defc97','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',15,'Seite 16','DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 16',11,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":16,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','76625f39a807b5810ed985d4d58689b693383861b28657f3c17af8489b756db1');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d0cb7e16d353384ba56e7ae5','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',16,'Seite 17','Frage / Feedback Antwort DB InfraGO

Aktuell sind keine ausreichenden Schulungsmöglichkeiten Wir stellen die Schulungsunterlagen aktuell schon zur Verfügung (auf der

gegeben. Internetseite der KOMBau haben wir 8 Videos für die 4. Konsultationsphase

veröffentlicht). Basierend darauf kann bereits geschult werden.

Beim Durchsehen des Bedienungshandbuchs wurden Die Bedienungsanleitung für die Bestandsanwendung wird bis zum 15.04.26

zahlreiche inhaltliche und formale Fehler sowie defekte aktualisiert. Der Ausblick für die 4 Konsultationsphase wir kontinuierlich erweitert.

bzw. falsche Verlinkungen festgestellt. In der aktuellen

Fassung ist das Handbuch daher nicht zuverlässig

nutzbar.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 17',97,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":17,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','ec2c7cab719e41063e7262cee41049128beffeb95ac88afd7b22451be0f0a96a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_6ddcf547bb89ac62c2441776','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',17,'Seite 18','DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 18',11,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":18,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','b092d54be09a384011fdefd0dddeb707989c5ad397cc20dbfd5e614df1355f97');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ee3b6b2210e70825c33e8f56','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',18,'Seite 19','Frage Antwort DB InfraGO

Wie wird umgegangen wenn ein Zug mit 24St Verspätung Das Thema befindet sich derzeit in Klärung beim Fachbereich, so dass auch eine

fährt im Bezug auf TAF-Identifier und Trasse? betriebliche Durchführung nicht gefährdet ist. Ziel ist eine Klärung bis zum

Mündlich nachgeschärfte Frage: Wie erfolgt die nächsten TTT-Dialog am 22.04.

Umbuchung, wenn eine Trasse, die für gestern bestellt

wurde ausfällt (wg. Verspätung) und mit der

ReferenceTrainID von heute (einen Tag später) fährt.

Beispiel: Zug fährt täglich

Zug von 25.3. ist so verspätet, dass er in Dt. erst am 26.3.

einbricht und dort dann mit der Trasse vom 26.3. fährt

Damit fällt ein Zug weg und es gibt keinen zusätzlichen

Zug.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 19',125,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":19,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','8360f0dd199eba95c13b6f3b2412cb93c89fc97ce9f40a4a6c3cd27b33d28f3c');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_560f957804697223e91f7b36','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',19,'Seite 20','Frage / Feedback Antwort DB InfraGO

Wie oft kommt es vor, dass ein FPE ohne GPE verschickt Eine konkrete Anzahl lässt sich leider nicht angeben, da die Fälle nicht

wird oder es keine BKE-ID gibt? prognostizierbar sind.

Werden Havarie NAÄs dann auch automatisch zum Ein FPE bzw. eine netzausgelöste Änderung bei Havarien stellt automatisch einen

Vertag? neuen Vertrag dar, auch wenn es hierzu kein GPE oder GPEnS gibt.

Würden F-Maßnahmen unter Havarie fallen? Ja, wenn folgendes eintritt:

INB 2027 –Ril 402.0305 Abschnitt 9 Abs (1):

[...] auf Grund der sich dadurch ergebenden späteren Realisierungszeiträume mit

nicht zu vertretenden Nachteilen für Lebensdauer oder Zustand der Infrastruktur

verbunden wären. [...]

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 20',119,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":20,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','51cc9e13dbe3cdd302c04686a0b7cdaa50e9b75b1f29c8fb486f25ffb359d739');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_3144bf05b4098f1b3f75','file','TAF/TAP TSI Dialog 26 Maerz 2026 Terminunterlage',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_44fe2d3163612d9c0a1e9803','src_3144bf05b4098f1b3f75','44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008','8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692',1421557,'application/pdf','TAF-TAP-TSI-Dialog-26-Maerz-2026-Terminunterlage-data.pdf','sources/normalized/bootstrap/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"TAF-TAP-TSI-Dialog-26-Maerz-2026-Terminunterlage-data.pdf","page_count":45,"raw_binary_committed":false,"schema_version":1,"size_bytes":1421557,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803","title":"TAF/TAP TSI Dialog 26 Maerz 2026 Terminunterlage","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008','src_3144bf05b4098f1b3f75','sv_44fe2d3163612d9c0a1e9803','{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-26-Maerz-2026-Terminunterlage-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692','src_3144bf05b4098f1b3f75',NULL,'{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-26-Maerz-2026-Terminunterlage-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_44fe2d3163612d9c0a1e9803' WHERE id='src_3144bf05b4098f1b3f75';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md','TAF/TAP TSI Dialog 26 Maerz 2026 Terminunterlage','13. TAF/TAP TSI-Dialog der DB InfraGO Austausch mit dem Markt 26.03.2026 – virtuell','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','32ad9e17ee6727fc667260089ad589309941519500ff2aeae000b591f14f6614','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_3144bf05b4098f1b3f75","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e1dd3672c87bd859459964ca','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',0,'Seite 1','13. TAF/TAP TSI-Dialog der DB InfraGO

Austausch mit dem Markt

26.03.2026 – virtuell',13,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":1,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','d0edb7c1c5370b83939f894a8a2ea886c3aafe461011eaf5f1cd18fcd4768f2a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_696708ee6775b3011518b481','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',1,'Seite 2','Agenda

1. Begrüßung

1. Begrüßung

2. Status TTT Einführung

3. Zentraler Eingangskanal: Support

4. Update pathOS

5. TTT im Betrieb

6. Update KOMBau

7. Unterjähriger Bau: Umgang mit BKE

8. Fragen & Antworten

9. Zum Nachlesen: Nächste Termine & Antworten im

Nachgang zum TTT-Dialog am 09. März

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 2',56,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":2,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','7ef3120e79265b8298dd28106dd7531528657c6444964fdba177316d475f4d4e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0c86ad9b83be6bc2439e776e','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',2,'Seite 3','Wir wollen mit Ihnen in den Dialog treten – Welche Fragen

haben Sie? Schreiben Sie diese bitte in den Chat

So können Sie eine Frage platzieren:

Bitte wählen Sie in MS Teams in der Menüleiste

das Icon „Chat“ aus und schreiben Ihre Frage

in das sich öffnende Fenster.

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 3',57,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":3,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','1ec25b6aeb1b790d6ce5c115355299023d199d7662273e167647452dc9d999b0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7b6a055ca5b5570a793fac6e','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',3,'Seite 4','2. Status TTT Einführung

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 4',13,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":4,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','4ab38c00e9d04ca909e34e82c274d41ecf2e033fdb22ce46c264946987e475c0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_fbd19492ad7ab6dcdfda1037','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',4,'Seite 5','Trassenanmeldung ist am 13.03.2026 erfolgreich gestartet

25.03.2026

(16:00 Uhr)

CI Bestellungen Portalbestellungen

25000 1800

23144

1547

1600

20000

1400

1200

15000

1000

800

10000

600

400 310

5000

200

1273 652

29

0 0

Fehlerhaft Valide Abbestellt Fehlerhaft Valide Abbestellt

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 5',49,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":5,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','eff3cee65be1885f69ee906fcb1f00ab619db08a65d11ccf3ed4286275373af7');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8e8d3c2cd183e40fa0e4fac7','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',5,'Seite 6','Mit erfolgreichem Start der Trassenanmeldung am 13.3.2026

geht der Fokus auf die nachfolgenden Phasen über

Ergebnisse seit letztem TTT-Dialog

✓ Trassenanmeldungen für die erste Phase der Netzfahrplanerstellung sind am 13. März erfolgreich

gestartet

✓ Release für pathOS ist am 11. März erfolgt: angekündigte zusätzliche Funktionen im pathOS

Bestellportal wurden bereitgestellt

✓ Veröffentlichung beantworteter Fragen aus dem TTT-Dialog vom 09.03.2026 am 12.03.2026

Nächste Schritte

• Onboarding der Schnittstellenpartner noch nicht für alle abgeschlossen

→ Aufruf an alle EVU, deren Onboarding noch nicht abgeschlossen ist: Onboarding abschließen und

parallel Trassenanmeldung via pathOS vorbereiten. Da mit dem noch verbleibenden Vorlauf das

Risiko für technische Herausforderungen hoch ist.

DB InfraGO hält Ressourcen vor, um das Onboarding abzuschließen.

• Markttests Trassenanmeldung und Defect-Behebung kontinuierlich fortsetzen → Fokus geht hier

auf ujBau, NEP2 und GelV über

• Vorbereitung Markttest TTT mit Identifiern im Betrieb (Start 14.4.)

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 6',149,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":6,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','9f7efab8c593ed979a55082052bcf7fe826122259e3695f013cd136367d47879');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f097e2befed00a9edd09643c','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',6,'Seite 7','3. Zentraler Eingangskanal: Support

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 7',13,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":7,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','4fec33ee9d48416e9f967a5672ce2891cfc9df25984bd2b3e1b9656a1b512d68');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_029dbcca56229f6a31e7a37f','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',7,'Seite 8','Zentrale Anlaufstelle für Anfragen zur Trassenanmeldung:

Support

Bitte alle Anfragen zur Trassenanmeldung ausschließlich über den

Support einreichen – keine Direktansprache einzelner Personen, um eine

strukturierte Bearbeitung und schnelle Rückmeldung sicherzustellen.

Was gehört in den Support?

Der Support übernimmt sämtliche Anliegen zur Trassenanmeldung, inkl.:

• Fragen zu Schulungsmaterialien/-inhalten

• Rückfragen aus Sprechstunden

Hinweis: Bitte bei konkreten Vorgängen Kundennummer und Request-ID mit

angeben – Details siehe nächste Folie.

Kontakt zum Support:

• E-Mail: [E-Mail-Adresse entfernt]

• Webformular (DB InfraGO Homepage)

• Sprechstunden

• Mehr dazu auf der nächsten Folie

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 8',96,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":8,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','3071e7666816b59064f473c1b2bcddacb7997cd95a26874729e358cb797ac49b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2ea015b6377d4418a5ac73b5','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',8,'Seite 9','Seit dem 13.03. gehen alle Anfragen, egal ob pathOS oder TPN,

an die folgenden Adressen

E-Mail Kontaktformular Telefon Sprechstunde

(nur pathOS)

[E-Mail-Adresse entfernt] Kontaktformular pathOS [Telefonnummer entfernt] bis 06.03.2026:

Donnerstags, 15-16 Uhr

Homepage DB InfraGO

10.03.2026 bis 24.04.2026:

Täglich, Mo. bis Fr., 10-11 Uhr

(keine Sprechstunden an

Feiertagen!)

Support

→ Aktuelle Informationen zur Anwendung sind im Infraportal unter Aktuelles zu den Tools zu finden.

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 9',73,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":9,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','d11c3b4f1cd9185315e7ddec97e24702db24fda3a258a58327ebaa127a4ff4df');
--> statement-breakpoint
