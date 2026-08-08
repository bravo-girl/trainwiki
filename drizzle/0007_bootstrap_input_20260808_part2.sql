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
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_6253bf4bb4df1bf6fc028977','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',12,'Seite 13','2026 steht im Zeichen des kontrollierten Hochlaufs – mit

Betriebserprobung digitale BauFplo als zentraler Enabler

Betriebserprobung bis

auf weiteres verlängert

Rollout digitale BauFplo 2026-2027

2026 2027

Wichtig:

Jan. Febr. März Apr. Mai Juni Juli Aug. Sept. Okt. Nov. Dez. Jan. Febr.

• Da es sich bei der BauFplo um ein

Betriebserprobung

100% sicherheitsrelevantes Fahrplanprodukt

digitale handelt, darf ein Zug nur in einem Format

BauFplo

kommuniziert werden – Hierdurch wahren

Hochlauf möglich

wir die Datenkonsistenz und damit die

Sicherheit

Oktober 2026

• Im Prozess der Bereitstellung der neuen

Schnittstellen- Hochlauf digitale Fahrplandokumente unter TTT / Annex VII

Finale

Spezifikation steht BauFplo in wird automatisiert zu jedem FPE1 und NAÄ2

Umstellung

zur Verfügung: Abstimmung mit

FplJ 2027 eine digitale BauFplo veröffentlicht

EVU-seitige Region und EVU

Entwicklung möglich

möglich

(1) Feinplanungsergebnis (2) Netzausgelöste Änderung

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 13',142,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":13,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','b13f3b7b14854e5cbac8a1adceaa1056afa91afe9e7b0443896cd059bc0fa373');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_25f0a09b3e798cf240ce86a9','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',13,'Seite 14','Mit einer Teilnahme am Hochlauf sind Sie ideal auf die

Einführung der digitalen BauFplo vorbereitet

Einladung zur Teilnahme am Hochlauf der digitalen BauFplo Ihre Vorteile auf einem Blick

• Schrittweise Skalierung von regionalen und

Sie erhalten hochlaufend alle Fälle, die im neuen überregionalen Trassen

Format möglich sind – direkt als digitale BauFplo

• Früher Zugang zu neuen Funktionen und

Praxiswissen

Was technisch bisher nicht abbildbar

• Mitgestaltung durch Ihr Feedback

ist, liefern wir im bisherigen Format

So funktioniert die Teilnahme

Kontakt aufnehmen über [E-Mail-Adresse entfernt]

Sie können jederzeit und ohne Nachteile aus dem

Hochlauf aussteigen; wir setzen die Trassenbearbeitung

Vereinbarung eines Info-Termins und Besprechung

dann nahtlos im bisherigen Format fort

des weiteren Vorgehens

Zusätzlich sind auch Abstufungen möglich (z.B. Alle von

Festlegen von Leitplanken zur Umstellung auf

einer spezifischen Baumaßnahme betroffenen Züge)

digital BauFplo (z.B. einzelne Kundenummern)

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 14',148,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":14,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','f7839d2ac221d4df748fcaf89b8c95cb53851890f81abbe053b24e8cf2614ac6');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8c21e469aa73e00884fb9afa','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',14,'Seite 15','Mit dem Readiness-Check für die digitale BauFplo

können Sie selbständig ihre Prozesse prüfen

Der BauFplo-Readiness-Check...

... ist ein kompakter Selbsteinschätzungs-Check zur Prüfung,

wie gut Sie auf die digitale BauFplo vorbereitet sind

... bringt Transparenz über den eigenen Reifegrad, von

Empfang und Ablage bis zur operativen Nutzung

... hilft, Prozesslücken zu schließen und sicherzustellen, dass

BauFplo zuverlässig verarbeitet werden können

... ist bewusst pragmatisch gehalten und in wenigen Minuten

durchführbar

... ist als Download auf unserer Webseite verfügbar

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 15',88,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":15,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','c86b6bbaee742ebca82bd386169c0c45d136645f26e380700d80c7fd90449173');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d95732dd80574c5181a975ea','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',15,'Seite 16','So bleiben Sie mit uns in Kontakt

Annex VII KOMBau Digitale BauFplo TAF/TAP TSI

Hier geht‘s zur Website Hier geht‘s zur Website Hier geht‘s zur Website Hier geht‘s zur Website

• Informationen zum neuen • Informationen zur • Neuerungen auf einen Blick • Tools zur

Prozess Baukommunikation Webanwendung, inkl. Trassenanmeldung (z. B.

• Beschreibung Testzugang

Direktlink pathOS)

• Zusammenhang mit auf BauFplo API

KOMBau • Bedienungsanleitung • Schnittstellen &

• Beispieldokumente in xml-

Meldungsservices

• FAQ • FAQ und json-Format

• Informationsangebote

• FAQ

(FAQ, Events,

• Readiness Check

Ansprechpartner)

Sie erhalten die gezeigte Unterlage im Anschluss an diese Veranstaltung.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 16',111,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":16,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','1eee6933682928c6005a6b7657c88a3b793a48f898cb00caa9b086fcbe7fe4d5');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_816bc0ed8b5a7f940bfec6cf','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',16,'Seite 17','Fragen und Hinweise

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 17',14,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":17,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','fa16b5f20f77a36f3c6126ce1ebc2af5d0d2d0ea83af288e65f1425c671d7569');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_070f7e63f2785d5fd2eb9915','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',17,'Seite 18','Häufig gestellte Fragen – FAQ 1

Thema: Annex VII

Wenn man ein GPE, GPEnS oder FPE ablehnt, erfolgt die netzseitige Stornierung

F

der Trasse. Anschließend kann man im Rahmen des GelV eine neue Trasse

bestellen. Wie ist in diesem Fall der Ablauf des nachgelagerten Prozesses? Wie

sind die zeitlichen Eckpunkte zur Bearbeitung und späteren Veröffentlichung

dieser Trasse? Ist die Anmeldung einer neuen Trasse im GelV direkt nach

Ablehnung möglich oder erst ab z-8 vor der relevanten Baumaßnahme? Was ist

der späteste Zeitpunkt, zu dem eine Bestellung einer neuen Trasse im GelV in

diesen Fällen möglich ist?

A

Gemäß der INB 2027 Ziffer 4.2.2.4 gelten zum Fahrplan 2027 die

entsprechenden Fristen im Gelegenheitsverkehr. Siehe Abschnitt in

den genannten INB.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 18',129,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":18,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','2c2f18b5b8957e456c853082c9be2d723fc1646c0645382ac2eca9fdb58a6fbc');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f9d534244649a258a426bb41','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',18,'Seite 19','Häufig gestellte Fragen – FAQ 2

Thema: Annex

F

Kann auf eine bereits abgestimmte BKE 7 aus der 1. und 2.

Konsultationsphase in der 3. Konsultationsphase noch ein BKE 2

folgen?

A

Der konsultierte Stand der 2.KP geht in den Netzfahrplan und bildet

die Grundlage für die Fpl.-Konzepte der 3.KP. D. h., abgestimmte BKE

der 2.KP können mit BKE der 3.KP in der 3.KP bzw. BKE der 4.KP in

der 4.KP nochmal zusätzlich koordiniert werden.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 19',86,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":19,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','934ed04a3bfcd101d139489a6a28b3fcced46df27fa2c269fc9c1c0dd405bb94');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_648f49e39933458cf2055a5e','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',19,'Seite 20','Häufig gestellte Fragen – FAQ 3

Thema: IT

F

Wie erfolgt die Übermittlung des Zeitraumes, wenn durch eine zusätzliche

Baumaßnahme die Verkehrstage innerhalb eines GPE geteilt werden? Erhalten wir

für jede Nachricht einen Gültigkeitszeitraum von 7 Tagen oder ist auch ein

verkürzter Zeitraum möglich?

A

Die Bautrasse des ursprünglichen GPE wird im Folgeprodukt um die

baubetroffenen Tage der neuen BKE eingekürzt. Für die

baubetroffenen Tage der neuen BKE versenden wir ebenfalls ein

fristabhängiges Fahrplanprodukt.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 20',85,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":20,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','50e0c4f31c8c995f4756ec03fd1d24ab907450b0706d0334fa2f50b8df378cc6');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_97346e67b5c8ef15cc5a7362','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',20,'Seite 21','Häufig gestellte Fragen – FAQ 4

Thema: Digitale BauFplo

F

Was passiert, wenn nach FPE (z-8) die Baumaßnahme abgesagt wird

und anschließend das EVU über den Regelfahrplan-Prozess eine

Änderungsbestellung veranlasst? Werden dann Daten über die

Schnittstelle der digitalen BauFplo gesendet?

A

Für Fahrplanjahr 2027 wird es über die BauFplo-Schnittstelle nur die

BauFplo Daten geben. Bei einer Änderungsbestellung wird es wie im

aktuellen Fahrplanjahr eine Fplo (Netzfahrplan oder Sonderzug)

geben.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 21',80,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":21,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','c689d9f0992cb16b50019a4329d72cbfc7b2b4c671c9dad1a18cb86ce3356b1d');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a196f1ace9db4181eff13201','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',21,'Seite 22','Häufig gestellte Fragen – FAQ 5

Thema: Digitale BauFplo

F Im Fahrplanjahr 2026 können laut FAQ eine Fplo entweder mit Baustellen- oder

Zugsicht veröffentlicht werden. Können wir davon ausgehen, dass, sollte im Fpl.

2027 TTT nicht eingeführt werden, es diese zwei Möglichkeiten auch weiterhin

geben wird? Wird in diesem Fall an dem bestehenden Prozess mit ZvF, ÜB und

Fplo mit den heutigen Fristen festgehalten? Wovon ist es abhängig, ob eine

Zugsicht oder eine Baustellensicht verwendet wird, und welchen Einfluss bzw.

Auswahlmöglichkeiten haben wir als EVU ?

A

Während der Betriebserprobung in Fplj26 wird im direkten

Austausch mit den ZB entschieden welche Züge in welchem Format

veröffentlicht werden.

Das aktuelle System zur Fplo–Erstellung muss aus verschiedenen

Gründen zum Fplj-Wechsel 27 abgeschaltet werden, weshalb es ab

diesem Zeitpunkt nur das neue Format der digitalen BauFplo geben

wird.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 22',146,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":22,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','42d1dd11ce8d6775267145cf71977ec549e2d2f1eea678308df47466d7b3409b');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a540abda1b9fecf26461fb00','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',22,'Seite 23','Häufig gestellte Fragen – FAQ 6

Thema: Digitale BauFplo

F

Gibt es feste Zeitpunkte für die Updates an der API für die digitale

BauFplo? Bzw. wird man ev. sogar über eine E-Mail über anstehende

Änderungen informiert?

A

Auf unserer Homepage und in den EVU-

Kundeninformationsveranstaltungen informieren wir über

Änderungen an der Schnittstelle. Link zur Website: Digitale

Baufahrplananordnung

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 23',68,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":23,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','a57d0237e6ab83432b48c614d8c9da1f00923098915a262920a438d16ef4a8ee');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_42f19898dfc92070199b7e44','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-25-06-2026-data.md',23,'Seite 24','Zeit für Ihre Fragen

30 Min.

Bitte stellen Sie ihre Fragen über die

F&A-Funktion in Teams und voten Sie

interessante Fragen nach oben

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 25.06.2026 24',34,'{"canonical_url":null,"normalized_sha256":"04d45c67744bc2d469d1351ec1a38b5214d8edefbe8062174abea1aebfb3c219","page":24,"source_id":"src_ddd38c74e487946a0af2","source_sha256":"e9e0a2f232ec0d5439cf916bb57c8fe191657c86e3f2dc38ada024bacbe0f342","source_version_id":"sv_945698ce989da35cc526b067"}','0b6b6341028c5fbb40f40500558e6cf050306c64d01076a03891e1a223323b8c');

--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_55f12bc0f78e6465ec63','file','Informationsveranstaltung Vertiefung ujBau vom 31 07 2026',NULL,'de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;

--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_fc73716a3f57a7991ffa7db4','src_55f12bc0f78e6465ec63','18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf','eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618',1448608,'application/pdf','Informationsveranstaltung-Vertiefung-ujBau-vom-31-07-2026-data.pdf','sources/normalized/bootstrap/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data/sv_fc73716a3f57a7991ffa7db4.md','pdfplumber','0.11.9','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","converter":{"name":"pdfplumber","profile":"bootstrap-markdown-v2","version":"0.11.9"},"final_url":null,"import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_fc73716a3f57a7991ffa7db4.json","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data/sv_fc73716a3f57a7991ffa7db4.md","normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","origin_page_url":null,"original_filename":"Informationsveranstaltung-Vertiefung-ujBau-vom-31-07-2026-data.pdf","page_count":25,"raw_binary_committed":false,"requested_url":null,"schema_version":2,"size_bytes":1448608,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4","supersedes_source_version_id":null,"title":"Informationsveranstaltung Vertiefung ujBau vom 31 07 2026","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;

--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf','src_55f12bc0f78e6465ec63','sv_fc73716a3f57a7991ffa7db4','{"content_duplicate_group":null,"original_filename":"Informationsveranstaltung-Vertiefung-ujBau-vom-31-07-2026-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;

--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618','src_55f12bc0f78e6465ec63',NULL,'{"content_duplicate_group":null,"original_filename":"Informationsveranstaltung-Vertiefung-ujBau-vom-31-07-2026-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;

--> statement-breakpoint
UPDATE sources SET current_version_id='sv_fc73716a3f57a7991ffa7db4' WHERE id='src_55f12bc0f78e6465ec63';

--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md','Informationsveranstaltung Vertiefung ujBau vom 31 07 2026','EVU-Informationsveranstaltung Vertiefung Unterjähriger Baufahrplan 31.07.2026 | Frankfurt am Main','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','f03d9809cabe04b46369c0cd1b6da9b15c8ba6b2a1b80ea22b22153d1fefc390','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_55f12bc0f78e6465ec63","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;

--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md';

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_605a5f4b1c0cf9c62f8b7a4a','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',0,'Seite 1','EVU-Informationsveranstaltung

Vertiefung Unterjähriger Baufahrplan

31.07.2026 | Frankfurt am Main',9,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":1,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','0dbdf70484df6ca52c1d01d9e62e9a6c525b267def739eb8cc56d2cf8c700ef5');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1117b472368d1d3aa34bc6d6','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',1,'Seite 2','Agenda

Begrüßung & Einleitung Willkommen! 5 min

Unterjährige Fahrplanprodukte unter Annex VII 10 min

Überblick Annex VII

Digitale BauFplo 10 min

Ihre Fragen und

Beantwortung Ihrer Fragen 30 min

Hinweise

Abschluss Nächste Schritte 5 min

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 2',46,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":2,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','a637b61a5587ed34df1fa59c251af0e267459d39dc82a17d857ed6b125a4eff1');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_89c1660b5ede0cfe45f323c8','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',2,'Seite 3','Hinweise

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

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 3',112,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":3,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','e986dbbe97b3091ed7bc2df5eaa4559ce73f9abdbc0487ac511bae56640817f6');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_98133948ae4bcefdf0ad15da','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',3,'Seite 4','Unterjährige Fahrplanprodukte

unter Annex VII

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 4',16,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":4,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','17779eafbc9463be3d8156452acafcac142c9661e53f32d7d76fc5c969b6cf2d');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ec26595425f441ada5855a25','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',4,'Seite 5','DB InfraGO bietet verschiedene Informationsformate rund um

die Einführung von Annex VII und TTT im unterjährigen Bau an

Die unterschiedlichen Termine haben einen jeweils klaren Fokus und ergänzen sich.

Bedienen Sie sich gerne passend aus unserem Angebot:

Einweisung 4. KP GPE/FPE ujBau Vertiefung

(KOMBau)

• Fokus: neue Prozesse im

• Fokus: Bedienung des Tools unterjährigen Bau

KOMBau rund um GPE/FPE

• nächster Termin vsl.

21.08.2026

Heutiger Termin

Sprechstunden zu 4. KP TTT-Dialog

GPE/FPE

• Fokus: Gesamtblick über alle

• Fokus: Beantwortung von Fahrplanphasen,

Fragen zu Bedienung Projektmeilensteine

KOMBau u. neuem Prozess

• nächster Termin 27.8.2026

• seit 9.7.2026, wöchentlich 1h

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 5',111,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":5,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','5fb674d38203ef7b2fdf5ed7b6306101812a61416da89b67598d157a92f68ec5');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c5c5a7f11b808049acdf7463','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',5,'Seite 6','Fahrplan zum neuen unterjährigen Baufahrplan:

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

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 6',162,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":6,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','4bbad0ca315510cbdc14e7b7139829aad4a2c48449db4f952935dd22fffc3250');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_749487b6ff9b732b2252446b','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',6,'Seite 7','DB InfraGO entwickelt die KOMBau bis zur ersten GPE-

Konsultation gezielt weiter und stellt neue Funktionen bereit

Bereits vorhandene Funktionalitäten KOMBau: Funktionserweiterungen bis erste GPE-Konsultation am 24.08.26:

• Ist seit dem 22.06. für den Nutzer verfügbar • GPE (zukünftig auch GPEnS und FPE) kann mit der Vertragstrasse

(aber noch keine GPE enthalten) aus dem Netzfahrplan auf der Übersichtsseite und im Laufweg

verglichen werden

• Die Anforderungen des Annex VII sind erfüllt

• Es wird eine erste Version der Mehrfachstellungnahme geben:

• Es wird im TTT-Format kommuniziert

• GPE für die Stellungnahme kann selektiert werden

• GPE, GPEnS, FPE werden kommuniziert

• Mehrfachstellungnahme kann abgegeben werden

• Es können Stellungnahmen zu GPE abgegeben

werden und GPEnS abgelehnt oder angenommen • Verfristete GPE werden täglich gebündelt um 22:30 versandt

werden

• Alle Prozessschritte von GPE bis FPE sind

nachvollziehbar

• Es sind Filterfunktionen in der Übersichtsseite

Für den Umgang mit diesen neuen Funktionen wird vsl.

enthalten

am 21.08.26 ein Einweisungstermin angeboten

• Sortierfunktionen werden in der Übersichtsseite

Die zugehörige Kundeninformation wird am 06.08.26

bereitgestellt verschickt

• Kontaktdaten können automatisiert befüllt werden

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 7',190,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":7,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','b42df693ef730f7ba9f6a930016e52f232f74cf8c939ed1dcc18ebe2cf4c46e7');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8afeefd3b588851baf2f5096','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',7,'Seite 8','Digitale BauFplo

Vorschau Hochlauf in 2026

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 8',17,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":8,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','bd3408c468d6d5a1cfc3b6082164883747cef883cf14fe8d380fc773ffcc49cf');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_03e7536a802e5c0b68b829d6','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',8,'Seite 9','Anforderungen von TTT / Annex VII für die neuen

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

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 9',105,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":9,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','0d09ae8b9f35f7b6c8e4491dca18943d502a062d2186eff49b64a5ca71ba7c77');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_25851f7dd39c4f6415401829','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',9,'Seite 10','Mit der Einführung von TTT / Annex VII gibt es

Änderungen in der Darstellung der BauFplo und an der API

Änderungen an der BauFplo API Ausblick: Änderungen an der BauFplo mit TTT / Annex VII

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

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 10',143,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":10,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','37d24c4c348e780d328f680e1151f13b885c96f20d94b24981d0f74b3eaebb06');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ffddabfdc271e4c62d307ed5','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',10,'Seite 11','Mit der Betriebserprobung bereiten wir sukzessive die

Einführung der digitalen BauFplo in 2026 vor

Die Betriebserprobung in Zahlen

Stand 20.07.2026

42

>118

>910

EVU mit Kontaktaufnahme

beantwortete Fragen &

veröffentlichte BauFplon

Veröffentlichung im FAQ2

28

aktiv beteiligt

12

kooperationsinteressiert1

7 von 7 21

6

Regionen sind Teil der Erprobung verprobte Anwendungsfälle

Anpassungsbedarfe EVU-seitig

identifiziert

(1) EVU in laufender Entscheidungsfindung oder mit noch nicht verprobbaren Anwendungsfällen

(2) Reduzierte Zahl im Vgl. zu Vormonat durch Aufteilung des FAQ in Annex VII und Digitale BauFplo. Restliche Fragen in Annex VII FAQ aufgegangen

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 11',100,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":11,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','9bd57cf3ec7fd4c4519eea782808cda2387877bd2269979e7b605151adfb5c69');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a3165de196006a01cc1221d8','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',11,'Seite 12','21 bereits erprobte Anwendungsfälle decken ca. 95% des

zukünftigen Aufkommens an digitalen BauFplo ab

21 Anwendungsfälle bereits erprobt In allen 7 Regionen bereits digitale BauFplo veröffentlicht:

• Umleitung • Teilausfall hinten - auf Laufweg

• Umleitung mit Ausfall von • Mittiger Teilausfall (SEV) mit Kumulierte Anzahl BauFplo

Betriebsstellen baubedingter Neuleistung

1.000

• Umleitung mit zus. Betriebsstellen • Einfahrt in Stumpfgleis auf

800

Laufweg

• Umleitung mit Ausfall von

Betriebsstellen und mit • Zugcharakteristika Anpassung 600 Region Südwest

zusätzlichen Betriebsstellen Region Ost

• Halt für Personalwechsel

400

Region Süd

• Verkehrstagswechsel

• Zug fährt mit Verfahren ESF Region West

200

• Zielendpunkt im Ausland Region Nord

• Zugfahrt mit Region Südost Region Mitte

0

• Hinweis auf den Ersatzfahrplan- Notbremsüberbrückung

N D J F M A M J J A S O N D J F M A M J J

heftverweis • Verspätung . v o . z e . n a . b e z r ä . r p i a i n u il u . g u . p e . t k . v o . z e . n a . b e z r ä . r p i a i n u il u

• Vorplan

• KV-Profil

2024 2025 2026

• Totalausfall

• Rangierfahrt

• Einfahrt in Frühhaltanzeiger auf

• Zeitsprung Legende

Laufweg

Erste digitale BauFplo zu Trasse in Region x veröffentlicht

Weitere, auch komplexere Anwendungsfälle können mit uns in der

Neues EVU nimmt an Betriebserprobung teil

Betriebserprobung/Hochlauf getestet werden

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 12',260,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":12,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','c77c6b1ee6d3d3c4322680ba2e14582f7adeb0a0c35872b944fd9534216f8de5');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1e64b4d3804c890d969d8ada','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',12,'Seite 13','Mit dem Readiness-Check für die digitale BauFplo

können Sie selbständig ihre Prozesse prüfen

Der BauFplo-Readiness-Check...

... ist ein kompakter Selbsteinschätzungs-Check zur Prüfung,

wie gut Sie auf die digitale BauFplo vorbereitet sind

... bringt Transparenz über den eigenen Reifegrad, von

Empfang und Ablage bis zur operativen Nutzung

... hilft, Prozesslücken zu schließen und sicherzustellen, dass

BauFplo zuverlässig verarbeitet werden können

... ist bewusst pragmatisch gehalten und in wenigen Minuten

durchführbar

... ist als Download auf unserer Webseite verfügbar

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 13',88,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":13,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','8645c64a9f7597bd51373e7549019a1f7bfce5146e3517bf80e3007ed539f4ad');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d7cb53957eb66c744f2c3239','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',13,'Seite 14','So bleiben Sie mit uns in Kontakt

Annex VII KOMBau Digitale BauFplo TAF/TAP TSI

Hier geht‘s zur Website Hier geht‘s zur Website Hier geht‘s zur Website Hier geht‘s zur Website

• Informationen zum neuen • Informationen zur • Neuerungen auf einen Blick • Tools zur

Prozess Baukommunikation Webanwendung, inkl. Trassenanmeldung (z. B.

• Beschreibung Testzugang

Direktlink pathOS)

• Zusammenhang mit auf BauFplo API

KOMBau • Bedienungsanleitung • Schnittstellen &

• Beispieldokumente in xml-

Meldungsservices

• FAQ • FAQ und json-Format

• Informationsangebote

• FAQ

(FAQ, Events,

• Readiness Check

Ansprechpartner)

Sie erhalten die gezeigte Unterlage im Anschluss an diese Veranstaltung.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 14',111,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":14,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','968b9c4e7a72997e5b2445528c5810c05cc5b742b332fc8a1cc6f0487d30294c');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_bb87b3b805a85899202b9a0a','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',14,'Seite 15','Fragen und Hinweise

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 15',14,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":15,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','6b52de21719d5981b8b77c3ba614f450eaea0222244b6579628db07dd11fe9ee');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5b3e355a82160397b07fa87f','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',15,'Seite 16','Häufig gestellte Fragen – FAQ 1

Thema: Annex VII

F

Wird eine Leertrasse den regulären GPE-Prozess durchlaufen oder erfolgt hierfür

eine NAÄ zur Leertrasse?

A

Auch Leerzugtrassen können ein GPE erhalten, sofern sie vor Beginn

der Bearbeitung der Maßnahme bekannt sind.

Ist die Leerzugtrasse indirekt baubetroffen, wird in der

Stellungnahme eine Rückmeldung des EVUs benötigt. Das EVU erhält

im Anschluss für die indirekt betroffene Leerzugtrasse ein FPE.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 16',78,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":16,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','819b16232aff860f049053aebb41bafbf44e275fa795f2140f9d9a74ade94cfe');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_41063f0bd49c9655a29829bc','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',16,'Seite 17','Häufig gestellte Fragen – FAQ 2

Thema: Annex VII

F

Wie werden kurzfristige Änderungen nach z-24 kommuniziert?

Können EVU auf kurzfristige Kapazitätseinschränkungen nach GPE

noch Rückmeldung abgeben?

A

INB 2027 Ril. 402.0305 Abschnitt 9 Absatz (3)

Können bestehende Fristen nicht eingehalten werden – etwa, weil

die BKE auf einer kurzfristig erforderlichen Baumaßnahme beruht -

so konsultiert die DB InfraGO AG die ZB und EIU umgehend (sofern

keine Gefahr in Verzug). Diese haben einen Arbeitstag Zeit, um eine

Stellungnahme abzugeben.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 17',90,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":17,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','2e5a6da9472451c9d98114c0df455acadbf75250f87db9f55b43e561d783a6a2');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_92698ec85452c507f6d10360','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',17,'Seite 18','Häufig gestellte Fragen – FAQ 3

Thema: KOMBau

F

Wie kann sichergestellt werden, dass Vorgaben vom Aufgabenträger

(z.B. Anschlussverkehre, Schülerverkehre) berücksichtigt werden,

sodass diese an bestimmten Betriebsstellen erreicht werden können.

A

Die EVU haben die Möglichkeit, an den relevanten Bst.

(Betriebsstellen), an denen Anschlussverkehre vorhanden sind, eine

früheste oder späteste Zeit anzugeben, inklusive eines Kommentars

auf der Betriebsstellenebene, warum die Einhaltung wichtig ist. (z.B.

Anschluss der Bus-Linie X muss erreicht werden)

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 18',82,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":18,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','1e5e2256234c99e29354f07c49d6158cd2ba0b1e4bab2262a50acba29fa81893');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5e1f123589689d5df7576a60','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',18,'Seite 19','Häufig gestellte Fragen – FAQ 4

Thema: GPE

F

Aufgrund der unterschiedlichen Fristen (z-15 vs. z-24) erhalten wir ab September

10 Wochen lang jede Woche für 2 Planungswochen GPEs, ist das korrekt?

A

Ja das ist korrekt, es werden für 2 Planungswochen GPEs versendet.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 19',55,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":19,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','8ffbfe9400ea8015c4d66fecb0b207c097da1895443f4d28bd3679023aff5225');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c83fe24ded06393ed6844dba','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',19,'Seite 20','Häufig gestellte Fragen – FAQ 5

Thema: GPE

F

Wenn zwei Züge (z.B. SGV) an einer bestimmten Betriebsstelle ihren

Wagenaustausch machen und eine gemeinsame Haltezeit von 30 Min.

benötigen, jetzt bekommt Zug 1 ein GPE mit einer BKE von 60 Min.

später in dieser Betriebsstelle an.

Bekommt der Zug 2 auch ein GPE ab der gemeinsamen Betriebsstelle

mit +60 Min. ?

A

Für den nicht baubetroffenen Zug erfolgt keine Bauausregelung. Hier

ist eine Änderungsbestellung durch den Kunden notwendig.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 20',89,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":20,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','c01309224f57dd91a840e7dc6bc2f8cd3b8c976d830705c54879449d0d147ee0');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3ecc4d68ba1d3e30b0482381','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',20,'Seite 21','Häufig gestellte Fragen – FAQ 6

Thema: FPE

F

Es kommt die Information, dass die Baustelle ausfällt, nach der

Stellungnahme aufs GPE und vor dem FPE. Wie gehen wir damit um?

Bekommen wir eine Information, dass alle Regelungen zurückgezogen

werden?

A

Sollte eine Baumaßnahme vor dem FPE-Versand abgesagt werden

und ist die Trasse dadurch nicht mehr baubetroffen, wird durch uns

eine Nachricht gesendet, dass der Prozess abgebrochen wurde. Die

Vertragstrasse gilt unverändert, d.h. ohne Baubetroffenheit, fort. Wir

schicken das letzte Fahrplanprodukt (GPE oder GPEnS) erneut, inkl.

withdrawal-message.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 21',98,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":21,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','93717e1b2c1e4a22020bf4fb1ee3c4264bc0297776b644f96480183cd4f49112');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_bb6f2f53ce2ada95e6ca194f','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',21,'Seite 22','Häufig gestellte Fragen – FAQ 7

Thema: Baubedingte Zusatzleistungen

F

Sofern in der 4 KP. bis z-5 noch baubedingte

Leertrassen/Zusatzleistungen bestellt werden können, bis zu

welchem Zeitpunkt muss diese Leertrasse dem EVU spätestens zur

Verfügung gestellt werden?

A

Das muss laut den INB (2026) 4.2.2.4 Fristen für die Bearbeitung

von Trassenanmeldungen innerhalb von 5 Arbeitstagen erfolgen.

Infrastrukturnutzungsbedingungen der DB InfraGO AG (INB) 2026

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 22',74,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":22,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','e9f81d1b2ea3354455b305205f123a4adc403de6443a337659e2b0d0152a068f');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0924605839b78052a3e162d5','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',22,'Seite 23','Häufig gestellte Fragen – FAQ 8

Thema: Mittiger Teilausfall

F

Welche Fahrplanprodukte erhalten wir bei einem mittigen Teilausfall

mit SEV und wie ist das in KOMBau einzugeben?

A

Im Prozessschritt GPE erhalten Kunden im Fall eines mittigen

Teilausfalls ein GPE, in dem die ausfallenden Bst. markiert sind. Bei

Bedarf können die Kunden im Freitextfeld auf Nachrichtenebene

angeben, welcher Zugteil umgenummert werden soll.

Eisenbahnverkehrsunternehmen mit Bauzugnummernkontingent geben

zusätzlich die zu verwendende Zugnummer an.

Im weiteren Verlauf wird die Trasse in zwei aufgeteilt und zwei Folgefahrplanprodukte gesendet.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 23',96,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":23,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','5aebb6b87b4532f1d5ceed0f715d29fbdc5852f432865dcc56c7295c4118307e');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_cca255494b4fe1715f2de6c6','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',23,'Seite 24','Häufig gestellte Fragen – FAQ 9

Thema: Mittiger Teilausfall

F

Wie ist der Umgang in der KOMBau mit einem Nachtsprung bei

mittigem Teilausfall?

Die komplette Bautrasse wird durch die DB InfraGO in Form einer

A

netzausgelösten Stornierung, kurz NAS storniert. Danach ist die

Bestellung beider Zugteile mit jeweils neuer Zugnummer über den

Gelegenheitsverkehr notwendig. Hierfür gewährleistet die DB

InfraGO, dass die bisherige Trassenlage für einen Zeitraum von

sieben Arbeitstagen vorgehalten wird. Erfolgt keine Neubestellung

dieser Trasse innerhalb von sieben Arbeitstagen, wird die Trasse als

vollständig ausgefallen im Rahmen der weiteren Bearbeitung

betrachtet.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 24',103,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":24,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','6ea76f30a0307792ec3cdae111847f5de3d8283804e70b71f6ff13f26b841f59');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_174fe4f7dcd1266fe3a1ed28','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-31-07-2026-data.md',24,'Seite 25','Zeit für Ihre Fragen

30 Min.

Bitte stellen Sie ihre Fragen über die

F&A-Funktion in Teams und voten Sie

interessante Fragen nach oben

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 31.07.2026 25',34,'{"canonical_url":null,"normalized_sha256":"eef5a3413f4bd077a678c695bba2facb8ff5c618bd310813e66f0e628dbaa618","page":25,"source_id":"src_55f12bc0f78e6465ec63","source_sha256":"18db5438ce86e06e01d7bc2da721c1ac26dbec8d9c61d8cea98165ac19f27baf","source_version_id":"sv_fc73716a3f57a7991ffa7db4"}','930422876ab293a242f793cc0dbaaca57dfab5af78ab8e1e4a3082a3df573d55');

--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_b1dc4ddce9e5b5a345e6','file','Infoveranstaltung Vertiefung 20h Zug 15 Juli 2026 Terminunterlage',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;

--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_20848958c0b6e9f3ebfd7441','src_b1dc4ddce9e5b5a345e6','20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971','0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8',2013214,'application/pdf','Infoveranstaltung-Vertiefung-20h-Zug-15-Juli-2026-Terminunterlage-data.pdf','sources/normalized/bootstrap/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Infoveranstaltung-Vertiefung-20h-Zug-15-Juli-2026-Terminunterlage-data.pdf","page_count":28,"raw_binary_committed":false,"schema_version":1,"size_bytes":2013214,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441","title":"Infoveranstaltung Vertiefung 20h Zug 15 Juli 2026 Terminunterlage","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;

--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971','src_b1dc4ddce9e5b5a345e6','sv_20848958c0b6e9f3ebfd7441','{"content_duplicate_group":null,"original_filename":"Infoveranstaltung-Vertiefung-20h-Zug-15-Juli-2026-Terminunterlage-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;

--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8','src_b1dc4ddce9e5b5a345e6',NULL,'{"content_duplicate_group":null,"original_filename":"Infoveranstaltung-Vertiefung-20h-Zug-15-Juli-2026-Terminunterlage-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;

--> statement-breakpoint
UPDATE sources SET current_version_id='sv_20848958c0b6e9f3ebfd7441' WHERE id='src_b1dc4ddce9e5b5a345e6';

--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md','Infoveranstaltung Vertiefung 20h Zug 15 Juli 2026 Terminunterlage','15.07.2026 – virtuell Versand im Nachgang DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 1','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','5f46ac58d2d24cb7f2460f063610379dcc9a99f6c880509a82401608375dd427','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_b1dc4ddce9e5b5a345e6","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;

--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md';

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_33278e30c259031be8d689ef','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',0,'Seite 1','15.07.2026 – virtuell

Versand im Nachgang

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 1',19,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":1,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','3bd414f387d30f3f7bc759d4ffe5fac4c02518589b176887df30be9e101f1e3c');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_9ca58d0807ea7c1770281934','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',1,'Seite 2','1. Begrüßung

1. Begrüßung

2. Neuer Prozess zur Anmeldung von 20h-Zügen

2. Neuer Prozess zur Anmeldung von 20h-Zügen

3. Änderungen im Anmeldeformular

3. Änderungen im Anmeldeformular

4. Stornierung des Orginalzuges

4. Stornierung des Orginalzuges

5. Neubestellung des 20h-Zuges

5. Neubestellung des 20h-Zuges

6. Zeit für Ihre Fragen

6. Zeit für Ihre Fragen

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 2',65,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":2,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','b31840c245309bf6c364715da8a75f1c727f2b42f0e87f39c58802793bc9f166');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_11dc014a49e2e9c6ff4e9726','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',2,'Seite 3','So können Sie eine Frage platzieren:

Bitte wählen Sie in MS Teams in der Menüleiste

das Icon „Chat“ aus und schreiben Ihre Frage

in das sich öffnende Fenster.

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 3',41,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":3,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','63f05877a2516eebb312442f7a8ff09bf759e26fb916602be8f7bc7008ba3d93');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1b063cd3cc2d82130c3950ef','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',3,'Seite 4','DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 4',13,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":4,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','70307877b52e89b153c6f937e078fe50229deff42a19413b9acc5a4d8b470571');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d419e1e5cd3769d1430e4417','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',4,'Seite 5','(1) Anmeldung (4) Storno (6) Bestellung 20h-Zug

EVU 20h-Zug Originalzug Auswahl 20h-Antrag-ID

im Nachlassfeld

20h-Zug-Tool pathOS pathOS

(2) Prüfung des (3) Vergabe 20h- (5) Storno (7) OTN Vergabe* (8) Zug (9) Prüfung d. (10) Abrechnung*

DB InfraGO Antrags Antrag-ID* bearbeiten konstruieren Verspätungsangaben

20h-Zug-Tool 20h-Zug-Tool

20h-Zug-Tool

Legende

Prozessschritte Anwendung/Tool * Vollautomatisierte Prozesse

DB InfraGO AG | Informationsveranstaltung Vertiefung 20h-Zug | 15.07.2026 5',61,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":5,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','3b79de5bea0fb19c548f1bc176f17423b1767e4f9f4506ead0e797db94398198');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e502ebe88da113e206e6a403','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',5,'Seite 6','(1) Das EVU meldet den Bedarf einer neuen Zugtrasse aufgrund einer Verspätung von mehr als 20 Stunden gemäß INB

6.3.3.4.2 im Anmeldeformular unter https://20hzug.dbinfrago.com/ an.

(2) Die DB InfraGO prüft die sachliche Richtigkeit der Angaben im Formular hinsichtlich Verspätungsort und -ursache.

a. Wenn die Angaben unplausibel sind, wird der Antrag abgelehnt. Das EVU erhält eine E-Mail mit

entsprechender Begründung. Der Prozess endet an dieser Stelle.

b. Wenn die Angaben plausibel sind, wird der Antrag bestätigt und (3) eine 20h-Antrag-ID vom System erzeugt.

Das EVU erhält eine E-Mail mit der 20h-Antrag-ID.

(4) Das EVU storniert den Originalzug.

Sofern das EVU den Identifier des Originalzugs wieder benutzen möchte, muss auf die Bearbeitung

des Stornos gewartet werden. Andernfalls kann (4) und (6) direkt nacheinander erfolgen.

(5) Die DB InfraGO bearbeitet die Stornierung.

(6) Das EVU bestellt den 20h-Zug unter Angabe der 20h-Antrag-ID aus (3) im Feld Nachlassnummer.

(7) Die Neubestellung erhält automatisiert eine Zugnummer (das Konstrukt der 98er Zugnummer entfällt).

(8) Die DB InfraGO konstruiert den 20h-Zug.

(9) Die DB InfraGO prüft die Angaben zur Verspätungsursache und korrigiert diese ggf. Das EVU erhält über jede

Änderung eine Information per E-Mail.

(10)Original- und 20h-Zug werden unter Berücksichtigung der Verspätungsursache abgerechnet.

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 6',209,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":6,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','39dc4f59f9bc557f015961ae4de7f76f32b3459bb2232f37b6ee570f81f2c54f');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_75c9e67c4cd98c59a40be9f5','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',6,'Seite 7','− Durch die eigenständige Stornierung des Originalzuges durch die EVU wird hierfür zunächst immer ein

Stornierungsentgelt berechnet.

− Nach der finalen Prüfung der Verspätungsursache durch die Netzleitzentrale der DB InfraGO wird das

Stornierungsentgelt zurückgebucht, sofern das EVU nicht an der Verspätung schuld ist.

− Sollte sich die Prüfung der Verspätungsursache über den Monatswechsel strecken, kann es dazu kommen, dass die

Ausbuchung des Stornierungsentgeltes erst in der darauffolgenden Monatsabrechnung erfolgt.

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 7',82,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":7,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','f5c91f21c92fb3008219df23f01871bcb5a1104e6bb804cc85617e1bc7ed20f1');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_79019bdc86ef8d2eaec54f3d','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',7,'Seite 8','Wie wird die 20h-Antrag-ID vergeben?

>> Automatisiert durch das System, sofern die Prüfung des Antrags als plausibel bestätigt wurde.

Welches Format hat die 20h-Antrag-ID?

>> [Z][Jahr der Anmeldung][fünfstellige Nummer]

Beispiel: Z202612345

Wird es INB-Änderungen geben?

>> Nein, die INB selbst werden nicht geändert.

Findet eine Anpassung der SST-Beschreibung statt?

>> SST-Doku wurde ergänzt (Aufnahme Ausprägung 20h-Zug bei VerkehrsArtKundeZusatz). Die Veröffentlichung Anlage 1

am 11.6. als Version 4.6.3.1 wurde als KI am 11.6. sowie im TTT-Dialog am 24.6. kommuniziert.

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 8',91,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":8,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','f0a976457f45733c937205d5524f5682ecc78b46ba16c72b3fbf5f38a06f1356');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_46e6e12885a62dd113545d95','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',8,'Seite 9','DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 9',13,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":9,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','1a1427be8f5b3c1fc5e4166d23d83eff0f9148fb4121195daba492d643929bc4');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3d7b1e07023c7b88d7902f56','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',9,'Seite 10','LINK LOGIN

‒ Heutiger Direktlink ‒ Login-Daten des Infraportals

(https://20hzug.dbinfrago.com/) ‒ Neue Rolle „Rechnungsbahnhof – Anmeldung 20hfunktioniert weiterhin Züge“

‒ Zusätzlicher Direktlink im Infraportal führt ‒ Die Freischaltung der E-Mail-Adressen durch die

automatisch in den Rechnungsbahnhof Kundenberatung entfällt damit zukünftig.

‒ Hier steht zusätzlich neu auch eine Übersicht

aller 20h-Zug-Anmeldungen zur Verfügung

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 10',65,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":10,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','624946709c74a43578fac2d9689a96e2d1da429acd522031cc7ad5258b2757cd');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ddb27af43f64e4e87ecbd654','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',10,'Seite 11','ReferenceTrainID*

Postfach (erhält zusätzlich die E-Mails mit der Eingangsbestätigung und der 20h-Antrag-ID)

Wird vorbefüllt

Checkbox mit Bestätigung: 20h-Zug darf in Konfiguration nicht geändert werden.

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 11',37,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":11,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','68b038c1c5c135ed9a95e6d5ff6a4820469154a60bb9ca5489cc31bbbcb45089');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7d5bb8ad4b2cb4d900947e6c','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',11,'Seite 12','DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 12',13,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":12,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','84c2110d16f118467222b60a0f902683df0d7ca11f5bf895c0d16e07deab4115');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_6a219ad4d7f5ed4ebecfd1d2','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',12,'Seite 13','DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 13',13,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":13,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','df7d668c388c8af01eb67a1a89f2916fccbef7bf59f6d77573cd4db46ded074e');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_339389186e9416a3f278e45b','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',13,'Seite 14','DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 14',13,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":14,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','50ee6eee0c429590f1361154a7d76d3711361e4fb1daf3244af27f8fe8ee8cc5');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7cc2f29452b4a495d9746465','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',14,'Seite 15','DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 15',13,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":15,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','a0409d0daa25f8479c16b5eec03dab3a75e5dd41a1bd4627f6fd249b8da8af72');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4ddd4bb72b7249f454a04326','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',15,'Seite 16','Bitte stornieren Sie den Zug ab

der verfügbaren Betriebsstelle,

die zuletzt durchfahren wurde.

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 16',26,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":16,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','658e9727d0bf6d7c70b33ac76d9de5fc476f58c8842078e1aa5126d54ba2d668');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_354f36920c42ddcf4ca68793','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',16,'Seite 17','Bitte geben Sie in dem Feld

Stornierungsgrund an, bis zu

welcher Betriebsstelle genau der

Originalzug tatsächlich gefahren

ist.

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 17',31,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":17,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','1b4ff9227edad01a93e51d43729fe1b7d29d617b134448a2478d3d2a1376a1e2');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d2b3103e241dd344e86e89c7','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',17,'Seite 18','DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 18',13,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":18,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','27e674d77bc4492e39dcd0e950eb901a75354c495d29fb85296c4065dddc5bd4');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a6663ac5dd03761b6fe1133f','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',18,'Seite 19','Bitte geben Sie in dem „Freetextfield“ an, bis zu welcher Betriebsstelle der Originalzug tatsächlich gefahren ist.

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 19',29,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":19,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','2fc7af895ecc2521ccf4d5ea9b6ea64ec4091932c5926459e375efb552c38474');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_78511445743d4a054a9453f7','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',19,'Seite 20','Sind in einer PDM ALLE Laufwegpunkte enthalten, so dass eine 20h-Teilstornierung wirklich ab jedem LWP

technisch möglich ist? Heutzutage sind in einem TPN-Datensatz ja nicht alle LWP enthalten, so dass Teilstornos nur

eingeschränkt möglich sind.

>> Nein, es sind nicht alle Laufwegspunkte enthalten.

Bitte wählen Sie bei der Stornierung jene verfügbare Betriebsstelle aus, die zuletzt durchfahren wurde und

geben Sie in dem Stornierungsgrund die zuletzt gefahrene Betriebsstelle an.

Kann auch eine Änderungsbestellung anstatt einer Stornierung eingereicht werden?

>> Nein, Änderungsbestellungen in die Vergangenheit sind nicht erlaubt.

Eine Änderungsbestellung würde zu einer Splittung der PathDetailsMessage führen, da wir keine Änderung der OTN

innerhalb einer PDM durchführen dürften.

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 20',119,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":20,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','30031501f373206e35eae311fb9d72dc3c578f59bf9cb0841216a8e3e395339b');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ad4c792bf9c56e0715a08fc9','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',20,'Seite 21','DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 21',13,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":21,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','60ad5d613598534cffb26df64be1916fa56c6782aced182e3f061af6036a205f');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_877934ddbd2998026f87fe24','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',21,'Seite 22','‒ Auswählen von VerkehrsArtKundeZusatz „20h-Zug“

schaltet das Feld Nachlassnummer frei.

‒ Angabe der Antrags-ID im Feld Nachlassnummer

(Produktausprägungen/Sonstige Angaben) ist

zwingend

‒ Jede ID ist nur einmalig verwendbar

‒ Berücksichtigung in der Abrechnung kann nur

gewährleistet werden, wenn beide Merkmale korrekt

befüllt sind

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 22',56,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":22,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','cfe039742c5f425930f009ca48c721e4b4b3e237f7ec44b6e2323bbf7d025aa3');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0ee9c9ec23b18b92b9691325','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',22,'Seite 23','‒ Es muss eine Trassenerstbestellung aus dem GelV über die SST ausgelöst werden

‒ Das Feld rabattNr darf nur dann mit einer 20h-Antrag-ID befüllt werden, wenn in

verkehrsArtKundeZusatz „20h-Zug“ ausgewählt wurde

‒ verkehrsArtKundeZusatz „20h-Zug“ ohne Angabe einer 20h-Antrag-ID führt zur Abrechnung

einer Regeltrasse

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 23',56,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":23,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','574161ed41d2bd2fe9473c8d15faad7d7ee6a9f07ebf652d3eb9d4020404981f');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_28da99700be1799106aea269','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',23,'Seite 24','Wo muss die 20h-Antrag-ID hinterlegt werden?

>> Bestellportal: Feld „Nachlassnummer“

Schnittstelle: NSP „rabattNr“

Welche Felder müssen zur Kennung als 20h-Zug mitgegeben werden?

> verkehrsArtKundeZusatz > Auswahl „20h-Zug“

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 24',40,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":24,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','f4fc615fff02035720ce039b7c4a58cc53f3a8403862bfbc38a99861eea3b15c');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_22e6247e8a6428d1f6189b73','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',24,'Seite 25','DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 25',13,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":25,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','7328c5702038142f2da77575c58fc47dc7534df33fc2c551e68058df701daac9');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ff7bfb99712c3197155c0d82','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',25,'Seite 26','Zeit für Ihre Fragen!

Gerne beantworten wir Ihnen

Ihre Fragen direkt im Termin.

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 26',26,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":26,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','4fb2a9f4f066a2fad92fff074a6a971b196cf4953800f42ed7b3a0c84c8b44a0');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1e3223cb616ea35ad438e4ea','wiki/sources/infoveranstaltung-vertiefung-20h-zug-15-juli-2026-terminunterlage-data.md',26,'Seite 27','Ab welcher Betriebsstelle soll die Neubestellung angelegt werden?

>> Bitte bestellen Sie den neuen Zug ab der Betriebsstelle, an welcher der Originalzug tatsächlich stehengeblieben ist.

Warum muss Neubestellung und Stornierung durch das EVU erfolgen?

>> Die Stornierung muss erfolgen, damit die für den Tag verwendete ReferenceTrainID für die Wiederverwendung des

stehengebliebenen Zuges freigegeben werden kann. Die Neubestellung muss erfolgen, da sich durch die veränderte Zeit

auch die EVU-eigenen Rahmenbedingungen verändert haben können, die wir als Infrastrukturbetreiber nicht wissen

können. Bsp: Was ist die neue gewünschte Abfahrt? Benötigen Sie unterwegs noch Halte für einen Tf-Wechsel oder

ähnliches? Darüber hinaus müssen Sie sicherstellen, dass die in der Bestellung verwendete ReferenceTrainID für den Tag

frei ist.

Zusätzlich gab es Feedback aus dem Markt, dass die Lösung sicher stellen muss, dass die IT-Systeme der EVU aktuell

gehalten werden sollen. Dem trägt die aktuelle Lösung ebenfalls Rechnung.

DB InfraGO AG | TTT-Vertiefungstermin Umgang mit großen Verspätungen („20h-Züge“) | 15.07.2026 27',155,'{"canonical_url":null,"normalized_sha256":"0f6928e4a459d201fd1f23fa366e755f76468bf60a08dabaf10e26be37ea7aa8","page":27,"source_id":"src_b1dc4ddce9e5b5a345e6","source_sha256":"20848958c0b6e9f3ebfd74418fcaa3031f0095f16c8e9c4ee2900eca13bf4971","source_version_id":"sv_20848958c0b6e9f3ebfd7441"}','dea7182f610db36bbe6c5c8553c3628f79b676dfed0adca23ad06f2b59fc0ce7');

--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_1e82f73ce6a5ce5ccce9','file','Internationale Trassenanmeldung über das PCS - \"Path Coordination System\','https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/path-coordination-system-11249694','de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;

--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_a96e68d9b5a30593484c1ee0','src_1e82f73ce6a5ce5ccce9','6dba466a03d1ceb021c9954b4288a73fd7299fb223e7eda5a3a92506e1588e9e','4039a05de1d6ac757d5456ce5e264aa30d6ba5ece223710efb81c7563d871082',1548,'text/markdown','Internationale Trassenanmeldung über das PCS - _Path Coordination System_.md','sources/normalized/bootstrap/internationale-trassenanmeldung-uber-das-pcs-path-coordination-system/sv_a96e68d9b5a30593484c1ee0.md','identity-markdown','1','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/path-coordination-system-11249694","contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"6dba466a03d1ceb021c9954b4288a73fd7299fb223e7eda5a3a92506e1588e9e","converter":{"name":"identity-markdown","profile":"bootstrap-markdown-v2","version":"1"},"final_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/path-coordination-system-11249694","import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_a96e68d9b5a30593484c1ee0.json","media_type":"text/markdown","normalized_repo_path":"sources/normalized/bootstrap/internationale-trassenanmeldung-uber-das-pcs-path-coordination-system/sv_a96e68d9b5a30593484c1ee0.md","normalized_sha256":"4039a05de1d6ac757d5456ce5e264aa30d6ba5ece223710efb81c7563d871082","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/path-coordination-system-11249694","original_filename":"Internationale Trassenanmeldung über das PCS - _Path Coordination System_.md","page_count":null,"raw_binary_committed":false,"requested_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/path-coordination-system-11249694","schema_version":2,"size_bytes":1548,"source_id":"src_1e82f73ce6a5ce5ccce9","source_sha256":"6dba466a03d1ceb021c9954b4288a73fd7299fb223e7eda5a3a92506e1588e9e","source_version_id":"sv_a96e68d9b5a30593484c1ee0","supersedes_source_version_id":null,"title":"Internationale Trassenanmeldung über das PCS - \\\"Path Coordination System\\","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;

--> statement-breakpoint
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
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4b7b8cc2b19255366b6cb2b3','wiki/sources/ril-402-0202a01-inb-2027-data.md',8,'Seite 5','konstruiert werden soll Höchstgeschwindigkeit des Zugs, z.B. auf

einem definierten Streckenabschnitt den

Wunsch nach harmonisiertem Fahren zu

dokumentieren.

Gültig ab: 13.12.2026',21,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":5,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','4984ef24221847bda410add453c3a46ad2159cdc5020e86c1ae8d57faf3fba9c');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_145378082296e8b24807bfa8','wiki/sources/ril-402-0202a01-inb-2027-data.md',9,'Seite 6','Bahnbetrieb Trassenmanagement

Trassenanmeldung 402.0202A01

Netzfahrplan Seite 6

Feld- Art Inhalt Erläuterung

Nr. M/O

(17) M Eingabe der Baureihe des Triebfahrzeugs bzw. Die Baureihenvariante berücksichtigt auch

Triebzugs bzw. der Triebwageneinheit schiebendes oder ziehendes Triebfahrzeug

ausschließlich in folgender Schreibweise (gem. bei Wendezügen.

UIC-Merkblatt 438-3) Durch die Angabe der Baureihenvariante

- Ländercode (2-stellig und Leerzeichen) bzw. Variantennummer entfällt bei

- Triebfahrzeugbaureihenbezeichnung (4-stellig) Triebzügen/Triebwageneinheiten die

- Bindestrich (ohne Leerzeichen davor und Angabe zur Anzahl der Mittel-/Steuerwagen

danach) bzw. integrierten Beiwagen.

- Variantennummer (dreistellig1 oder 2-stellig)

z.B: 80 6185-001

(17a) Angabe der Rolle der Bespannung:

Rolle 1: Zuglok an der Spitze des Zuges,

Rolle 2: Zuglok in der Mitte des Zuges

(Steuerwagen an der Zugspitze ist dann Pflicht),

Rolle 5: Zuglok am Ende des Zuges (Steuerwagen

an der Zugspitze ist dann Pflicht).,

(17b) Lfd. Nr. der Bespannung (ist bei Zuglok immer 1)

(18) M Eingabe der Baureihe des Triebfahrzeugs (Zuglok)

ausschließlich in folgender Schreibweise (gem.

UIC-Merkblatt 438-3):

- Ländercode (2-stellig und Leerzeichen)

- Triebfahrzeugbaureihenbezeichnung (4-stellig)

- Bindestrich (ohne Leerzeichen davor und

danach)

- Variantennummer (dreistellig)

z.B: 80 6185-001

(18a) Angabe der Rolle der Bespannung:

Rolle 1: Zuglok an der Spitze des Zuges

(18b) Lfd. Nr. der Bespannung (ist bei Zuglok immer 1)

Gültig ab: 13.12.2026',200,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":6,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','9cd872cd702ab3549a1abad490799437a0e0c731a8ea41f131600570269ce986');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1dfe80093570aa0aa0c59179','wiki/sources/ril-402-0202a01-inb-2027-data.md',10,'Seite 7','Bahnbetrieb Trassenmanagement

Trassenanmeldung 402.0202A01

Netzfahrplan Seite 7

Feld- Art Inhalt Erläuterung

Nr. M/O

(19) (M) zweites Triebfahrzeug (Zusatzlok oder weitere

Mittellok) in der Darstellungsweise des Feldes

(17), bzw. (18)

(19a) Angabe der Rolle der Bespannung:

Rolle 1: Zusätzliche Lok an der Spitze des Zuges

(als Vorspannlok oder Doppeltraktion)

Rolle 2: Zusätzliche Lok in der Mitte des Zuges

(Steuerwagen an der Zugspitze ist dann Pflicht),

Rolle 3: Gekuppelte Schiebelok,

Rolle 4: Ungekuppelte Schiebelok,

Rolle 5: Zusätzliche Lok am Ende des Zuges

(Steuerwagen an der Zugspitze ist dann Pflicht).,

(19b) Lfd. Nr. der Bespannung (ist 2 bei Rolle 1; ist 1

oder 2 bei Rolle 2, ist 2 bei Rolle 5, ist 1 bei Rollen

3 und 4).

(20) (M) Bei Zügen mit Steuerwagen ist die Die Position des Steuerwagens ergibt sich

Wendezugfähigkeit anzugeben. aus der angegebenen Rolle des Tfz: Rolle 1:

Steuerwagen am Zugende, Rollen 2 und 5:

Steuerwagen an der Zugspitze.

(21) (M) Baureihe der Schiebelok in der Darstellungsweise

des Feldes (19). Angabe, ob Schiebelok mit dem

Zug gekuppelt ist (ja/nein)

(22) M Gesamtlänge des Zuges in Metern. Die nach Ril

408 zulässigen maximalen Zuglängen dürfen nicht

überschritten werden. Bei Triebwagen/Triebzügen

bleibt das Feld frei.

(22a) (M) Länge des Wagenzuges bei lokbespannten Zügen

in Metern.

(22b) (M) Länge des Tfz in Metern mit einer

Nachkommastelle bei lokbespannten Zügen.

(23) M Gesamtmasse (Last) des Zuges in Tonnen.

(23a) (M) Masse des Wagenzuges bei lokbespannten Zügen

(23b) (M) Masse des Tfz bei lokbespannten Zügen

(24) M Bremsstellung, mit der die Trassen konstruiert Im Güterverkehr kann die Angabe

werden soll. lastabhängig doppelt sein, z.B. bis 1600 t

Bremsstellung P, über 1600 t Bremsstellung

G.',271,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":7,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','341723141f1a026061cc5e4bb501ded98a7180fa76d884f4f9626b829d102815');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0a6c09ad58976be12692c763','wiki/sources/ril-402-0202a01-inb-2027-data.md',11,'Seite 7','(25) M Vorhandenes Bremsvermögen des Zugs, das bei Bremsgewicht x 100

der Trassenkonstruktion berücksichtigt werden soll Eigengewicht

Gültig ab: 13.12.2026',20,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":7,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','2a42ad410c8e7dea7eec61f6b1c55960ad8ffbd07d20cb63337e980eb0eaab09');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b96cf16e91945dbd99b8d31c','wiki/sources/ril-402-0202a01-inb-2027-data.md',12,'Seite 8','Bahnbetrieb Trassenmanagement

Trassenanmeldung 402.0202A01

Netzfahrplan Seite 8

Feld- Art Inhalt Erläuterung

Nr. M/O

(26) (M) LZB (Linienzugbeeinflussung) bzw. PZB 90 Bitte geben Sie alle Zugsicherungssysteme

und/oder ETCS (European Train Control System) an, die im Fahrzeug vorhanden sind.

wird für die Zugfahrt genutzt

Bei ETCS ist die Angabe der konkreten

Ausprägung erforderlich

(27) (M) NBÜ = Notbremsüberbrückung

Angabe, dass die angemeldete Trasse die

Bedingungen der NBÜ-Pflicht erfüllt, sofern sie

über NBÜ-pflichtige Streckenabschnitte gem.

Infrastrukturregister angemeldet wird.

(28) M Die Zugfahrt wird auf Basis von Buchfahrplandaten Falls Buchfahrplandaten in elektronischer

aus einer Schnittstelle der DB InfraGO Form genutzt/abgerufen werden sollen, ist

durchgeführt (ja/nein) hier „ja“ anzugeben.

(29) (M) üFz = übergroße Fahrzeuge

Werden Bedingungen der EBO nicht eingehalten,

sind besondere Beförderungsbedingungen

notwendig und die Technischen

Netzzugangsbedingungen (Anlage 2.4.2. der

SNB) kommen zur Anwendung

(30) (M) BZA/Beförderungsanordnung: Werden Bedingungen der EBO nicht eingehalten, sind

besondere Beförderungsbedingungen notwendig.

Hier kommt Ziffer 4.3 der Ril 402.0202 zur

Anwendung.

(31) M Geben Sie hier bitte an, ob sich Doppel- Für den Einsatz von Doppelstockfahrzeuge im Wagenzug befinden (Ja/nein). stockfahrzeugen muss die vorgesehene

Strecke vorher geprüft und zugelassen

werden.

(32) (M) Angabe der Streckenklasse. Wenn keine Angabe, Für die Streckenklasse der Trasse ist die

wird D4 angenommen. Streckenklasse des Fahrzeuges im Zug mit

der höchsten Streckenklassenbewertung

maßgebend.

(33) (M) Nei-Tech: Bei Triebwagen mit Neigetechnik

angeben, in welchem Streckenabschnitt (definiert',222,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":8,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','568f545784bfcd196063da605bdcf5247e6d7b377df1b1149a5fb353fceac6da');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4fce2570db4956b9ddd73891','wiki/sources/ril-402-0202a01-inb-2027-data.md',13,'Seite 8','in der Ortszeile) die Neigetechnik aktiv ist.

(33a) Überhöhungsfehlbetrag

(34) M Definierte Überschreitungen des Lichtraumprofils Falls KV ja, geben Sie bitte das KV-Profil in

nach EBO sind auf festgelegten Strecken zulässig. Feld (34) an.

Es ist immer anzugeben, ob der Zug KV befördert,

oder nicht (nichtzutreffendes streichen).

Gültig ab: 13.12.2026',50,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":8,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','be339bf072e3a3a2427f42e4c5590d9acf73a5800a9c69d7e4fa201d9f5b90bf');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2d23e117cf6a41fe2bfa7113','wiki/sources/ril-402-0202a01-inb-2027-data.md',14,'Seite 9','Bahnbetrieb Trassenmanagement

Trassenanmeldung 402.0202A01

Netzfahrplan Seite 9

Feld- Art Inhalt Erläuterung

Nr. M/O

(35) (M) Angabe der Streckenklasse. Wenn keine Angabe, Für die Streckenklasse ist das schwerste

wird D4 angenommen. Fahrzeug im Zug maßgebend.

Ggf. Bemerkungen zur Zugcharakteristik, die

durch die anderen Felder nicht dargestellt werden

können.

(36) (M) Besonderheiten der Zugcharakteristik, die Bei Unklarheiten beraten wir Sie gerne

aufgrund der geltenden Konstruktionsregeln zu ausführlich

berücksichtigen sind; einzutragen sind z.B.:

Lü Halten Fahrzeuge das Lichtraumprofil

gemäß EBO nicht ein, sind besondere

Beförderungsbedingungen notwendig

RID-Nummer Ganzzüge mit gefährlichen Gütern nach

GGVSEB (einschließlich dem RID) sowie

daraus aufkommende geschlossene

Leerwagenganzzüge mit ungereinigten

Kesselwagen und Tankcontainern

Außergewöhnliche Transporte/Fahrzeuge Hierfür ist die aktuell vorhandene Bza-

Nummer anzugeben

Einzelgrenzlastberechnung Liegt für die Trassenanmeldung eine Einzelgrenzlastberechnung vor, so ist hier die

entspr. Nummer (EGB-Nr.) einzutragen. Im

Trassenanmeldesystem können hier unter

„bearbeiten“ bis zu 10 EGB-Nummern

eingetragen werden.

(36a) M Angabe zur Lärmemission gem. Schienenlärm- Angabe der Lärmemission („laut“, leise“ oder

schutzgesetz „laut mit Befreiung“) wird der Einsatz von

mindestens einem Güterwagen in einem Zug

im Sinne des Schienenlärmschutzgesetzes

(SchlärmschG) mitgeteilt.

(37) M Ortsbezeichnung; Kürzel oder Bezeichnung der

Betriebsstelle gem. Abkürzungsverzeichnis Ril

100.

Angabe des möglichst genauen Laufwegs.

Bei Zügen, die teilweise im Netz eines anderen

Eisenbahninfrastrukturunternehmens verkehren,',201,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":9,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','66c41a50c8b8e9f99db6b8dcb52e3e0f40fa462f0c969bfde121a4c2d6318dda');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_49c70d43b7cf940a381906b3','wiki/sources/ril-402-0202a01-inb-2027-data.md',15,'Seite 9','ist der Grenzeingangs- und/oder Grenzausgangsbahnhof bzw. erste und/oder letzte konstruktionsrelevante Betriebsstelle der DB InfraGO AG

anzugeben.

(38) O gewünschtes Gleis

(39) (M) gewünschte Ankunft (bleibt bei Zuganfangsbahnhof frei, bzw. Bereitstellungszeit am

Bahnsteig in kursiver Schrift angeben)

(40) (M) Haltezeit, Genauigkeit in Zehntel-Minuten; z.B.

10,5 Minuten

Gültig ab: 13.12.2026',48,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":9,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','fbbeb4fb35fd697c19777bcf840e6a83697b606358010f2f704278a8136521c5');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_20fe14c2da8ce167de1d28b2','wiki/sources/ril-402-0202a01-inb-2027-data.md',16,'Seite 10','Bahnbetrieb Trassenmanagement

Trassenanmeldung 402.0202A01

Netzfahrplan Seite 10

Feld- Art Inhalt Erläuterung

Nr. M/O

(41) (M) Angabe zur Art des Haltes nachrichtlich:

Es gibt folgende Train Activitys: Halte aus Konstruktionsgründen werden

0001 Verkehrshalt vom Konstrukteur unter ‘Hinweise aus der

Konstruktion’ eingetragen

0002 Betriebshalt

0003 Servicehalt

0004 Systemwechselhalt

0005 Richtungswechsel (ohne Wechsel Tfz)

0006 Fahrtrichtungswechsel / Führerstandswechsel (mit Wechsel Tfz am anderen Ende und

Fahrerwechsel)

0007 Richtungswechsel (mit Nutzung des

gleichen Tfz am anderen Ende)

0008 Technische Wagenuntersuchung

0009 Wechsel der Spurweite

0010 Triebfahrzeug beistellen

0011 Triebfahrzeug absetzen

0012 Triebfahrzeugwechsel

0013 Wagen zusetzen

0014 Wagen absetzen

0015 Wagen ab- und zusetzen

0016 Zusammenführung von Zugteilen

0017 Trennung von Zugteilen

0018 Zwischenabstellung

0019 Behandlung Post und Expressgut

0020 Rangieren

0021 Rangierdienstliche Behandlung

0022 Abschlussdienst (am Zielbahnhof)

0023 Triebfahrzeugführerwechsel

0024 Lokführererholungshalt

0025 Personalwechsel

0026 Zoll- und Grenzabfertigung

0027 Andere Haltegründe (Verschiedenes)

0028 Nur zum Einsteigen

0029 Nur zum Aussteigen

0030 Bedarfshalt

0031 Ankunftszeit gleich Abfahrtzeit

0032 Abfahrt nach Aussteigen

0033 Kein Warten auf Anschlusszüge

0034 Bewässern

0035 Heizen

Gültig ab: 13.12.2026',167,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":10,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','8b965eccc9984df9a35d59f826eb60e83b796b39a73b4e9f38c8e83d0a587b5e');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4bce88f8f60aad2ed7c1948e','wiki/sources/ril-402-0202a01-inb-2027-data.md',17,'Seite 11','Bahnbetrieb Trassenmanagement

Trassenanmeldung 402.0202A01

Netzfahrplan Seite 11

Feld- Art Inhalt Erläuterung

Nr. M/O

0036 Reinigen / Desinfizieren

0037 Behandlung von Pflanzen oder lebenden

Tieren

0038 Behandlung verderblicher Güter

0039 Verwaltungsaufgaben (z. B. Zoll)

0040 Durchfahrt

0041 Fotohalt

0042 Zug wartet

0043 Zug fährt mit einem anderen Zug

0044 Übergang auf Zug

0045 Übergang von Zug

0046 Anschlussbeziehung zu einem anderen Zug

0047 Anschlussbeziehung von einem anderen

Zug

0048 OTN bei Übergang an einer Grenze

0049 Ladehalt für Akku-Triebfahrzeug

(42) (M) Personenverkehr: Ebenso Ankunftszeit

Abfahrtszeit (bleibt bei Zugendbahnhof frei, bzw. Unterscheidung nach frühester/spätester

Ende der Bahnsteigbelegungszeit in kursiver Ankunfts- oder Abfahrtszeit, künftig auch

Schrift) exakte gewünschte Fahrplanzeit möglich.

Güterverkehr:

Abfahrtszeit (bleibt bei Zugendbahnhof frei, bzw.

Ende der Gleisbelegungszeit in kursiver Schrift)

(43) (M) Personenverkehr: Konstruktionsvorgaben:

Vorgaben für die Konstruktion, z.B. Anschluss, A = Anschluss, K= Korrespondenz, ‘ A (Zug-

Korrespondenz Nr.) Gl ‘.. oder ‘gl.Bstg’ (= am gleichen

Bahnsteig)’

z.B. Neitech aktiv oder inaktiv, Wechsel von

geschoben auf gezogen, Änderungen der

Zugmasse:

Gültig ab: 13.12.2026',164,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":11,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','15eeca3a06ab4744cad8aa91c72a51f705890d8f2b88c1a7b0b5cfbca59c8e9c');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_fd678273b75a04c6320372d1','wiki/sources/ril-402-0202a01-inb-2027-data.md',18,'Seite 12','Bahnbetrieb Trassenmanagement

Trassenanmeldung 402.0202A01

Netzfahrplan Seite 12

Feld- Art Inhalt Erläuterung

Nr. M/O

(43) (M) Güterverkehr: Konstruktionsvorgaben:

Vorgaben für die Konstruktion, z.B. Wagen- W = Wagenübergang; W xxxxx (Zug-Nr) auf

übergang xxxxx (ZugNr)

Eintrag von ortsbezogenen Änderungen der sofern nicht unter Zugcharakteristik (Felder

Zugcharakteristik 16 – 26) bereits dargestellt

Eintrag ortsbezogener Konstruktionsspielräume Die Konstruktionsspielräume sind in Minuten

unter Nutzung der Vorzeichen +, - oder ± ,

des Bezugsortes und einem Hinweis auf

Abfahrt (ab) oder Ankunft (an) anzugeben;

AMA ab ± 15 bedeutet: Abfahrt in AMA

zwischen 15 Minuten vor und 15 Minuten

nach der in Spalte 29 angegebenen Zeit

möglich

Gültig ab: 13.12.2026',104,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13699806/d3c759db4e70759c8340d3b0394a7f7a/Ril-402-0202A01-INB-2027-data.pdf","normalized_sha256":"23ad98d621871006423cf15bef7eee4ad1a0ce9a7fbfa3247280ad6051bf085b","page":12,"source_id":"src_020acbee32d4681c346b","source_sha256":"7ed965dece88a853ca4665557c3facf4a6c825bb5ce3fee04de1970f6c8a2237","source_version_id":"sv_b97562496bb6bb640477c1e5"}','a4120919820e0b2706cdad849280321d108645f6dee429bb6a67e34d63467d75');

--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_a8fc6bb3e8b7db7a8077','file','Schnittstellenbeschreibung BauFplo API EVU Test 2 17 0 im json Format',NULL,'de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;

--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_4d9deecdfe44da586bc04290','src_a8fc6bb3e8b7db7a8077','beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8','1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4',96184,'application/json','Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-17-0-im-json-Format-data.json','sources/normalized/bootstrap/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data/sv_4d9deecdfe44da586bc04290.md','identity-structured-text','1','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","converter":{"name":"identity-structured-text","profile":"bootstrap-markdown-v2","version":"1"},"final_url":null,"import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_4d9deecdfe44da586bc04290.json","media_type":"application/json","normalized_repo_path":"sources/normalized/bootstrap/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data/sv_4d9deecdfe44da586bc04290.md","normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","origin_page_url":null,"original_filename":"Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-17-0-im-json-Format-data.json","page_count":null,"raw_binary_committed":false,"requested_url":null,"schema_version":2,"size_bytes":96184,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290","supersedes_source_version_id":null,"title":"Schnittstellenbeschreibung BauFplo API EVU Test 2 17 0 im json Format","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;

--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8','src_a8fc6bb3e8b7db7a8077','sv_4d9deecdfe44da586bc04290','{"content_duplicate_group":null,"original_filename":"Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-17-0-im-json-Format-data.json"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;

--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4','src_a8fc6bb3e8b7db7a8077',NULL,'{"content_duplicate_group":null,"original_filename":"Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-17-0-im-json-Format-data.json"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;

--> statement-breakpoint
UPDATE sources SET current_version_id='sv_4d9deecdfe44da586bc04290' WHERE id='src_a8fc6bb3e8b7db7a8077';

--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md','Schnittstellenbeschreibung BauFplo API EVU Test 2 17 0 im json Format','{ "openapi": "3.0.1", "info": { "title": "Baufplo API EVU", "description": "Die Baufplo API stellt Baufplo-Informationen für EVUs bereit", "contact": { "name": "Team BSV", "email": "[E-Mail-Adresse entfernt]" }, "license": { "name": "DB Inner Source Lizenz Version 1.0", "url": "https://foss.gitpages.tech.rz.db.de/40_Inner%20Source/20_lizenz.html" }, "version','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','07cc991f72287f71bee851ed996bfe20268005709835925605626f682b94efc9','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_version_id":"sv_4d9deecdfe44da586bc04290"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;

--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md';

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_74e4ca9e8161466f4d9c6ba5','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',0,'Inhalt','{

"openapi": "3.0.1",

"info":

{

"title": "Baufplo API EVU",

"description": "Die Baufplo API stellt Baufplo-Informationen für EVUs bereit",

"contact":

{

"name": "Team BSV",

"email": "[E-Mail-Adresse entfernt]"

},

"license":

{

"name": "DB Inner Source Lizenz Version 1.0",

"url": "https://foss.gitpages.tech.rz.db.de/40_Inner%20Source/20_lizenz.html"

},

"version": "2.17.0"

},

"servers":

[

{

"url": "/baufplo"

}

],

"paths":

{

"/v2/baufplos":

{

"get":

{

"tags":

[

"BSV – Baufahrplan Service Veröffentlichung API Operations"

],

"summary": "EVU: API-Endpunkt",

"description": "Liefert die von der Anwendung BSV veröffentlichten BauFplo gefiltert nach diversen Parametern.",

"operationId": "getBaufplos",

"parameters":

[

{

"name": "verkehrstagVon",

"in": "query",

"description": "Datum des ersten Verkehrstags zur Einschränkung der abgefragten BauFplo",

"required": true,

"schema":

{

"type": "string",

"format": "date",

"example": "2023-01-01"

}

},

{

"name": "verkehrstagBis",

"in": "query",

"description": "Datum des letzten Verkehrstags zur Einschränkung der abgefragten BauFplo",

"required": true,

"schema":

{

"type": "string",

"format": "date",

"example": "2023-12-31"

}

},

{

"name": "zugnummer",

"in": "query",

"description": "Zugnummer des betroffenen Zuges zur Einschränkung der abgefragten BauFplo",

"required": false,

"schema":

{

"type": "string",

"example": "18041"

}

},

{

"name": "startBetriebsstelle",

"in": "query",

"description": "Ril100 Kürzel des Abfahrtsbahnhofs zur Einschränkung der abgefragten BauFplo.\n\n_**Hinweis:** Im Falle eines Komplettausfalls eines Zuges bleibt dieses Attribut leer, damit entsprechende BauFplo mit ausgegeben werden._",

"required": false,

"schema":

{

"type": "string",',201,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','225234d0c2f3d202ac5ea114d8619e4ee126527890967e1f7ed418947cc08015');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_498c3a4ffff26e056bdd808a','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',1,'Inhalt','"example": "BEB"

}

},

{

"name": "zielBetriebsstelle",

"in": "query",

"description": "Ril100 Kürzel des Zielbahnhofs zur Einschränkung der abgefragten BauFplo.\n\n_**Hinweis:** Im Falle eines Komplettausfalls eines Zuges bleibt dieses Attribut leer, damit entsprechende BauFplo mit ausgegeben werden._",

"required": false,

"schema":

{

"type": "string",

"example": "DH"

}

},

{

"name": "page",

"in": "query",

"description": "Einschränkung der Nummer Rückgabeseite (Pageable.page), wenn eine große Menge an BauFplo abgefragt wird.",

"schema":

{

"type": "integer",

"example": 0

}

},

{

"name": "size",

"in": "query",

"description": "Einschränkung der Menge der BauFplo pro Rückgabeseite (Pageable.size), wenn eine große Menge an BauFplo abgefragt wird.",

"schema":

{

"type": "integer",

"example": 50

}

},

{

"name": "sort",

"in": "query",

"description": "Sortierung der Ergebnisse mit Parameterübergabe als Array (Pageable.sort). Eine Sortierung nach allen enthaltenen Parametern in dem JSON ist möglich. <br>Example<br>verkehrstag,desc<br>zugnummer,desc",

"schema":

{

"type": "string"

}

},

{

"name": "bizhubConsumerToken",

"in": "header",

"description": "Wird zur Autorisierung für den API-Zugriff verwendet und wird durch BSV auf Anfrage mitgeteilt.",

"schema":

{

"type": "string",

"example": "eyJhbGciOiJSUzI1NiJ9"

}

}

],

"responses":

{

"200":

{

"description": "OK",

"content":

{

"application/xml":

{

"schema":

{

"$ref": "#/components/schemas/PageBaufplo"

}

},

"application/json":

{

"schema":

{

"$ref": "#/components/schemas/PageBaufplo"

}

}

}

}

}

}

}

},

"components":

{

"schemas":

{

"Allgemeines":

{

"type": "object",

"description": "Beschreibt den Abschnitt Allgemeines",

"properties":

{

"textbausteine":

{',210,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','c8f4c2ade3553b76e8c59087a5a4f9847600e707bde0b8d6d4ef807c0446997a');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f1936e926cbda4ef184925a2','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',2,'Inhalt','"type": "array",

"description": "Beschreibt die Textbausteine",

"items":

{

"$ref": "#/components/schemas/Textbaustein"

},

"xml":

{

"name": "textbaustein"

}

}

}

},

"AlternativeZugcharakteristik":

{

"type": "object",

"description": "Beschreibt die Eigenschaften der Alternativen Zugcharakteristik",

"properties":

{

"id":

{

"type": "integer",

"format": "int32",

"description": "Eindeutige Identifikation der Zugcharakteristik innerhalb der BauFplo",

"example": 1

},

"triebfahrzeuge":

{

"type": "array",

"description": "Beschreibt die Eigenschaften des Triebfahrzeugs",

"items":

{

"$ref": "#/components/schemas/Triebfahrzeug"

},

"minItems": 1,

"xml":

{

"name": "triebfahrzeug"

}

},

"gesamtzuglaenge":

{

"type": "number",

"format": "double",

"description": "Gesamtlänge des Zuges",

"example": 98

},

"last":

{

"type": "number",

"format": "double",

"description": "Masse des Wagenzuges in Tonnen",

"example": 186

},

"mindestbremshundertstel":

{

"type": "integer",

"format": "int32",

"description": "Mindestbremshundertstel, die für die Durchführung der Zugfahrt benötigt werden",

"example": 130

},

"bremsstellung":

{

"type": "string",

"description": "Wertemenge für Bremsstellung",

"example": "R+Mg"

},

"hoechstgeschwindigkeit":

{

"type": "integer",

"format": "int32",

"description": "Höchstgeschwindigkeit des Zuges in km/h",

"example": 160

},

"zuggattung":

{

"$ref": "#/components/schemas/Zuggattung",

"description": "Produktbezeichnung der Zuggattung"

},

"befoerderungsanordnung":

{

"type": "string",

"description": "Angabe der Nummer einer gültigen Beförderungsanordnung, mit der die Durchführung bestimmter Zugfahrten mit besonderen technischen Eigenschaften vorab geprüft wurde und genehmigt wird",

"example": "M-1073"',183,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','0f6c95e3966deecff001fba5f7141006042d97f1c3637b9c9b55d1fc7094896c');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b574f63610f10f5896f13b9d','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',3,'Inhalt','},

"bzaNummern":

{

"type": "array",

"description": "Bza ist die Abkürzung für „Betrieb Zugförderung außergewöhnlich“.",

"example":

[

"A1-1301"

],

"items":

{

"type": "string",

"xml":

{

"name": "bzaNummer"

}

},

"xml":

{

"name": "bzaNummer"

}

},

"bzaBedingung":

{

"type": "string",

"description": "Hinweise zur besonderen Beachtung bei der Durchführung von Zugfahrten in Betriebsstellen oder Streckenabschnitten als Freitext, sofern die Bedingungen nicht in einer Dauer-Beförderungsanordnung hinterlegt sind.",

"example": "FdlBfBad Schandau erteilt Befehl 12 (zweisprachig) Grund 41:\nZug 45315 fährt von Decin-Prostredni Zleb bis Decin vychod von km 458,900 bis km 457,700 mit höchstens 30 km/h"

},

"imGrenzlastBereich":

{

"type": "boolean",

"description": "Angabe, ob die angegebenen Lasten bereits den Grenzlastbereich darstellen",

"example": true

},

"gueterzugOhneNennenswertenGrenzaufenthalt":

{

"type": "boolean",

"description": "Gibt an, dass für den Zug am Grenzübergang (in der Regel die Grenzbetriebsstelle) kein längerer Aufenthalt (z.B. wegen Zollabwicklung) erforderlich ist.",

"example": true

},

"befoerderungsbesonderheiten":

{

"type": "array",

"description": "Beschreibt die Eigenschaften der Beförderungsbesonderheiten",

"items":

{

"$ref": "#/components/schemas/Befoerderungsbesonderheit"

},

"xml":

{

"name": "befoerderungsbesonderheit"

}

},

"beladung":

{

"$ref": "#/components/schemas/Beladung",

"description": "Beschreibt die Eigenschaften der Beladung"

},

"zugverband":

{

"$ref": "#/components/schemas/Zugverband",

"description": "Beschreibt die Eigenschaften des Zugverbands"

},

"istRichtungswechselZugelassen":

{

"type": "boolean",',184,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','04ef5407a9ea31ba2b32bc951d8c42da62cfd1dd7bf97bdd64576097f96d7fbe');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1c732e63eedae8ca979cba1b','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',4,'Inhalt','"description": "Angabe, ob nicht bestellte, aber konstruktionsbedingte Richtungswechsel zugelassen sind",

"example": true

},

"keinRichtungswechselZugelassenGrund":

{

"type": "string",

"description": "Wenn Attribut „istRichtungswechselZugelassen“ = false, dann kann hier ein Grund für den nicht erlaubten Richtungswechsel angegeben werden",

"example": "Baumschnitt"

},

"besonderheit":

{

"type": "string",

"description": "Besonderheiten oder Hinweise aus der Fahrplankonstruktion für das Eisenbahnverkehrsunternehmen (EVU) bzw. den Triebfahrzeugführer (Tf) zur weiteren Beachtung.",

"example": "Bei LZB-Führung gilt die bestellte Höchstgeschwindigkeit, es gelten die Buchfahrplanseiten und Spalten 1, 3a, 3b. Bei abgeschalteter LZB greifen die Angaben gem. Fahrplan bzgl. Buchfahrplan."

}

},

"required":

[

"bremsstellung",

"hoechstgeschwindigkeit",

"mindestbremshundertstel",

"zuggattung",

"zugverband"

]

},

"BasisZugcharakteristik":

{

"type": "object",

"description": "Beschreibt die Eigenschaften der Zugcharakteristik",

"properties":

{

"id":

{

"type": "integer",

"format": "int32",

"description": "Eindeutige Identifikation der Zugcharakteristik innerhalb der BauFplo",

"example": 1

},

"alternativeZugcharakteristiken":

{

"type": "array",

"description": "Beschreibt die Eigenschaften der Alternativen Zugcharakteristik",

"items":

{

"$ref": "#/components/schemas/AlternativeZugcharakteristik"

},

"xml":

{

"name": "alternativeZugcharakteristik"

}

},

"triebfahrzeuge":

{

"type": "array",

"description": "Beschreibt die Eigenschaften des Triebfahrzeugs",

"items":

{

"$ref": "#/components/schemas/Triebfahrzeug"

},

"minItems": 1,

"xml":

{

"name": "triebfahrzeug"

}

},

"gesamtzuglaenge":

{

"type": "number",

"format": "double",',177,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','fa24cce8eac19e7c6ae59d0986f3cfe9f0f57a5aa1de1efe4915b0c3235b5d2d');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_021610eff0bce7e3e660349f','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',5,'Inhalt','"description": "Gesamtlänge des Zuges",

"example": 98

},

"last":

{

"type": "number",

"format": "double",

"description": "Masse des Wagenzuges in Tonnen",

"example": 186

},

"mindestbremshundertstel":

{

"type": "integer",

"format": "int32",

"description": "Mindestbremshundertstel, die für die Durchführung der Zugfahrt benötigt werden",

"example": 130

},

"bremsstellung":

{

"type": "string",

"description": "Wertemenge für Bremsstellung",

"example": "R+Mg"

},

"hoechstgeschwindigkeit":

{

"type": "integer",

"format": "int32",

"description": "Höchstgeschwindigkeit des Zuges in km/h",

"example": 160

},

"zuggattung":

{

"$ref": "#/components/schemas/Zuggattung",

"description": "Produktbezeichnung der Zuggattung"

},

"befoerderungsanordnung":

{

"type": "string",

"description": "Angabe der Nummer einer gültigen Beförderungsanordnung, mit der die Durchführung bestimmter Zugfahrten mit besonderen technischen Eigenschaften vorab geprüft wurde und genehmigt wird",

"example": "M-1073"

},

"bzaNummern":

{

"type": "array",

"description": "Bza ist die Abkürzung für „Betrieb Zugförderung außergewöhnlich“.",

"example":

[

"A1-1301"

],

"items":

{

"type": "string",

"xml":

{

"name": "bzaNummer"

}

},

"xml":

{

"name": "bzaNummer"

}

},

"imGrenzlastBereich":

{

"type": "boolean",

"description": "Angabe, ob die angegebenen Lasten bereits den Grenzlastbereich darstellen",

"example": true

},

"gueterzugOhneNennenswertenGrenzaufenthalt":

{

"type": "boolean",

"description": "Gibt an, dass für den Zug am Grenzübergang (in der Regel die Grenzbetriebsstelle) kein längerer Aufenthalt (z.B. wegen Zollabwicklung) erforderlich ist.",

"example": true

},

"befoerderungsbesonderheiten":

{

"type": "array",',189,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','894752a4b17a1c8778606a943335c4521f3c6ad27b30a2009d5fd9e6d12ecc14');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f7acba25f305077164d543e0','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',6,'Inhalt','"description": "Beschreibt die Eigenschaften der Beförderungsbesonderheiten",

"items":

{

"$ref": "#/components/schemas/Befoerderungsbesonderheit"

},

"xml":

{

"name": "befoerderungsbesonderheit"

}

},

"beladung":

{

"$ref": "#/components/schemas/Beladung",

"description": "Beschreibt die Eigenschaften der Beladung"

},

"zugverband":

{

"$ref": "#/components/schemas/Zugverband",

"description": "Beschreibt die Eigenschaften des Zugverbands"

},

"istRichtungswechselZugelassen":

{

"type": "boolean",

"description": "Angabe, ob nicht bestellte, aber konstruktionsbedingte Richtungswechsel zugelassen sind",

"example": true

},

"keinRichtungswechselZugelassenGrund":

{

"type": "string",

"description": "Wenn Attribut „istRichtungswechselZugelassen“ = false, dann kann hier ein Grund für den nicht erlaubten Richtungswechsel angegeben werden",

"example": "Baumschnitt"

},

"bzaBedingung":

{

"type": "string",

"description": "Hinweise zur besonderen Beachtung bei der Durchführung von Zugfahrten in Betriebsstellen oder Streckenabschnitten als Freitext, sofern die Bedingungen nicht in einer Dauer-Beförderungsanordnung hinterlegt sind.",

"example": "FdlBfBad Schandau erteilt Befehl 12 (zweisprachig) Grund 41:\nZug 45315 fährt von Decin-Prostredni Zleb bis Decin vychod von km 458,900 bis km 457,700 mit höchstens 30 km/h"

},

"besonderheit":

{

"type": "string",

"description": "Besonderheiten oder Hinweise aus der Fahrplankonstruktion für das Eisenbahnverkehrsunternehmen (EVU) bzw. den Triebfahrzeugführer (Tf) zur weiteren Beachtung.",

"example": "Bei LZB-Führung gilt die bestellte Höchstgeschwindigkeit, es gelten die Buchfahrplanseiten und Spalten 1, 3a, 3b. Bei abgeschalteter LZB greifen die Angaben gem. Fahrplan bzgl. Buchfahrplan."

}

},

"required":

[',190,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','d4b77a42ca60855ca34b9f705622fca61765c606397e1aa1b97b589274f86e8b');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d999974ac044529e4ae92877','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',7,'Inhalt','"bremsstellung",

"hoechstgeschwindigkeit",

"mindestbremshundertstel",

"zuggattung",

"zugverband"

]

},

"Baufplo":

{

"type": "object",

"properties":

{

"disclaimer":

{

"type": "string",

"description": "Wenn das Feld gefüllt ist, handelt es sich um Testdaten",

"example": "TESTDATEN - DARF NICHT PRODUKTIV GENUTZT WERDEN"

},

"zugnummer":

{

"type": "string",

"description": "Fachlicher Schlüssel des Zuges",

"example": "18039"

},

"verkehrstag":

{

"type": "string",

"format": "date",

"description": "Verkehrstag des Zuges",

"example": "2023-01-31"

},

"abfahrtstag":

{

"type": "string",

"format": "date",

"description": "Abfahrtstag des Zuges",

"example": "2023-01-31"

},

"ankunftstag":

{

"type": "string",

"format": "date",

"description": "Ankunftstag des Zuges",

"example": "2023-02-01"

},

"fploVersion":

{

"type": "integer",

"format": "int32",

"description": "Version der Baufplo",

"example": 1

},

"vorgaenger":

{

"$ref": "#/components/schemas/Vorgaenger",

"description": "Zuvor veröffentlichte Baufplo"

},

"veroeffentlichungsart":

{

"type": "string",

"description": "Definiert, ob es sich um eine Erstveröffentlichung, einen Nachtrag oder eine Rücknahme handelt",

"enum":

[

"ERSTVEROEFFENTLICHUNG",

"NACHTRAG",

"RUECKNAHME"

],

"example": "ERSTVEROEFFENTLICHUNG"

},

"veroeffentlichung":

{

"type": "string",

"format": "date",

"description": "Tag der Veröffentlichung",

"example": "2023-01-10"

},

"regionenabfolge":

{

"type": "array",

"description": "Abfolge der Regionen, die der Zug verkehrt",

"example":

[

"MITTE",

"SUEDWEST",

"MITTE"

],

"items":

{

"type": "string",

"enum":

[

"OST",

"NORD",

"WEST",

"SUEDOST",

"MITTE",

"SUEDWEST",

"SUED"

]

},

"minItems": 1

},

"freigaben":

{

"type": "array",',190,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','45129f47c0f44a27b906c7642458777a266e917bcc758f08c68bc15d4d486a5c');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0cd1d397da7eba36f476a828','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',8,'Inhalt','"description": "Region und Kontaktdaten der Freigebenden der BauFplo",

"items":

{

"$ref": "#/components/schemas/Freigabe"

},

"maxItems": 7,

"minItems": 1,

"uniqueItems": true,

"xml":

{

"name": "freigabe"

}

},

"rahmendaten":

{

"$ref": "#/components/schemas/Rahmendaten"

},

"baumassnahmen":

{

"type": "array",

"deprecated": true,

"description": "Beschreibt den Abschnitt der Bauvorgänge\n\n_**Hinweis:** Das Attribut \"baumassnahmen\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._",

"items":

{

"$ref": "#/components/schemas/Baumassnahme"

},

"xml":

{

"name": "baumassnahme"

}

},

"allgemeines":

{

"$ref": "#/components/schemas/Allgemeines"

},

"fahrplan":

{

"$ref": "#/components/schemas/Fahrplan"

},

"ergaenzungen":

{

"type": "array",

"items":

{

"$ref": "#/components/schemas/Ergaenzung"

},

"xml":

{

"name": "ergaenzung"

}

},

"konzeptSchaetzung":

{

"type": "boolean",

"description": "Angabe für Konzeptschätzung",

"example": true

},

"qualifizierteSchaetzung":

{

"type": "boolean",

"description": "Angabe für qualifizierte Schätzung",

"example": true

}

},

"required":

[

"abfahrtstag",

"allgemeines",

"ankunftstag",

"fahrplan",

"fploVersion",

"rahmendaten",

"verkehrstag",

"zugnummer"

]

},

"Baumassnahme":

{

"type": "object",

"deprecated": true,

"description": "Beschreibt den Abschnitt der Bauvorgänge\n\n_**Hinweis:** Das Attribut \"Baumassnahme\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._",

"properties":

{

"nummer":

{

"type": "string",

"deprecated": true,',172,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','9fd8ced853b68c0a568ce684d666b371048dd0faeb149ffb8320a3d6136561f1');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d32c2a144c17da7402f8a8a3','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',9,'Inhalt','"description": "Vorgangs-Nr des betrachteten Bauvorgangs\n\n_**Hinweis:** Das Attribut \"nummer\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._",

"example": "52345"

},

"zeitraum":

{

"$ref": "#/components/schemas/Zeitraum",

"deprecated": true,

"description": "Beschreibt den Zeitraum des Bauvorgangs\n\n_**Hinweis:** Das Attribut \"zeitraum\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._",

"example":

{

"start": "2023-01-01",

"ende": "2023-01-15"

}

},

"artDerArbeiten":

{

"type": "array",

"deprecated": true,

"description": "Beschreibung der Arbeiten, die in diesem Bauvorgang durchgeführt werden\n\n_**Hinweis:** Das Attribut \"artDerArbeiten\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._",

"example":

[

"Brückeneinschub"

],

"items":

{

"type": "string",

"deprecated": true,

"xml":

{

"name": "artDerArbeit"

}

},

"xml":

{

"name": "artDerArbeit"

}

}

},

"required":

[

"nummer",

"zeitraum"

]

},

"Befoerderungsbesonderheit":

{

"type": "object",

"description": "Beschreibt die Beförderungsbesonderheiten",

"properties":

{

"schluessel":

{

"type": "string",

"description": "Schluessel der Beförderungsbesonderheit",

"example": "AK"

},

"text":

{

"type": "string",

"description": "Wert der Beförderungsbesonderheit",

"example": "automatische Kupplung"

}

}

},

"Beladung":

{

"type": "object",

"properties":

{

"lueLeitziffer":

{

"type": "string",

"description": "Für die Durchführung von Lü-Sendungen mit einheitlichen Umrissen werden Dauerl-Lü-Anordnungen-E (DLA-E) genutzt.",

"example": "A"

},

"ladegut":

{

"type": "string",

"description": "Angaben zum Ladegut im Zug",',201,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','cd74d4b4402ccab4d6248a8714085c961ffd008158626b4a6fceb88f81776a9b');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_06f1065d972b6035cd1c38da','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',10,'Inhalt','"example": "diverse Gefahrgüter"

},

"gefahrgueter":

{

"type": "array",

"description": "Beschreibt die Eigenschaften des Gefahrguts",

"items":

{

"$ref": "#/components/schemas/Gefahrgut"

},

"xml":

{

"name": "gefahrgut"

}

}

}

},

"Betriebsname":

{

"type": "object",

"properties":

{

"bezeichnung":

{

"type": "string",

"description": "Betrieblicher Name zu einem Gleis oder einer Strecke"

},

"position":

{

"type": "string",

"description": "Kennzeichnet die Position des angegebenen Betriebsnamen. gueltigAb: der Startpunkt zum Betriebsnamen liegt an selber Kilometrierung wie die Betriebsstelle. gueltigNach: der Startpunkt zum Betriebsnamen liegt in Fahrtrichtung hinter der Betriebsstelle."

}

}

},

"Betriebsstelle":

{

"type": "object",

"description": "Betriebsstelle eines Zuglaufs",

"properties":

{

"ril100":

{

"type": "string",

"description": "RIL 100-Code der Betriebsstelle (ds100-Code)",

"example": "BEB"

},

"name":

{

"type": "string",

"description": "Kurzname der Betriebsstelle",

"example": "Elsterw-Biehla"

}

},

"required":

[

"name",

"ril100"

]

},

"Buchfahrplanverweis":

{

"allOf":

[

{

"$ref": "#/components/schemas/Verweis"

},

{

"type": "object",

"properties":

{

"heftnummer":

{

"type": "string",

"description": "Heftnummer des zugehörigen Ersatzfahrplanheftverweises",

"example": "4997"

},

"seite":

{

"type": "integer",

"format": "int32",

"description": "Seite des zugehörigen Ersatzfahrplanheftverweises",

"example": 362

},

"geschwindigkeitsbezeichnung":

{

"type": "string",

"description": "Geschwindigkeitsbezeichnung des zugehörigen Verweises",

"example": "C"

},

"mbr":

{

"type": "integer",

"format": "int32",

"description": "Mindesbremshundertstel des zugehörigen Verweises",

"example": 144

},',190,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','b0c37eca346c1672023cba59ae30ed2fa73d4e79f7b1e19471556e6b43e2b448');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_dcfda510bdb7dff21d5d8f6c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',11,'Inhalt','"betriebsname":

{

"type": "string",

"deprecated": true

}

}

}

],

"description": "Beschreibt die Eigenschaften der Verweise"

},

"Ebulaverweis":

{

"allOf":

[

{

"$ref": "#/components/schemas/Verweis"

}

]

},

"Ergaenzung":

{

"type": "object",

"additionalProperties": false,

"description": "Dieser Abschnitt enthält Ergänzungen zu der BauFplo"

},

"Fahrplan":

{

"type": "object",

"description": "Beschreibt den Abschnitt Fahrplan",

"properties":

{

"zugcharakteristik":

{

"$ref": "#/components/schemas/BasisZugcharakteristik"

},

"laufwegaenderungen":

{

"type": "array",

"description": "Beschreibt den Abschnitt Laufwegänderungen",

"items":

{

"$ref": "#/components/schemas/Laufwegaenderung"

},

"xml":

{

"name": "laufwegaenderung"

}

},

"laufwegregelungsarten":

{

"type": "array",

"description": "Beschreibt den Abschnitt Laufwegregelungsart",

"items":

{

"oneOf":

[

{

"$ref": "#/components/schemas/Laufwegregelungsart"

},

{

"$ref": "#/components/schemas/Umleitungregelungsart"

}

],

"xml":

{

"name": "laufwegregelungsart"

}

},

"xml":

{

"name": "laufwegregelungsart"

}

},

"besonderheiten":

{

"type": "array",

"description": "Besonderheiten oder Hinweise aus der Fahrplankonstruktion für das Eisenbahnverkehrsunternehmen (EVU) bzw. den Triebfahrzeugführer (Tf) zur weiteren Beachtung.",

"items":

{

"type": "string",

"xml":

{

"name": "besonderheit"

}

},

"xml":

{

"name": "besonderheit"

}

},

"laufweg":

{

"type": "array",

"description": "Beschreibt den Abschnitt Laufweg",

"items":

{

"$ref": "#/components/schemas/Laufwegpunkt"

},

"minItems": 2

},

"keineangaben":

{

"type": "array",

"description": "Enthält Informationen zu Teilen des Laufwegs, bei denen keine Fahrplanangaben erfolgen",

"items":

{',185,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','ddaae04da2fa6b8d704b9c3229c3596a7789732af4f3aba5a663e4b27b60cc13');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_082bd4c0e348023f5fd58b8b','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',12,'Inhalt','"$ref": "#/components/schemas/KeineAngabe"

},

"xml":

{

"name": "keineangabe"

}

}

}

},

"Freigabe":

{

"type": "object",

"description": "Region und Kontaktdaten der Freigebenden der BauFplo",

"properties":

{

"region":

{

"type": "string",

"description": "Region des Freigebenden der Baufplo",

"enum":

[

"OST",

"NORD",

"WEST",

"SUEDOST",

"MITTE",

"SUEDWEST",

"SUED"

]

},

"unterzeichner":

{

"$ref": "#/components/schemas/Unterzeichner",

"description": "Beschreibt die Eigenschaften des Freigebenden der Baufplo"

}

},

"required":

[

"region",

"unterzeichner"

],

"xml":

{

"name": "freigabe"

}

},

"Gefahrgut":

{

"type": "object",

"properties":

{

"ridKlasse":

{

"type": "string",

"description": "RID-Klasse des Gefahrenguts",

"example": "3"

},

"ggveNummer":

{

"type": "string",

"description": "Gefahrengut-Nummer",

"example": "30"

},

"ggveUnternummer":

{

"type": "string",

"description": "Gefahrengut-Unternummer",

"example": "23"

},

"verpackungsgruppe":

{

"type": "string",

"description": "Gefahrengut-Verpackungsgruppe",

"example": "I"

}

}

},

"Hinweis":

{

"type": "object",

"properties":

{

"betreff":

{

"type": "string",

"description": "Schlüssel des Hinweises oder der Regelung"

},

"text":

{

"type": "string",

"description": "Inhalt des Hinweises oder der Regelung"

}

}

},

"KeineAngabe":

{

"type": "object",

"description": "Enthält Informationen zu Teilen des Laufwegs, bei denen keine Fahrplanangaben erfolgen",

"properties":

{

"betriebsstelleStart":

{

"$ref": "#/components/schemas/Betriebsstelle",

"description": "Betriebsstelle, ab der die Information zur Laufwegsunterbrechung gilt"

},

"betriebsstelleEnde":

{

"$ref": "#/components/schemas/Betriebsstelle",',185,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','bdeb150d6bc652e179242480900378603501aefd83fd1f9883cc9c99ca91d764');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e98a4d91284c3c331d1eae13','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',13,'Inhalt','"description": "Betriebsstelle, bis zu der die Information zur Laufwegsunterbrechung gilt"

},

"einreihungNetzVon":

{

"type": "integer",

"format": "int32",

"description": "Laufende Nummer (Einreihung) des Startpunkts im Laufweg",

"example": 24

},

"einreihungNetzBis":

{

"type": "integer",

"format": "int32",

"description": "Laufende Nummer (Einreihung) des Endpunkts im Laufweg",

"example": 26

},

"art":

{

"type": "string",

"description": "Art der Laufwegsunterbrechung",

"example": "Fremdnetzfahrt"

},

"beschreibung":

{

"type": "string",

"description": "Beschreibung der Laufwegsunterbrechung",

"example": "Unterbrechung des Fahrplans durch externe Infrastruktur von A bis B"

}

},

"required":

[

"betriebsstelleEnde",

"betriebsstelleStart"

]

},

"Kunde":

{

"type": "object",

"properties":

{

"nummer":

{

"type": "string",

"description": "Kundennummer des bestellenden EVU",

"example": "B1259"

},

"name":

{

"type": "string",

"description": "Name des bestellenden EVU",

"example": "DB Regio NO Elbe-Elster"

}

},

"required":

[

"nummer"

]

},

"Laufwegaenderung":

{

"type": "object",

"description": "Beschreibt den Abschnitt Laufwegänderungen",

"properties":

{

"betriebsstelle":

{

"$ref": "#/components/schemas/Betriebsstelle",

"description": "Erste Bestriebsstelle, ab der die Charakteristik gilt"

},

"zugcharakteristik":

{

"$ref": "#/components/schemas/BasisZugcharakteristik",

"description": "Zugcharakteristik, die ab der zugehörigen Bestriebsstelle gilt"

}

},

"required":

[

"betriebsstelle"

]

},

"Laufwegpunkt":

{

"type": "object",

"description": "Detailinformation zum Laufweg",

"properties":

{

"id":

{

"type": "integer",

"format": "int32",

"description": "Laufende Nummer startend bei 1",

"example": 1

},',190,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','83b476daed5ced76656b7e476a7979c043457e109e0946df721821c89bef0eef');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0bd5d9a4a396cf40695466c8','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',14,'Inhalt','"betriebsstelle":

{

"$ref": "#/components/schemas/Betriebsstelle",

"description": "Beschreibt die Betriebsstelle"

},

"ausfallKennzeichen":

{

"type": "boolean",

"description": "Kennzeichnet, ob dieser Trassenlaufpunkt ausfällt",

"example": false

},

"istUmleitung":

{

"type": "boolean",

"description": "Kennzeichnet, ob dieser Trassenlaufpunkt Teil einer Umleitung ist",

"example": false

},

"ankunftzeit":

{

"type": "string",

"format": "date-time",

"deprecated": true,

"description": "Ankunftszeit bei dieser Betriebsstelle. Im Falle einer Durchfahrt oder bei der Startbetriebsstelle entfällt dieses Attribut.\n\n_**Hinweis:** Das Attribut \"ankunftzeit\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"ankunftuhrzeit\"._",

"example": "2025-03-12T22:05:00Z"

},

"ankunftuhrzeit":

{

"type": "string",

"description": "Ankunftszeit des Fahrplans (ohne Zeitumstellung) bei dieser Betriebsstelle. Im Falle einer Durchfahrt oder bei der Startbetriebsstelle entfällt dieses Attribut.\n\n_**Hinweis:** Das Attribut \"abfahrtzeit\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"abfahrtuhrzeit\"._",

"example": "22:05:00"

},

"ankunftDifferenz":

{

"type": "string",

"format": "duration",

"description": "Gibt an, welche zeitliche Differenz zum ursprünglichen Fahrplan besteht",

"example": "PT1H5M25S"

},

"abfahrtzeit":

{

"type": "string",

"format": "date-time",

"deprecated": true,

"description": "Abfahrtszeit bei dieser Betriebsstelle. Im Falle der Zielbetriebsstelle entfällt dieses Attribut",

"example": "2025-03-12T22:06:54Z"

},

"abfahrtuhrzeit":

{

"type": "string",',174,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','769dd51f0fab5bb4af3b8a8d7c0a693de806e4bc4e5cbd87d5f31ee7cca1a180');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0d8131f09bc72178d26907b0','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',15,'Inhalt','"description": "Abfahrtszeit des Fahrplans (ohne Zeitumstellung) bei dieser Betriebsstelle. Im Falle der Zielbetriebsstelle entfällt dieses Attribut",

"example": "22:05:00"

},

"abfahrtDifferenz":

{

"type": "string",

"format": "duration",

"description": "Gibt an, welche zeitliche Differenz zum ursprünglichen Fahrplan besteht",

"example": "PT1H5M25S"

},

"strecke":

{

"type": "integer",

"format": "int32",

"description": "Angabe der Streckennummer der bis zum nächsten Zugtrassenlaufpunkt konstruierten Strecke",

"example": 1733

},

"haltart":

{

"type": "string",

"description": "Art des Haltes H für Verkehrshalt , +TM für Betriebshalt, X für Bedarfshalt",

"example": "H"

},

"hatRichtungswechsel":

{

"type": "boolean",

"description": "Information darüber, ob an dieser Betriebsstelle ein Richtungswechsel vorliegt",

"example": true

},

"verweise":

{

"type": "array",

"description": "Beschreibt die Eigenschaften der Verweise",

"items":

{

"oneOf":

[

{

"$ref": "#/components/schemas/Buchfahrplanverweis"

},

{

"$ref": "#/components/schemas/Ebulaverweis"

}

],

"xml":

{

"name": "verweis"

}

},

"xml":

{

"name": "verweis"

}

},

"hinweise":

{

"type": "array",

"description": "Beschreibt die Eigenschaften der Hinweise",

"items":

{

"$ref": "#/components/schemas/Hinweis"

},

"xml":

{

"name": "hinweis"

}

},

"regelungen":

{

"type": "array",

"description": "Beschreibt die Eigenschaften der Regelungen",

"items":

{

"$ref": "#/components/schemas/Hinweis"

},

"xml":

{

"name": "regelung"

}

},

"betriebsnamen":

{

"type": "array",

"description": "Beschreibt die Eigenschaften der Betriebsnamen",

"items":

{

"$ref": "#/components/schemas/Betriebsname"

},

"xml":

{

"name": "betriebsname"

}

}

}

},

"Laufwegregelungsart":

{',198,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','bd4c78cadf4c048e644c65d5bae242bf13e78503751223e104a887d5e6543fb9');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d2c1f9939fc81f31901c6ea6','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',16,'Inhalt','"type": "object",

"description": "Beschreibt den Abschnitt Laufwegregelungsart",

"discriminator":

{

"propertyName": "regelungsart"

},

"properties":

{

"betriebsstelleStart":

{

"$ref": "#/components/schemas/Betriebsstelle",

"description": "Betriebsstelle, ab der die Regelung gilt"

},

"betriebsstelleEnde":

{

"$ref": "#/components/schemas/Betriebsstelle",

"description": "Betriebsstelle, bis zu der die Regelung gilt. Bei Entfall gilt die Regelung aus dem Feld \"betriebsstelleStart\" bis zum Laufwegsende"

},

"regelungsart":

{

"type": "string",

"description": "Die geltende Regelungsart"

}

},

"required":

[

"regelungsart"

]

},

"PageBaufplo":

{

"type": "object",

"properties":

{

"totalElements":

{

"type": "integer",

"format": "int64"

},

"totalPages":

{

"type": "integer",

"format": "int32"

},

"pageable":

{

"$ref": "#/components/schemas/PageableObject"

},

"sort":

{

"$ref": "#/components/schemas/SortObject"

},

"first":

{

"type": "boolean"

},

"last":

{

"type": "boolean"

},

"size":

{

"type": "integer",

"format": "int32"

},

"content":

{

"type": "array",

"items":

{

"$ref": "#/components/schemas/Baufplo"

}

},

"number":

{

"type": "integer",

"format": "int32"

},

"numberOfElements":

{

"type": "integer",

"format": "int32"

},

"empty":

{

"type": "boolean"

}

}

},

"PageableObject":

{

"type": "object",

"properties":

{

"paged":

{

"type": "boolean"

},

"pageNumber":

{

"type": "integer",

"format": "int32"

},

"pageSize":

{

"type": "integer",

"format": "int32"

},

"sort":

{

"$ref": "#/components/schemas/SortObject"

},

"offset":

{

"type": "integer",

"format": "int64"

},

"unpaged":

{

"type": "boolean"

}

}

},

"Rahmendaten":

{

"type": "object",',192,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','abf5b68f2c5e86c3e0d0b6ec5e17dfc97287f9b769ba272082a52d1c34090706');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d40dee1ee02d3bd17b52d098','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',17,'Inhalt','"description": "Der Abschnitt Rahmendaten gibt einen umfassenden Überblick über zentrale Informationen der BauFplo. In den Rahmendaten sind aggregierte Werte der BauFplo zusammengefasst.",

"properties":

{

"kunde":

{

"$ref": "#/components/schemas/Kunde",

"description": "Beschreibt die Eigenschaften des bestellenden EVU"

},

"zug":

{

"$ref": "#/components/schemas/Zug",

"description": "Beschreibt die Eigenschaften des Zuges"

},

"startBetriebsstelleRoute":

{

"$ref": "#/components/schemas/Betriebsstelle",

"description": "Erste Betriebsstelle der Gesamtzugroute (weicht von startBetriebsstelle ab, wenn der Zug im Fremdnetz beginnt)"

},

"zielBetriebsstelleRoute":

{

"$ref": "#/components/schemas/Betriebsstelle",

"description": "Letzte Betriebsstelle der Gesamtzugroute (weicht von zielBetriebsstelle ab, wenn der Zug im Fremdnetz endet)"

},

"startBetriebsstelle":

{

"$ref": "#/components/schemas/Betriebsstelle",

"description": "Erste Betriebsstelle des Zuglaufs"

},

"zielBetriebsstelle":

{

"$ref": "#/components/schemas/Betriebsstelle",

"description": "Letzte Betriebsstelle des Zuglaufs"

},

"bpolMeldepflichtig":

{

"type": "boolean",

"description": "Gibt an, ob die Zugtrasse an die Bundespolizei gemeldet werden muss",

"example": true

},

"zugcharakteristik":

{

"$ref": "#/components/schemas/RahmendatenZugcharakteristik",

"description": "Beschreibt die Eigenschaften der Zugcharakteristik"

},

"regelungen":

{

"$ref": "#/components/schemas/RahmendatenRegelungen"

}

},

"required":

[

"kunde",

"startBetriebsstelle",

"zielBetriebsstelle",

"zug",

"zugcharakteristik"

]

},

"RahmendatenBefoerderungsbesonderheiten":

{

"type": "object",

"description": "Beschreibt die Eigenschaften der Befoerderungsbesonderheiten",

"properties":

{',164,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','e0f3810168e3f34563de7f80bb1e32faf5ae16a4d2cbc213519ff13d1fe9a393');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ef8b3b83637e3e3dfd635105','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',18,'Inhalt','"radMeterlastbeschraenkungen":

{

"type": "array",

"description": "Beschreibt die Beförderungsbesonderheit Rad- Meterlastbeschränkung",

"example":

[

"D4",

"22,5"

],

"items":

{

"type": "string",

"xml":

{

"name": "radMeterlastbeschraenkung"

}

},

"xml":

{

"name": "radMeterlastbeschraenkung"

}

},

"niederflurwagen":

{

"type": "array",

"description": "Beschreibt die Beförderungsbesonderheit Niederflurwagen ",

"example":

[

"NT 70/396"

],

"items":

{

"type": "string",

"xml":

{

"name": "niederflurwagen"

}

}

},

"schwerlastwagen":

{

"type": "boolean",

"description": "Beschreibt die Beförderungsbesonderheit Schwerlastwagen",

"example": true

},

"automatischeKupplung":

{

"type": "boolean",

"description": "Beschreibt die Beförderungsbesonderheit Automatische Kupplung",

"example": true

},

"frontstellung":

{

"type": "boolean",

"description": "Beschreibt die Beförderungsbesonderheit Frontstellung",

"example": true

},

"laermzuege":

{

"type": "array",

"description": "Hinweis auf mindestestens einen eingestellten lauten Güterwagen in einen Güterzug.",

"example":

[

"LAUT",

"LAUTMB"

],

"items":

{

"type": "string",

"xml":

{

"name": "laermzug"

}

},

"xml":

{

"name": "laermzug"

}

},

"unNummern":

{

"type": "array",

"description": "Vierstellige Nummer des Gefahrenguts",

"example":

[

"2794",

"3990"

],

"items":

{

"type": "string",

"xml":

{

"name": "unNummer"

}

},

"xml":

{

"name": "unNummer"

}

},

"freieTexte":

{

"type": "array",

"description": "Beschreibt die Beförderungsbesonderheit Freitextfeld",

"items":

{

"type": "string",

"xml":

{

"name": "freierText"

}

},

"xml":

{

"name": "freierText"

}

},

"etcsTbvs":

{

"type": "array",',189,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','1a8f4fec51862407876d3d5f2f1491ade3e7fbff5c895773f1221ff46c0fa05a');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7a3fbfe1184242f12726ce82','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',19,'Inhalt','"description": "Beschreibt die Beförderungsbesonderheit ETCS TBV Nummer",

"items":

{

"type": "string",

"xml":

{

"name": "etcsTbv"

}

},

"xml":

{

"name": "etcsTbv"

}

}

}

},

"RahmendatenBeladung":

{

"type": "object",

"description": "Beschreibt die Eigenschaften der Beladung",

"properties":

{

"lueLeitziffern":

{

"type": "array",

"description": "Für die Durchführung von Lü-Sendungen mit einheitlichen Umrissen werden Dauerl-Lü-Anordnungen-E (DLA-E) genutzt.",

"example":

[

"A",

"B",

"C"

],

"items":

{

"type": "string",

"xml":

{

"name": "lueLeitziffer"

}

},

"xml":

{

"name": "lueLeitziffer"

}

},

"ladegueter":

{

"type": "array",

"description": "Angaben zum Ladegut im Zug",

"example":

[

"diverse Gefahrgüter"

],

"items":

{

"type": "string",

"xml":

{

"name": "ladegut"

}

},

"xml":

{

"name": "ladegut"

}

},

"gefahrgut":

{

"$ref": "#/components/schemas/RahmendatenGefahrgut"

}

}

},

"RahmendatenGefahrgut":

{

"type": "object",

"description": "Beschreibt die Eigenschaften des Gefahrguts",

"properties":

{

"ridKlassen":

{

"type": "array",

"description": "RID-Klasse des Gefahrenguts",

"example":

[

"2",

"3",

"4",

"5"

],

"items":

{

"type": "string",

"xml":

{

"name": "ridKlasse"

}

},

"xml":

{

"name": "ridKlasse"

}

},

"ggveNummern":

{

"type": "array",

"description": "Gefahrengut-Nummer",

"example":

[

"30",

"40"

],

"items":

{

"type": "string",

"xml":

{

"name": "ggveNummer"

}

},

"xml":

{

"name": "ggveNummer"

}

},

"ggveUnternummern":

{

"type": "array",

"description": "Gefahrengut-Unternummer",

"example":

[

"1268",

"1269"

],

"items":

{

"type": "string",

"xml":

{

"name": "ggveUnternummer"

}

},

"xml":

{

"name": "ggveUnternummer"

}

},

"verpackungsgruppen":

{',213,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','e5beefc28b729cedd3bbaead302fc4306e8c946f7be433311d60632e26c2a70c');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_830dbb68539bc0982fd42166','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',20,'Inhalt','"type": "array",

"description": "Gefahrengut-Verpackungsgruppe",

"example":

[

"I",

"II"

],

"items":

{

"type": "string",

"xml":

{

"name": "verpackungsgruppe"

}

},

"xml":

{

"name": "verpackungsgruppe"

}

}

}

},

"RahmendatenRegelungen":

{

"type": "object",

"description": "Beschreibt die Eigenschaften der Regelungen",

"properties":

{

"zugbegleitungen":

{

"type": "array",

"description": "Angabe für Zugbegleitung",

"example":

[

"Zub erforderlich"

],

"items":

{

"type": "string",

"xml":

{

"name": "zugbegleitung"

}

},

"xml":

{

"name": "zugbegleitung"

}

},

"notbremsueberbrueckung":

{

"type": "boolean",

"description": "Angabe, ob eine NBÜ erforderlich ist",

"example": true

}

}

},

"RahmendatenZugcharakteristik":

{

"type": "object",

"properties":

{

"befoerderungsanordnungen":

{

"type": "array",

"description": "Angabe der Nummer einer gültigen Beförderungsanordnung, mit der die Durchführung bestimmter Zugfahrten mit besonderen technischen Eigenschaften vorab geprüft wurde und genehmigt wird",

"example":

[

"1073",

"1008",

"1022",

"1172"

],

"items":

{

"type": "string",

"xml":

{

"name": "befoerderungsanordnung"

}

},

"xml":

{

"name": "befoerderungsanordnung"

}

},

"bzaNummern":

{

"type": "array",

"description": "Bza ist die Abkürzung für „Betrieb Zugförderung außergewöhnlich“.",

"example":

[

"A1-1301"

],

"items":

{

"type": "string",

"xml":

{

"name": "bzaNummer"

}

},

"xml":

{

"name": "bzaNummer"

}

},

"bzaBedingungen":

{

"type": "array",

"description": "Hinweise zur besonderen Beachtung bei der Durchführung von Zugfahrten in Betriebsstellen oder Streckenabschnitten als Freitext, sofern die Bedingungen nicht in einer Dauer-Beförderungsanordnung hinterlegt sind.",

"example":

[',204,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','0826c9e48f358a7df962eb73d5fd355b717f48a5582129fe1cc5087baf1915a8');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_6ff97bca67eb418f9c2e03fe','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',21,'Inhalt','"FdlBfBad Schandau erteilt Befehl 12 (zweisprachig) Grund 41:Zug 45315 fährt von Decin-Prostredni Zleb bis Decin vychod von km 458,900 bis km 457,700 mit höchstens 30 km/h"

],

"items":

{

"type": "string",

"xml":

{

"name": "bzaBedingung"

}

},

"xml":

{

"name": "bzaBedingung"

}

},

"imGrenzlastBereich":

{

"type": "boolean",

"description": "Angabe, ob die angegebenen Lasten bereits den Grenzlastbereich darstellen",

"example": true

},

"gueterzugOhneNennenswertenGrenzaufenthalt":

{

"type": "boolean",

"description": "Gibt an, dass für den Zug am Grenzübergang (in der Regel die Grenzbetriebsstelle) kein längerer Aufenthalt (z.B. wegen Zollabwicklung) erforderlich ist.",

"example": true

},

"istRichtungswechselZugelassen":

{

"type": "boolean",

"description": "Angabe, ob nicht bestellte, aber konstruktionsbedingte Richtungswechsel zugelassen sind",

"example": true

},

"keinRichtungswechselZugelassenGrund":

{

"type": "string",

"description": "Wenn Attribut „istRichtungswechselZugelassen“ = false, dann kann hier ein Grund für den nicht erlaubten Richtungswechsel angegeben werden",

"example": "Baumschnitt"

},

"leichterNahverkehrstriebwagen":

{

"type": "boolean",

"description": "Angabe, ob es sich um einen leichten Nahverkehrstriebwagen handelt.",

"example": true

},

"befoerderungsbesonderheiten":

{

"$ref": "#/components/schemas/RahmendatenBefoerderungsbesonderheiten",

"description": "Beschreibt die Eigenschaften der Befoerderungsbesonderheiten"

},

"beladung":

{

"$ref": "#/components/schemas/RahmendatenBeladung"

},

"zugverband":

{

"$ref": "#/components/schemas/RahmendatenZugverband"

}

},

"required":

[

"zugverband"

]

},

"RahmendatenZugverband":

{

"type": "object",',179,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','2c83901754e2e367e816ab5e84b6ca13c5cfc193de233842683cb0eda78290a3');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_82e4d2c230f72e289c6eeb29','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',22,'Inhalt','"description": "Beschreibt die Eigenschaften des Zugverbands",

"properties":

{

"streckenklasseGefordert":

{

"type": "string",

"description": "Angabe geforderter Streckenklassen",

"example": "D4"

},

"hatTrailer":

{

"type": "boolean",

"description": "Angabe, ob ein Wagenzug einen Trailer hat",

"example": true

},

"kvProfile":

{

"type": "array",

"description": "Liste der KV-Profile",

"example":

[

"70",

"400",

"P/C 70 P/C 400"

],

"items":

{

"type": "string",

"xml":

{

"name": "kvProfil"

}

},

"xml":

{

"name": "kvProfil"

}

},

"cirAusruestungen":

{

"type": "array",

"description": "Beschreibt die Ausrüstung mit CIR (CIR-ELKE (Abk. Computer Integrated Railroading – Erhöhung der Leistungsfähigkeit im Kernnetz))",

"example":

[

"CIR-ELKE I",

"CIR-ELKE I+II",

"CIR-ELKE II"

],

"items":

{

"type": "string",

"xml":

{

"name": "cirAusruestung"

}

},

"xml":

{

"name": "cirAusruestung"

}

},

"hatNotbremsueberbrueckung":

{

"type": "boolean",

"deprecated": true,

"description": "Beschreibt, ob Notbremsüberbrückung vorhanden ist.<br/>\n<b>Hinweis:</b> Das Attribut \"hatNotbremsueberbrueckung\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"notbremsueberbrueckung\"",

"example": true

}

}

},

"SortObject":

{

"type": "object",

"properties":

{

"sorted":

{

"type": "boolean"

},

"empty":

{

"type": "boolean"

},

"unsorted":

{

"type": "boolean"

}

}

},

"Textbaustein":

{

"type": "object",

"description": "Beschreibt die Textbausteine",

"properties":

{

"key":

{

"type": "string",

"description": "Identifikation des Textbausteins",

"example": "MIND_1ZUG_EBULA"

},

"value":

{

"type": "string",

"description": "Beschreibung der Textbausteine",',200,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','8829f2d4ff8aba523043379f78193fd7f6303963fdd19aa76749bd1f425eca0f');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_176974c7a5f69b8798799c8c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',23,'Inhalt','"example": "Fplo gilt als Fahrplanmitteilung auf Streckenabschnitten mit Bfpl-Angaben."

}

}

},

"Triebfahrzeug":

{

"type": "object",

"properties":

{

"tfzBrNummer":

{

"type": "string",

"description": "Bezeichnung der Baureihe",

"example": "6112"

},

"tfzStellungsart":

{

"type": "string",

"description": "Wertemenge für die Stellung des Triebfahrzeugs",

"example": "Zuglok Vorne"

},

"tfzStellungsartkey":

{

"type": "string",

"description": "Schlüssel der Stellungsart des Triebfahrzeugs",

"example": "SP"

}

},

"required":

[

"tfzBrNummer",

"tfzStellungsart"

]

},

"Umleitungregelungsart":

{

"allOf":

[

{

"$ref": "#/components/schemas/Laufwegregelungsart"

},

{

"type": "object",

"properties":

{

"betriebsstelleStartId":

{

"type": "integer",

"format": "int32",

"description": "Start der Regelungsart"

},

"betriebsstelleEndeId":

{

"type": "integer",

"format": "int32",

"description": "Ende der Regelungsart"

},

"entfalleneBetriebsstellen":

{

"type": "array",

"description": "Es werden die Betriebsstellen aufgelistet, die durch eine Umleitung betroffen sind und somit ausfallen",

"items":

{

"$ref": "#/components/schemas/Betriebsstelle"

},

"xml":

{

"name": "entfalleneBetriebsstelle"

}

}

}

}

],

"description": "Beschreibt den Abschnitt Umleitung",

"required":

[

"regelungsart"

]

},

"Unterzeichner":

{

"type": "object",

"description": "Kontaktdaten des Freigebenden der Baufplo",

"properties":

{

"nachname":

{

"type": "string",

"description": "Nachname des Freigebenden",

"example": "Sommer"

},

"vorname":

{

"type": "string",

"description": "Vorname des Freigebenden",

"example": "Ludwig"

},

"abteilung":

{

"type": "string",

"description": "Abteilung des Freigebenden",

"example": "I.NM-SO-L 4"

},',188,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','8c0ee5048ca63ac6f2419e4f020ed2097b9c2bdbf4c020798b5141ca32c112df');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_41e089681a795181280a4b05','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',24,'Inhalt','"rufnummer":

{

"type": "string",

"description": "Rufnummer des Freigebenden",

"example": "0341 1337"

}

},

"required":

[

"abteilung",

"nachname"

]

},

"Verweis":

{

"type": "object",

"discriminator":

{

"propertyName": "ebula"

},

"properties":

{

"ebula":

{

"type": "boolean",

"description": "Information darüber, ob nach EBuLa gefahren werden kann"

},

"zugcharakteristikId":

{

"type": "integer",

"format": "int32",

"description": "Referenz auf Zugcharakteristik",

"example": 1

}

}

},

"Vorgaenger":

{

"type": "object",

"properties":

{

"veroeffentlichung":

{

"type": "string",

"format": "date",

"description": "Tag der Veröffentlichung der vorherigen Version der BauFplo"

}

},

"required":

[

"veroeffentlichung"

]

},

"Zeitraum":

{

"type": "object",

"properties":

{

"start":

{

"type": "string",

"format": "date",

"description": "Startdatum des Zeitraumes",

"example": "2023-01-20"

},

"ende":

{

"type": "string",

"format": "date",

"description": "Enddatum des Zeitraumes",

"example": "2023-01-30"

}

}

},

"Zug":

{

"type": "object",

"properties":

{

"nummer":

{

"type": "string",

"description": "Zugnummer des Zuges",

"example": "18039"

},

"zuggattung":

{

"$ref": "#/components/schemas/Zuggattung",

"description": "Beschreibt die Eigenschaften der Zuggattung"

},

"zugart":

{

"type": "string",

"description": "Kennzeichen für die Zugart",

"example": "B"

}

},

"required":

[

"nummer",

"zugart",

"zuggattung"

]

},

"Zuggattung":

{

"type": "object",

"description": "Beschreibt die Eigenschaften der Zuggattung",

"properties":

{

"produktBezeichnung":

{

"type": "string",

"description": "Produktbezeichnung der Zuggattung",

"example": "RB-D"

},

"hauptnummer":

{

"type": "integer",

"format": "int32",',198,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','c2b43cadd33c7626e1add30247ff97d3431fb81c52db665cfc8f1dc32576b1da');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_716046b32d4d146ddae80e02','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',25,'Inhalt','"description": "Hauptnummer der Zuggattung",

"example": 41

},

"unternummer":

{

"type": "integer",

"format": "int32",

"description": "Unternummer der Zuggattung",

"example": 1

}

}

},

"Zugverband":

{

"type": "object",

"properties":

{

"streckenklasseGefordert":

{

"type": "string",

"description": "Angabe geforderter Streckenklassen",

"example": "C2"

},

"hatTrailer":

{

"type": "boolean",

"description": "Angabe, ob der Wagenzug einen Trailer hat",

"example": true

},

"kvProfilC2":

{

"type": "string",

"description": "Erste Eckhöhen-Kodierung für Wechselbehälter; zweistellige Zahl",

"example": "70"

},

"kvProfilC3":

{

"type": "string",

"description": "Zweite Eckhöhen-Kodierung für Wechselbehälter; dreistellige Zahl",

"example": "400"

},

"kvProfilP2":

{

"type": "string",

"description": "Erste Eckhöhen-Kodierung für Sattelanhänger; zweistellige Zahl",

"example": "70"

},

"kvProfilP3":

{

"type": "string",

"description": "Zweite Eckhöhen-Kodierung für Sattelanhänger; dreistellige Zahl",

"example": "400"

},

"cirAusruestung":

{

"type": "string",

"description": "Beschreibt die Ausrüstung mit CIR (CIR-ELKE (Abk. Computer Integrated Railroading – Erhöhung der Leistungsfähigkeit im Kernnetz))",

"example": "CIR-ELKE I+II"

},

"hatLZB":

{

"type": "boolean",

"description": "Beschreibt, ob LZB (Linienzugbeeinflussung) vorhanden ist",

"example": true

},

"hatNotbremsueberbrueckung":

{

"type": "boolean",

"deprecated": true,

"description": "Beschreibt, ob Notbremsüberbrückung vorhanden ist.<br/>\n<b>Hinweis:</b> Das Attribut \"hatNotbremsueberbrueckung\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"notbremsueberbrueckung\"",

"example": true

},

"etcsAusruestung":

{',184,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','db7f699bca62d3c09333ee9313b1f30fa22ce5af0c6405cd3fb7b9687a056829');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2250790c569711f28778b702','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-17-0-im-json-format-data.md',26,'Inhalt','"type": "string",

"description": "Beschreibt die Ausrüstung mit ETCS (european traffic control system)",

"example": "ETCS SRS 3"

}

}

}

}

}

}',22,'{"canonical_url":null,"normalized_sha256":"1f271bc24ee202c6385dbccbe09ffd6211f1fdb72fe09ee335189141bdaf58f4","page":null,"source_id":"src_a8fc6bb3e8b7db7a8077","source_sha256":"beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8","source_version_id":"sv_4d9deecdfe44da586bc04290"}','cdfe58aef861c8a421834c9dfc5626c8907c2ec8e15080c1abf6a80ab9921f7e');

--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_c4db283f6617a89c2018','file','Schnittstellenbeschreibung BauFplo API EVU Test 2 8 0 im xsd Format',NULL,'de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;

--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_aa3457828c7cc06b65f8cfa2','src_c4db283f6617a89c2018','bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7','148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8',70074,'application/xml','Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-8-0-im-xsd-Format-data.xml','sources/normalized/bootstrap/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data/sv_aa3457828c7cc06b65f8cfa2.md','identity-structured-text','1','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","converter":{"name":"identity-structured-text","profile":"bootstrap-markdown-v2","version":"1"},"final_url":null,"import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_aa3457828c7cc06b65f8cfa2.json","media_type":"application/xml","normalized_repo_path":"sources/normalized/bootstrap/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data/sv_aa3457828c7cc06b65f8cfa2.md","normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","origin_page_url":null,"original_filename":"Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-8-0-im-xsd-Format-data.xml","page_count":null,"raw_binary_committed":false,"requested_url":null,"schema_version":2,"size_bytes":70074,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2","supersedes_source_version_id":null,"title":"Schnittstellenbeschreibung BauFplo API EVU Test 2 8 0 im xsd Format","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;

--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7','src_c4db283f6617a89c2018','sv_aa3457828c7cc06b65f8cfa2','{"content_duplicate_group":null,"original_filename":"Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-8-0-im-xsd-Format-data.xml"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;

--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8','src_c4db283f6617a89c2018',NULL,'{"content_duplicate_group":null,"original_filename":"Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-8-0-im-xsd-Format-data.xml"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;

--> statement-breakpoint
UPDATE sources SET current_version_id='sv_aa3457828c7cc06b65f8cfa2' WHERE id='src_c4db283f6617a89c2018';

--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md','Schnittstellenbeschreibung BauFplo API EVU Test 2 8 0 im xsd Format','<?xml version="1.0" encoding="utf-8"?> <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"><xs:element name="PageBaufplo" type="PageBaufplo"/> <xs:complexType name="Allgemeines"> <xs:annotation> <xs:documentation>Beschreibt den Abschnitt Allgemeines</xs:documentation> </xs:annotation> <xs:sequence> <xs:element minOccurs="0" maxOccurs="unbounded" name="tex','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','12e33747647a9226d35611a5c66ce862d43e38e9a777187af42ddb00d603a739','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_c4db283f6617a89c2018","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;

--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md';

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c11b6d152c8d6df84f531d31','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',0,'Inhalt','<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"><xs:element name="PageBaufplo" type="PageBaufplo"/>

<xs:complexType name="Allgemeines">

<xs:annotation>

<xs:documentation>Beschreibt den Abschnitt Allgemeines</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="textbaustein" type="Textbaustein">

<xs:annotation>

<xs:documentation>Beschreibt die Textbausteine</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="AlternativeZugcharakteristik">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Alternativen Zugcharakteristik</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="id" type="xs:integer">

<xs:annotation>

<xs:documentation>Eindeutige Identifikation der Zugcharakteristik innerhalb der BauFplo</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" maxOccurs="unbounded" name="triebfahrzeug" type="Triebfahrzeug">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften des Triebfahrzeugs</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="gesamtzuglaenge" type="xs:double">

<xs:annotation>

<xs:documentation>Gesamtlänge des Zuges</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="last" type="xs:double">

<xs:annotation>

<xs:documentation>Masse des Wagenzuges in Tonnen</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="mindestbremshundertstel" type="xs:integer">

<xs:annotation>

<xs:documentation>Mindestbremshundertstel, die für die Durchführung der Zugfahrt benötigt werden</xs:documentation>

</xs:annotation>

</xs:element>',105,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','c9e9f3cf2fefd156ab3904ab0b48367e3f199c7155fc175e8b8fc3fadc56ef94');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_57c88272cede2c61ef0fed0e','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',1,'Inhalt','<xs:element minOccurs="1" name="bremsstellung" type="xs:string">

<xs:annotation>

<xs:documentation>Wertemenge für Bremsstellung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="hoechstgeschwindigkeit" type="xs:integer">

<xs:annotation>

<xs:documentation>Höchstgeschwindigkeit des Zuges in km/h</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="zuggattung" type="Zuggattung">

<xs:annotation>

<xs:documentation>Produktbezeichnung der Zuggattung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="befoerderungsanordnung" type="xs:string">

<xs:annotation>

<xs:documentation>Angabe der Nummer einer gültigen Beförderungsanordnung, mit der die Durchführung bestimmter Zugfahrten mit besonderen technischen Eigenschaften vorab geprüft wurde und genehmigt wird</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="bzaNummer" type="xs:string">

<xs:annotation>

<xs:documentation>Bza ist die Abkürzung für „Betrieb Zugförderung außergewöhnlich“.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="bzaBedingung" type="xs:string">

<xs:annotation>

<xs:documentation>Hinweise zur besonderen Beachtung bei der Durchführung von Zugfahrten in Betriebsstellen oder Streckenabschnitten als Freitext, sofern die Bedingungen nicht in einer Dauer-Beförderungsanordnung hinterlegt sind.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="imGrenzlastBereich" type="xs:boolean">

<xs:annotation>

<xs:documentation>Angabe, ob die angegebenen Lasten bereits den Grenzlastbereich darstellen</xs:documentation>

</xs:annotation>

</xs:element>',124,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','fe0bb78de09675dfc1875cfccf5a44f24caa657520dfd01d8ecad95ebca1e615');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f2d474b2da6bfc904bd12315','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',2,'Inhalt','<xs:element minOccurs="0" name="gueterzugOhneNennenswertenGrenzaufenthalt" type="xs:boolean">

<xs:annotation>

<xs:documentation>Gibt an, dass für den Zug am Grenzübergang (in der Regel die Grenzbetriebsstelle) kein längerer Aufenthalt (z.B. wegen Zollabwicklung) erforderlich ist.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="befoerderungsbesonderheit" type="Befoerderungsbesonderheit">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Beförderungsbesonderheiten</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="beladung" type="Beladung">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Beladung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="zugverband" type="Zugverband">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften des Zugverbands</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="istRichtungswechselZugelassen" type="xs:boolean">

<xs:annotation>

<xs:documentation>Angabe, ob nicht bestellte, aber konstruktionsbedingte Richtungswechsel zugelassen sind</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="keinRichtungswechselZugelassenGrund" type="xs:string">

<xs:annotation>

<xs:documentation>Wenn Attribut „istRichtungswechselZugelassen“ = false, dann kann hier ein Grund für den nicht erlaubten Richtungswechsel angegeben werden</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="besonderheit" type="xs:string">

<xs:annotation>',110,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','c3199f3d2162a65771b0b7736c21993681199480a6bdfe0590e7c9ff3ce2034c');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1114aad4799cb4c16a3a28e2','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',3,'Inhalt','<xs:documentation>Besonderheiten oder Hinweise aus der Fahrplankonstruktion für das Eisenbahnverkehrsunternehmen (EVU) bzw. den Triebfahrzeugführer (Tf) zur weiteren Beachtung.</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="BasisZugcharakteristik">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Zugcharakteristik</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="id" type="xs:integer">

<xs:annotation>

<xs:documentation>Eindeutige Identifikation der Zugcharakteristik innerhalb der BauFplo</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="alternativeZugcharakteristik" type="AlternativeZugcharakteristik">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Alternativen Zugcharakteristik</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" maxOccurs="unbounded" name="triebfahrzeug" type="Triebfahrzeug">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften des Triebfahrzeugs</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="gesamtzuglaenge" type="xs:double">

<xs:annotation>

<xs:documentation>Gesamtlänge des Zuges</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="last" type="xs:double">

<xs:annotation>

<xs:documentation>Masse des Wagenzuges in Tonnen</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="mindestbremshundertstel" type="xs:integer">

<xs:annotation>

<xs:documentation>Mindestbremshundertstel, die für die Durchführung der Zugfahrt benötigt werden</xs:documentation>

</xs:annotation>

</xs:element>',110,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','f292cd83de1807d7cfcc7693661be968baf008db5cb64e909bf537e45ef41aae');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e08b113fdc26b3e6ac24a0a9','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',4,'Inhalt','<xs:element minOccurs="1" name="bremsstellung" type="xs:string">

<xs:annotation>

<xs:documentation>Wertemenge für Bremsstellung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="hoechstgeschwindigkeit" type="xs:integer">

<xs:annotation>

<xs:documentation>Höchstgeschwindigkeit des Zuges in km/h</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="zuggattung" type="Zuggattung">

<xs:annotation>

<xs:documentation>Produktbezeichnung der Zuggattung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="befoerderungsanordnung" type="xs:string">

<xs:annotation>

<xs:documentation>Angabe der Nummer einer gültigen Beförderungsanordnung, mit der die Durchführung bestimmter Zugfahrten mit besonderen technischen Eigenschaften vorab geprüft wurde und genehmigt wird</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="bzaNummer" type="xs:string">

<xs:annotation>

<xs:documentation>Bza ist die Abkürzung für „Betrieb Zugförderung außergewöhnlich“.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="imGrenzlastBereich" type="xs:boolean">

<xs:annotation>

<xs:documentation>Angabe, ob die angegebenen Lasten bereits den Grenzlastbereich darstellen</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="gueterzugOhneNennenswertenGrenzaufenthalt" type="xs:boolean">

<xs:annotation>

<xs:documentation>Gibt an, dass für den Zug am Grenzübergang (in der Regel die Grenzbetriebsstelle) kein längerer Aufenthalt (z.B. wegen Zollabwicklung) erforderlich ist.</xs:documentation>

</xs:annotation>

</xs:element>',121,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','f09f1fa4b2738044ac7ca86af7af9c4592c34ad3cb5251a96282ee402d533989');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5cdae58b54bed86ecd23faa6','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',5,'Inhalt','<xs:element minOccurs="0" maxOccurs="unbounded" name="befoerderungsbesonderheit" type="Befoerderungsbesonderheit">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Beförderungsbesonderheiten</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="beladung" type="Beladung">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Beladung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="zugverband" type="Zugverband">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften des Zugverbands</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="istRichtungswechselZugelassen" type="xs:boolean">

<xs:annotation>

<xs:documentation>Angabe, ob nicht bestellte, aber konstruktionsbedingte Richtungswechsel zugelassen sind</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="keinRichtungswechselZugelassenGrund" type="xs:string">

<xs:annotation>

<xs:documentation>Wenn Attribut „istRichtungswechselZugelassen“ = false, dann kann hier ein Grund für den nicht erlaubten Richtungswechsel angegeben werden</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="bzaBedingung" type="xs:string">

<xs:annotation>

<xs:documentation>Hinweise zur besonderen Beachtung bei der Durchführung von Zugfahrten in Betriebsstellen oder Streckenabschnitten als Freitext, sofern die Bedingungen nicht in einer Dauer-Beförderungsanordnung hinterlegt sind.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="besonderheit" type="xs:string">

<xs:annotation>',113,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','16b115478da0f701ab7739f2fc466250b2c9e7b7db3d0a4add2d7cfc7617d60a');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8623ab2c330df99b7d6c7072','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',6,'Inhalt','<xs:documentation>Besonderheiten oder Hinweise aus der Fahrplankonstruktion für das Eisenbahnverkehrsunternehmen (EVU) bzw. den Triebfahrzeugführer (Tf) zur weiteren Beachtung.</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Baufplo">

<xs:sequence>

<xs:element minOccurs="0" name="disclaimer" type="xs:string">

<xs:annotation>

<xs:documentation>Wenn das Feld gefüllt ist, handelt es sich um Testdaten</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="zugnummer" type="xs:string">

<xs:annotation>

<xs:documentation>Fachlicher Schlüssel des Zuges</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="verkehrstag" type="xs:date">

<xs:annotation>

<xs:documentation>Verkehrstag des Zuges</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="abfahrtstag" type="xs:date">

<xs:annotation>

<xs:documentation>Abfahrtstag des Zuges</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="ankunftstag" type="xs:date">

<xs:annotation>

<xs:documentation>Ankunftstag des Zuges</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="fploVersion" type="xs:integer">

<xs:annotation>

<xs:documentation>Version der Baufplo</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="vorgaenger" type="Vorgaenger">

<xs:annotation>

<xs:documentation>Zuvor veröffentlichte Baufplo</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="veroeffentlichungsart" type="Veroeffentlichungsart">

<xs:annotation>',107,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','21fd3db95659e5b70c76279770f84f05d4d12da50f787f91c0fea3c45a62151d');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2e0f8ec26082e96e67930c10','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',7,'Inhalt','<xs:documentation>Definiert, ob es sich um eine Erstveröffentlichung, einen Nachtrag oder eine Rücknahme handelt</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="veroeffentlichung" type="xs:date">

<xs:annotation>

<xs:documentation>Tag der Veröffentlichung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" maxOccurs="unbounded" name="regionenabfolge" type="xs:string">

<xs:annotation>

<xs:documentation>Abfolge der Regionen, die der Zug verkehrt</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" maxOccurs="7" name="freigabe" type="Freigabe">

<xs:annotation>

<xs:documentation>Region und Kontaktdaten der Freigebenden der BauFplo</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="rahmendaten" type="Rahmendaten"/>

<xs:element minOccurs="0" maxOccurs="unbounded" name="baumassnahme" type="Baumassnahme">

<xs:annotation>

<xs:documentation>Beschreibt den Abschnitt der Bauvorgänge _**Hinweis:** Das Attribut \"baumassnahmen\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="allgemeines" type="Allgemeines"/>

<xs:element minOccurs="1" name="fahrplan" type="Fahrplan"/>

<xs:element minOccurs="0" maxOccurs="unbounded" name="ergaenzung" type="xs:string"/>

<xs:element minOccurs="0" name="konzeptSchaetzung" type="xs:boolean">

<xs:annotation>

<xs:documentation>Angabe für Konzeptschätzung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="qualifizierteSchaetzung" type="xs:boolean">

<xs:annotation>

<xs:documentation>Angabe für qualifizierte Schätzung</xs:documentation>

</xs:annotation>',125,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','2adfa10029c569acbf095a7e1fa7c5560bc3b9792df22e5d7d47ff46360d7bff');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2429adf266fe67fb1231c5c5','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',8,'Inhalt','</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Baumassnahme">

<xs:annotation>

<xs:documentation>Beschreibt den Abschnitt der Bauvorgänge _**Hinweis:** Das Attribut \"Baumassnahme\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="1" name="nummer" type="xs:string">

<xs:annotation>

<xs:documentation>Vorgangs-Nr des betrachteten Bauvorgangs _**Hinweis:** Das Attribut \"nummer\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="zeitraum" type="Zeitraum">

<xs:annotation>

<xs:documentation>Beschreibt den Zeitraum des Bauvorgangs _**Hinweis:** Das Attribut \"zeitraum\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="artDerArbeit" type="xs:string">

<xs:annotation>

<xs:documentation>Beschreibung der Arbeiten, die in diesem Bauvorgang durchgeführt werden _**Hinweis:** Das Attribut \"artDerArbeiten\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Befoerderungsbesonderheit">

<xs:annotation>

<xs:documentation>Beschreibt die Beförderungsbesonderheiten</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="schluessel" type="xs:string">

<xs:annotation>

<xs:documentation>Schluessel der Beförderungsbesonderheit</xs:documentation>

</xs:annotation>',152,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','2cb0ff2d55100a545dfb06be2c61cf300681226b43558de863950999aae015d1');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c0d6d456d3d75709e9414bac','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',9,'Inhalt','</xs:element>

<xs:element minOccurs="0" name="text" type="xs:string">

<xs:annotation>

<xs:documentation>Wert der Beförderungsbesonderheit</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Beladung">

<xs:sequence>

<xs:element minOccurs="0" name="lueLeitziffer" type="xs:string">

<xs:annotation>

<xs:documentation>Für die Durchführung von Lü-Sendungen mit einheitlichen Umrissen werden Dauerl-Lü-Anordnungen-E (DLA-E) genutzt.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="ladegut" type="xs:string">

<xs:annotation>

<xs:documentation>Angaben zum Ladegut im Zug</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="gefahrgut" type="Gefahrgut">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften des Gefahrguts</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Betriebsname">

<xs:sequence>

<xs:element minOccurs="0" name="bezeichnung" type="xs:string">

<xs:annotation>

<xs:documentation>Betrieblicher Name zu einem Gleis oder einer Strecke</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="position" type="xs:string">

<xs:annotation>

<xs:documentation>Kennzeichnet die Position des angegebenen Betriebsnamen. gueltigAb: der Startpunkt zum Betriebsnamen liegt an selber Kilometrierung wie die Betriebsstelle. gueltigNach: der Startpunkt zum Betriebsnamen liegt in Fahrtrichtung hinter der Betriebsstelle.</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Betriebsstelle">

<xs:annotation>

<xs:documentation>Betriebsstelle eines Zuglaufs</xs:documentation>',124,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','71003cd0d66202ec9a5525bda3bc73dd6ecdedd5be4b7535f7ad99cc251283f8');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e50902f399b1049e10145c6c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',10,'Inhalt','</xs:annotation>

<xs:sequence>

<xs:element minOccurs="1" name="ril100" type="xs:string">

<xs:annotation>

<xs:documentation>RIL 100-Code der Betriebsstelle (ds100-Code)</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="name" type="xs:string">

<xs:annotation>

<xs:documentation>Kurzname der Betriebsstelle</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Buchfahrplanverweis">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Verweise</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="ebula" type="xs:boolean">

<xs:annotation>

<xs:documentation>Information darüber, ob nach EBuLa gefahren werden kann</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="zugcharakteristikId" type="xs:integer">

<xs:annotation>

<xs:documentation>Referenz auf Zugcharakteristik</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="heftnummer" type="xs:string">

<xs:annotation>

<xs:documentation>Heftnummer des zugehörigen Ersatzfahrplanheftverweises</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="seite" type="xs:integer">

<xs:annotation>

<xs:documentation>Seite des zugehörigen Ersatzfahrplanheftverweises</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="geschwindigkeitsbezeichnung" type="xs:string">

<xs:annotation>

<xs:documentation>Geschwindigkeitsbezeichnung des zugehörigen Verweises</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="mbr" type="xs:integer">

<xs:annotation>

<xs:documentation>Mindesbremshundertstel des zugehörigen Verweises</xs:documentation>',103,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','46a287b0f35c776a5bb03626b43a31a7de65261139524b64177dbbf53ab60982');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d83c650efd145a0ace5f16bf','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',11,'Inhalt','</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="betriebsname" type="xs:string"/>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Ebulaverweis">

<xs:sequence>

<xs:element minOccurs="0" name="ebula" type="xs:boolean">

<xs:annotation>

<xs:documentation>Information darüber, ob nach EBuLa gefahren werden kann</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="zugcharakteristikId" type="xs:integer">

<xs:annotation>

<xs:documentation>Referenz auf Zugcharakteristik</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Fahrplan">

<xs:annotation>

<xs:documentation>Beschreibt den Abschnitt Fahrplan</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="zugcharakteristik" type="BasisZugcharakteristik"/>

<xs:element minOccurs="0" maxOccurs="unbounded" name="laufwegaenderung" type="Laufwegaenderung">

<xs:annotation>

<xs:documentation>Beschreibt den Abschnitt Laufwegänderungen</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="laufwegregelungsart" type="FahrplanLaufwegregelungsartenInner">

<xs:annotation>

<xs:documentation>Beschreibt den Abschnitt Laufwegregelungsart</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="besonderheit" type="xs:string">

<xs:annotation>

<xs:documentation>Besonderheiten oder Hinweise aus der Fahrplankonstruktion für das Eisenbahnverkehrsunternehmen (EVU) bzw. den Triebfahrzeugführer (Tf) zur weiteren Beachtung.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="2" maxOccurs="unbounded" name="laufweg" type="Laufwegpunkt">

<xs:annotation>',106,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','cdc569f58ebabd42f164721724074a8f01f3add95b42452b4d799a59dae76a45');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_aa786ebef378d4b14930da19','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',12,'Inhalt','<xs:documentation>Beschreibt den Abschnitt Laufweg</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="keineangabe" type="KeineAngabe">

<xs:annotation>

<xs:documentation>Enthält Informationen zu Teilen des Laufwegs, bei denen keine Fahrplanangaben erfolgen</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="FahrplanLaufwegregelungsartenInner">

<xs:sequence>

<xs:element minOccurs="0" name="betriebsstelleStart" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Betriebsstelle, ab der die Regelung gilt</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="betriebsstelleEnde" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Betriebsstelle, bis zu der die Regelung gilt. Bei Entfall gilt die Regelung aus dem Feld \"betriebsstelleStart\" bis zum Laufwegsende</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="regelungsart" type="xs:string">

<xs:annotation>

<xs:documentation>Die geltende Regelungsart</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="betriebsstelleStartId" type="xs:integer">

<xs:annotation>

<xs:documentation>Start der Regelungsart</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="betriebsstelleEndeId" type="xs:integer">

<xs:annotation>

<xs:documentation>Ende der Regelungsart</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="entfalleneBetriebsstelle" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Es werden die Betriebsstellen aufgelistet, die durch eine Umleitung betroffen sind und somit ausfallen</xs:documentation>',119,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','27297d06027ca443d3ad0bdb097302fc6c4551dd1b08f268ef8f0e129d62de28');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7b42b903ae8e5a237254f61c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',13,'Inhalt','</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Freigabe">

<xs:annotation>

<xs:documentation>Region und Kontaktdaten der Freigebenden der BauFplo</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="1" name="region" type="Region">

<xs:annotation>

<xs:documentation>Region des Freigebenden der Baufplo</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="unterzeichner" type="Unterzeichner">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften des Freigebenden der Baufplo</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Gefahrgut">

<xs:sequence>

<xs:element minOccurs="0" name="ridKlasse" type="xs:string">

<xs:annotation>

<xs:documentation>RID-Klasse des Gefahrenguts</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="ggveNummer" type="xs:string">

<xs:annotation>

<xs:documentation>Gefahrengut-Nummer</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="ggveUnternummer" type="xs:string">

<xs:annotation>

<xs:documentation>Gefahrengut-Unternummer</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="verpackungsgruppe" type="xs:string">

<xs:annotation>

<xs:documentation>Gefahrengut-Verpackungsgruppe</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Hinweis">

<xs:sequence>

<xs:element minOccurs="0" name="betreff" type="xs:string">

<xs:annotation>

<xs:documentation>Schlüssel des Hinweises oder der Regelung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="text" type="xs:string">

<xs:annotation>',104,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','5a648ad05949cd5c5c6523f9cac5f37b2090df406b0346bd3507b593201d2419');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ac2662559cc49c0922a26641','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',14,'Inhalt','<xs:documentation>Inhalt des Hinweises oder der Regelung</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="KeineAngabe">

<xs:annotation>

<xs:documentation>Enthält Informationen zu Teilen des Laufwegs, bei denen keine Fahrplanangaben erfolgen</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="1" name="betriebsstelleStart" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Betriebsstelle, ab der die Information zur Laufwegsunterbrechung gilt</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="betriebsstelleEnde" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Betriebsstelle, bis zu der die Information zur Laufwegsunterbrechung gilt</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="einreihungNetzVon" type="xs:integer">

<xs:annotation>

<xs:documentation>Laufende Nummer (Einreihung) des Startpunkts im Laufweg</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="einreihungNetzBis" type="xs:integer">

<xs:annotation>

<xs:documentation>Laufende Nummer (Einreihung) des Endpunkts im Laufweg</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="art" type="xs:string">

<xs:annotation>

<xs:documentation>Art der Laufwegsunterbrechung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="beschreibung" type="xs:string">

<xs:annotation>

<xs:documentation>Beschreibung der Laufwegsunterbrechung</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Kunde">

<xs:sequence>

<xs:element minOccurs="1" name="nummer" type="xs:string">

<xs:annotation>',115,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','b66addd2058afc06bd5dcab2414839bc8eb585bab5eef9497e1129c380e64b87');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ca91fde0741c7e0f4763ecc1','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',15,'Inhalt','<xs:documentation>Kundennummer des bestellenden EVU</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="name" type="xs:string">

<xs:annotation>

<xs:documentation>Name des bestellenden EVU</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Laufwegaenderung">

<xs:annotation>

<xs:documentation>Beschreibt den Abschnitt Laufwegänderungen</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="1" name="betriebsstelle" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Erste Bestriebsstelle, ab der die Charakteristik gilt</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="zugcharakteristik" type="BasisZugcharakteristik">

<xs:annotation>

<xs:documentation>Zugcharakteristik, die ab der zugehörigen Bestriebsstelle gilt</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Laufwegpunkt">

<xs:annotation>

<xs:documentation>Detailinformation zum Laufweg</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="id" type="xs:integer">

<xs:annotation>

<xs:documentation>Laufende Nummer startend bei 1</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="betriebsstelle" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Beschreibt die Betriebsstelle</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="ausfallKennzeichen" type="xs:boolean">

<xs:annotation>

<xs:documentation>Kennzeichnet, ob dieser Trassenlaufpunkt ausfällt</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="istUmleitung" type="xs:boolean">

<xs:annotation>',105,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','9fce78b94c3d9cd0dcc6bd7c8dbb7e4de6c9a57a29ea949c92e967c8473c0892');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d3160e17d39fa32801da3a01','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',16,'Inhalt','<xs:documentation>Kennzeichnet, ob dieser Trassenlaufpunkt Teil einer Umleitung ist</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="ankunftzeit" type="xs:dateTime">

<xs:annotation>

<xs:documentation>Ankunftszeit bei dieser Betriebsstelle. Im Falle einer Durchfahrt oder bei der Startbetriebsstelle entfällt dieses Attribut. _**Hinweis:** Das Attribut \"ankunftzeit\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"ankunftuhrzeit\"._</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="ankunftuhrzeit" type="xs:string">

<xs:annotation>

<xs:documentation>Ankunftszeit des Fahrplans (ohne Zeitumstellung) bei dieser Betriebsstelle. Im Falle einer Durchfahrt oder bei der Startbetriebsstelle entfällt dieses Attribut. _**Hinweis:** Das Attribut \"abfahrtzeit\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"abfahrtuhrzeit\"._</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="ankunftDifferenz" type="xs:string">

<xs:annotation>

<xs:documentation>Gibt an, welche zeitliche Differenz zum ursprünglichen Fahrplan besteht</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="abfahrtzeit" type="xs:dateTime">

<xs:annotation>

<xs:documentation>Abfahrtszeit bei dieser Betriebsstelle. Im Falle der Zielbetriebsstelle entfällt dieses Attribut</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="abfahrtuhrzeit" type="xs:string">

<xs:annotation>

<xs:documentation>Abfahrtszeit des Fahrplans (ohne Zeitumstellung) bei dieser Betriebsstelle. Im Falle der Zielbetriebsstelle entfällt dieses Attribut</xs:documentation>',150,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','fcd1e6ff5e74771bd4f6bcac7faf5e159296ae8f0415ddca431cfbeb36eb8514');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b3d209fb0d8ee89f68db266c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',17,'Inhalt','</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="abfahrtDifferenz" type="xs:string">

<xs:annotation>

<xs:documentation>Gibt an, welche zeitliche Differenz zum ursprünglichen Fahrplan besteht</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="strecke" type="xs:integer">

<xs:annotation>

<xs:documentation>Angabe der Streckennummer der bis zum nächsten Zugtrassenlaufpunkt konstruierten Strecke</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="haltart" type="xs:string">

<xs:annotation>

<xs:documentation>Art des Haltes H für Verkehrshalt , +TM für Betriebshalt, X für Bedarfshalt</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="hatRichtungswechsel" type="xs:boolean">

<xs:annotation>

<xs:documentation>Information darüber, ob an dieser Betriebsstelle ein Richtungswechsel vorliegt</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="verweis" type="LaufwegpunktVerweiseInner">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Verweise</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="hinweis" type="Hinweis">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Hinweise</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="regelung" type="Hinweis">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Regelungen</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="betriebsname" type="Betriebsname">

<xs:annotation>',116,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','351977741c1496c9b907f35d08ab3b324f63fb35c51416bb56d7e5af67942181');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_fe28a115e5257f74877eab4f','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',18,'Inhalt','<xs:documentation>Beschreibt die Eigenschaften der Betriebsnamen</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="LaufwegpunktVerweiseInner">

<xs:sequence>

<xs:element minOccurs="0" name="ebula" type="xs:boolean">

<xs:annotation>

<xs:documentation>Information darüber, ob nach EBuLa gefahren werden kann</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="zugcharakteristikId" type="xs:integer">

<xs:annotation>

<xs:documentation>Referenz auf Zugcharakteristik</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="heftnummer" type="xs:string">

<xs:annotation>

<xs:documentation>Heftnummer des zugehörigen Ersatzfahrplanheftverweises</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="seite" type="xs:integer">

<xs:annotation>

<xs:documentation>Seite des zugehörigen Ersatzfahrplanheftverweises</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="geschwindigkeitsbezeichnung" type="xs:string">

<xs:annotation>

<xs:documentation>Geschwindigkeitsbezeichnung des zugehörigen Verweises</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="mbr" type="xs:integer">

<xs:annotation>

<xs:documentation>Mindesbremshundertstel des zugehörigen Verweises</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="betriebsname" type="xs:string"/>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Laufwegregelungsart">

<xs:annotation>

<xs:documentation>Beschreibt den Abschnitt Laufwegregelungsart</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="betriebsstelleStart" type="Betriebsstelle">',100,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','1d287420488fa9d79f61aab73239838c35673b84f34bc2eabf731632eff3eeb5');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_024edef47c1da4477c19d8b8','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',19,'Inhalt','<xs:annotation>

<xs:documentation>Betriebsstelle, ab der die Regelung gilt</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="betriebsstelleEnde" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Betriebsstelle, bis zu der die Regelung gilt. Bei Entfall gilt die Regelung aus dem Feld \"betriebsstelleStart\" bis zum Laufwegsende</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="regelungsart" type="xs:string">

<xs:annotation>

<xs:documentation>Die geltende Regelungsart</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="PageBaufplo">

<xs:sequence>

<xs:element minOccurs="0" name="totalElements" type="xs:long"/>

<xs:element minOccurs="0" name="numberOfElements" type="xs:integer"/>

<xs:element minOccurs="0" name="pageable" type="PageableObject"/>

<xs:element minOccurs="0" name="sort" type="SortObject"/>

<xs:element minOccurs="0" name="totalPages" type="xs:integer"/>

<xs:element minOccurs="0" name="size" type="xs:integer"/>

<xs:element minOccurs="0" name="number" type="xs:integer"/>

<xs:element minOccurs="0" name="first" type="xs:boolean"/>

<xs:element minOccurs="0" name="last" type="xs:boolean"/>

<xs:element minOccurs="0" name="empty" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="unbounded" name="content" type="Baufplo"/>

</xs:sequence>

</xs:complexType>

<xs:complexType name="PageableObject">

<xs:sequence>

<xs:element minOccurs="0" name="paged" type="xs:boolean"/>

<xs:element minOccurs="0" name="pageNumber" type="xs:integer"/>

<xs:element minOccurs="0" name="pageSize" type="xs:integer"/>

<xs:element minOccurs="0" name="sort" type="SortObject"/>

<xs:element minOccurs="0" name="unpaged" type="xs:boolean"/>',120,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','9e42b1b87dd9f6e115d540b761ab9ec2f8e74a5c88baa300dd6be414af226851');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3483e67073a5e517888c6582','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',20,'Inhalt','<xs:element minOccurs="0" name="offset" type="xs:long"/>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Rahmendaten">

<xs:annotation>

<xs:documentation>Der Abschnitt Rahmendaten gibt einen umfassenden Überblick über zentrale Informationen der BauFplo. In den Rahmendaten sind aggregierte Werte der BauFplo zusammengefasst.</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="1" name="kunde" type="Kunde">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften des bestellenden EVU</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="zug" type="Zug">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften des Zuges</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="startBetriebsstelleRoute" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Erste Betriebsstelle der Gesamtzugroute (weicht von startBetriebsstelle ab, wenn der Zug im Fremdnetz beginnt)</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="zielBetriebsstelleRoute" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Letzte Betriebsstelle der Gesamtzugroute (weicht von zielBetriebsstelle ab, wenn der Zug im Fremdnetz endet)</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="startBetriebsstelle" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Erste Betriebsstelle des Zuglaufs</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="zielBetriebsstelle" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Letzte Betriebsstelle des Zuglaufs</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="bpolMeldepflichtig" type="xs:boolean">',125,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','3d2618e447fb4301d57ea5d8f311d08187416e14778961fea54c340a3f03cbbd');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_bc61dae77c3012613e8432f9','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',21,'Inhalt','<xs:annotation>

<xs:documentation>Gibt an, ob die Zugtrasse an die Bundespolizei gemeldet werden muss</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="zugcharakteristik" type="RahmendatenZugcharakteristik">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Zugcharakteristik</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="regelungen" type="RahmendatenRegelungen"/>

</xs:sequence>

</xs:complexType>

<xs:complexType name="RahmendatenBefoerderungsbesonderheiten">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Befoerderungsbesonderheiten</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="radMeterlastbeschraenkung" type="xs:string">

<xs:annotation>

<xs:documentation>Beschreibt die Beförderungsbesonderheit Rad- Meterlastbeschränkung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="niederflurwagen" type="xs:string">

<xs:annotation>

<xs:documentation>Beschreibt die Beförderungsbesonderheit Niederflurwagen </xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="schwerlastwagen" type="xs:boolean">

<xs:annotation>

<xs:documentation>Beschreibt die Beförderungsbesonderheit Schwerlastwagen</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="automatischeKupplung" type="xs:boolean">

<xs:annotation>

<xs:documentation>Beschreibt die Beförderungsbesonderheit Automatische Kupplung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="frontstellung" type="xs:boolean">

<xs:annotation>',96,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','6510374856f566f41daed8d7cf612c89a82979cf3479f5917a5f24f3ae83a1ef');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_56318b3df1030bd40e02e244','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',22,'Inhalt','<xs:documentation>Beschreibt die Beförderungsbesonderheit Frontstellung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="laermzug" type="xs:string">

<xs:annotation>

<xs:documentation>Hinweis auf mindestestens einen eingestellten lauten Güterwagen in einen Güterzug.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="unNummer" type="xs:string">

<xs:annotation>

<xs:documentation>Vierstellige Nummer des Gefahrenguts</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="freierText" type="xs:string">

<xs:annotation>

<xs:documentation>Beschreibt die Beförderungsbesonderheit Freitextfeld</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="etcsTbv" type="xs:string">

<xs:annotation>

<xs:documentation>Beschreibt die Beförderungsbesonderheit ETCS TBV Nummer</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="RahmendatenBeladung">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Beladung</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="lueLeitziffer" type="xs:string">

<xs:annotation>

<xs:documentation>Für die Durchführung von Lü-Sendungen mit einheitlichen Umrissen werden Dauerl-Lü-Anordnungen-E (DLA-E) genutzt.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="ladegut" type="xs:string">

<xs:annotation>

<xs:documentation>Angaben zum Ladegut im Zug</xs:documentation>

</xs:annotation>

</xs:element>',107,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','8b9f3f5c4245b48ce6805c4d7ed4bdddacb1a6fde6d155f259d3b84f456b02fe');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3bb154a5020145e016f3c07c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',23,'Inhalt','<xs:element minOccurs="0" name="gefahrgut" type="RahmendatenGefahrgut"/>

</xs:sequence>

</xs:complexType>

<xs:complexType name="RahmendatenGefahrgut">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften des Gefahrguts</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="ridKlasse" type="xs:string">

<xs:annotation>

<xs:documentation>RID-Klasse des Gefahrenguts</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="ggveNummer" type="xs:string">

<xs:annotation>

<xs:documentation>Gefahrengut-Nummer</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="ggveUnternummer" type="xs:string">

<xs:annotation>

<xs:documentation>Gefahrengut-Unternummer</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="verpackungsgruppe" type="xs:string">

<xs:annotation>

<xs:documentation>Gefahrengut-Verpackungsgruppe</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="RahmendatenRegelungen">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Regelungen</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="zugbegleitung" type="xs:string">

<xs:annotation>

<xs:documentation>Angabe für Zugbegleitung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="notbremsueberbrueckung" type="xs:boolean">

<xs:annotation>

<xs:documentation>Angabe, ob eine NBÜ erforderlich ist</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="RahmendatenZugcharakteristik">',94,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','f44e3f8b58ac62df26d55091beeece7e1d9dbbe8f7ea93dbc4676869218ceae1');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a80bc32858eb2d95ed7b7c14','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',24,'Inhalt','<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="befoerderungsanordnung" type="xs:string">

<xs:annotation>

<xs:documentation>Angabe der Nummer einer gültigen Beförderungsanordnung, mit der die Durchführung bestimmter Zugfahrten mit besonderen technischen Eigenschaften vorab geprüft wurde und genehmigt wird</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="bzaNummer" type="xs:string">

<xs:annotation>

<xs:documentation>Bza ist die Abkürzung für „Betrieb Zugförderung außergewöhnlich“.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="bzaBedingung" type="xs:string">

<xs:annotation>

<xs:documentation>Hinweise zur besonderen Beachtung bei der Durchführung von Zugfahrten in Betriebsstellen oder Streckenabschnitten als Freitext, sofern die Bedingungen nicht in einer Dauer-Beförderungsanordnung hinterlegt sind.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="imGrenzlastBereich" type="xs:boolean">

<xs:annotation>

<xs:documentation>Angabe, ob die angegebenen Lasten bereits den Grenzlastbereich darstellen</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="gueterzugOhneNennenswertenGrenzaufenthalt" type="xs:boolean">

<xs:annotation>

<xs:documentation>Gibt an, dass für den Zug am Grenzübergang (in der Regel die Grenzbetriebsstelle) kein längerer Aufenthalt (z.B. wegen Zollabwicklung) erforderlich ist.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="istRichtungswechselZugelassen" type="xs:boolean">

<xs:annotation>',128,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','e1a7d1758654b430c4c988293decf8d00496e30908747d4e16a4c4017aa83566');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_82b62bd600b6044fa89260db','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',25,'Inhalt','<xs:documentation>Angabe, ob nicht bestellte, aber konstruktionsbedingte Richtungswechsel zugelassen sind</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="keinRichtungswechselZugelassenGrund" type="xs:string">

<xs:annotation>

<xs:documentation>Wenn Attribut „istRichtungswechselZugelassen“ = false, dann kann hier ein Grund für den nicht erlaubten Richtungswechsel angegeben werden</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="leichterNahverkehrstriebwagen" type="xs:boolean">

<xs:annotation>

<xs:documentation>Angabe, ob es sich um einen leichten Nahverkehrstriebwagen handelt.</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="befoerderungsbesonderheiten" type="RahmendatenBefoerderungsbesonderheiten">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Befoerderungsbesonderheiten</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="beladung" type="RahmendatenBeladung"/>

<xs:element minOccurs="1" name="zugverband" type="RahmendatenZugverband"/>

</xs:sequence>

</xs:complexType>

<xs:complexType name="RahmendatenZugverband">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften des Zugverbands</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="streckenklasseGefordert" type="xs:string">

<xs:annotation>

<xs:documentation>Angabe geforderter Streckenklassen</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="hatTrailer" type="xs:boolean">

<xs:annotation>

<xs:documentation>Angabe, ob ein Wagenzug einen Trailer hat</xs:documentation>

</xs:annotation>

</xs:element>',107,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','796d97edac96ec11b737e2bd19227ebb2d6a3e5bf11477716265eadcce438d8e');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_06469297aa4f331b831b6b7f','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',26,'Inhalt','<xs:element minOccurs="0" maxOccurs="unbounded" name="kvProfil" type="xs:string">

<xs:annotation>

<xs:documentation>Liste der KV-Profile</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="cirAusruestung" type="xs:string">

<xs:annotation>

<xs:documentation>Beschreibt die Ausrüstung mit CIR (CIR-ELKE (Abk. Computer Integrated Railroading – Erhöhung der Leistungsfähigkeit im Kernnetz))</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="hatNotbremsueberbrueckung" type="xs:boolean">

<xs:annotation>

<xs:documentation>Beschreibt, ob Notbremsüberbrückung vorhanden ist.&lt;br/&gt; &lt;b&gt;Hinweis:&lt;/b&gt; Das Attribut \"hatNotbremsueberbrueckung\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"notbremsueberbrueckung\"</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="SortObject">

<xs:sequence>

<xs:element minOccurs="0" name="sorted" type="xs:boolean"/>

<xs:element minOccurs="0" name="unsorted" type="xs:boolean"/>

<xs:element minOccurs="0" name="empty" type="xs:boolean"/>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Textbaustein">

<xs:annotation>

<xs:documentation>Beschreibt die Textbausteine</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="key" type="xs:string">

<xs:annotation>

<xs:documentation>Identifikation des Textbausteins</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="value" type="xs:string">

<xs:annotation>

<xs:documentation>Beschreibung der Textbausteine</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>',115,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','736fd93da640750654b936d88a4ff02042ef48ed993511f363b0ad148c4a8a9a');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2df5e8ba3d07e84f4d1823a9','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',27,'Inhalt','<xs:complexType name="Triebfahrzeug">

<xs:sequence>

<xs:element minOccurs="1" name="tfzBrNummer" type="xs:string">

<xs:annotation>

<xs:documentation>Bezeichnung der Baureihe</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="tfzStellungsart" type="xs:string">

<xs:annotation>

<xs:documentation>Wertemenge für die Stellung des Triebfahrzeugs</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="tfzStellungsartkey" type="xs:string">

<xs:annotation>

<xs:documentation>Schlüssel der Stellungsart des Triebfahrzeugs</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Umleitungregelungsart">

<xs:annotation>

<xs:documentation>Beschreibt den Abschnitt Umleitung</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="betriebsstelleStart" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Betriebsstelle, ab der die Regelung gilt</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="betriebsstelleEnde" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Betriebsstelle, bis zu der die Regelung gilt. Bei Entfall gilt die Regelung aus dem Feld \"betriebsstelleStart\" bis zum Laufwegsende</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="regelungsart" type="xs:string">

<xs:annotation>

<xs:documentation>Die geltende Regelungsart</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="betriebsstelleStartId" type="xs:integer">

<xs:annotation>

<xs:documentation>Start der Regelungsart</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="betriebsstelleEndeId" type="xs:integer">',112,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','ea16709de813ceb6b39965eb9c670678b6ab141b2063f16ad97937c7926d65c0');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_74fb73cd059fc04fde8ebe42','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',28,'Inhalt','<xs:annotation>

<xs:documentation>Ende der Regelungsart</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" maxOccurs="unbounded" name="entfalleneBetriebsstelle" type="Betriebsstelle">

<xs:annotation>

<xs:documentation>Es werden die Betriebsstellen aufgelistet, die durch eine Umleitung betroffen sind und somit ausfallen</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Unterzeichner">

<xs:annotation>

<xs:documentation>Kontaktdaten des Freigebenden der Baufplo</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="1" name="nachname" type="xs:string">

<xs:annotation>

<xs:documentation>Nachname des Freigebenden</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="vorname" type="xs:string">

<xs:annotation>

<xs:documentation>Vorname des Freigebenden</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="abteilung" type="xs:string">

<xs:annotation>

<xs:documentation>Abteilung des Freigebenden</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="rufnummer" type="xs:string">

<xs:annotation>

<xs:documentation>Rufnummer des Freigebenden</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Verweis">

<xs:sequence>

<xs:element minOccurs="0" name="ebula" type="xs:boolean">

<xs:annotation>

<xs:documentation>Information darüber, ob nach EBuLa gefahren werden kann</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="zugcharakteristikId" type="xs:integer">

<xs:annotation>

<xs:documentation>Referenz auf Zugcharakteristik</xs:documentation>

</xs:annotation>

</xs:element>',110,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','84a09f34f819673d403467ece4b80f079ab7e6dcd743d2677b34f007a02e5ffe');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_162cb49cf175e35e15b211e9','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',29,'Inhalt','</xs:sequence>

</xs:complexType>

<xs:complexType name="Vorgaenger">

<xs:sequence>

<xs:element minOccurs="1" name="veroeffentlichung" type="xs:date">

<xs:annotation>

<xs:documentation>Tag der Veröffentlichung der vorherigen Version der BauFplo</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Zeitraum">

<xs:sequence>

<xs:element minOccurs="0" name="start" type="xs:date">

<xs:annotation>

<xs:documentation>Startdatum des Zeitraumes</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="ende" type="xs:date">

<xs:annotation>

<xs:documentation>Enddatum des Zeitraumes</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Zug">

<xs:sequence>

<xs:element minOccurs="1" name="nummer" type="xs:string">

<xs:annotation>

<xs:documentation>Zugnummer des Zuges</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="zuggattung" type="Zuggattung">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Zuggattung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="1" name="zugart" type="xs:string">

<xs:annotation>

<xs:documentation>Kennzeichen für die Zugart</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Zuggattung">

<xs:annotation>

<xs:documentation>Beschreibt die Eigenschaften der Zuggattung</xs:documentation>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="produktBezeichnung" type="xs:string">

<xs:annotation>

<xs:documentation>Produktbezeichnung der Zuggattung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="hauptnummer" type="xs:integer">',109,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','6c9bf0e14fbc3f9e0930b37d2f466bd2b2cbeb98d2d7ef17fd4c753201610554');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_116c14284ae0dfde517377fc','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',30,'Inhalt','<xs:annotation>

<xs:documentation>Hauptnummer der Zuggattung</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="unternummer" type="xs:integer">

<xs:annotation>

<xs:documentation>Unternummer der Zuggattung</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:complexType name="Zugverband">

<xs:sequence>

<xs:element minOccurs="0" name="streckenklasseGefordert" type="xs:string">

<xs:annotation>

<xs:documentation>Angabe geforderter Streckenklassen</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="hatTrailer" type="xs:boolean">

<xs:annotation>

<xs:documentation>Angabe, ob der Wagenzug einen Trailer hat</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="kvProfilC2" type="xs:string">

<xs:annotation>

<xs:documentation>Erste Eckhöhen-Kodierung für Wechselbehälter; zweistellige Zahl</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="kvProfilC3" type="xs:string">

<xs:annotation>

<xs:documentation>Zweite Eckhöhen-Kodierung für Wechselbehälter; dreistellige Zahl</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="kvProfilP2" type="xs:string">

<xs:annotation>

<xs:documentation>Erste Eckhöhen-Kodierung für Sattelanhänger; zweistellige Zahl</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="kvProfilP3" type="xs:string">

<xs:annotation>

<xs:documentation>Zweite Eckhöhen-Kodierung für Sattelanhänger; dreistellige Zahl</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="cirAusruestung" type="xs:string">

<xs:annotation>',102,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','b4729a98ebf02d8f852f3f4fd4c861e8c516d3db1c91fcc973669bbe42d46fd2');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_956d7966a1608f99865412a1','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',31,'Inhalt','<xs:documentation>Beschreibt die Ausrüstung mit CIR (CIR-ELKE (Abk. Computer Integrated Railroading – Erhöhung der Leistungsfähigkeit im Kernnetz))</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="hatLZB" type="xs:boolean">

<xs:annotation>

<xs:documentation>Beschreibt, ob LZB (Linienzugbeeinflussung) vorhanden ist</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="hatNotbremsueberbrueckung" type="xs:boolean">

<xs:annotation>

<xs:documentation>Beschreibt, ob Notbremsüberbrückung vorhanden ist.&lt;br/&gt; &lt;b&gt;Hinweis:&lt;/b&gt; Das Attribut \"hatNotbremsueberbrueckung\" ist veraltet und wird nicht mehr unterstützt. Bitte verwenden Sie stattdessen das neue Attribut \"notbremsueberbrueckung\"</xs:documentation>

</xs:annotation>

</xs:element>

<xs:element minOccurs="0" name="etcsAusruestung" type="xs:string">

<xs:annotation>

<xs:documentation>Beschreibt die Ausrüstung mit ETCS (european traffic control system)</xs:documentation>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:simpleType name="Veroeffentlichungsart">

<xs:annotation>

<xs:documentation>Definiert, ob es sich um eine Erstveröffentlichung, einen Nachtrag oder eine Rücknahme handelt</xs:documentation>

</xs:annotation>

<xs:restriction base="xs:string">

<xs:enumeration value="ERSTVEROEFFENTLICHUNG"/>

<xs:enumeration value="NACHTRAG"/>

<xs:enumeration value="RUECKNAHME"/>

</xs:restriction>

</xs:simpleType>

<xs:simpleType name="Regionenabfolge">

<xs:annotation>

<xs:documentation>Abfolge der Regionen, die der Zug verkehrt</xs:documentation>

</xs:annotation>

<xs:restriction base="xs:string">

<xs:enumeration value="OST"/>

<xs:enumeration value="NORD"/>

<xs:enumeration value="WEST"/>',126,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','4e039d4d736362d9611b1a5d0ed9294a662356f079da1cda84146dee711e9803');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_bf5b389ee02e4117d492ab2c','wiki/sources/schnittstellenbeschreibung-baufplo-api-evu-test-2-8-0-im-xsd-format-data.md',32,'Inhalt','<xs:enumeration value="SUEDOST"/>

<xs:enumeration value="MITTE"/>

<xs:enumeration value="SUEDWEST"/>

<xs:enumeration value="SUED"/>

</xs:restriction>

</xs:simpleType>

<xs:simpleType name="Region">

<xs:annotation>

<xs:documentation>Region des Freigebenden der Baufplo</xs:documentation>

</xs:annotation>

<xs:restriction base="xs:string">

<xs:enumeration value="OST"/>

<xs:enumeration value="NORD"/>

<xs:enumeration value="WEST"/>

<xs:enumeration value="SUEDOST"/>

<xs:enumeration value="MITTE"/>

<xs:enumeration value="SUEDWEST"/>

<xs:enumeration value="SUED"/>

</xs:restriction>

</xs:simpleType>

</xs:schema>',38,'{"canonical_url":null,"normalized_sha256":"148ee7b1e42debc308dc6d77c2d1757caaeac24c02e6fff9d6a25d48f47b68c8","page":null,"source_id":"src_c4db283f6617a89c2018","source_sha256":"bd118f3a8f159919ea58d1147b142bae7580293ea584d5c72262e98a347a4bb7","source_version_id":"sv_aa3457828c7cc06b65f8cfa2"}','4b81ff153d7019c3a50efea865bb8beb4a49c162621e823d5061c8e88e5f47a1');

--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_fd6211533b1f4da5f776','file','TAF/TAP TSI Dialog 21 Mai 2026 Antworten und offene Punkte',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;

--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_7c053a98498b96504a8dc7de','src_fd6211533b1f4da5f776','7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a','ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6',625224,'application/pdf','TAF-TAP-TSI-Dialog-21-Mai-2026-Antworten-und-offene-Punkte-data.pdf','sources/normalized/bootstrap/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"TAF-TAP-TSI-Dialog-21-Mai-2026-Antworten-und-offene-Punkte-data.pdf","page_count":16,"raw_binary_committed":false,"schema_version":1,"size_bytes":625224,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de","title":"TAF/TAP TSI Dialog 21 Mai 2026 Antworten und offene Punkte","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;

--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a','src_fd6211533b1f4da5f776','sv_7c053a98498b96504a8dc7de','{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-21-Mai-2026-Antworten-und-offene-Punkte-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;

--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6','src_fd6211533b1f4da5f776',NULL,'{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-21-Mai-2026-Antworten-und-offene-Punkte-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;

--> statement-breakpoint
UPDATE sources SET current_version_id='sv_7c053a98498b96504a8dc7de' WHERE id='src_fd6211533b1f4da5f776';

--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md','TAF/TAP TSI Dialog 21 Mai 2026 Antworten und offene Punkte','Follow-up 15. TAF/TAP TSI-Dialog Fragen und Antworten Versand im Nachgang','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','604ce591973f19250fa34971738706cf3d93f3582bd107a6e3962fa701674980','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_fd6211533b1f4da5f776","source_version_id":"sv_7c053a98498b96504a8dc7de"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;

--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md';

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7cf9d0587381445f2f5777b8','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',0,'Seite 1','Follow-up 15. TAF/TAP TSI-Dialog

Fragen und Antworten

Versand im Nachgang',10,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":1,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','f19d7715227c9069c94e6e67549c0663db3d430b6e999691271c9652905f6b51');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a572bf5c80b80fb1afa456e2','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',1,'Seite 2','Agenda

1. Informationen zu ujBau Prozessen

1. Informationen zu ujBau Prozessen

2. Baubedingte Zusatzleistungen bei Anlagen

2. Baubedingte Zusatzleistungen bei Anlagen

3. Baubedingte Zusatzleistungen

3. Baubedingte Zusatzleistungen

4. Baubedingte Stornierungen

4. Baubedingte Stornierungen

5. Umgang mit >24 h verspäteten einbrechenden Zügen

5. Umgang mit >24 h verspäteten einbrechenden Zügen

6. Nicht-baubedingte netzausgelöste Änderung (NAÄ)

6. Nicht-baubedingte netzausgelöste Änderung (NAÄ)

7. pathOS Push-Benachrichtigungen

7. pathOS Push-Benachrichtigungen

8. Information zur Schnittstellenaktualisierung NEP1 2028

8. Information zur Schnittstellenaktualisierung NEP1 2028

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 2',88,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":2,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','42837209e47254be59cdfc1c9337c2808f7a082548bff3a10f1e5d03a4b765e3');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b28e022169031a24a40f9ecd','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',2,'Seite 3','1. Informationen zu ujBau Prozessen (1/5)

Frage Antwort DB InfraGO

Wie werden Umläufe und wann in Auszug RiL 402.0305, §8 Vierte Konsultationsphase, Absatz (8) ZB-Ressourcenplanung:

welcher Detaillierung kommuniziert?

„Sofern die Fahrplanregelungen Auswirkungen auf die Ressourcenplanung von ZB haben, werden

diese durch die DB InfraGO AG bei der Erarbeitung des FPE mit berücksichtigt. Hierfür ist es

erforderlich, dass die ZB ihre geänderte Ressourcenplanung mit der Stellungnahme zum GPE der DB

InfraGO AG vorlegen.“

DB InfraGO wird im nächsten TTT-Dialog detailliert vorstellen, welche Umlaufinformationen benötigt

werden.

Der E-Mailversand zwischen GPE und Auszug aus Ril 402.0305 siehe vorherige Zeile. Darin ist das Medium nicht festgelegt.

FPE war neu für mich. Ich dachte, Für detaillierte Umlaufinformation wird das Medium E-Mail sein.

alles was Einfluss auf die FPE nimmt, DB InfraGO wird im nächsten TTT-Dialog detailliert darauf eingehen.

muss zwingend über die SST und

vorgegebene Formate erfolgen. Steht

das im Regelwerk auch so drin?

Rückfrage, Umläufe per Mail oder per Das ist situationsabhängig. Aufschlüsselung der Fälle erfolgt im nächsten TTT-Dialog. Wenn es eine

TrainActivity verschicken? Ist das kleine Menge an betroffenen Folgezügen ist, erfolgt die Angabe über die SN direkt. Dort wird der

eine neue Normatik? Der Versand entsprechende Zug mit einem TrainActivityCode (TAC) dargestellt, mit dem Hinweis der Bitte um

kann per E-Mail erfolgen, muss aber Ausfall.

nicht, richtig? Wenn es sich um eine große Menge von betroffenen Folgezügen handelt, bitte Umlaufliste senden.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 3',240,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":3,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','05d678e4803d6eeb042cdda968677178ea3d986ce67d709227749f5af5bba21a');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b6f17baac67deb27a10029aa','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',3,'Seite 4','1. Informationen zu ujBau Prozessen (2/5)

Frage Antwort DB InfraGO

Wenn ich die Rückmeldefrist auf GPE Eine baubedingte Zusatzleistung kann bis z-5 über PathOS bestellt werden.

schon abgeschickt habe und dann Siehe auch Agendapunkt 2 dieser Präsentation.

feststelle, dass ich die Leerfahrt

vergessen habe. Muss ich dann alles

nochmal schicken, wenn ich die Leerfahrt

als baubedingte Zusatzleistung nochmal

schicke?

Lässt sich diese Information, dass DB InfraGO wird über die in dieser Präsentation enthaltenen Antworten hinaus diesen Punkt im

Umlaufkonzepte per Mail versendet nächsten TTT-Dialog darstellen.

werden können, irgendwo

verschriftlichen? Das ist eine

Information, die sich bis dato auf keiner

Präsentation wiederfindet.

Das Thema mit dem Versand von Die Information über Umläufe ist mandatorisch. Ohne diese Information können keine Folgezüge

Umläufen ging jetzt zu schnell. Können mitgeplant werden.

Sie das bitte nochmal erklären, DB InfraGO wird über die in dieser Präsentation enthaltenen Antworten hinaus diesen Punkt im

insbesondere ob das optional oder nächsten TTT-Dialog darstellen.

mandatorisch ist.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 4',167,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":4,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','8069ddb7b36ea3d980ea1babefb0cb5f07eb29d1db5edf2144fb7686be104f8f');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8c0165c73a6c207462b8af9f','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',4,'Seite 5','1. Informationen zu ujBau Prozessen (3/5)

Frage Antwort DB InfraGO

Wie würde es sich in folgendem Beispiel verhalten: Wir Die Umläufe müssen bis z-21 vorliegen.

geben eine Stellungnahme auf ein GPE -> Im Rahmen der

SN-Frist versenden Umläufe mit -> im FPE erfahren wir,

dass die SN nicht eingearbeitet werden konnte und wir auf

das GPE zurückfallen.

Wie und bis zu welcher Frist müssen dann die Umläufe

übersendet werden? Dies kann zu einem erheblichen

Mehraufwand bei den EVU führen, da Umläufe mehrfach zu

verschiedenen Zuständen (GPE / FPE) geplant werden

müssen und nicht erst zum finalen Zustand (FPE).

Wer kümmert sich um Trassen, die grundsätzlich nicht Das ist situationsabhängig. Aufschlüsselung der Fälle erfolgt im nächsten TTTbaubetroffen sind, aufgrund der Baubetroffenheit einer Dialog. Wenn es eine kleine Menge an betroffenen Folgezügen ist, erfolgt die

anderen Trasse aber umlaufbedingt angepasst werden Angabe über die SN direkt. Dort wird der entsprechende Zug mit einem

müssen? Wie gelangt diese Information vom EVU an das TrainActivityCode (TAC) dargestellt, mit dem Hinweis der Bitte um Ausfall.

EIU? Wenn es sich um eine große Menge von betroffenen Folgezügen handelt, bitte

Umlaufliste senden.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 5',196,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":5,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','a3d25ca6234dda2c2d5ea6cc23bc0fadeb9f763b24caca8f95393154269c7986');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_67a99aa9b6ba9e11e6dc9f4b','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',5,'Seite 6','1. Informationen zu ujBau Prozessen (4/5)

Frage Antwort DB InfraGO

Wäre es nicht sinnvoller, wenn der Kunde die Die Referenz mittels PathID ist eine genauere Angabe als die auf eine

Baumaßnahmennummer angibt bei einer baubedingten Baumaßnahme. Für die Bearbeitung ist keine räumliche Angabe

Zusatzleistung, damit Sie wissen welche Baumaßnahme es ist, statt notwendig.

eine PathID, die u.U. einen Verlauf über ganz Deutschland hat und

zig Baumaßnahmen trifft?

Wie werden Trassen aus der NEP2 behandelt, für die noch kein Die Fristen der NEP 2 wurden so vorgezogen, dass sie immer vor der

Trassenvertrag vorliegt, wenn das GPE bereits auf Grundlage der FPE-Frist liegen und in der NEP2 können nur Neubestellungen

NEP1 VNP versendet wurde? vorgenommen werden. Daher kann es keine NEP 2 -Trassen geben, für

die bereits ein NEP1-GPE vorliegt und damit existiert dieser Fall nicht.

Ich verstehe nicht ganz die Notwendigkeit eines kompletten DB InfraGO wird im nächsten TTT-Dialog detailliert vorstellen, welche

Umlaufs im Rahmen der Stellungnahme zum GPE. Umlaufinformationen benötigt werden.

Nachvollziehbar wäre wenn Verschiebungen auf Folgezügen

angegeben werden

Kompletter Umlauf bedeutet, dass alle Umläufe schon fertig sein

müssten. Bezug ist ja auch auf das ganze Netz nicht nur ein

einzelnes GPE. Am Ende weiß ich erst ob der Umlauf aufgeht,

wenn ich ein FPE habe. Da gehen sehr viele Fragezeichen auf.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 6',224,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":6,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','0225204647c8862b3ab20e2c9ad4e24059b58ea8e8b5f469972e3f499438ac8a');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_516a704b89c44354f34f8ba2','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',6,'Seite 7','1. Informationen zu ujBau Prozessen (5/5)

Frage Antwort DB InfraGO

Gegebenenfalls ist dies an mir vorbei gegangen aber Das ist situationsabhängig. Aufschlüsselung der Fälle erfolgt im nächsten TTTin welcher Form/Format hat die Übermittlung der Dialog. Wenn es eine kleine Menge an betroffenen Folgezügen ist, erfolgt die

Umläufe (per Mail) zu erfolgen? Angabe über die SN direkt. Dort wird der entsprechende Zug mit einem

TrainActivityCode (TAC) dargestellt, mit dem Hinweis der Bitte um Ausfall.

Wenn es sich um eine große Menge von betroffenen Folgezügen handelt, bitte

Umlaufliste senden.

Es gab zuletzt in verschiedenen Runden Mit TTT sind in vielen Fällen bereits die Vertragstrassen an Mo-Fr und Sa-So

unterschiedliche Aussagen dazu, ob nach der unterschiedlich. Daher versenden wir in diesen bereits mindestens zwei GPE, eins

Stellungnahme zum GPE auch mehrere FPE erstellt für Mo-Fr und eins für Sa-So, sollte die Ausregelung es zulassen. Eine tagesscharfe

werden können. Hier bitte ich nochmal um Stellungnahme auf ein GPE ist aktuell nicht möglich.

Klarstellung ob dies möglich ist.

Bspw. GPE mit tgl betroffener Trasse - Umlaufbedingt

aber unterschiedliche Stellungnahmen Mo-Fr

(Zustimmung) und Sa-So (Anpassung GPE->FPE

notwendig) und damit einhergehend verschiedene

FPE/NAÄ notwendig.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 7',198,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":7,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','076d78fac6c27896646e4d30f2c0510ec90a57358143cec87fffa88398ec30b4');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f6658aae91f5a8b3c6c48ea0','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',7,'Seite 8','2. Baubedingte Zusatzleistungen bei Anlagen

Frage Antwort DB InfraGO

Wie werden Baubedingte DB InfraGO befindet sich hierzu aktuell in der fachlichen Klärung. Im nächsten TTT-Dialog wird DB

Zusatzleistungen für BAEn bestellt? InfraGO den aktuellen Stand sowie das weitere Vorgehen zur Bestellung baubedingter

Welche Angaben sind notwendig, Zusatzleistungen für BAEn vorstellen.

damit diese kostenfrei sind?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 8',65,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":8,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','5d9696448ff2b8f83ab8ed5ac87907dbd57c475e3da950d4d6b29b16787fd0de');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_201bb9f49477759ab1b93d0e','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',8,'Seite 9','3. Baubedingte Zusatzleistungen (1/2)

Frage Antwort DB InfraGO

Übersicht Baubedingte Ril 402.0305 „Baubedingte Fahrplanregelungen abstimmen und kommunizieren “

Zusatzleistungen

11 Trassenanmeldungen baubedingter zusätzlicher Leistungen

(1) Sind im Rahmen der vierten Konsultationsphase seitens der ZB in den unter Absatz (2) genannten Fällen

baubedingte zusätzliche Trassen erforderlich, so melden diese die erforderlichen Trassen im Bestellportal mit

Referenzbezug auf die baubetroffene Trasse, kommuniziert durch GPE/FPE spätestens fünf Wochen vor

Beginn der maßgebenden Bauwoche bei der DB InfraGO AG, Gelegenheitsverkehr an.

Basis der Abstimmung und Voraussetzung für die Anmeldung ist das FPE.

(2) Hierunter fallen insbesondere zusätzliche baubedingte Anmeldungen für

− Zu- und Abführungsfahrten zu einem Schienenersatzverkehr,

− Drehfahrten,

− Zu- und Abführungsfahrten zu einer anderen als der gewöhnlichen Abstell- oder Tankanlage,

− Zu- und Abführungsfahrten von Triebfahrzeugen oder

− zusätzliche Verkehre auf Grund einer Änderung der Zugcharakteristik (z.B. Ablasten auf Grund

geringerer Grenzlast einer Umleitungsstrecke).

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 9',153,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":9,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','e4e69e7905ab1424c2da040b2ff9c66762ee210ba2ac165039459af31b2786d4');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_58bafefb8ed6a9ec43502a42','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',9,'Seite 10','3. Baubedingte Zusatzleistungen (2/2)

Frage Antwort DB InfraGO

Bestellung baubedingte Ablauf und Kennzeichnung baubedingter Zusatzleistungen

Zusatzleistung:

Bei der Bestellung wird ein Verweis des EVUs auf die PathID der Bautrasse erforderlich sein. Dieser

Wäre toll wenn sie bei so was ein

wird als „RelatedPlannedTransportID“ angegeben. Zusätzlich muss beim NSP*

Beispiel mit in ihre Folien einfügen

„verkehrsArtKundeZusatz“ die Ausprägung „BaubedingteZusatzleistung“ angegeben werden.

könnten – Für Bestellung auf Folie in

TTT-Dialog

Beispiel pathOS

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 10',81,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":10,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','f070c21d1bffdbc56d4766b4574f98ec020001de95fd5f04f1c62eec9de79bae');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_244f38b72b74b5edb9d132a4','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',10,'Seite 11','4. Baubedingte Stornierungen

Frage Antwort DB InfraGO

Bitte in der schriftlichen Die Stornoquote bezieht sich ausschließlich auf kundenausgelöste Stornierungen. Eine netzausgelöste

Rückmeldung noch einmal genau Stornierung (NAS) bei baubedingten Ausfällen ist daher nicht enthalten.

aufzeigen, wie sich die Stornoquote

bei Baubedingten Ausfällen sowie in Eine netzausgelöste Änderung (NAÄ) gilt nach Versand direkt als angenommen. Für ZB besteht jedoch

Folge von nicht abgestimmten NAÄ die Möglichkeit, die Trasse innerhalb von drei Arbeitstagen (Montag bis Freitag, ausgenommen

verhält. bundeseinheitliche Feiertage) kostenfrei zu stornieren.

Die DB InfraGO AG stellt sicher, dass eine Stornierung binnen der Frist von 3 Arbeitstagen nach Erhalt

einer NAÄ für den Kunden kostenlos bleibt. Bautrassen, die innerhalb von drei Tagen storniert

werden, zählen nicht in die Stornoquote.

Wird die Stornierung der Eine baubedingt erforderliche Stornierung ist grundsätzlich im Rahmen der GPE Stellungnahme

Gegenrichtungsleistung automatisch anzugeben und wird dann im Rahmen einer netzausgelösten Stornierung umgesetzt. Darüber ist die

erfolgen, weil die Verknüpfung über kostenfreie Stornierung gewährleistet.

die TrainActivities verstanden wird?

Wie bestelle ich einen baubedingten Eine baubedingt erforderliche Stornierung ist grundsätzlich im Rahmen der GPE Stellungnahme

Ausfall einer indirekt baubetroffenen anzugeben und wird dann im Rahmen einer netzausgelösten Stornierung umgesetzt. Darüber ist die

Trasse, damit dieser kostenfrei kostenfreie Stornierung gewährleistet.

erfolgt?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 11',212,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":11,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','2a60d2ddbca7c0a6c2f1ce2e14d34e7f6d37a013df9499d1e4d8746ecaf1b119');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2d36a0cddf9406e224d5371e','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',11,'Seite 12','5. Umgang mit >24 h verspäteten einbrechenden Zügen

Frage Antwort DB InfraGO

Wie wird umgegangen wenn ein Zug Erklärung des Sonderfalls eines täglich verkehrenden Zuges, der bei Einbruch ins Netz der DB InfraGO

mit 24h Verspätung fährt im Bezug etwa 24h verspätet ist:

auf TAF-Identifier und Trasse?

Mündlich nachgeschärfte Frage: Wie In diesem Falle ist es aus fahrplanerischer Sicht möglich, dass die Trasse der ursprünglichen Zugfahrt

erfolgt die Umbuchung, wenn eine storniert wird und der Zug auf der Trasse des aktuellen Tages verkehrt. Da im Fahrplan keinerlei

Trasse, die für gestern bestellt wurde tagesscharfe Identifikatoren verwendet werden, ist dies unschädlich.

ausfällt (wg. Verspätung) und mit der Für die betrieblichen Meldungen ist zu beachten, dass der Zug einen Wechsel der tagesscharfen

ReferenceTrainID von heute (einen Identifikatoren benötigt, da sich der Tag der Zugfahrt um den einen Tag verändert.

Tag später) fährt.

Inwiefern dies zu ihren internen Abläufen und IT-Systemen passt, ist durch Sie zu prüfen.

Wie im TTT-Dialog kommuniziert, wird es zeitnah eine Übersicht zum Verfahren mit "großen"

Verspätungen, Stichwort 20h-Zug, geben.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 12',182,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":12,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','c42124f140f4331f5e4a4ceb6aa7117d91643ddfd5cfe29ee79be7db1de91f2a');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_77b1aea47a4b3c2b60cb2759','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',12,'Seite 13','6. Nicht-baubedingte netzausgelöste Änderung (NAÄ)

Frage Antwort DB InfraGO

NAÄ auch außerhalb des Ja, Sie haben danach 3 Tage Zeit, um die netzausgelöste Änderung kostenlos zu stornieren.

Bauprozesses erfolgen ohne

Zustimmung des EVU.

Danach kann bis zu 3 Tage storniert

werden.

Die Frist für eine NAÄ ist mit z-8 Die Frist z-8 bezieht sich auf das NAÄ aus dem unterjährigen Bau, nicht auf das allgemeine NAÄ.

benannt. Verstehe ich es richtig, dass

bei der NAÄ (ohne Baubezug) zu

einer ENP-Trasse, die vom

13.12.2026 bis 11.12.2027 gültig ist,

somit der 13.10.2026 der

Kommunikationspunkt ist und

danach keine Änderung (ohne

Baubezug) mehr erfolgen kann?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 13',113,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":13,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','10495d3fa2a5902e09dee762ce4dba3e0e25acbe21b5231d7190ffc57e0d404f');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_024130620b23c110c2b1b388','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',13,'Seite 14','7. pathOS Push-Benachrichtigungen

Frage Antwort DB InfraGO

Wie werden EVU über Angebote und Ein Push-Mechanismus innerhalb des pathOS Webportals, der über neue Angebote und

Netzausgelöste Änderungen Netzausgelöste Änderungen informiert, ist auf Basis des aktuellen Nutzer- und Berechtigungskonzepts

benachrichtigt? (Z.B. durch Push- im pathOS Portal nicht kurzfristig umsetzbar.

Nachrichten aus pathOS?) DB InfraGO prüft, welche Optionen zur proaktiven Benachrichtigung möglich sind und gibt Feedback

im nächsten TTT-Dialog.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 14',77,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":14,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','eec798a7fb95d103ad9163f40e7e97f0fbf671f56a02529860c9a08fc11d5a57');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_13176d6003107a1f25a963b7','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-antworten-und-offene-punkte-data.md',14,'Seite 15','8. Information zur Schnittstellenaktualisierung NEP1 2028

Frage Antwort DB InfraGO

Ab wann ist eine aktualisierte SST- Es war vorgesehen, das nächste Update der Schnittstellendokumentation mit Inkrafttreten zur

Beschreibung für NEP1 2028 zu Anmeldephase für die NEP 2028 zu veröffentlichen. Hierin werden gefundenen Unklarheiten und

erwarten? notwendigen Anpassungen aus der NEP 2027 und den Tests zum unterjährigen Bau aufgenommen.

Ebenfalls werden Verbesserungen hinsichtlich der Lesbarkeit und Übersichtlichkeit basierend auf

Feedback von Schnittstellenpartnern durchgeführt. Die Veröffentlichung wird zeitlich so gestaltet,

dass wir Rückmeldungen Ihrerseits bis Ende August einarbeiten und veröffentlichen können.

Vorher wird es eine einzelne Anpassung der Anlage 1 geben, damit diese zum Fahrplanwechsel am

13.12.2026 wirksam werden kann. Die Veröffentlichung ist spätestens am 11. Juni geplant. Auf eine

Anpassung der weiteren Dokumente wird in diesem Rahmen verzichtet.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 21.05.2026 ​ 15',138,'{"canonical_url":null,"normalized_sha256":"ffa96e961e48e0c6ef77df54deb2e3beaaf1dfa905ff64f11f06a3e780a159c6","page":15,"source_id":"src_fd6211533b1f4da5f776","source_sha256":"7c053a98498b96504a8dc7dec9aaa6e9db2e203c76fa161d39538d449ad65e2a","source_version_id":"sv_7c053a98498b96504a8dc7de"}','63b0b18d7b4ce80e30bffa518bf2519325c7c41b341e6c46647940e04f4795e2');

--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_1f6c2d00fd116ecf0611','file','TAF/TAP TSI Dialog 21 Mai 2026 Terminunterlage',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;

--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_12227c0c6672e3e4736d2c8b','src_1f6c2d00fd116ecf0611','12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3','ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e',679668,'application/pdf','TAF-TAP-TSI-Dialog-21-Mai-2026-Terminunterlage-data.pdf','sources/normalized/bootstrap/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"TAF-TAP-TSI-Dialog-21-Mai-2026-Terminunterlage-data.pdf","page_count":22,"raw_binary_committed":false,"schema_version":1,"size_bytes":679668,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b","title":"TAF/TAP TSI Dialog 21 Mai 2026 Terminunterlage","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;

--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3','src_1f6c2d00fd116ecf0611','sv_12227c0c6672e3e4736d2c8b','{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-21-Mai-2026-Terminunterlage-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;

--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e','src_1f6c2d00fd116ecf0611',NULL,'{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-21-Mai-2026-Terminunterlage-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;

--> statement-breakpoint
UPDATE sources SET current_version_id='sv_12227c0c6672e3e4736d2c8b' WHERE id='src_1f6c2d00fd116ecf0611';

--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md','TAF/TAP TSI Dialog 21 Mai 2026 Terminunterlage','15. TAF/TAP TSI-Dialog der DB InfraGO Austausch mit dem Markt 21.05.2026 – virtuell','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','6cc7ea5b1931cecd8405048ffc24581032c91fdb8241de877b992664ae0f25a7','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_1f6c2d00fd116ecf0611","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;

--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md';

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ad9fdf0d74cccf6a993d4871','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',0,'Seite 1','15. TAF/TAP TSI-Dialog der DB InfraGO

Austausch mit dem Markt

21.05.2026 – virtuell',13,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":1,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','7287506d87bb2a4046215873a3a4aa29c7985fe0a50d8847a6486e47e08f4061');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_aba1e2cc127f8b5468e8f469','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',1,'Seite 2','Agenda

1. Begrüßung

2. Status TTT Einführung

3. Update pathOS

4. Click & Ride mit TTT

5. Fragen & Antworten

6. Zum Nachlesen: Nächste Termine

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 2',34,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":2,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','3a4f2fa7e96722377aff736d16a875bf1025c1b39681519114cb1ab707cadd5f');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_55684be8d5f69310ec083380','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',2,'Seite 3','Wir wollen mit Ihnen in den Dialog treten – Welche Fragen

haben Sie? Schreiben Sie diese bitte in den Chat

So können Sie eine Frage platzieren:

Bitte wählen Sie in MS Teams in der Menüleiste

das Icon „Chat“ aus und schreiben Ihre Frage

in das sich öffnende Fenster.

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 3',57,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":3,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','2a02700b8dcb52a8d25e8ba5debb7e6e0effdefce745901ea97055a073ad4cac');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e0b9e02b716fe489169b0327','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',3,'Seite 4','2. Status TTT Einführung

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 4',13,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":4,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','deef74fd570cfd53ddce30965e3370bbd3de490b23849bdbf34f084bb2a3d891');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8fe290687c7734d00249262e','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',4,'Seite 5','Status TTT

Ergebnisse seit letztem TTT-Dialog

✓ Lieferung GelV Funktionalitäten vollständig im Markttest (letzte Lieferung ergänzte u.a.

Anmeldung mit Annahmeverzicht = Anmeldung mit Annahmeerklärung)

✓ Mittiger Teilausfall im Markttest mit Testeinschränkung zum Versand NAÄ

✓ Informationsveranstaltungen zu unterjährigem Bau mit Fokus auf Digitale Bau Fplo (20.5.)

✓ Stammdaten für Trassenbestellung aktualisiert und als Ordnungsrahmen Jahresfahrplan 2027.3

bereitgestellt: Es wurden ausländische Betriebsstellen ergänzt und die Strecke 6814 korrigiert

▪ Netzfahrplanerstellung läuft

Nächste Schritte

• Markttests für Trassenanmeldung/ujBau und Defect-Behebung kontinuierlich fortsetzen

• Markttest TTT mit Identifiern im Betrieb fortsetzen;

weiterer Testzeitraum für EVU, die aktuell noch nicht testfähig sind, wird geplant

• Maßnahmen basierend auf Feedback zu KOMBau Kundentests, Schulungsmaterial und Planung

definieren und umsetzen

• Nächster TTT-Dialog am 24.06.2026

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 5',128,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":5,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','2056033145202678b8f772cfb98f33574dbc51b136c7089eb59d719e9e94e1bc');

--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7ac64c2e8b77eb91d4809b27','wiki/sources/taf-tap-tsi-dialog-21-mai-2026-terminunterlage-data.md',5,'Seite 6','3. Update pathOS

DB InfraGO AG | TAF/TAP TSI-Dialog am 21.05.2026 6',12,'{"canonical_url":null,"normalized_sha256":"ae6fb1592120714ce20618e6d58b112f1d0c662a71dda57469141b3f82e7068e","page":6,"source_id":"src_1f6c2d00fd116ecf0611","source_sha256":"12227c0c6672e3e4736d2c8bd72098d8868235b0b8e150df5a2295ae171901e3","source_version_id":"sv_12227c0c6672e3e4736d2c8b"}','f811958e0cd33721fabdb3e587569f836843e2332fb4366bfb55f2206f7a01c8');
--> statement-breakpoint
