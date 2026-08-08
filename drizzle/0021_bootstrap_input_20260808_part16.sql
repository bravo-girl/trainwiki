INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_05a4e4753ce6f0b0a812571e','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',26,'Seite 27','So bleiben Sie mit uns in Kontakt

Annex VII KOMBau Digitale BauFplo

Hier geht‘s zur Website Hier geht‘s zur Website Hier geht‘s zur Website

• Informationen zum neuen • Informationen zur • Neuerungen auf einen Blick

Prozess Baukommunikation Webanwendung, inkl.

• Beschreibung Testzugang

Direktlink

• Zusammenhang mit auf BauFplo API

KOMBau • Bedienungsanleitung

• Beispieldokumente in xml-

• FAQ • FAQ und json-Format

• FAQ

Nächste geplante

Kundeninformation

Sie erhalten die gezeigte Unterlage im Anschluss an diese Veranstaltung.

am 25. Juni 2026

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 27',93,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":27,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','742ae6f994c637da1dc17694bf8ab3287ab8d93d7be3b976d3851ee4f23b0af1');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_ddd38c74e487946a0af2','file','Informationsveranstaltung Vertiefung ujBau vom 25 06 2026',NULL,'de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_945698ce989da35cc526b067','src_ddd38c74e487946a0af2','e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342','04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219',1554596,'application/pdf','Informationsveranstaltung-Vertiefung-ujBau-vom-25-06-2026-data.pdf','sources/normalized/bootstrap/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data/sv_945698ce989da35cc526b067.md','pdfplumber','0.11.9','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","converter":{"name":"pdfplumber","profile":"bootstrap-markdown-v2","version":"0.11.9"},"final_url":null,"import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_945698ce989da35cc526b067.json","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data/sv_945698ce989da35cc526b067.md","normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","origin_page_url":null,"original_filename":"Informationsveranstaltung-Vertiefung-ujBau-vom-25-06-2026-data.pdf","page_count":24,"raw_binary_committed":false,"requested_url":null,"schema_version":2,"size_bytes":1554596,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067","supersedes_source_version_id":null,"title":"Informationsveranstaltung Vertiefung ujBau vom 25 06 2026","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342','src_ddd38c74e487946a0af2','sv_945698ce989da35cc526b067','{"content_duplicate_group":null,"original_filename":"Informationsveranstaltung-Vertiefung-ujBau-vom-25-06-2026-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219','src_ddd38c74e487946a0af2',NULL,'{"content_duplicate_group":null,"original_filename":"Informationsveranstaltung-Vertiefung-ujBau-vom-25-06-2026-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_945698ce989da35cc526b067' WHERE id='src_ddd38c74e487946a0af2';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md','Informationsveranstaltung Vertiefung ujBau vom 25 06 2026','EVU-Informationsveranstaltung Vertiefung Unterjähriger Baufahrplan 25.06.2026 | Frankfurt am Main','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','d45459efdb0e4c54a3f7adf0a49e03f354b0c882364d7cbf69b2df544e7ca2f4','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_ddd38c74e487946a0af2","source_version_id":"sv_945698ce989da35cc526b067"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ec08d06c6a0891e8b4b51e3a','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',0,'Seite 1','EVU-Informationsveranstaltung

Vertiefung Unterjähriger Baufahrplan

25.06.2026 | Frankfurt am Main',9,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":1,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','3eb5acee34c3687962a6722e5f71b49d7fcdf144c772650260825a97289e0093');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_21b06ad61889e505cdb8962a','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',1,'Seite 2','Agenda

Begrüßung & Einleitung Willkommen! 5 min

Unterjährige Fahrplanprodukte unter Annex VII 5 min

Überblick Annex VII

Digitale BauFplo 15 min

Ihre Fragen und

Beantwortung Ihrer Fragen 30 min

Hinweise

Abschluss Nächste Schritte 5 min

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 2',46,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":2,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','6f854e96aca1293c1abfcf3db982b27125b3a990bfa661e4bf70cbf35058c685');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2b815606ac3010155ae0af9d','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',2,'Seite 3','Hinweise

für den heutigen

Teams Fragen & Antworten

Termin

Fragen & Kommentare jederzeit während der Präsentation im Bereich „F&A“ in

Teams schriftlich stellen

kurz & auf den Punkt hilft uns beim späteren Beantworten

Voice-Beiträge (Hand heben)

Wir freuen uns

In der Q&A-Phase am Ende des Termins

über eine aktive

Wir rufen auf; max. ~1 Minute pro Frage, damit viele zu Wort kommen

Teilnahme. Ihre

Gedanken und

Wann antworten wir?

Fragen sind

ausdrücklich Am Ende des Termins in einer gebündelten Q&A-Runde

Wir sammeln und priorisieren währenddessen im Hintergrund

willkommen!

Ziel:

Möglichst viele Fragen, möglichst klare Antworten – fair & respektvoll für alle.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 3',112,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":3,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','bf0324145dda90d79f536778eba2d2e325da724a639ab96d634cd98c560ee1ec');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e37809d939d4d4ebe5fbd1b2','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',3,'Seite 4','Unterjährige Fahrplanprodukte

unter Annex VII

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 4',16,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":4,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','fe9de8350e28d376352dfe5c14afa9796d91ab3645c7e6bd58992945f46dc40d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_771f626520727eb3c1defdec','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',4,'Seite 5','DB InfraGO bietet verschiedene Informationsformate rund um

die Einführung von Annex VII und TTT im unterjährigen Bau an

Die unterschiedlichen Termine haben einen jeweils klaren Fokus und ergänzen sich. Bedienen Sie sich gerne passend aus

unserem Angebot.

Heutiger Termin

Einweisung 4. KP GPE/FPE ujBau Vertiefung TTT-Dialog

(KOMBau)

▪ Fokus: neue Prozesse im ▪ Fokus: Gesamtblick über

▪ Fokus: Bedienung des unterjährigen Bau alle Fahrplanphasen,

Tools KOMBau rund um Projektmeilensteine

GPE und FPE

▪ nächster Termin

▪ 12./18./26.6.2026 27.8.2026

Sprechstunden zu 4. KP Kundentesttage KOMBau

GPE/FPE zu 4. KP GPE/FPE

▪ Fokus: Fragen beantworten ▪ Fokus: Prozessdurchlauf

zu Bedienung KOMBau und GPE bis FPE testen

neuem Prozess

▪ Termine individuell für

▪ ab 9.7.2026, wöchentlich 1h Teilnehmende

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 5',127,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":5,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','3cc66d6e81b61bbc8d4729fb702ac68faa7c5b15e5890b2e34da0d6871bba94e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1bafd90d95c25bf6561c05d6','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',5,'Seite 6','Die Migration der Fahrplanproduktwelt vom heutigen Prozess

bis zum Zielzustand 2028

FPLJ

I

I

V

x

8 e

2 e g n n

0 i d A

2 n

g

ä

n

t

s u

l l o r e

V i s

i l a e

4 ,1

4 2 1 2 8 1 6 1 4 1 2 1

R z - z - z - z - z - z -

n I

I

o V

7 i t x GPE GPE nach

2 a e GPE FPE Netzausgelöste FPLO

0 2 r g i n n Stellungnahme Stellungnahme Änderung

M A

3

5 0 3 -

1 1 8 6 z

- - - - s

z z z z i

B

2

6 e

t

2 u

0 e

H

2

(1) z = Wochen vor Ereignis (2) Bezieht sich auf A-Maßnahmen Prozess (3) Frist FPE im SGV z-5 (4) Für Züge der NEP 1 gelten teilweise GPE-Fristen von z-15 (Details siehe INB)

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 6',179,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":6,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','19db9be7b609b4776831b8e45a4c95ac574d965870ee4e8fda250a6ed71dec5c');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1423c1660dff762e89d356a7','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',6,'Seite 7','Fahrplan zum neuen unterjährigen Baufahrplan:

Versandzeitpunkte der neuen Produkte rücken näher

Nach Feedback

aus dem Markt:

31.08.2026 19.10.2026 22.11.2026

Versand 1. GPE Möglicher Zeitrahmen für

erfolgt erst zur Versand 1. GPE Frist 1. GPE (z-15) Frist 1. FPE (z-8)3 Frist 1. digitale

Frist Ende August BauFplo (z-3)

Frist 1. NAÄ (z-8)

Jun. Jul. Aug. Sep. Okt. Nov. Dez.

Ab Versand des FPE und

06.07.2026 17.08.2026 14.12.2026

NAÄ wird die BauFplo im

VNP1 (TTT-konform) ENP2 (TTT-konform) 1. Montag nach dem

neuen Format versendet

Fahrplanwechsel

1 Für die Fahrplandokumente für Sonntag nach Fahrplanwechsel (13.12.2026) gelten folgende Fristen:

GPE: 24.08.2026, FPE (SPV): 12.10.2026, FPE (SGV) 02.11.2026

2

Die Stellungnahmefrist von 3 Wochen auf das GPE bleibt bestehen.

3

Es handelt sich jeweils um die spätesten Versandzeitpunkte, insb. die erste digitale BauFplo kann auch früher kommen.

(1) Vorläufiger Netzplanentwurf (2) Endgültiger Netzfahrplan (3) z-8 gilt für den SPV. Für den SGV gilt die Frist z-5.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 7',162,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":7,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','272daafe80f5b7fbe6c4b8c89f56779be4b8e587dd4820dbbceecc985a46576f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ae030f6a23c6ea80886a44f6','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',7,'Seite 8','Digitale BauFplo

Vorschau Hochlauf in 2026

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 8',17,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":8,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','031f6b29b74809ea24f2f023beaea3cc8762b4964ebc290a809ef1b6246fcd2d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5af4e3e206a2aa7d49806860','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',8,'Seite 9','Anforderungen von TTT / Annex VII für die neuen

unterjährige Fahrplanprodukte im Regelprozess

Migrationszeitraum Fplj 2027: Übersicht Fahrplanprodukte und zugehörige Prozesse

BKE1 GPE2 GPEnS3 FPE4 NAÄ5 BauFplo6

InfraGO

z-29 z-24 z-15 z-87 z-8 bis z-3

Webportal

Webanwendung KOMBau PDF per Mail

Systeme pathOS

Common Interface pathOS (Schnittstelle zur Trassenmeldung) API (Schnittstelle)

3 Wochen Stellungnahme, 1 Woche Annahme/ Kostenfreie Stornierung

EVU Annahme/ Ablehnung innerhalb 3 AT8

Ablehnung möglich

z-21 z-14 z-8

(1) Baubedingte Kapazitätseinschränkung (2) Grobplanungsergebnis (3) Grobplanungsergebnis nach Stellungnahme (4) Feinplanungsergebnis (5) Netzausgelöste Änderung

(6) Baufahrplananordnung (7) Frist FPE im SGV z-5 (8) Arbeitstage

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 9',105,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":9,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','2c66711f654758bdb89522c9ea239000946e369f1f82c307ab49cc37b08f8479');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_330a448a6837b8cfa22f2ecb','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',9,'Seite 10','Mit der Einführung von TTT / Annex VII gibt es

Änderungen in der Darstellung der BauFplo und an der API

Änderungen an der BauFplo API zum Juli 2026 Ausblick: Änderungen an der BauFplo mit TTT / Annex VII

Changelog BauFplo API EVU

Thema Darstellung unter TTT

• Änderungsübersicht der

Schnittstellenbeschreibung der digitalen Zugtrassen mit mehreren Ja

BauFplo wird fortlaufend gepflegt Abschnitten

• Dient zur Unterstützung bei Bewertung Zeitliche Inkonsistenz Ja

möglicher Auswirkungen auf Ihre

Übergänge zu Ja

Systeme

Fremdnetzanteilen

Aktualisierte Beispieldateien PathID Nein

Bauvorgangsnummer Entfällt

• Zeigen mögliche Anwendungsfälle in

jeweils drei verschiedenen Formaten Art der Baumaßnahme Entfällt

(pdf, json, xml)

Ort der Baumaßnahme Entfällt

Alle aktuellen Änderungen an der API und Beispiele Auch zukünftig kann es zu Änderungen an der

sind auf Homepage zur digitalen BauFplo zu finden. BauFplo kommen, über die wir informieren.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 10',146,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":10,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','a3c022d9a34760b4b2b79ec85169c6c717457e029ab0a12b3e35682c63b4599d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_65722cec4139dc2067230d12','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',10,'Seite 11','Mit der Betriebserprobung bereiten wir sukzessive die

Einführung der digitalen BauFplo in 2026 vor

Die Betriebserprobung in Zahlen

Stand 24.06.2026

41

>135

>700

EVU mit Kontaktaufnahme

beantwortete Fragen &

veröffentlichte BauFplon

Veröffentlichung im FAQ

28

aktiv beteiligt

10

kooperationsinteressiert1

7 von 7 19

6

Regionen sind Teil der Erprobung verprobte Anwendungsfälle

Anpassungsbedarfe EVU-seitig

identifiziert

(1) EVU mit laufender Entscheidungsfindung oder noch nicht verprobaren Anwendungsfällen

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 11',75,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":11,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','6081040c6bf5e57329a60313c9f16687f31e834b67baa7153140334c087cd0cf');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8a2bbb177d909b035124a424','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',11,'Seite 12','19 bereits erprobte Anwendungsfälle decken ca. 90% des

zukünftigen Aufkommens an digitalen BauFplo ab

19 Anwendungsfälle bereits erprobt In allen 7 Regionen bereits digitale BauFplo veröffentlicht:

• Umleitung • Einfahrt in Frühhaltanzeiger auf

Kumulierte Anzahl BauFplo

Laufweg

• Umleitung mit Ausfall von

Betriebsstellen • Teilausfall hinten - auf Laufweg 800

• Umleitung mit zusätzlichen • Mittiger Teilausfall (SEV) mit

600

Betriebsstellen baubedingter Neuleistung

Region Südwest

• Umleitung mit Ausfall von • Einfahrt in Stumpfgleis auf Region Ost

400

Betriebsstellen und mit Laufweg Region Süd

zusätzlichen Betriebsstellen • Zugcharakteristika Anpassung 200 Region West

Region Nord

• Verkehrstagswechsel Region Südost Region Mitte

• Zug fährt mit Verfahren ESF

0

• Zielendpunkt im Ausland N D J F M A M J J A S O N D J F M A M J

• Hinweis auf den Ersatzfahrplan- • Z N u o g t f b a r h e r m t s m ü i b t erbrückung . v o . z e . n a . b e z r ä . r p i a i n u il u . g u . p e . t k . v o . z e . n a . b e z r ä . r p i a i n u

heftverweis

• Verspätung

2024 2025 2026

• Vorplan

• KV-Profil

• Totalausfall Legende

• Rangierfahrt

Erste digitale BauFplo zu Trasse in Region x veröffentlicht

Weitere, auch komplexere Anwendungsfälle können mit uns in der

Betriebserprobung/Hochlauf getestet werden Neues EVU nimmt an Betriebserprobung teil

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 12',269,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":12,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','25d9713f42905c573e339ea5809d73dede36cb36b9289deafd62f10929c89811');
--> statement-breakpoint
