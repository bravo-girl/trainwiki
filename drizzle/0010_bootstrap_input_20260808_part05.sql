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
