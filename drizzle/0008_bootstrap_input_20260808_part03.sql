UPDATE sources SET current_version_id='sv_2e22d860175ac7f66366cbe9' WHERE id='src_87a0d1da7ffe15350d9d';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/click-ride.md','Click & Ride','*Entdecken Sie jetzt unsere Web-App* [*Click&Ride*](https://clickandride.dbinfrago.com/ "Wird in einem neuen Tab geöffnet") *und starten Sie mit uns in eine neue Zeitrechnung des Schienengüterverkehrs. Kurzfristige Buchungen können Sie ab sofort ganz einfach und schnell – in nur 3 Minuten – vornehmen. Und das ab 7 Tagen und bis 45 Minuten vor der gewünschten','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','af07cce4c9583aeaceaa281f0da93f72159c2bf4649062135f4c0007305f9210','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236","source_id":"src_87a0d1da7ffe15350d9d","source_version_id":"sv_2e22d860175ac7f66366cbe9"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/click-ride.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3a6ea91b0ec1608525ea441b','wiki/sources/click-ride.md',0,'Inhalt','*Entdecken Sie jetzt unsere Web-App* [*Click&Ride*](https://clickandride.dbinfrago.com/ "Wird in einem neuen Tab geöffnet") *und starten Sie mit uns in eine neue Zeitrechnung des Schienengüterverkehrs. Kurzfristige Buchungen können Sie ab sofort ganz einfach und schnell – in nur 3 Minuten – vornehmen. Und das ab 7 Tagen und bis 45 Minuten vor der gewünschten Fahrt. Ob Überführungsfahrten, Leerfahrten, Triebfahrzeugfahrten oder Fahrten mit Standardgüterzügen mit kurzem Planungsvorlauf: Ihren Fahrplan erhalten Sie dank unseres volldigitalen Systems in Echtzeit direkt auf Ihren PC, Tablet oder Smartphone.*

**Entlastung für Ihren Arbeitsalltag.**

![](https://www.dbinfrago.com/resource/image/10907254/4:3/576/432/3fe5dc35c83976447bfd7ad71b4bdce0/7A25B8050B22E93FC8654BA0300C7EA3/clickandride_Mann-mit-Tablet.png)

Spontane Anfragen Ihrer Kund:innen? Eine dringende Überführung einer Lok zum Einsatz? Kurzfristige Änderungswünsche Ihrer Kund:innen?

All das kostet Sie mit Click&Ride nur noch ein paar Klicks. So können Sie Zeit wieder aufholen und kurzfristigen Aufträgen entspannt entgegensehen.

**Click&Ride auf einen Blick.**

**So funktioniert es:**

**1\. Einfach Web-App öffnen.** Bequem auf dem Desktop-PC, Tablet oder unterwegs auf dem Smartphone.

**2\. Start, Ziel, Wunschzeit und Parameter eingeben.** Einfach die Art Ihrer Lok, Gewicht, Länge, etc. definieren. Ihre Trassenanmeldung kann wahlweise zu gewünschter Abfahrts- oder Ankunftszeit erfolgen.

**3\. In spätestens 3 Minuten Ihr Angebot erhalten.** Ihre Trasse ist ab dem Moment für 10 Minuten reserviert. So können Sie in Ruhe entscheiden und entspannt buchen.

[Jetzt Click&Ride starten](https://clickandride.dbinfrago.com/ "Wird in einem neuen Tab geöffnet")

**Alle Vorteile auf einen Blick.**',211,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236","normalized_sha256":"8d41ec8cb8e71bddb957af0f0b485d4120af7639a8996a6ff0c2021d1619e916","page":null,"source_id":"src_87a0d1da7ffe15350d9d","source_sha256":"a564b36a60a9e35982e72efd9cc2532b4b6399e780ae1be060c0104a5bf66e09","source_version_id":"sv_2e22d860175ac7f66366cbe9"}','2a0be3ded2f71b2380c4a13ea0b203b4b3e7c6ba78c522a20fa95da5387daf86');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_22ef313ae3a0cd892f35ff60','wiki/sources/click-ride.md',1,'Inhalt','- kurzfristig regionale oder überregionale Trassen buchen
- ab 7 Tage bis 45 Minuten vor Wunschabfahrtszeit
- direkter Zugriff auf Click&Ride
- Ihre Trassenanmeldung und die Zugfahrt sind fast zeitgleich möglich
- nationaler Güterverkehr

**Hinweise zu Updates - Wartung ohne langes Warten.**

Wir verbessern unsere Web-App Click&Ride ständig für Sie weiter. Dazu gehören regelmäßige Updates und Wartungen, die Sie gut in Ihren Arbeitsablauf einplanen können. Jeden Mittwoch machen wir immer zur gleichen Zeit von 6 Uhr bis 8 Uhr und jeden Sonntag von 2 Uhr bis 3 Uhr eine Wartungspause. Direkt danach steht Ihnen unsere Web-App natürlich wieder uneingeschränkt zur Verfügung.

Hinweis: Sollte Ihnen nach der Wartungspause immer noch die Wartungsseite in unserer Web-App angezeigt werden, laden Sie die Seite bitte mit „Strg und F5“ einfach neu.

**Unsere FAQs.**

Hier finden Sie Antworten auf häufig gestellte fachliche und technische Fragen. Klicken Sie einfach eine passende Frage an und die entsprechende Antwort erscheint. Wenn Sie darüber hinaus weitere Unterstützung benötigen, nutzen Sie einfach das Kontaktformular auf dieser Website.

**FAQs zur Bedienung**

**1\. Welchen Browser soll ich nutzen?**

Bitte verwenden Sie ausschließlich Google Chrome. Unsere Web-App Click&Ride ist für diesen Browser optimiert.

**2\. Wie erhalte ich meine Zugangsdaten?**

Um unsere Web-App zu nutzen, benötigen Sie Ihre Zugangsdaten. Es gibt zwei Wege diese anzufordern.

1\. Nehmen Sie Kontakt zu den Administratoren in Ihrem Unternehmen auf. Sie können Sie freischalten und Ihnen die Zugangsdaten zur Verfügung stellen.',233,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236","normalized_sha256":"8d41ec8cb8e71bddb957af0f0b485d4120af7639a8996a6ff0c2021d1619e916","page":null,"source_id":"src_87a0d1da7ffe15350d9d","source_sha256":"a564b36a60a9e35982e72efd9cc2532b4b6399e780ae1be060c0104a5bf66e09","source_version_id":"sv_2e22d860175ac7f66366cbe9"}','7863307ab4d86f506787f1efcbcfc137f4f4bc787b4845eeb60eeee2e4e50bab');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_6253c95b22b6d392404807e7','wiki/sources/click-ride.md',2,'Inhalt','2\. Wenn Sie die Administratoren in Ihrem Unternehmen nicht kennen, unterstützt Sie Ihr:e Kundenberater:in aus Ihrer Region gerne und legt Sie im System an. Nutzen Sie einfach nebenstehenden Link zu unserer Kontaktseite.

Möchten Sie selbst Administrator:in für Ihr Unternehmen werden?Alle Antworten zu dieser Frage finden Sie in unseren FAQs unter Punkt 4.

**3\. Wie melde ich mich an?**

- Nachdem Ihre Daten von den Administratoren oder von unseren Kundenberater:innen angelegt worden sind, erhalten Sie via E-Mail eine Einladung zur Registrierung und Anmeldung.

![](https://www.dbinfrago.com/resource/image/10907240/4:3/576/432/15f2a5210119b69cc4bc4bd70f9f843/7CA2C34B127A47E196B18BD11288694A/clickandride_Anmeldung-Bild-1.jpg)

- Klicken Sie auf den Link „Registrierung für das Kundenportal (Beta)“ und öffnen Sie in Google Chrome die Seite, um den Registrierungsprozess zu starten.

![](https://www.dbinfrago.com/resource/image/10907244/4:3/576/432/e83ebe1becd89858b03effc532f47653/6B625C46BE90FAF26A34EF693FB83F48/clickandride_Anmeldung-Bild-2.jpg)

- Bitte füllen Sie alle erforderlichen Felder (mit \* markiert) aus und definieren Sie Ihr Passwort. Mit einem Häkchen akzeptieren Sie die Datenschutz- und Nutzungsbedingungen. Jetzt brauchen Sie nur noch auf den Button „Registrieren“ zu klicken.

![](https://www.dbinfrago.com/resource/image/10907246/4:3/576/432/4a273e62331024a733de9009345dc3b8/5378EA6EE88C4907415DFF31269B0348/clickandride_Anmeldung-Bild-3.jpg)

- Per E-Mail erhalten Sie jetzt umgehend Ihren Benutzernamen zugesandt.

![](https://www.dbinfrago.com/resource/image/10907250/4:3/576/432/5552a19e91cc8d741eb8a93d214586a5/3E45C59B657B0CCC9968C34E0B8689AC/clickandride_Anmeldung-Bild-4.jpg)',156,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236","normalized_sha256":"8d41ec8cb8e71bddb957af0f0b485d4120af7639a8996a6ff0c2021d1619e916","page":null,"source_id":"src_87a0d1da7ffe15350d9d","source_sha256":"a564b36a60a9e35982e72efd9cc2532b4b6399e780ae1be060c0104a5bf66e09","source_version_id":"sv_2e22d860175ac7f66366cbe9"}','c8c1ce20e76d248c1b9f9046182ef3028370069263e275e478494424ef4366ee');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_052d1a3976564e3ac72888a2','wiki/sources/click-ride.md',3,'Inhalt','![](https://www.dbinfrago.com/resource/image/10907248/4:3/576/432/43b5b601eace13b79dbac6ccc816b69e/D078C5C715CF6D34B3605F1539D5C48C/clickandride_Anmeldung-Bild-5.jpg)

- Sie sind registriert und können sich bei unserer Web-App Click&Ride anmelden. Gehen Sie einfach auf [clickandride.dbinfrago.com](https://clickandride.dbinfrago.com/ "Wird in einem neuen Tab geöffnet") und geben Sie hier Ihren Benutzernamen sowie das vorher definierte Passwort ein.
- Fertig. Jetzt können Sie direkt starten und innerhalb von 3 Minuten Ihre Strecke buchen.

**4\. Kann ich auch selbst User anlegen?**

Ja, dies ist im Kundenportal als Administrator:in ohne Probleme möglich.

Unsere Empfehlung:Jedes Eisenbahnverkehrsunternehmen sollte mindestens eine:n Administrator:in haben. Wenn Sie Administrator:in in Ihrem Unternehmen werden möchten, schreiben Sie uns einfach eine kurze Mail an: [kundenportal.dbinfrago@deutschebahn.com](mailto:kundenportal.dbinfrago@deutschebahn.com "Wird in einem neuen Tab geöffnet") Bitte geben Sie hier Ihre E-Mail Adresse sowie Ihre Kundennummer(n) an.

**5\. Warum funktioniert mein Passwort nicht mehr?**

Aktuell ist Ihr Passwort immer 3 Monate gültig. Sollte Ihr Passwort abgelaufen sein, können Sie es im [Kundenportal](https://portal.mynet.service.deutschebahn.com/ "Wird in einem neuen Tab geöffnet") der DB InfraGO AG ganz unkompliziert ändern.

**6\. Wer ist mein erster Ansprechpartner?**

Ihr erster Ansprechpartner ist Ihr:e Kundenberater:in in Ihrer Region. Sollten Sie noch keine Kontaktdaten haben, nutzen Sie gerne [unsere Kontaktseite](https://www.dbinfrago.com/web/Ihr-Kontakt-zum-Schienennetz-11212488).

**7\. An wen wende ich mich bei fehlerhaften Trassen?**',183,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236","normalized_sha256":"8d41ec8cb8e71bddb957af0f0b485d4120af7639a8996a6ff0c2021d1619e916","page":null,"source_id":"src_87a0d1da7ffe15350d9d","source_sha256":"a564b36a60a9e35982e72efd9cc2532b4b6399e780ae1be060c0104a5bf66e09","source_version_id":"sv_2e22d860175ac7f66366cbe9"}','2fa0d79893734b04b19dd2281504f3b7d02d5a96034e9cfefb67e664fae6e665');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_26af7fd1643856a8c4599c36','wiki/sources/click-ride.md',4,'Inhalt','Bitte wenden Sie sich bei fehlerhaften Trassen mit einer Dokumentation Ihres Problems via Screenshots an den technischen Support der Anwendung DevOps-Team. Sie erreichen das Team über [next-support@deutschebahn.com](mailto:next-support@deutschebahn.com)

**8\. Warum finde ich die Anwendung nicht im Google PlayStore oder im App-Store?**

Es handelt sich bei Click&Ride nicht um eine klassische App, sondern um eine Web-App, die man wie eine Website einfach als URL in dem Browser eingibt. Bitte nutzen Sie dazu den Browser Google Chrome.

**FAQs zur Technik**

**1\. Warum finde ich mein Triebfahrzeug nicht in der Auswahlliste?**

Die Bezeichnungen der Triebfahrzeuge auf unserer Auswahlliste sind mehr und mehr an das System des Fahrzeugeinstellungsregisters angelehnt. Sie folgen einem klaren Schema, das wir hier für Sie aufgelistet haben. So können Sie einfach die richtige Bezeichnung und damit Ihr Triebfahrzeug in der Auswahlliste finden.

- XX YYYY.Z
- XX: Zweistelliger UIC-Ländercode
- YYYY: Vierstellige Baureihennummer
- Z: Baureihenvariantennummer

**Übrigens**: Eine komplette Übersicht aller Triebfahrzeuge und ihre Bezeichnungen sowie die entsprechenden Grenzlastdaten finden Sie bei uns auf [GretA](https://www.dbinfrago.com/greta "Wird in einem neuen Tab geöffnet").

**2\. Wo sehe ich meine Buchungen und wie kann ich sie ändern oder stornieren?**

Trassenbuchungen, die Sie über Click&Ride vorgenommen haben, werden Ihnen an gewohnter Stelle angezeigt: im TPN oder dem Programm, das sie für die EVU-Schnittstelle nutzen. Hier können Sie auch einfach Trassenänderungen oder Stornierungen vornehmen. Mit unserer Web App Click&Ride sind nur Neuanmeldungen von Trassen möglich.

**3\. Wie kann ich einen Richtungswechsel bestellen?**',235,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236","normalized_sha256":"8d41ec8cb8e71bddb957af0f0b485d4120af7639a8996a6ff0c2021d1619e916","page":null,"source_id":"src_87a0d1da7ffe15350d9d","source_sha256":"a564b36a60a9e35982e72efd9cc2532b4b6399e780ae1be060c0104a5bf66e09","source_version_id":"sv_2e22d860175ac7f66366cbe9"}','8dcb176f33e6cad96d39a15f00b341fab18072e3362d9304a76c9aebad034670');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_494d596ed462179ee7a46053','wiki/sources/click-ride.md',5,'Inhalt','Ein erforderlicher Richtungswechsel kann in Click&Ride bestellt werden, in dem in einem bestellten Via-Punkt der Haltegrund „Richtungswechsel“ ausgewählt wird.

Ein Richtungswechsel wird weiterhin automatisch eingefügt, insofern erforderlich, wenn der Haken „Richtungswechsel erlauben“ gesetzt ist. In der Voreinstellung ist der Haken immer gesetzt.

**4\. Wieso benötige ich eine Einzelgrenzlastberechnung für eine Fahrt, die ich schon mehrfach bestellt habe?**

Leider liegen uns nicht für alle Triebfahrzeuge die entsprechenden Grenzlastdaten vor. Auch können wir bei der automatischen Konstruktion nicht eine Vergleichsbaureihe zur Prüfung heranziehen, wie das bei der manuellen Konstruktion möglich ist.

Eventuell ist Ihr Triebfahrzeug aber schon mit anderem Namen und den entsprechenden Grenzlastdaten bei uns gelistet. Eine komplette Übersicht über alle Triebfahrzeuge und ihre Bezeichnungen sowie die entsprechenden Grenzlastdaten finden Sie bei uns auf [GretA](https://www.dbinfrago.com/greta "Wird in einem neuen Tab geöffnet").',130,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/click_and_ride-10907236","normalized_sha256":"8d41ec8cb8e71bddb957af0f0b485d4120af7639a8996a6ff0c2021d1619e916","page":null,"source_id":"src_87a0d1da7ffe15350d9d","source_sha256":"a564b36a60a9e35982e72efd9cc2532b4b6399e780ae1be060c0104a5bf66e09","source_version_id":"sv_2e22d860175ac7f66366cbe9"}','13150598b2fdf0be485d65bd557cd278c356a951838737582e48a55ba71e59a8');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_a12e612bd58a0ba3aa61','file','clickandride TPN Infoflyer',NULL,'de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_b65369e50e48687c06b48afd','src_a12e612bd58a0ba3aa61','3a46c895ee9f6ae7dfedbee6b96550d08620c45f1e2bdc013398dae7af5e4f0b','82d26b73e204325d7d39756adf1e9a92b595c6bc3ec677e568b479425adb19dd',275981,'application/pdf','clickandride_TPN_Infoflyer-data.pdf','sources/normalized/bootstrap/clickandride-tpn-infoflyer-data/sv_b65369e50e48687c06b48afd.md','pdfplumber','0.11.9','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"3a46c895ee9f6ae7dfedbee6b96550d08620c45f1e2bdc013398dae7af5e4f0b","converter":{"name":"pdfplumber","profile":"bootstrap-markdown-v2","version":"0.11.9"},"final_url":null,"import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_b65369e50e48687c06b48afd.json","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/clickandride-tpn-infoflyer-data/sv_b65369e50e48687c06b48afd.md","normalized_sha256":"82d26b73e204325d7d39756adf1e9a92b595c6bc3ec677e568b479425adb19dd","origin_page_url":null,"original_filename":"clickandride_TPN_Infoflyer-data.pdf","page_count":2,"raw_binary_committed":false,"requested_url":null,"schema_version":2,"size_bytes":275981,"source_id":"src_a12e612bd58a0ba3aa61","source_sha256":"3a46c895ee9f6ae7dfedbee6b96550d08620c45f1e2bdc013398dae7af5e4f0b","source_version_id":"sv_b65369e50e48687c06b48afd","supersedes_source_version_id":null,"title":"clickandride TPN Infoflyer","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','3a46c895ee9f6ae7dfedbee6b96550d08620c45f1e2bdc013398dae7af5e4f0b','src_a12e612bd58a0ba3aa61','sv_b65369e50e48687c06b48afd','{"content_duplicate_group":null,"original_filename":"clickandride_TPN_Infoflyer-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','82d26b73e204325d7d39756adf1e9a92b595c6bc3ec677e568b479425adb19dd','src_a12e612bd58a0ba3aa61',NULL,'{"content_duplicate_group":null,"original_filename":"clickandride_TPN_Infoflyer-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_b65369e50e48687c06b48afd' WHERE id='src_a12e612bd58a0ba3aa61';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/clickandride-tpn-infoflyer-data.md','clickandride TPN Infoflyer','TPN und Click&Ride auf einen Blick: Ihr Wegweiser zur automatischen Trassenkonstruktion Unser Ziel: Wir möchten Qualität und Geschwindigkeit bei der Fahrplanerstellung für alle Beteiligten steigern. Unser Weg: Erhöhung des Anteils der direkt automatisch erstellten Trassen. Unser Tipp: Nutzen Sie unsere Hinweise auf der folgenden Seite und wenden Sie sich bei','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','91912d40a7ca79cf8c511b6ea4305bc6814ae2f03c803f1f1d964244e6a3dceb','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_a12e612bd58a0ba3aa61","source_version_id":"sv_b65369e50e48687c06b48afd"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/clickandride-tpn-infoflyer-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7a9665ed1ab3e225be5dd85b','wiki/sources/clickandride-tpn-infoflyer-data.md',0,'Seite 1','TPN und Click&Ride auf einen Blick: Ihr

Wegweiser zur automatischen

Trassenkonstruktion

Unser Ziel:

Wir möchten Qualität und Geschwindigkeit bei der Fahrplanerstellung für alle Beteiligten steigern.

Unser Weg:

Erhöhung des Anteils der direkt automatisch erstellten Trassen.

Unser Tipp:

Nutzen Sie unsere Hinweise auf der folgenden Seite und wenden Sie sich bei Fragen gern an uns.

Automatische Konstruktion: Sie können nur gewinnen!

Sie gewinnen wertvolle Zeit – durch erheblich reduzierte Wartezeit zwischen Trassenbestellung

und Erhalt des Trassenangebotes.

Über Click&Ride können Sie flexibel und unverbindlich genau die Trasse finden, die zur Ihren

Wünschen passt – das Ganze ohne Wartezeit und interaktiv über eine moderne

Weboberfläche.

Ist meine Trasse automatisch konstruierbar?

Zug verkehrt als kurzfristiger X Zug verkehrt in Abschnitten außerhalb des Schienen-

Gelegenheitsverkehr netzes der DB InfraGO AG (außer ausgewählte Infrastrukturen

wie z. B. Hamburger Hafen)

Abfahrt innerhalb der nächsten 7 X BZA und/oder EGB erforderlich

Kalendertage (Click&Ride)

Gefahrguttransport X 20h-Züge

Züge mit KV-Profil X Besetzter Schienenpersonenverkehr

Ungebundene Leerreisezüge

Keine aufwendige Bearbeitung

Click&Ride oder automatische Konstruktion TPN?

Click&Ride Automatische Konstruktion TPN

Sie möchten mit wenigen Klicks Ihre Trasse bestellen, Sie nutzen in Ihrem Unternehmen bereits TPN oder

auch von unterwegs, z. B. mit Smartphone oder Tablet. die EVU-Schnittstelle

Sie möchten ein unverbindliches Trassenangebot Sie möchten nicht noch ein weiteres IT-Programm /

innerhalb von 3 Minuten erhalten. Tool nutzen.

Sie möchten den Fahrplan vor der Buchung noch Ihre Bestellung wird direkt an die automatische',230,'{"canonical_url":null,"normalized_sha256":"82d26b73e204325d7d39756adf1e9a92b595c6bc3ec677e568b479425adb19dd","page":1,"source_id":"src_a12e612bd58a0ba3aa61","source_sha256":"3a46c895ee9f6ae7dfedbee6b96550d08620c45f1e2bdc013398dae7af5e4f0b","source_version_id":"sv_b65369e50e48687c06b48afd"}','8afa650b3c714c2c00069c1e1a96ee353d89fde3d6bfbdf3cbfbe9b6ff473b22');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1584261baced0df0e67ad4a3','wiki/sources/clickandride-tpn-infoflyer-data.md',1,'Seite 1','einmal ansehen. Konstruktion weitergeleitet, sofern sie plausibel ist.

Sie möchten Ihre Trassenanfrage vor Annahme des Wir möchten allerdings darauf hinweisen, dass bei

Trassenangebots beliebig oft überarbeiten können, Auffälligkeiten in der Plausibilisierung der Bestellz. B. durch Laufwegveränderungen. angaben unsere Trassenkonstrukteure Ihre Angaben -

Ihr Zug steht zur Abfahrt bereit und soll in Kürze nach Rücksprache - anpassen und Ihre Bestellung

abfahren. (mind. 45 Minuten) erneut an die automatische Konstruktion geben

werden, wodurch der Bestellprozess verlängert wird.

Kontakt:

https://fahrweg.dbinfrago.com/fahrweg-de/kontaktformular-9738464#',77,'{"canonical_url":null,"normalized_sha256":"82d26b73e204325d7d39756adf1e9a92b595c6bc3ec677e568b479425adb19dd","page":1,"source_id":"src_a12e612bd58a0ba3aa61","source_sha256":"3a46c895ee9f6ae7dfedbee6b96550d08620c45f1e2bdc013398dae7af5e4f0b","source_version_id":"sv_b65369e50e48687c06b48afd"}','3992854531f71d2d79d87495d03114fc41261db08f26b1a6bf9a80937435d00f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_95df3fe7f53fd0ac0bad1d76','wiki/sources/clickandride-tpn-infoflyer-data.md',2,'Seite 2','Ihre Checkliste für die automatische Konstruktion mit TPN

Sie haben keine Angaben im Kommentarfeld „Bemerkung Kunde an Netz“ gemacht

Nutzen Sie das Kommentarfeld „Kunde an Netz“ ausschließlich bei aufwendigen Bearbeitungen und speziellen

Sonderwünschen im Rahmen der Konstruktion.

Bitte verzichten Sie im Kommentarfeld auf jegliche Angaben, z. B. zu:

Laufweg Baureihe Kontaktdaten von Ansprechpartnern

Falls Sie sich nicht sicher sind, in welches Eingabefeld Sie eine Information aus dem Kommentarfeld eingeben

können, dann wenden Sie sich gern an Ihren Kundenbetreuer.

Sie haben den genauen Bahnhofsteil ausgewählt (v. a. bei großen Bahnhöfen)

In großen Bahnhöfen, z. B. Erfurt, Mainz-Bischofsheim oder Halle, gibt es mehrere Bahnhofsteile.

Bei TPN-Bestellung nur mit der Angabe UE, FMB oder LH ist sowohl eine manuelle als auch eine

automatische Trassenkonstruktion erst nach Zuordnung eines Bahnhofsteils möglich.

Sie haben bei Zügen mit LZB mindestens 56 Bremshundertstel angegeben

Damit ein Zug LZB nutzen darf, muss er mindestens diesen Wert aufweisen.

Züge mit weniger als 56 Bremshundertstel dürfen nicht mit LZB bestellt werden.

Sie haben bei einer Fahrt mit angehängten Wagen sowohl Wagenzuglänge

als auch Wagenzuglast angegeben

Wenn Sie bei Zugbestellungen eine Wagenzuglänge größer 0 Meter angeben, muss auch eine Wagenzuglast

(Gewicht) angegeben werden.

Sie haben bei Verkehrshalten die Mindesthaltezeit beachtet

Die Mindesthaltezeit für Kundenhalte im Güterverkehr (z. B. für Personalwechsel etc.) beträgt 2 Minuten.

Für Richtungswechsel sind bei Tfz-Fahrten mindestens 5 Minuten, ansonsten mindestens 30 Minuten zu bestellen.

Sie haben die korrekte Zuggattung angegeben',233,'{"canonical_url":null,"normalized_sha256":"82d26b73e204325d7d39756adf1e9a92b595c6bc3ec677e568b479425adb19dd","page":2,"source_id":"src_a12e612bd58a0ba3aa61","source_sha256":"3a46c895ee9f6ae7dfedbee6b96550d08620c45f1e2bdc013398dae7af5e4f0b","source_version_id":"sv_b65369e50e48687c06b48afd"}','ebdd8bfc409fdb53dfd1f33ebbfbd35a98c4fd7ae25d5c277a6699f18db1078a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_30e2cbe7d7a14d60127fce50','wiki/sources/clickandride-tpn-infoflyer-data.md',3,'Seite 2','Ausschließlich Unternummern der Zuggattungen mit Bezug auf Sonder- bzw. Gelegenheitsverkehr sind

automatisch konstruierbar.

Entspricht der automatisiert erstellte Fahrplan nicht Ihren Bestellwünschen? Dann wenden Sie sich

bitte per E-Mail an die Trassenbestellannahme der Region, in der die Trasse beginnt. Dort können Sie

eine Anpassung veranlassen.

Kontakt:

Region Süd: [E-Mail-Adresse entfernt] Region Nord: [E-Mail-Adresse entfernt]

Region Südwest: [E-Mail-Adresse entfernt] Region Ost: [E-Mail-Adresse entfernt]

Region Mitte: [E-Mail-Adresse entfernt] Region Südost: [E-Mail-Adresse entfernt]

Region West: [E-Mail-Adresse entfernt]

Impressum

DB InfraGO AG, Adam-Riese-Straße 11–13,

60327 Frankfurt am Main

Stand: Januar 2024

Änderungen vorbehalten, Einzelangaben ohne Gewähr.

Geltung der SNB/NBS in ihrer jeweils gültigen Fassung

bleibt unberührt.',101,'{"canonical_url":null,"normalized_sha256":"82d26b73e204325d7d39756adf1e9a92b595c6bc3ec677e568b479425adb19dd","page":2,"source_id":"src_a12e612bd58a0ba3aa61","source_sha256":"3a46c895ee9f6ae7dfedbee6b96550d08620c45f1e2bdc013398dae7af5e4f0b","source_version_id":"sv_b65369e50e48687c06b48afd"}','679781a987ff304546583d83df4cd8a2141261fffe0ffd1dbca2f56040f922df');
--> statement-breakpoint
