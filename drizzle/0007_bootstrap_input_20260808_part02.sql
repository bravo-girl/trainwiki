INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_6dfa6ab185d7b13bde7c1fcc','wiki/sources/download-taf-tap-glossar-data.md',3,'Seite 2','Begriff Beschreibung

PLC Diese Abkürzung steht für Primary Location Code. Mit dem Primary Location Code werden

Betriebsstellen eindeutig und in einem einheitlichen, standardisierten europäischen Format codiert.

Somit identifiziert ein Primary Location Code eine Örtlichkeit auf dem Schienennetzwerk. Primary

Location Codes werden zukünftig bei jeder Art von TAF/TAP-Kommunikation verwendet. Daneben

wird es auch weiterhin die Ril100 Codes geben (z.B. im Trassenbestellsystem).

Primary Location Eine Primary Location ist ein Ort innerhalb des Schienennetzes, an dem eine Zugfahrt beginnt, endet,

anhält, durchfährt oder die Strecke wechselt. Dieser Ort muss von einem Infrastrukturbetreiber, der

durch einen Company Code identifiziert wird, verwaltet werden. Beispiele für Primary Locations sind

Bahnhöfe, Haltepunkte oder Grenzpunkte.

PRM bzw. Path Request Abkürzung für die Path Request Message, eine Pflichtnachricht in der Trassenanmeldung, mit der ein

Path erstmalig bestellt wird. Diese Nachricht wird vom EVU an das EIU geschickt

RA Die Abkürzung für den "Responsible Applicant", das vertragsbindende Unternehmen. Es kann sein,

dass ein und dasselbe EVU die Rollen des LeadRU, RA und ResponsibleRU einnimmt.

ReferenceTrain Familie von Zügen (Trains) bzw. Zugfamilie. Objekt im Kontext des TAF/TAP-Modells. Darunter werden

verschiedene zueinander gehörige Züge (Trains) zusammengefasst. Dies können z.B. Züge mit

abweichenden Zugläufen werktags und am Wochenende sein. Wird durch eine ReferenceTrainID

identifiziert

ResponsibleIM Das für die Bereitstellung einer Trasse (Path) und die betriebliche Durchführung der Zugfahrt auf

Infrastrukturseite verantwortliche EIU. Analog zum ResponsibleRU.',222,'{"canonical_url":null,"normalized_sha256":"daa4d8e870f689a51764d980e10aa769e347a381d3d4a1cc30e57d7898bfd51e","page":2,"source_id":"src_660bf8039cf0527ee7b6","source_sha256":"51fb412fc4f0d41650cb55bfbd30199f90cdff881090b1f2af568d45ea8636e2","source_version_id":"sv_51fb412fc4f0d41650cb55bf"}','b2773faca825eba224bc4dda0fecde0e5ca300d969c8085fd3d3bc275a7e87da');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_691eecbef550448fc3f31beb','wiki/sources/download-taf-tap-glossar-data.md',4,'Seite 2','ResponsibleRU, auch RRU Das für die Durchführung einer Zugfahrt verantwortliche EVU, also der "Eigner der Trasse". Dieses EVU

ist gemäß TAF/TAP der Partner für den Datenaustausch mit dem EIU in der Betriebsphase. Dies behält

auch seine Gültigkeit, falls das ResponsibleRU einen Subunternehmer mit der Durchführung der

Zugfahrt beauftragt. Es kann sein, dass ein und dasselbe EVU die Rollen des LeadRU, RA und

ResponsibleRU einnimmt.

RNE RNE ist die Rail Net Europe, ein europäischer Verband der Eisenbahninfrastrukturunternehmen. Sie ist

einer der Hauptakteure bei der Umsetzung von TAF/TAP TSI. Die RNE gibt es seit 2004 und hat zum

übergreifenden Ziel die Herausforderungen des europäischen Eisenbahnsektors anzugehen und zu

vereinfachen. Die RNE versucht, die europäische Vernetzung seiner Mitglieder zu unterstützen und z.B.

auch bei rechtlichen Fragestellungen innerhalb der EU zu vermitteln. Mit Stand 2022 hat die RNE 38

Vollmitglieder aus über 30 Ländern.

Route Objekt im Kontext des TAF/TAP-Modells. Beinhaltet den groben Zuglauf (Start, Ziel, Grenzübergänge

sowie Informationen zu Tageswechseln) durch Europa.

Wird durch eine RouteID identifiziert

RU Die englische Bezeichnung für ein EVU (Eisenbahnverkehrsunternehmen), also ein "Railway

Undertaking"

SLC Ein Subsidiary Location Code identifiziert eindeutig eine Subsidiary Location innerhalb einer

bestehenden Primary Location. Mit dem SLC werden Subsidiary Locations in einem einheitlichen,

standardisierten europäischen Format codiert. Mit Hilfe der Subsidiary Location Codes kann ein

Nachrichtenaustausch zwischen Unternehmen stattfinden, die in einer geschäftlichen Beziehung

stehen.

Subsidiary Location Eine Subsidiary Location ist immer mit einer Primary Location verknüpft und beschreibt Teile,',237,'{"canonical_url":null,"normalized_sha256":"daa4d8e870f689a51764d980e10aa769e347a381d3d4a1cc30e57d7898bfd51e","page":2,"source_id":"src_660bf8039cf0527ee7b6","source_sha256":"51fb412fc4f0d41650cb55bfbd30199f90cdff881090b1f2af568d45ea8636e2","source_version_id":"sv_51fb412fc4f0d41650cb55bf"}','6ad1b77340cbbb64f9c59095157320e8a87b6f65378b68b54566cb4302da9460');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f4c2966b7573656c83d6ee68','wiki/sources/download-taf-tap-glossar-data.md',5,'Seite 2','Attribute von Primary Locations oder die Verwendung von Primary Locations näher. Es kann sich auch

um einen nicht-schienengebundenen oder schienengebundenen Punkt handeln, der nicht von einem

Infrastrukturbetreiber (IM) betrieben wird. Beispiele für Subsidiary Locations sind Gleise, Tankanlagen

oder Ladepunkte.

TAF TSI Telematics Applications for Freight Services - Technical Specification for Interoperability (Telematische

Anwendungen für den Güterverkehr - Technische Spezifikation für Interoperabilität)

TAP TSI Telematics Applications for Passenger Services - Technical Specification for Interoperability

(Telematische Anwendungen für den Personenverkehr - Technische Spezifikation für Interoperabilität)

TCM/PTCM Train Composition Message (Güterverkehr) bzw. Passenger Train Composition Message

(Personenverkehr): Die beiden künftig verbindlichen Nachrichtentypen von TAF/TAP im Betrieb

werden vom EVU an das EIU gesendet. Sie geben Auskunft über die aktuellen Zuginhaltsdaten (Länge,

Gewicht, Angaben zu Bremsen, etc.) und sind nicht gleichzusetzen mit der heutigen Wagenliste.

Einführung erfolgt vsl. in 09/2023, eine Verpflichtung zu Abgabe in NBN ist grundsätzlich geplant -

genauere Termine hierzu werden separat kommuniziert, sobald bekannt.

TPN Trassen Portal Netz, also das bisherige System zur Trassenanmeldung bei der DB InfraGO. Dieses wird

mit Einführung von TAF/TAP durch das neue Bestellsystem ersetzt. Aus heutiger Sicht bleibt TPN bis

einschließlich Fahrplanjahr 2025 führend, ab Fahrplanjahr 2026 gilt das neue System

Train Zug. Objekt im Kontext des TAF/TAP-Modells. Beinhaltet Informationen zum Zug und dessen

Eigenschaften. Wird durch eine TrainID identifiziert.

Glossar zu TAF/TAP TSI, Stand Dezember 2023 Seite 2 von 3',226,'{"canonical_url":null,"normalized_sha256":"daa4d8e870f689a51764d980e10aa769e347a381d3d4a1cc30e57d7898bfd51e","page":2,"source_id":"src_660bf8039cf0527ee7b6","source_sha256":"51fb412fc4f0d41650cb55bfbd30199f90cdff881090b1f2af568d45ea8636e2","source_version_id":"sv_51fb412fc4f0d41650cb55bf"}','f32b15911d72bd0f7aa87a0526042c697a1908e12a6d6841ab7f40df1e828c5d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f8dc47de8f9f289558f4aa3a','wiki/sources/download-taf-tap-glossar-data.md',6,'Seite 3','Begriff Beschreibung

Train Activity Ein Feld innerhalb einiger Nachrichten, u.a. in der Trassenanmeldung für den Fahrplan oder der

Information zu Abhängigkeiten zwischen Zügen im Betrieb. Hiermit wird die Zugaktivität an einem

bestimmten Laufwegspunkt beschrieben. Dies sind z.B. gebräuchliche Aktivitäten wie der

Verkehrshalt, Anschluss-/Umlaufinformationen oder das Zusammenführen von Zügen oder weniger

oft genutzte wie Lokführererholungshalt, Fotohalt etc.

UIC Die International Union of Railways mit der Mission: "Promote rail transport globally with the

objective of responding effectively to current and future challenges relating to mobility and

sustainable development; Develop and facilitate all forms of international cooperation among

members and promote sharing of best practice" (Auszug zitiert von der UIC-Homepage). Die UIC

vergibt u.a. die Company Codes

UIC-Telegramme Bestehendes international standardisiertes Datenaustauschformat im Betrieb. Einige Telegramme sind

analog zu den entsprechenden TAF/TAP-Meldungen (z.B. Zugstandort, Prognose). Gegenüber den

TAF/TAP-Meldungen decken die UIC-Telegramme jedoch weniger Geschäftsfälle ab und bieten

weniger Umfang

xsd XML Schema Definition: Das Dateiformat, in dem z.B. die RNE ihre Schnittstellenbeschreibungen

veröffentlicht

Zugnummer Die heute im Betrieb verwandte Zugnummer, mit der auch Passagiere im Aushangfahrplan ihren Zug

erkennen können

Glossar zu TAF/TAP TSI, Stand Dezember 2023 Seite 3 von 3',188,'{"canonical_url":null,"normalized_sha256":"daa4d8e870f689a51764d980e10aa769e347a381d3d4a1cc30e57d7898bfd51e","page":3,"source_id":"src_660bf8039cf0527ee7b6","source_sha256":"51fb412fc4f0d41650cb55bfbd30199f90cdff881090b1f2af568d45ea8636e2","source_version_id":"sv_51fb412fc4f0d41650cb55bf"}','458d76a4c10481f2b76f1de5bce7f735b39b8e0c6f12975d073419534732b310');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_b5fb8ccb80d176b38310','file','FAQ Infoveranstaltung Netzfahrplan 2027',NULL,'de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_4fbe32d73c5618c02a183f43','src_b5fb8ccb80d176b38310','79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689','ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c',91280,'application/pdf','FAQ-Infoveranstaltung-Netzfahrplan-2027-data.pdf','sources/normalized/bootstrap/faq-infoveranstaltung-netzfahrplan-2027-data/sv_4fbe32d73c5618c02a183f43.md','pdfplumber','0.11.9','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","converter":{"name":"pdfplumber","profile":"bootstrap-markdown-v2","version":"0.11.9"},"final_url":null,"import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_4fbe32d73c5618c02a183f43.json","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/faq-infoveranstaltung-netzfahrplan-2027-data/sv_4fbe32d73c5618c02a183f43.md","normalized_sha256":"ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c","origin_page_url":null,"original_filename":"FAQ-Infoveranstaltung-Netzfahrplan-2027-data.pdf","page_count":6,"raw_binary_committed":false,"requested_url":null,"schema_version":2,"size_bytes":91280,"source_id":"src_b5fb8ccb80d176b38310","source_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","source_version_id":"sv_4fbe32d73c5618c02a183f43","supersedes_source_version_id":null,"title":"FAQ Infoveranstaltung Netzfahrplan 2027","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689','src_b5fb8ccb80d176b38310','sv_4fbe32d73c5618c02a183f43','{"content_duplicate_group":null,"original_filename":"FAQ-Infoveranstaltung-Netzfahrplan-2027-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c','src_b5fb8ccb80d176b38310',NULL,'{"content_duplicate_group":null,"original_filename":"FAQ-Infoveranstaltung-Netzfahrplan-2027-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_4fbe32d73c5618c02a183f43' WHERE id='src_b5fb8ccb80d176b38310';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md','FAQ Infoveranstaltung Netzfahrplan 2027','Fragen / Antworten Kundenveranstaltung „Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen“ Termin 15.04.2026 1. Warum werden die Jahre 2023/2024 bei der AQ und SQ berücksichtigt? es war doch nicht bekannt bei den Bestellungen in diesen Jahren, dass das EVU 3 Jahre später zu einem nicht verlässlichem EVU wird Hierzu gab es in der Zwischenzeit für die ','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','37561f38c1148d07edd9772d0577f5d40f32d01065cc6366ed3b3b45a55a4a27','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_b5fb8ccb80d176b38310","source_version_id":"sv_4fbe32d73c5618c02a183f43"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b0884b3a3a90c7d64ae50b20','wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md',0,'Seite 1','Fragen / Antworten Kundenveranstaltung „Teilzuweisungen, Storno- und

Annahmequote und E-Mailtypen“

Termin 15.04.2026

1. Warum werden die Jahre 2023/2024 bei der AQ und SQ berücksichtigt? es war

doch nicht bekannt bei den Bestellungen in diesen Jahren, dass das EVU 3 Jahre

später zu einem nicht verlässlichem EVU wird

Hierzu gab es in der Zwischenzeit für die Werte der 1. NEP eine

Kundeninformation vom 21.04.2026, auf die wir verweisen. Link: Änderungen

für die Berechnung der diesjährigen relevanten Storno- und Annahmequoten für

die erste Phase der Netzfahrplanerstellung 2027. Im Übrigen stellt die Ziffer

4.2.1.9 lit c) - e) der INB 2027 das aktuell geltende Regelwerk dar, das auch

nicht durch die Bundesnetzagentur beanstandet wurde.

2. Zählen zukünftig Ablehnungen nach einem FPE/NAÄ in die Stornoquote?

Wenn ein FPE/NAÄ einen Ausfall aufgrund einer baubedingten

Kapazitätseinschränkung vorsieht, fällt dies grundsätzlich in den Einflussbereich

der DB InfraGO AG und wird daher nicht in der Stornoquote berücksichtigt.

Sofern die FPE/NAÄ zu einer Anpassung der Trasse führt, hat der

Zugangsberechtigte nach der Richtlinie 402.0305 Abschnitt 8 Absatz 6 (2027)

die Möglichkeit diese innerhalb von drei Arbeitstagen kostenfrei zu stornieren.

Eine solche fristgerechte Stornierung ist der Stornoquote nicht zuzurechnen.

Sollten gleichwohl in der Auswertungsdatei zur Stellungnahme bzgl.

nichtwirtschaftlicher Gründe solche Fälle auftauchen, bitten wir diese zu

reklamieren.

3. Warum fließen Stornierungen, welche durch die DB InfraGO verursacht werden,

z.B. Baubedingt, Streik etc. trotzdem in die Stornoquote?

Grundsätzlich sind DB-InfraGO-AG-ausgelöste Ursachen der Stornoquote nicht

zuzurechnen. Sollten aufgrund von systembedingten Umständen solche Ursachen',241,'{"canonical_url":null,"normalized_sha256":"ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c","page":1,"source_id":"src_b5fb8ccb80d176b38310","source_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","source_version_id":"sv_4fbe32d73c5618c02a183f43"}','b63d0c02bda9cd7ffef3c99f9f05a7c47549d101dc82a7325685ae75ef50a3c9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d2aa6318e7f1b64532f99254','wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md',1,'Seite 1','gleichwohl in der Auswertungsdatei zur Stellungnahme bzgl.

nichtwirtschaftlicher Gründe auftauchen, bitten wir diese zu reklamieren. Wir

prüfen derzeit, ob eine technische Anpassung und Unterstützung zu

Stornierungen, insbesondere zur Erklärung eines Stornierungsgrunds, in pathOS

möglich ist.

4. Warum werden den EVUs keine detaillierten Auswertungen zur Stornoquote

bereitgestellt? Es war doch im letzten Jahr eine monatliche Übersicht

angekündigt? Dies ist bis heute nicht erfolgt. Mindestens eine quartalsweise

Übersicht wäre wünschenswert.

Nach den geltenden Regelungen (Ziffer 4.2.1.9 lit. c) – e) der INB) werden die

Werte nur einmal jährlich versendet. Wir prüfen derzeit, ob eine technische

Anpassung und Unterstützung zu Stornierungen, insbesondere zur Erklärung

eines Stornierungsgrunds, in pathOS möglich ist.',107,'{"canonical_url":null,"normalized_sha256":"ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c","page":1,"source_id":"src_b5fb8ccb80d176b38310","source_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","source_version_id":"sv_4fbe32d73c5618c02a183f43"}','2413f524a01f441ff4f82749102249c0f94e8a19d1f75df9fe0750dbfbfd6fd4');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_28b158f4a907a9a3718ded20','wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md',2,'Seite 2','5. Wurden die Stellungnahme zu den Storno / Annahmequote für NFPL 2023 /

2024 bei den EVU abgefordert?

Hierzu gab es in der Zwischenzeit für die Werte der 1. NEP eine

Kundeninformation vom 21.04.2026, auf die wir verweisen. Link: Änderungen

für die Berechnung der diesjährigen relevanten Storno- und Annahmequoten für

die erste Phase der Netzfahrplanerstellung 2027. Danach werden aus

Gleichbehandlungsgründen für alle Zugangsberechtigten eine Stornoquote von

0% und eine Annahmequote von 100% für die Werte der 1. NEP 2025 angesetzt.

6. Auf welcher Basis wird die 95/30% Quote ermittelt? Gesamthaft über alle

Trassen eines EVU in allen Zeitscheiben - oder z.B. je Teilmenge nach

Kundennummern (Teilnetzen)?

Für die Ermittlung der Quoten wird auf den konkreten Zugangsberechtigten

(juristische Person) abgestellt. Es werden also die Trassenkilometer aller

Trassenverträge eines Zugangsberechtigten herangezogen, die den

Kundennummern des Zugangsberechtigten bzw. dem Company Code zugeordnet

werden. Zudem werden nur die Trassen betrachtet, die innerhalb der ersten

Netzfahrplanerstellungsphase bestellt wurden.

7. Was ist, wenn ich mit der Teilzuweisung am Ende doch nichts anfangen kann,

weil mir andere Teile der Trasse fehlen? Wird das trotzdem in die Stornoquote

reingerechnet?

Ja, sofern Sie eine Teilzuweisungsinteresse erklärt haben und daraufhin ein

Teilangebot erhalten, dieses in der Folge aber stornieren, wird die Stornierung

dieses Teilangebots in der Stornoquote zu Ihren Lasten berücksichtigt. Wenn Sie

Interesse an einer Teilzuweisung bekunden, erklären Sie Ihr Interesse an diesem

Teilangebot. Falls Sie beabsichtigen, dieses Teilangebot später mit einer

weiteren angemeldeten Leistung zu kombinieren, ist dies ausschließlich Ihr',242,'{"canonical_url":null,"normalized_sha256":"ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c","page":2,"source_id":"src_b5fb8ccb80d176b38310","source_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","source_version_id":"sv_4fbe32d73c5618c02a183f43"}','4403da14b4766b9fa8d90cb9116266487c9d247571ef0cf87140168e2feef47f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8bab0fe944184e3f300ecdd6','wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md',3,'Seite 2','eigenes wirtschaftliches Risiko.

8. Fällt das erhöhte Stornierungsentgelt ausschließlich auf die einzelnen Konflikte

in einer Zeitscheibe oder auf alle Verkehrstage innerhalb einer Zeitscheibe an?

Das erhöhte Stornierungsentgelt findet im Falle einer Stornierung für die

gesamte Zeitscheibe/Path Request Anwendung, die, wenn auch nur in Teilen,

von einem Konfliktverfahren betroffen war.

9. Bei pauschaler Zustimmung zum erhöhten Stornierungsentgelt - findet das

erhöhte Entgelt Anwendung auf alle Trassen des EVU, oder nur auf Trassen mit

Konflikten in der NEP1?

Eine Anwendung des erhöhten Stornierungsentgelts betrifft lediglich

konfliktbehaftete Trassen, die künftig storniert werden.',89,'{"canonical_url":null,"normalized_sha256":"ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c","page":2,"source_id":"src_b5fb8ccb80d176b38310","source_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","source_version_id":"sv_4fbe32d73c5618c02a183f43"}','e35f86d334475dd7dc49be02ec178a22f2bb1db0fe1589befeafc5a882fbab87');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_df447f920542db4ff2ec55b2','wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md',4,'Seite 3','10. Welche Antwortfrist gilt bei der Abfrage zum erhöhten Stornoentgelt in einem

Konfliktfall?

Die Frist zur Abfrage zum erhöhten Stornierungsentgelt im Konfliktfall beträgt 2

Arbeitstage.

11. Wie wirkt sich die Annahme des erhöhten Stornierungsentgeltes in den drei

zurückliegenden Jahren auf die Storno- oder Annahmequote aus? Wie wird das

berücksichtigt?

Es erfolgt jedes Jahr eine erneute Abfrage zur Akzeptanz eines erhöhten

Stornierungsentgelts, sofern ein Zugangsberechtigter die Annahmequote

und/oder Stornoquote unter- bzw. überschritten haben. Insofern haben

Aussagen, die in den zurückliegenden Jahren in Bezug auf das erhöhte

Stornierungsentgelt getroffen wurden, keine Auswirkung auf die Storno- und

Annahmequote in der aktuellen oder künftigen Netzfahrplanphase(n). Da Sie das

erhöhte Stornierungsentgelt ausschließlich für das Netzfahrplanjahr auf das sich

die Trassenanmeldung bezieht erklären, fällt es nur an, wenn Sie eine zukünftige,

konfliktbehaftete Trassenanmeldung stornieren, für welche Sie im Vorfeld das

erhöhte Stornierungsentgelt akzeptiert haben.

12. Wir haben seit Jahresfahrplan 2026 durch die erhöhten Bautätigkeiten bei

bestimmten Trassen eine enorme baubedingte Stornoquote seitens des EIU DB

InfraGO, da keine alternativen Trassen zur Verfügung stehen / gestellt werden

können. Wie wird dies im Prozess (Entwurf der Stornoqoute + finale

Stornoqoute) berücksichtigt?

Wenn ein Ausfall aufgrund einer baubedingten Kapazitätseinschränkung vorliegt,

fällt dies grundsätzlich in den Einflussbereich der DB InfraGO AG und wird daher

nicht in der Stornoquote berücksichtigt. Sofern es aufgrund der baubedingten

Kapazitätseinschränkung zu einer Anpassung der Trasse kommt, hat der',223,'{"canonical_url":null,"normalized_sha256":"ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c","page":3,"source_id":"src_b5fb8ccb80d176b38310","source_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","source_version_id":"sv_4fbe32d73c5618c02a183f43"}','98e7769837a2c2b5f960068bc975afc463b44534673170568d0cdfe1feb2832f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_acfa147445551b8a20914c3c','wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md',5,'Seite 3','Zugangsberechtigte nach der Richtlinie 402.0305 Abschnitt 8 Absatz 6 (2027)

die Möglichkeit diese innerhalb von drei Arbeitstagen kostenfrei zu stornieren.

Eine solche fristgerechte Stornierung ist der Stornoquote nicht zuzurechnen.

Sollten gleichwohl in der Auswertungsdatei zur Stellungnahme bzgl.

nichtwirtschaftlicher Gründe solche Fälle auftauchen, bitten wir diese zu

reklamieren. Sollten gleichwohl in der Auswertungsdatei zur Stellungnahme bzgl.

nichtwirtschaftlicher Gründe solche Fälle auftauchen, bitten wir diese zu

reklamieren.',65,'{"canonical_url":null,"normalized_sha256":"ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c","page":3,"source_id":"src_b5fb8ccb80d176b38310","source_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","source_version_id":"sv_4fbe32d73c5618c02a183f43"}','b905a94694b1fde97637dbdf368ea0d911b900a7f647c3743b0f23da06956dc4');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a3ae8ca099e7c34ae3e56d38','wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md',6,'Seite 4','13. Es ist weder kundenorientiert noch korrekt, dass eine schon durch das EIU

baubedingt stornierte Trasse in der Stornoquote nochmals reklamiert werden

muss. Final kann dies zu einem erhöhten Stornoentgelt führen für eine Trasse,

die seitens EIU storniert wurde. Wir werden dies über das Anliegenportal auch

nochmals zu überdenken geben.

Wenn ein Ausfall aufgrund einer baubedingten Kapazitätseinschränkung vorliegt,

fällt dies grundsätzlich in den Einflussbereich der DB InfraGO AG und wird daher

nicht in der Stornoquote berücksichtigt. Sofern es aufgrund der baubedingten

Kapazitätseinschränkung zu einer Anpassung der Trasse kommt, hat der

Zugangsberechtigte nach der Richtlinie 402.0305 Abschnitt 8 Absatz 6 (2027)

die Möglichkeit diese innerhalb von drei Arbeitstagen kostenfrei zu stornieren.

Eine solche fristgerechte Stornierung ist der Stornoquote nicht zuzurechnen.

Sollten gleichwohl in der Auswertungsdatei zur Stellungnahme bzgl.

nichtwirtschaftlicher Gründe solche Fälle auftauchen, bitten wir diese zu

reklamieren. Wir prüfen derzeit, ob eine technische Anpassung und

Unterstützung zu Stornierungen, insbesondere zur Erklärung eines

Stornierungsgrunds in pathOS möglich ist.',157,'{"canonical_url":null,"normalized_sha256":"ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c","page":4,"source_id":"src_b5fb8ccb80d176b38310","source_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","source_version_id":"sv_4fbe32d73c5618c02a183f43"}','24668ac32db2d1ad8d29db7a5ecb6f0d3c6dd22778eb2028f85ff0d1f7429b8f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_548de898e9ea831521d04e59','wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md',7,'Seite 5','Termin 20.04.2026

1. Bleibt es so, dass für die Storno/Annahmequote nach 3 Jahren gesehen werden?

Oder wird das Zeitraum in die nächste Jahre noch angepasst?

Es sind keine Änderungen diesbezüglich geplant. Daher werden auch künftig die

dann maßgeblichen zurückliegenden drei Jahre betrachtet. Für die erste Phase

der Netzfahrplanerstellung (1. NEP) 2028 werden somit die Annahmequoten aus

der 1. NEP 2027, 2026 und 2025 sowie die Stornoquoten aus der 1. NEP 2026,

2025 und 2024 relevant sein.

2. Teilzuweisung: Wie können wir mit Teilzuweisungen eine durchgehende

internationale Trasse bekommen? Wenn wir vor und nach das Konflikt eine

Trasse wünschen, haben wir nur eine internationale Zugnummer, für eine Trasse

das normalerweise 2 Grenzübergangen hat.

Wenn Sie Interesse an einer Teilzuweisung bekunden, erklären Sie Ihr Interesse

an diesem Teilangebot. Die DB InfraGO AG hat zu diesem Zeitpunkt keine

Kapazität, um ein gesamthaftes Trassenangebot zu erstellen. Falls Sie

beabsichtigen, dieses Teilangebot später mit einer weiteren angemeldeten

Leistung zu kombinieren, ist dies ausschließlich Ihr eigenes wirtschaftliches

Risiko. Diese Kombination kann entweder durch die Nutzung einer zweiten

Zugnummer oder durch Stornierung und erneute Anmeldung erfolgen – beachten

Sie dabei, dass eine Stornierung unter die geltende Stornoquote fällt.

3. Im Rahmen der inhaltsgleichen Informationsveranstaltung am 15.04.2026 um

10:00 Uhr wurde mitgeteilt, dass kurzfristige Stornierungen, die durch DB

InfraGO (z. B. infolge von Baumaßnahmen) ausgelöst werden, in die Stornoquote

einbezogen werden. Begründet wurde dies damit, dass DB InfraGO systemseitig

nicht erfasst, wenn eine Trasse beispielsweise aufgrund einer kurzfristigen

Baumaßnahme storniert wurde.',243,'{"canonical_url":null,"normalized_sha256":"ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c","page":5,"source_id":"src_b5fb8ccb80d176b38310","source_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","source_version_id":"sv_4fbe32d73c5618c02a183f43"}','287f873c424c9db02ada3109e2678b10d3adec7ba9e310c4349c0e844c884887');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c6ea8b70587d7c6cb68ea3cf','wiki/sources/faq-infoveranstaltung-netzfahrplan-2027-data.md',8,'Seite 5','Im nachgelagerten Prozess zur Stellungnahme im Rahmen der Annahme- bzw.

Stornoquote hat jedes EVU die Möglichkeit, DB InfraGO darauf hinzuweisen,

dass die jeweilige Trasse aufgrund einer kurzfristigen Baumaßnahme durch DB

InfraGO storniert wurde, damit diese nicht mehr der Stornoquote

hinzugerechnet wird.

Vor diesem Hintergrund ergeben sich für uns folgende Fragen:

1. Wie viel Zeit steht einem EVU künftig für die Abgabe der Stellungnahme zur

Annahme- bzw. Stornierungsquote zur Verfügung, insbesondere vor dem

Hintergrund, dass aktuell eine unbekannte Anzahl von Zügen beim EVU geprüft

werden muss?

Der Stellungnahmeprozess zu nichtwirtschaftlichen Gründen beginnt 15

Arbeitstage vor Beginn der Trassenanmeldephase zur ersten Phase der

Netzfahrplanerstellung (1. NEP). Zu diesem Zeitpunkt erhalten die

Zugangsberechtigten die Information und bei Überschreiten / Unterschreiten der

Storno- bzw. Annahmequote die Auswertedatei von der DB InfraGO AG. Die

Zugangsberechtigten haben bis 10 Arbeitstage vor Ende der

Trassenanmeldephase (1. NEP) Zeit zu nichtwirtschaftlichen Gründen, die sich

ihrem Einflussbereich entziehen, Stellung zu nehmen. Erfolgt keine',154,'{"canonical_url":null,"normalized_sha256":"ed30512850f332aa75a6d7613a11eae649d32185ed61605cba20a3f915743f4c","page":5,"source_id":"src_b5fb8ccb80d176b38310","source_sha256":"79566a00d88605c85de851370659ba6afc4864e26c81d02fa2ffa254baebe689","source_version_id":"sv_4fbe32d73c5618c02a183f43"}','f9625d5c749acbaf1d35e61bd2cf2240300b72b83eb189f6aa9c2ebd6ff71203');
--> statement-breakpoint
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
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f49a4eaa86a0402a33db19dd','wiki/sources/flyer-company-code-data.md',1,'Seite 2','Eine Beantragung ist auch über die ERA-Webseite möglich aber aus folgenden

Gründen nicht empfehlenswert:

− Zu lange Bearbeitungszeit durch ERA

− Beim EBA haben Sie einen direkten Ansprechpartner in deutscher Sprache

− Unterstützung bei den Anträgen und fachliche Prüfung der Unterlagen

Vorgehensweise

Company Code und Organisation Code vorhanden und identisch

keine Aktion notwendig

Company Code und Organisation vorhanden und unterschiedlich

Löschung aktueller OC und Beantragung gleichlautenden OC

Company Code vorhanden aber kein Organisation Code

Beantragung gleichlautenden OC

Weder Company Code noch Organisation Code vorhanden

Beantragung OC (Code kann beliebig sein, melden Sie bitte den OC an ihre

Kundenberatung der DB InfraGO und/oder an weitere EIU und Partner)

Auswirkungen auf das NVR/EVR

Als EVU mit vorhandenem Organisation Code müssen Sie nach Anpassung des

OC auch die Einträge im Nationalen Fahrzeugeinstellungsregister

(NVR)/Europäischem Fahrzeugeinstellungsregister (EVR) aktualisieren.

Bei Antragsstellung über das EBA unterstützt Sie das EBA!

Kontakt: [E-Mail-Adresse entfernt]

https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi',146,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089290/4d0d46e1e07b0fb5a22f8a6bd4cff0b7/Flyer-Company-Code-data.pdf","normalized_sha256":"cae117e243401d941e992896498a6e83cf35f458715ccc5199a8660257b87615","page":2,"source_id":"src_d2976558d7a33946b943","source_sha256":"c0cdd67495939c10345fbc122514c4a42332ec0d1801c888943e96cc57039861","source_version_id":"sv_c0cdd67495939c10345fbc12"}','a9a85ab7f7b6c03883b041790b65f83ea71f1cc27b019121de2f938a2aa8ce84');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_b1e36372becf6e4cd12f','file','Flyer Location Coding','https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_eea6b839bbd8c7cb46a03b73','src_b1e36372becf6e4cd12f','eea6b839bbd8c7cb46a03b73e72caa8b027e935dcf3f68d65504e188f65dcdd4','1c3abeedc18493bcc73122b4bcd3e8d9b4025ba4547b4e73c2e5da86fc71dbee',206513,'application/pdf','Flyer-Location-Coding-data.pdf','sources/normalized/bootstrap/flyer-location-coding-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/flyer-location-coding-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Flyer-Location-Coding-data.pdf","page_count":2,"raw_binary_committed":false,"schema_version":1,"size_bytes":206513,"source_id":"src_b1e36372becf6e4cd12f","source_sha256":"eea6b839bbd8c7cb46a03b73e72caa8b027e935dcf3f68d65504e188f65dcdd4","source_version_id":"sv_eea6b839bbd8c7cb46a03b73","title":"Flyer Location Coding","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','eea6b839bbd8c7cb46a03b73e72caa8b027e935dcf3f68d65504e188f65dcdd4','src_b1e36372becf6e4cd12f','sv_eea6b839bbd8c7cb46a03b73','{"content_duplicate_group":null,"original_filename":"Flyer-Location-Coding-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','1c3abeedc18493bcc73122b4bcd3e8d9b4025ba4547b4e73c2e5da86fc71dbee','src_b1e36372becf6e4cd12f',NULL,'{"content_duplicate_group":null,"original_filename":"Flyer-Location-Coding-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','35583daff6ca12837aec28a7111df630b7742de97686679c3028497ef26909fe','src_b1e36372becf6e4cd12f',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_eea6b839bbd8c7cb46a03b73' WHERE id='src_b1e36372becf6e4cd12f';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/flyer-location-coding-data.md','Flyer Location Coding','Umstellung auf Primary und Subsidiary Locations Location Coding gemäß TAF/TAP TSI Mit der Umsetzung von TAF/TAP TSI kommt es im Rahmen der Harmonisierung von Prozessen und Verfahren zur Einführung eines europaweit standardisierten Formats zur Codierung von Betriebsstellen. Dadurch entsteht die Aufteilung von Betriebsstellen in Primary und Subsidiary Location','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','4ffad7cfeb775f479268e8ad094fe15f419bc9193eb7ec57f76ab3294fb4740a','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_b1e36372becf6e4cd12f","source_version_id":"sv_eea6b839bbd8c7cb46a03b73"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/flyer-location-coding-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e95048c71165c7ad7ba42de9','wiki/sources/flyer-location-coding-data.md',0,'Seite 1','Umstellung auf Primary und Subsidiary

Locations

Location Coding gemäß TAF/TAP TSI

Mit der Umsetzung von TAF/TAP TSI kommt es im Rahmen der

Harmonisierung von Prozessen und Verfahren zur Einführung eines

europaweit standardisierten Formats zur Codierung von Betriebsstellen.

Dadurch entsteht die Aufteilung von Betriebsstellen in Primary und

Subsidiary Locations.

Was ist eine Primary Location?

Definiert im Allgemeinen eine Betriebsstelle eines EIU, an der Züge beginnen, enden,

halten, durchfahren oder die Strecke wechseln.

Codiert wird diese mit einem Primary Location Code (PLC):

Ländercode Location Code Betriebsstelle

DE + 13276 = Frankfurt (Main) Hbf

(2 Buchstaben) (1-5 stellig, Zahlencode)

Was ist eine Subsidiary Location?

Der untergeordnete Betriebsstellenteil (Subsidiary) muss mit einer Primary Location

verknüpft sein und spezifiziert einen bestimmten Teil, die Attribute oder die Verwendung

der Primary Location. Beispiele sind Gleis, Verladestellen oder Bahnsteig.

Codiert wird dieser mit einem Subsidiary Location Code (SLC):

Ländercode Location Code Location Subsidiary Location Subsidiary Company Code

Type Code Code

DE + 13276 + 37 + VL01856NM9 + 0080

(= Verladestelle) (1-10 stellig, (= DB InfraGO)

alphanummerisch)

Kontakt: [E-Mail-Adresse entfernt]

dbinfrago.com/taf-tap-tsi Location Coding | Seite 1 von 2',180,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf","normalized_sha256":"1c3abeedc18493bcc73122b4bcd3e8d9b4025ba4547b4e73c2e5da86fc71dbee","page":1,"source_id":"src_b1e36372becf6e4cd12f","source_sha256":"eea6b839bbd8c7cb46a03b73e72caa8b027e935dcf3f68d65504e188f65dcdd4","source_version_id":"sv_eea6b839bbd8c7cb46a03b73"}','be3fe5784e1a5bcfb7c4045d563cc9a054f70d33b7c7b82a7022adbfb06b0895');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0270e6bf55051472ed15a323','wiki/sources/flyer-location-coding-data.md',1,'Seite 2','Wo werden die Location Codes verwaltet?

Die Central Reference Files Database (CRD) ist die zentrale Datenbank in

Europa für die Location Codes (PLC und SLC), Company Codes (CC) und

Länder. Betrieben wird die CRD von Rail Net Europe (RNE)

CRD

Wo werden die Retail Location Codes der TAP TSI geführt?

Die für Reisende relevanten Örtlichkeiten des vertrieblichen Teils der TAP

TSI sind in einer eigenen Datenbank, der Retail Reference Database (RRD)

in Verantwortung der TAP TSI Services Governance Association (TSGA)

RRD

Wie ist der nationale Prozess der Codevergabe und das Hochladen in die

Referenzdatenbanken?

Die Revisionen der TAF und TAP TSI beinhalten dazu eine neue Rolle:

Die National Allocation Entity (NAE) hat die Hoheit für die

einheitliche und eindeutige Vergabe von Location Codes auf

nationaler Ebene und die Pflege der Codes in die

National Allocation

Referenzdatenbanken CRD und RRD sowie für deren Aktualität

Entity (NAE)

Verantwortliches EIU/ NAE oder

Antragsteller

Responsible IM Delegierter

EIU Übertragung

Antrag auf...

nationaler Location

- Vergabe Codes in CRD

EVU - Änderung

- Löschung Überprüft und Finale

Station validiert Anfrage Überprüfung und CRD/RRD

Manager Validierung sowie

Prozesshoheit

Wie wird mit den heutigen Ril100 Codes und deren Vergabe verfahren?

Vorerst hat dieser Prozess keine Auswirkungen auf die Vergabe von Ril100 Codes. Die

heutigen Codes werden also zunächst weitergenutzt

Wer nimmt die Funktion der National Allocation Entity (NAE) in Deutschland wahr?

Das Bundesministerium für Verkehr (BMV) und die DB InfraGO AG haben sich darauf

verständigt, dass diese Funktion durch die DB InfraGO AG wahrgenommen wird. Somit

wurde in der Folge die Funktion zum 01.08.2024 bei der DB InfraGO AG eingerichtet.',263,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf","normalized_sha256":"1c3abeedc18493bcc73122b4bcd3e8d9b4025ba4547b4e73c2e5da86fc71dbee","page":2,"source_id":"src_b1e36372becf6e4cd12f","source_sha256":"eea6b839bbd8c7cb46a03b73e72caa8b027e935dcf3f68d65504e188f65dcdd4","source_version_id":"sv_eea6b839bbd8c7cb46a03b73"}','ef0a647b63adb3c459bd0884e67a3793ae34965286e1ef7338aa624fe059c318');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_047154e1c1707e053658bf90','wiki/sources/flyer-location-coding-data.md',2,'Seite 2','Kontakt: [E-Mail-Adresse entfernt] (Hr. [Kontaktname entfernt], DB InfraGO AG, [Dienstanschrift entfernt], Mobil: [Telefonnummer entfernt])

dbinfrago.com/taf-tap-tsi Location Coding | Seite 2 von 2',22,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf","normalized_sha256":"1c3abeedc18493bcc73122b4bcd3e8d9b4025ba4547b4e73c2e5da86fc71dbee","page":2,"source_id":"src_b1e36372becf6e4cd12f","source_sha256":"eea6b839bbd8c7cb46a03b73e72caa8b027e935dcf3f68d65504e188f65dcdd4","source_version_id":"sv_eea6b839bbd8c7cb46a03b73"}','ace86b8221ec90cd858685ff88b8d8b277459c6aab05bea8c48f67d58acab1aa');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_ef37beb95dff453ad8f1','file','Flyer National Contact Point','https://www.dbinfrago.com/resource/blob/11089296/2af27698e8ca6f1897d945b1bfe322b9/Flyer-National-Contact-Point-data.pdf','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_8b33fdc8de9e5fb970f80c2f','src_ef37beb95dff453ad8f1','8b33fdc8de9e5fb970f80c2f79eca631cf3a98e8f281c7b9a4a4582fb3f5d948','95db98c6c47898fc3145139e086bb67c7547e36f20dbe6d8b43441aa02dbc8f3',196594,'application/pdf','Flyer-National-Contact-Point-data.pdf','sources/normalized/bootstrap/flyer-national-contact-point-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089296/2af27698e8ca6f1897d945b1bfe322b9/Flyer-National-Contact-Point-data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/flyer-national-contact-point-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Flyer-National-Contact-Point-data.pdf","page_count":1,"raw_binary_committed":false,"schema_version":1,"size_bytes":196594,"source_id":"src_ef37beb95dff453ad8f1","source_sha256":"8b33fdc8de9e5fb970f80c2f79eca631cf3a98e8f281c7b9a4a4582fb3f5d948","source_version_id":"sv_8b33fdc8de9e5fb970f80c2f","title":"Flyer National Contact Point","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','8b33fdc8de9e5fb970f80c2f79eca631cf3a98e8f281c7b9a4a4582fb3f5d948','src_ef37beb95dff453ad8f1','sv_8b33fdc8de9e5fb970f80c2f','{"content_duplicate_group":null,"original_filename":"Flyer-National-Contact-Point-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','95db98c6c47898fc3145139e086bb67c7547e36f20dbe6d8b43441aa02dbc8f3','src_ef37beb95dff453ad8f1',NULL,'{"content_duplicate_group":null,"original_filename":"Flyer-National-Contact-Point-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','45f34c6ebb7d8bb503ff41d295235f8bf7d611d34ffa922f146106497b2511d6','src_ef37beb95dff453ad8f1',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089296/2af27698e8ca6f1897d945b1bfe322b9/Flyer-National-Contact-Point-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_8b33fdc8de9e5fb970f80c2f' WHERE id='src_ef37beb95dff453ad8f1';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/flyer-national-contact-point-data.md','Flyer National Contact Point','D e r N a t io n a l Co n t a c t P o in t ( N C P ) für TA F / T A P T S I im Üb e rb lic k Der NCP nimmt im Auftrag des Bundesministeriums für Verkehr (BMV) die Interessenvertretung des deutschen Bahnsektors auf europäischer Ebene zu TAF/TAP TSI wahr. Die Einrichtung einer Nationalen Anlaufstelle für alle Bahnakteure zur Umsetzung TAF/TAP TSI ist in der EU','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','e98e7fa7b62423d5e7f31e7e7449552a1dd2e275bc3a573244ade0a3a0f7c33a','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/11089296/2af27698e8ca6f1897d945b1bfe322b9/Flyer-National-Contact-Point-data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_ef37beb95dff453ad8f1","source_version_id":"sv_8b33fdc8de9e5fb970f80c2f"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/flyer-national-contact-point-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b79e846b6eb39265d816412e','wiki/sources/flyer-national-contact-point-data.md',0,'Seite 1','D e r N a t io n a l Co n t a c t P o in t ( N C P ) für

TA F / T A P T S I im Üb e rb lic k

Der NCP nimmt im Auftrag des Bundesministeriums für Verkehr (BMV) die

Interessenvertretung des deutschen Bahnsektors auf europäischer Ebene zu

TAF/TAP TSI wahr. Die Einrichtung einer Nationalen Anlaufstelle für alle

Bahnakteure zur Umsetzung TAF/TAP TSI ist in der EU-Verordnung 1305/2014

geregelt. Das BMV hat für Deutschland die DB InfraGO AG mit der Einrichtung

der Rolle und Ausübung dieser Funktion betraut

Funktion Gremien und Meetings

− Interessenvertretung des EU- − Hauptgremium des NCP ist die

Mitgliedstaates Deutschland in den TAF/TAP TSI Implementation

europäischen TAF/TAP Gremien Cooperation Group (ICG)

− Informationsschnittstelle zw. ERA, • Bewertung & Analyse

RNE, nationalen Behörden/ Verbänden Umsetzungsfortschritt TAF/TAP TSI

sowie deutschen Bahnakteuren • Erstellung/Aktualisierung Masterplan,

− Unterstützung deutscher Bahnakteure Berichterstattung über die ERA an

bei der Umsetzung von TAF/TAP TSI die Europäische Kommission

− Förderung Informationsaustausch • Diskussion und Abstimmung mit den

unter den deutschen Bahnakteuren NCPs zu Unterstützungsmaßnahmen

bei der nationalen Umsetzung

− Koordinierung der Umsetzungspläne

der Infrastrukturbetreiber mit dem Ziel − Durchführung & Einladung

einer abgestimmten Einführung Sektorgruppe TAF/TAP TSI (4x p.a.)

− Enger Austausch und Abstimmung mit • Informations-, Austausch- und

nationalem Vertreter im Railway Meinungsbildungsplattform TAF/TAP

Interoperability and Safety Committee • Teilnahme steht allen Bahnakteuren

(RISC) in Deutschland offen

− Zusätzlich Teilnahme an weiteren

Arbeitsgruppen/Terminen zum Thema

TAF/TAP, z.B. RNE, ERA, VDV',249,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089296/2af27698e8ca6f1897d945b1bfe322b9/Flyer-National-Contact-Point-data.pdf","normalized_sha256":"95db98c6c47898fc3145139e086bb67c7547e36f20dbe6d8b43441aa02dbc8f3","page":1,"source_id":"src_ef37beb95dff453ad8f1","source_sha256":"8b33fdc8de9e5fb970f80c2f79eca631cf3a98e8f281c7b9a4a4582fb3f5d948","source_version_id":"sv_8b33fdc8de9e5fb970f80c2f"}','86de1568268d0b3c4c5b0502107f98b3d6490f0a64966bc3d27f6c76a89e86a7');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d6df3455c37d2ad31c5a74d0','wiki/sources/flyer-national-contact-point-data.md',1,'Seite 1','Kontakt: [E-Mail-Adresse entfernt] (Hr. [Kontaktname entfernt], DB InfraGO AG, [Dienstanschrift entfernt] Mobil: [Telefonnummer entfernt]

dbinfrago.com/taf-tap-tsi',15,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089296/2af27698e8ca6f1897d945b1bfe322b9/Flyer-National-Contact-Point-data.pdf","normalized_sha256":"95db98c6c47898fc3145139e086bb67c7547e36f20dbe6d8b43441aa02dbc8f3","page":1,"source_id":"src_ef37beb95dff453ad8f1","source_sha256":"8b33fdc8de9e5fb970f80c2f79eca631cf3a98e8f281c7b9a4a4582fb3f5d948","source_version_id":"sv_8b33fdc8de9e5fb970f80c2f"}','371e9e3c457276f5a1b99f0873b11dfd3bb9c850578a75ce254b5b319c6e9122');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_828f1b79362a62ea820f','file','Flyer Neues Bestellsystem pathOS','https://www.dbinfrago.com/resource/blob/11089292/ddf605e647c997ba20c272183179ef7d/Flyer-Neues-Bestellsystem-pathOS--data.pdf','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_66fe54f6cac1cc941df10fd8','src_828f1b79362a62ea820f','66fe54f6cac1cc941df10fd8e3401328923950ade406817d754ed9cca872fb52','7db785f776d34cb5c781736993ba8f3928b2c03b6e8b6fff3956e3c7e10da8b2',136549,'application/pdf','Flyer-Neues-Bestellsystem-pathOS--data.pdf','sources/normalized/bootstrap/flyer-neues-bestellsystem-pathos-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089292/ddf605e647c997ba20c272183179ef7d/Flyer-Neues-Bestellsystem-pathOS--data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/flyer-neues-bestellsystem-pathos-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Flyer-Neues-Bestellsystem-pathOS--data.pdf","page_count":1,"raw_binary_committed":false,"schema_version":1,"size_bytes":136549,"source_id":"src_828f1b79362a62ea820f","source_sha256":"66fe54f6cac1cc941df10fd8e3401328923950ade406817d754ed9cca872fb52","source_version_id":"sv_66fe54f6cac1cc941df10fd8","title":"Flyer Neues Bestellsystem pathOS","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','66fe54f6cac1cc941df10fd8e3401328923950ade406817d754ed9cca872fb52','src_828f1b79362a62ea820f','sv_66fe54f6cac1cc941df10fd8','{"content_duplicate_group":null,"original_filename":"Flyer-Neues-Bestellsystem-pathOS--data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','7db785f776d34cb5c781736993ba8f3928b2c03b6e8b6fff3956e3c7e10da8b2','src_828f1b79362a62ea820f',NULL,'{"content_duplicate_group":null,"original_filename":"Flyer-Neues-Bestellsystem-pathOS--data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','5bcb13e403dc83edc3667b59e7b873fdde68a7719fe35c7e19d33dd6b63a16f1','src_828f1b79362a62ea820f',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089292/ddf605e647c997ba20c272183179ef7d/Flyer-Neues-Bestellsystem-pathOS--data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_66fe54f6cac1cc941df10fd8' WHERE id='src_828f1b79362a62ea820f';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/flyer-neues-bestellsystem-pathos-data.md','Flyer Neues Bestellsystem pathOS','Die neue Trassenanmeldung – TAF/TAP-konformes Bestellsystem „pathOS“ Einführung zum Fahrplanjahr 2027 Das neue Bestellsystem der DB InfraGO AG wird vollständig kompatibel zu TAF/TAP TSI und setzt alle aktuellen Anforderungen an die Trassenanmeldung um. Durch die Modernisierung von Design und Layout stellen wir einen deutlich erhöhten Bedienkomfort sowie eine','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','07345435a5be703f88c8234abbe668ff6ae37df1b60e3a81c960c263d279db36','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/11089292/ddf605e647c997ba20c272183179ef7d/Flyer-Neues-Bestellsystem-pathOS--data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_828f1b79362a62ea820f","source_version_id":"sv_66fe54f6cac1cc941df10fd8"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/flyer-neues-bestellsystem-pathos-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4405788298f54fc0ad59497d','wiki/sources/flyer-neues-bestellsystem-pathos-data.md',0,'Seite 1','Die neue Trassenanmeldung –

TAF/TAP-konformes Bestellsystem

„pathOS“

Einführung zum Fahrplanjahr 2027

Das neue Bestellsystem der DB InfraGO AG wird vollständig kompatibel zu

TAF/TAP TSI und setzt alle aktuellen Anforderungen an die Trassenanmeldung

um. Durch die Modernisierung von Design und Layout stellen wir einen deutlich

erhöhten Bedienkomfort sowie eine intuitivere und einfache Bedienerführung

sicher. Die Sicht unserer Kund:innen ist von Anfang an wesentlicher Faktor in der

Entwicklung. Wir bauen damit eine ausbaufähige Plattform für die Zukunft!

Wichtige Informationen Aktuelle Zeitplanung

Wir gestalten ein vollständig neues,

TAF/TAP TSI-konformes 2020: Start IT-Entwicklung

Anmeldeverfahren, welches TPN und die

Ab Q3 2021: Erste Kundentests

heutige EVU-Schnittstelle zum

der Schnittstelle

Fahrplanjahr 2027 ablösen soll. Auch

künftig können unsere Kunden entweder

Ab Q2 2022: Erste Kundentests

das Bestellportal (online) nutzen oder

des Portals (Web-Anwendung)

über eine Schnittstelle mit uns agieren.

Ab Q4 2024: Start

Wer heute und künftig mit eigenen IT-

Schulungsplattform

Lösungen die EVU-Schnittstelle nutzt,

muss in diesen die neue TAF/TAP TSI-

2025: Intensivierung Tests, Bereit-

Schnittstelle implementieren, damit ein

stellung Schulungen & Zugänge

Nachrichtenaustausch mit der DB InfraGO

weiterhin möglich ist. Alle Details hierzu

2026: Portal & Schnittstelle live

finden Sie in der Schnittstellenmit Anmeldephase Nfpl. 2027 /

Dokumentation.

danach GelV-Module live

Mehr Informationen zum Neuen

Zum Fahrplanjahr 2027:

Bestellsystem finden Sie auch auf unserer

Bestellung nur im neuen System

aktuellen Internetseite!

Lust selber mal das neue Portal auszuprobieren? Schicken Sie uns eine E-Mail!

Kontakt: [E-Mail-Adresse entfernt]',232,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089292/ddf605e647c997ba20c272183179ef7d/Flyer-Neues-Bestellsystem-pathOS--data.pdf","normalized_sha256":"7db785f776d34cb5c781736993ba8f3928b2c03b6e8b6fff3956e3c7e10da8b2","page":1,"source_id":"src_828f1b79362a62ea820f","source_sha256":"66fe54f6cac1cc941df10fd8e3401328923950ade406817d754ed9cca872fb52","source_version_id":"sv_66fe54f6cac1cc941df10fd8"}','0d43be09c2b2bab8fb0722cbafe608e0e25e8f843468d97316e644a98da85ce3');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3e2f7b2af3f5a46712f1e697','wiki/sources/flyer-neues-bestellsystem-pathos-data.md',1,'Seite 1','dbinfrago.com/taf-tap-tsi und dbinfrago.com/pathos',3,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089292/ddf605e647c997ba20c272183179ef7d/Flyer-Neues-Bestellsystem-pathOS--data.pdf","normalized_sha256":"7db785f776d34cb5c781736993ba8f3928b2c03b6e8b6fff3956e3c7e10da8b2","page":1,"source_id":"src_828f1b79362a62ea820f","source_sha256":"66fe54f6cac1cc941df10fd8e3401328923950ade406817d754ed9cca872fb52","source_version_id":"sv_66fe54f6cac1cc941df10fd8"}','7adb2913be0be8c7dfeca125d0533c4f9c4d7ad629521fbe2d90ba38ecb071bf');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_f99e066f37874620df4e','file','Flyer TAF/TAP Identifikatoren','https://www.dbinfrago.com/resource/blob/11089294/6a4b5990c9ce96a7a1bb71efa5c48f16/Flyer-TAF-TAP-Identifikatoren-data.pdf','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_c88a5b74e140e9fe73443e98','src_f99e066f37874620df4e','c88a5b74e140e9fe73443e9863972c19c7f111c996d24206262bf4ae2bfd373b','e78666ffc6c51fcf488e8a18d3a827bdb6a63564bc3f3bbd875c2294cfdd2c2d',358859,'application/pdf','Flyer-TAF-TAP-Identifikatoren-data.pdf','sources/normalized/bootstrap/flyer-taf-tap-identifikatoren-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089294/6a4b5990c9ce96a7a1bb71efa5c48f16/Flyer-TAF-TAP-Identifikatoren-data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/flyer-taf-tap-identifikatoren-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Flyer-TAF-TAP-Identifikatoren-data.pdf","page_count":2,"raw_binary_committed":false,"schema_version":1,"size_bytes":358859,"source_id":"src_f99e066f37874620df4e","source_sha256":"c88a5b74e140e9fe73443e9863972c19c7f111c996d24206262bf4ae2bfd373b","source_version_id":"sv_c88a5b74e140e9fe73443e98","title":"Flyer TAF/TAP Identifikatoren","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','c88a5b74e140e9fe73443e9863972c19c7f111c996d24206262bf4ae2bfd373b','src_f99e066f37874620df4e','sv_c88a5b74e140e9fe73443e98','{"content_duplicate_group":null,"original_filename":"Flyer-TAF-TAP-Identifikatoren-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','e78666ffc6c51fcf488e8a18d3a827bdb6a63564bc3f3bbd875c2294cfdd2c2d','src_f99e066f37874620df4e',NULL,'{"content_duplicate_group":null,"original_filename":"Flyer-TAF-TAP-Identifikatoren-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','89a22ff47944d0df11158682faf0e6d9dc9c6cbc56622e9e78ce1eaa38e7c14f','src_f99e066f37874620df4e',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089294/6a4b5990c9ce96a7a1bb71efa5c48f16/Flyer-TAF-TAP-Identifikatoren-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_c88a5b74e140e9fe73443e98' WHERE id='src_f99e066f37874620df4e';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/flyer-taf-tap-identifikatoren-data.md','Flyer TAF/TAP Identifikatoren','Informationen zu den neuen TAF/TAP- TSI-Objekten und ihren Identifikatoren Ein Kernanliegen von TAF/TAP-TSI ist die Schaffung von eindeutig zu zuordnenden Elementen zu ihren Eigentümern. Dafür wurden für den Austausch zwischen EIU und EVU die Objekte ReferenceTrain, Route sowie Path(-Request) mit zugehörigen Identifikatoren geschaffen. Züge und Routen sind P','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','680c9ebe395455e2436774b12973fef30987a6903bf3ed2d9d073851bebd6518','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/11089294/6a4b5990c9ce96a7a1bb71efa5c48f16/Flyer-TAF-TAP-Identifikatoren-data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_f99e066f37874620df4e","source_version_id":"sv_c88a5b74e140e9fe73443e98"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/flyer-taf-tap-identifikatoren-data.md';
--> statement-breakpoint
