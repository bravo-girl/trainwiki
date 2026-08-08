INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15','src_c2cbe5f5c740b62f994d',NULL,'{"content_duplicate_group":null,"original_filename":"Informationsveranstaltung-Vertiefung-ujBau-vom-20-05-2026-data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_64747c1009b8c053966a8940' WHERE id='src_c2cbe5f5c740b62f994d';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md','Informationsveranstaltung Vertiefung ujBau vom 20 05 2026','EVU-Informationsveranstaltung Vertiefung Unterjähriger Baufahrplan 20.05.2026 | Frankfurt am Main','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','21c3b58f2a94c420da9b76d70315bdae8a153753ff16d5fab0a7ec78e391d6e9','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_c2cbe5f5c740b62f994d","source_version_id":"sv_64747c1009b8c053966a8940"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_202bedc1b09e6d494851c2c9','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',0,'Seite 1','EVU-Informationsveranstaltung

Vertiefung Unterjähriger Baufahrplan

20.05.2026 | Frankfurt am Main',9,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":1,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','1bd356cf9d4680435b7577a948bfcd7dacbe670d0ede912b1cc8589379ec435a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_727596f5ed18ebb7778e5b4d','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',1,'Seite 2','Agenda

Begrüßung & Einleitung Willkommen! 5 min

Unterjährige Fahrplanprodukte unter Annex VII 5 min

Überblick Annex VII

Digitale BauFplo 15 min

Ihre Fragen und

Beantwortung Ihrer Fragen 30 min

Hinweise

Abschluss Nächste Schritte 5 min

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 2',46,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":2,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','82cd1f4db1fc8f2b095b3be26dc534ce7ccd2569f067638ecc1d4e38bfd7ed74');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_be25d971ead0ab0b542d9e93','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',2,'Seite 3','Hinweise

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

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 3',112,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":3,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','875373809cb060e3f173120e526f3ccccd3f25bb934c387b0b74248bb1c3459c');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2d05713cd60c40f05b3ae8d2','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',3,'Seite 4','Unterjährige Fahrplanprodukte

unter Annex VII

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 4',16,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":4,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','ae8efe4a5ee52405e95796010119a9ecafd09798443b1928ead5147e44698969');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0fd69b14ef8c1c3a4123fec2','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',4,'Seite 5','Die Migration der Fahrplanproduktwelt vom heutigen Prozess

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

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 5',179,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":5,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','4da14b989bc7060faf79612c249ccb1205346b3fb765ed5cae0b5309d2edfdcd');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f88e7e73138af1f98f3a1af0','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',5,'Seite 6','Anforderungen von TTT / Annex VII für die neuen

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

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 6',105,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":6,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','f68fe679f7f330efc841123f8caca53dd43d0647eeb1945f401f1f119cd0ead8');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_80c16e183c09847bd44a6474','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',6,'Seite 7','Fahrplan zum neuen unterjährigen Baufahrplan:

Versandzeitpunkte der neuen Produkte rücken näher

31.08.2026 19.10.2026 22.11.2026

Möglicher Zeitrahmen für

Versand 1. GPE Frist 1. GPE (z-15) Frist 1. FPE (z-8)3 Frist 1. digitale

BauFplo (z-3)

Frist 1. NAÄ (z-8)

Jun. Jul. Aug. Sep. Okt. Nov. Dez.

Ab Versand des FPE und NAÄ

06.07.2026 17.08.2026 14.12.2026

wird die BauFplo im neuen

VNP1 (TTT-konform) ENP2 (TTT-konform) 1. Montag nach dem

Format versendet

Fahrplanwechsel

1 Für die Fahrplandokumente für Sonntag nach Fahrplanwechsel (13.12.2026) gelten folgende Fristen:

GPE: 24.08.2026, FPE (SPV): 12.10.2026, FPE (SGV) 02.11.2026

2

Die Stellungnahmefrist von 3 Wochen auf das GPE bleibt bestehen.

3

Es handelt sich jeweils um die spätesten Versandzeitpunkte, insb. die erste digitale BauFplo kann auch früher kommen.

(1) Vorläufiger Netzplanentwurf (2) Endgültiger Netzfahrplan (3) z-8 gilt für den SPV. Für den SGV gilt die Frist z-5.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 7',148,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":7,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','f95d0439f694d7b036e8b5482c96b212a8a9c85096846abbe03d789a899691e7');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e17213c3be2c0b395462dce7','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',7,'Seite 8','Digitale BauFplo

Vorschau Hochlauf in 2026

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 8',17,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":8,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','4bd89900dde9289bdc1d538f7b9f6953fa435728c114011b75f313d7f5231da0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_dc365e959b647035d565fa57','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',8,'Seite 9','Anforderungen von TTT / Annex VII für die neuen

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

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 9',105,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":9,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','f26a7cd848cc1b6157e0941cce4a472d4828f46812953ae13364fe4bd827ecc3');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_01c7bcf62ab7e219ba874906','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',9,'Seite 10','Mit der Einführung von TTT / Annex VII gibt es

Änderungen in der Darstellung der BauFplo und an der API

Änderungen an der BauFplo API zum Dezember 2025 Ausblick: Änderungen an der BauFplo mit TTT / Annex VII

Changelog BauFplo API EVU Thema Darstellung unter TTT

Zugtrassen mit mehreren Ja

• Änderungsübersicht der

Abschnitten

Schnittstellenbeschreibung der

Zeitliche Inkonsistenz Ja

digitalen BauFplo wird

Übergänge zu Ja

fortlaufend gepflegt

Fremdnetzanteilen

• Dient zur Unterstützung bei der

PathID Nein

Bewertung möglicher

Auswirkungen auf Ihre Systeme Bauvorgangsnummer Entfällt

Art der Baumaßnahme Entfällt

Ort der Baumaßnahme Entfällt

Alle aktuellen Änderungen an der API sind auf der Auch zukünftig kann es zu Änderungen an der

Homepage zur digitalen BauFplo zu finden. BauFplo kommen, über die wir informieren.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 10',132,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":10,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','aeef3cc8b8606e7a3fde9c867ed82df83034e15dfae121a83d0bdb84da9c4638');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_207952f44fc72c331b49b12e','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',10,'Seite 11','Mit der Betriebserprobung bereiten wir sukzessive die

Einführung der digitalen BauFplo in 2026 vor

Die Betriebserprobung in Zahlen

Stand 15.05.2026

37

>135

>490

EVU mit Kontaktaufnahme

beantwortete Fragen &

veröffentlichte BauFplon

Veröffentlichung im FAQ

25

aktiv beteiligt

10

kooperationsinteressiert1

7 von 7 18

6

Regionen sind Teil der Erprobung verprobte Anwendungsfälle

Anpassungsbedarfe EVU-seitig

identifiziert

(1) EVU mit laufender Entscheidungsfindung oder noch nicht verprobaren Anwendungsfällen

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 11',75,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":11,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','32b795a10fe194cd28ea6d1fb3faf716aea09c345103598b61c610dc3784f5ce');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_29465e4ff454d63491d97588','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',11,'Seite 12','18 bereits erprobte Anwendungsfälle decken ca. 85% des

zukünftigen Aufkommens an digitalen BauFplo ab

18 Anwendungsfälle bereits erprobt In allen 7 Regionen bereits digitale BauFplo veröffentlicht:

• Umleitung • Einfahrt in Frühhaltanzeiger auf

Kumulierte Anzahl BauFplo

Laufweg

• Umleitung mit Ausfall von

500

Betriebsstellen • Teilausfall hinten - auf Laufweg Region Südwest

• Umleitung mit zusätzlichen • Mittiger Teilausfall (SEV) mit 400 Region Ost

Betriebsstellen baubedingter Neuleistung Region Süd

300

• Umleitung mit Ausfall von • Einfahrt in Stumpfgleis auf

200

Betriebsstellen und mit Laufweg

Region West

zusätzlichen Betriebsstellen

• Zugcharakteristika Anpassung 100 Region Nord

Region Südost Region Mitte

• Verkehrstagswechsel

• Zug fährt mit Verfahren ESF

0

N D J F M A M J J A S O N D J F M A M

• Zielendpunkt im Ausland • Zugfahrt mit . v o . z e . n a . b e z r ä . r p i a i n u il u . g u . p e . t k . v o . z e . n a . b e z r ä . r p i a

• Hinweis auf den Ersatzfahrplan- Notbremsüberbrückung

heftverweis

• Verspätung 2024 2025 2026

• Vorplan

• KV-Profil

Legende

• Totalausfall

Erste digitale BauFplo zu Trasse in Region x veröffentlicht

Weitere, auch komplexere Anwendungsfälle können mit uns in der

Betriebserprobung/Hochlauf getestet werden Neues EVU nimmt an Betriebserprobung teil

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 12',245,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":12,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','47a3cbb7611f4dac5a71994098c6d7d120f49fcb987dda03c9def75d38de1209');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c8f3fc54e49e6c5be65fde55','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',12,'Seite 13','2026 steht im Zeichen des kontrollierten Hochlaufs – mit

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

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 13',142,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":13,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','fb51bb47eb83d462b05158d2d3fb0420cb7c86bb4ad89c329b9001d2f3d04b86');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_dfef9ff194b6b67598ee68c1','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',13,'Seite 14','Mit einer Teilnahme am Hochlauf sind Sie ideal auf die

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

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 14',148,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":14,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','6cb7fd8e85cd3fcf4f1df2e69e0e4ad0640dab2b4af1fdda46b468c2a18e08a7');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c7868b27c455567f8d8be685','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',14,'Seite 15','Mit dem Readiness-Check für die digitale BauFplo

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

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 15',88,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":15,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','d4c79ca337b7663710104aa8b650ca0692b2ac43c813e03f2dd252366dcceb2f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1db43b8e57cca30980b5eac1','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',15,'Seite 16','Die neue digitale BauFplo: Nutzen Sie unser Angebot

zur guten Vorbereitung

Ihr Mehrwert auf einen Blick

Direkt zur Webseite

Aktuelle Informationen zur digitalen BauFplo

„Digitale Baufahrplanordnung“

Änderungen, Hochlauf-Teilnahme und Updates stets im

Blick (inkl. Kund:inneninformation vom 27.03.2026)

Alle Informationen & Unterstützungsangebote

rund um die neue digitale BauFplo

Jetzt scannen BauFplo-Readiness-Check

Unverbindlicher Selbstcheck: Wie gut ist Ihre Organisation

technisch und prozessual vorbereitet?

Besteht ggf. noch Handlungsbedarf?

FAQ zur digitalen BauFplo

Antworten auf häufige Fragen, die sowohl Grundlagen als

auch praxisnahe Detailthemen abdecken. Wird laufend

ergänzt und aktualisiert.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 16',97,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":16,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','84e9474a6eb03de72ea136d4af4cf7a87297962834366c35ee82be3e6810168f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c9e8867840a0a68753b379c6','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',16,'Seite 17','Umfrage zum Thema IT-

Dienstleister

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 17',16,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":17,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','db7a842033a51eb8fabd238be4ed9f122ad4144deba53b6aa3dc2d0d73db312f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b57b1cb1f89597d4c95217c4','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',17,'Seite 18','Fragen und Hinweise

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 18',14,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":18,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','7feb3bd5691a2bee476df05865b6a0d2591372760f2a2cf91ee92edb2eba0feb');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_521256fec4e05a46d868d53b','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',18,'Seite 19','Häufig gestellte Fragen – FAQ 1

Thema: Annex VII

F

Kann man in der GPE-Stellungnahme den Hinweis einer Änderung des

Folgezugs (z.B. Änderung eines Leerzugs/Flügelzug) aufnehmen? Wird

dadurch eine NAS/NAÄ autom. angestoßen?

A

Ja, in der Stellungnahme auf ein GPE kann der Hinweis auf Folgezüge

oder Flügelzüge, Leerzüge aufgenommen werden.

Bei Berücksichtigung dieser Information wird ein Fahrplanprodukt für

den Folgezug, Leerzug, Flügelzug gesendet.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 19',74,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":19,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','4a26063275e933d89e47c129b0d399cc7ea4de1d94df000a0e13f11a6c6b6abe');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0d1177ae4d3351e3a5717486','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',19,'Seite 20','Häufig gestellte Fragen – FAQ 2

Thema: Annex VII

F

Wer bezahlt eigentlich die Trasse, wenn die Baumaßnahme dann doch

ausfällt, nachdem FPE/NAÄ/Fplo bereits versandt wurde?

A

Es gilt die neue Vertragstrasse. Ein Rückabwicklung zur

ursprünglichen Trasse ist nicht mehr vorgesehen.

Die Bautrasse, die zur Regeltrasse geworden ist, kann kostenfrei

storniert werden. Es kann im Gelegenheitsverkehr eine neue Trasse

bestellt werden.

Es gibt allerdings keine Garantie, dass noch Kapazitäten verfügbar

sind.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 20',82,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":20,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','0450d20d32b9d26d641e4a042c5357d010106cc2dfd4c8d77abf380691358ac0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_072899c393754583f7cc4143','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',20,'Seite 21','Häufig gestellte Fragen – FAQ 3

Thema: Annex VII

F

Wenn für abgestimmte Baukapazitätseinschränkungen (BKE) 4, 6, 7

und 8 im Netzfahrplan zusätzliche Leistungen, wie beispielsweise

Leerfahrten, erforderlich werden: Werde diese ohne Anrechnung von

Trassenkosten bereitgestellt?

A

Nein. Für Leistungen, die aufgrund bereits im Netzfahrplan

eingeplanter Baumaßnahmen entstehen – etwa zusätzliche

Leerfahrten – existiert kein vergleichbares Vorgehen zur kostenfreien

Bereitstellung wie bei unterjährigen Baumaßnahmen.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 21',75,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":21,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','028f1863323edac179fbcabd40a10217bc3827bf3188dba8db9745046af84473');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b9d5a8813560eafeaa4e416e','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',21,'Seite 22','Häufig gestellte Fragen – FAQ 4

Thema: NAÄ

F

Was ist der früheste Zeitpunkt zu dem ein NAÄ im unterjährigen Bau

für das Fplj 2027 durch DB InfraGO versendet wird?

A

Frühestens nach dem ENP (endgültigem Netzfahrplan).

Das erste NAÄ kommt technisch betrachtet mit dem ersten FPE.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 22',58,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":22,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','acd00b3ab4d8c4d7e1f2fe65fc6ad82ea7fed44f8606dd23c3764f2e18c636da');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_748e12bea9d3d1ffa961ac3e','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',22,'Seite 23','Häufig gestellte Fragen – FAQ 5

Thema: Digitale BauFplo

F

Entspricht das FPE (z-8) in Bezug auf die Fahrplanzeiten immer der

später folgenden BauFplo (z-3) oder kann es in diesem Zeitraum

nochmal zu Änderungen kommen?

A

Die Fahrplanzeiten des FPE entsprechen den Fahrplanzeiten in der

digitalen BauFplo. Im Zeitraum zwischen Veröffentlichung FPE und

Veröffentlichung digitaler BauFplo kann es nicht zu Änderungen der

Fahrzeit auf der digitalen BauFplo kommen.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 23',79,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":23,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','3bce28f480be041a7e49308219f4ed6c5a0bdd72ad727645142b3796d90936e0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_77ac8fce7d99a8543a551a13','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',23,'Seite 24','Häufig gestellte Fragen – FAQ 6

Thema: Digitale BauFplo

F

In den digitalen BauFplo, die aktuell in der Betriebserprobung

veröffentlicht werden, werden ursächliche Baumaßnahmen-Nummern

und eine kurze Beschreibung angegeben. Ich habe Sie richtig

verstanden, dies entfällt zukünftig?

A

Ab Fahrplanjahr 2027 werden Baumaßnahmen im neuen Format der

digitalen BauFplo grundsätzlich nicht mehr kommuniziert, da es

keine Veröffentlichungs- oder Darstellungssichtweise für

Baumaßnahmen mehr gibt. Wir fokussieren uns durch den Annex VII

(Regelwerk) an der Zugsicht. Die digitale BauFplo bildet die

betriebliche Durchfahrt am Verkehrstag ab. Informationen zu BKEn

werden über KOMBau im FPE bereitgestellt.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 24',104,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":24,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','6b5753503d4b634c4731561b6c9b5fe0d4b5bc01a36b639706b1ebb746843f25');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7fa7eb3194938e17154b1dd4','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',24,'Seite 25','Häufig gestellte Fragen – FAQ 7

Thema: Digitale BauFplo

F

Fließt die digitale BauFplo in jedem Fall in die EBuLa-Schnittstelle

(sofern Trasse per EBuLa bestellt) ein?

A

Durch die digitale BauFplo wird die EBuLa-Quote deutlich erhöht.

Eine 100%ige Abdeckung können wir jedoch nicht garantieren, da es

im deutschen Netz Strecken gibt, die nicht mit EBuLa berechnet

werden können.

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 25',69,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":25,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','1478602913eeaf68b63a0986cd2140b347134e97f81441d4e969fc2a908d9d44');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1c69a3cb7453b46e4403b1d7','wiki/sources/informationsveranstaltung-vertiefung-ujbau-vom-20-05-2026-data.md',25,'Seite 26','Zeit für Ihre Fragen

30 Min.

Bitte stellen Sie ihre Fragen über die

F&A-Funktion in Teams und voten Sie

interessante Fragen nach oben

DB InfraGO AG | EVU-Informationsveranstaltung | Vertiefung uJBau | 20.05.2026 26',34,'{"canonical_url":null,"normalized_sha256":"d0cb958c05947116684430ae0560c742b54db3575d06994e5af0893cc8409a15","page":26,"source_id":"src_c2cbe5f5c740b62f994d","source_sha256":"ae1196f582f00718fd8357b517ce68ba5a5c7922ad24f2e0b3b9e4d0a50af0e2","source_version_id":"sv_64747c1009b8c053966a8940"}','c5e4a397a47b4efb29952d6fb835a90b6f67737b18459133adf5596dc49fb80f');
--> statement-breakpoint
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
