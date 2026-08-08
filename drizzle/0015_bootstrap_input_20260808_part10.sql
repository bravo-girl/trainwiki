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
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4adb51234af17f14f76fff0e','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',7,'Seite 8','Agenda

Storno-/Annahmequote

Teilzuweisung

Mailtypen/Antwortoptionen

Beantwortung von Fragen

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 8',25,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":8,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','3c1a594752f837ce161402643dbc3c520c8458c5a453acbfd61f8dcfd9c88e0b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_495861463f20ea04da59e68c','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',8,'Seite 9','Umsetzung der Teilzuweisung

Stunde 8 zeitlicher Konflikt

Mo Di Mi Do Fr Sa So

Ausgangslage

4711 A B C D

räumlicher Konflikt

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 9',40,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":9,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','301176054f54b4697aa13ff7cec54a2a03754071a7564b60d3dcaaf70c0a5003');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_048439b6e7083d08d3d05d49','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',9,'Seite 10','Umsetzung der Teilzuweisung

Stunde 8 zeitlicher Konflikt

Mo Di Mi Do Fr Sa So

Ausgangslage

4711 A B C D

räumlicher Konflikt

Verlierer aus

Entscheidungsverfahren

Interesse auf

Teilzuweisung bekundet?

Erwünscht?

nein ja

zeitliche + räumliche

Ablehnung der Trasse zeitliche Einkürzung

Einkürzung

A D

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 10',61,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":10,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','5dff85eaa81b21ef6847815a2f876eb0a01488bd761e91038af92f679b9f3763');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_854ef5b4c90813a0f7dbadde','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',10,'Seite 11','Umsetzung der Teilzuweisung – zeitliche Teilzuweisung

Stunde 8 zeitlicher Konflikt

Mo Di Mi Do Fr Sa So

Ausgangslage

4711 A B C D

räumlicher Konflikt

VT Sa & So

Umsetzung gesamter Laufweg Sa So

zeitliche

Teilzuweisung

A B C D

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 11',58,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":11,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','fddd8a86c8baff71be4496fa2910a72c868c957db7d0759a7968f23e9389656a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2655e696fc6c3e29d4b869ac','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',11,'Seite 12','Umsetzung der Teilzuweisung – zeitliche und räumliche

Teilzuweisung

Stunde 8 zeitlicher Konflikt

Mo Di Mi Do Fr Sa So

Ausgangslage

4711 A B C D

räumlicher Konflikt

VT Sa & So

Umsetzung gesamter Laufweg Sa So

zeitliche

Teilzuweisung

A B C D

Sa So

Umsetzung

Mo Di Mi Do Fr Mo Di Mi Do Fr

zeitliche &

räumliche

A B C D

Teilzuweisung

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 12',81,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":12,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','12a66a8f12a0212d910e245fbd5791449ff3bd3335cb16d37e15dc49d3316062');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_89f2ee1365582e6d04887dd9','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',12,'Seite 13','Abfrage zu Interesse auf Teilzuweisung

Anfrage per E-Mail (Auszug)

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 13',27,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":13,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','3cd1f46bdb9fab86ad0a56840043e8ccde1aabd150f17c6eb33893770a569d17');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4f388b275d1c0d6551882363','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',13,'Seite 14','Teilzuweisung – Zuweisung auf Basis der Kundenrückmeldung

Beispiel

Stunde 8 zeitlicher Konflikt

Mo Di Mi Do Fr Sa So

Ausgangslage

4711 A B C D

räumlicher Konflikt

Antwort per E-Mail Zuweisung

A-B und C-D an Tagen Mo-Fr

A-D an Tagen Sa und So

Vor: A-B an Tagen Mo-Fr, A-D an Tagen Sa und So

Nach: C-D an Tagen Mo-Fr, A-D an Tagen Sa und So

A-D an Tagen Sa und So

KEINE Zuweisung

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 14',91,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":14,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','4ea75fc03c92e646002b2fca4cb8f2d26bcef88747b6df81a1d4585576bbb93d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_05bb73a4fe06a6ac44110ed2','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',14,'Seite 15','Teilzuweisung – Gewünschte und später vom Kunden wieder

stornierte Teilzuweisungen erhöhen die Kunden-Stornoquote

Stornoquote

steigt

Antwort per E-Mail Zuweisung Kundenstorno

TZW gewünscht TZW erfolgt TZW storniert

TZW nicht

angenommen

Annahmequote

sinkt

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 15',49,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":15,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','fe43a4e20aff5f5935e3ccfa809346c53a8d180ad13ab84f36bb2d422cad90b5');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_9bda02c0c01be9bbd8e0a847','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',15,'Seite 16','Agenda

Storno-/Annahmequote

Teilzuweisung

Mailtypen/Antwortoptionen

Beantwortung von Fragen

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 16',25,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":16,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','f79ce68ddb23747e1a9429ca984220228fcad866b88edc982a80a61fb5844f19');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_00ff6ec15f98aff1b6acbe4f','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',16,'Seite 17','Mailtypen – Vorstellung der gängigsten Mailanfragen

EVU

DB InfraGO

• Mail „vereinfachte Koordinierung im DL-Mix / TÜLS“:

• Neben Gesamt-Trassenverzicht auch Anfrage auf Einkürzung/Verzicht der Trasse für den

Konfliktabschnitt bzw. -zeitraum. (Sofern keine Umleitung möglich)

• Mail „Abfrage auf Interesse Teilzuweisung“:

• Angabe ob Interesse auf zeitliche und/oder räumliche Teilzuweisung im Konfliktabschnitt und -zeitraum

besteht.

• Mail „erhöhtes Stornierungsentgelt“:

• Abfrage ob erhöhtes Stornierungsentgelt für angefragten Reference Train akzeptiert wird und dadurch

der Nachrang durch über bzw. unterschrittene Quote(n) ausgeglichen wird

• ...

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 17',101,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":17,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','c9b756d56e402adb584a0bca6ab9c2fc835b1d510597df6ddc258ccef4f11af9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_cac82a3ad65bc0ce11b7fd34','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',17,'Seite 18','Mailtypen – Was ist bei Beantwortung der Mails zu beachten?

DB InfraGO

EVU

Keine Antwort bzw. nicht fristgerechte Antworten gelten als Ablehnung.

Keine Antwort

Schon aus letztem Jahr bekannt. Wer Checkboxen aus technischen Gründen

nicht nutzen kann, kann auch auf andere Weise Antwort markieren.

Checkbox in

Antwortmails

Vorgegebene Fristen sind einzuhalten (Anfragen auf Verlängerungen werden von

uns abgelehnt)  bei Urlaub/Krankheit/Schulung: Bitte sicherstellen, dass eine

Vertretung in der Abwesenheitsnotiz erwähnt ist, damit eine Weiterleitung

Fristen

sichergestellt werden kann.

Keine Abfrage mehr auf zusammenhängende Zugnummern in Bezug auf die

Regelentgeltberechnung. Zusammenrechnung erfolgt nach den Voraussetzungen in

Entgelt- Ziffer 4.2.1.10 der INB 2027.

berechnung

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 18',120,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":18,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','03394e1443de3fff68bf5fac29b858ab9b9167ec2ac296fb81290726c80270d4');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_caf9dd36b99163a350fe22be','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',18,'Seite 19','Agenda

Storno-/Annahmequote

Teilzuweisung

Mailtypen/Antwortoptionen

Beantwortung von Fragen

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 19',25,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":19,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','f28bea11779bea05873bc35c27eb7361a1c4455c6c36a749199290eda940d282');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_09db7b3a18275a40b9eac62f','wiki/sources/unterlage-infoveranstaltung-netzfahrplan-2027-data.md',19,'Seite 20','Beantwortungen von Fragen

DB InfraGO AG | Netzfahrplan 2027 - Infoveranstaltung Teilzuweisungen, Storno- und Annahmequote und E-Mailtypen | April 2026 20',21,'{"canonical_url":null,"normalized_sha256":"75f0ddd23c42a7e0fe931cb72276b13df197b1ad4dc7dcd3531341c6f869f5fa","page":20,"source_id":"src_5cbb3fe592ef3e699d7a","source_sha256":"c18493521040304c96b57d131a1fc3f24a3912fa2d851db9c9686983fbd3baf9","source_version_id":"sv_d4d4bc1ade38ec7d2950d4f6"}','793b0a601a9cd8e0194a32a735034394507f3f5d76ec7f3aa70cad24e4d828ff');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_6564bb0ccae19080edd4','file','Unterlage Vertiefung ujBau 27 11',NULL,'de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_9911c8dfe35973048b5d6173','src_6564bb0ccae19080edd4','61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3','b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939',2663213,'application/pdf','Unterlage-Vertiefung-ujBau-27-11--data.pdf','sources/normalized/bootstrap/unterlage-vertiefung-ujbau-27-11-data/sv_9911c8dfe35973048b5d6173.md','pdfplumber','0.11.9','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","converter":{"name":"pdfplumber","profile":"bootstrap-markdown-v2","version":"0.11.9"},"final_url":null,"import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_9911c8dfe35973048b5d6173.json","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/unterlage-vertiefung-ujbau-27-11-data/sv_9911c8dfe35973048b5d6173.md","normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","origin_page_url":null,"original_filename":"Unterlage-Vertiefung-ujBau-27-11--data.pdf","page_count":41,"raw_binary_committed":false,"requested_url":null,"schema_version":2,"size_bytes":2663213,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173","supersedes_source_version_id":null,"title":"Unterlage Vertiefung ujBau 27 11","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3','src_6564bb0ccae19080edd4','sv_9911c8dfe35973048b5d6173','{"content_duplicate_group":null,"original_filename":"Unterlage-Vertiefung-ujBau-27-11--data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939','src_6564bb0ccae19080edd4',NULL,'{"content_duplicate_group":null,"original_filename":"Unterlage-Vertiefung-ujBau-27-11--data.pdf"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_9911c8dfe35973048b5d6173' WHERE id='src_6564bb0ccae19080edd4';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md','Unterlage Vertiefung ujBau 27 11','EVU Informationsveranstaltung Vertiefung uJBau 27.11.2025 | Frankfurt am Main','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','623e1ef3eca73f4bb8cf20c6578f01c6e4f75cd909918747d577071e78d33898','2026-08-08T12:35:15Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":null,"source_id":"src_6564bb0ccae19080edd4","source_version_id":"sv_9911c8dfe35973048b5d6173"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b7a546b745f9dc173e9157db','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',0,'Seite 1','EVU Informationsveranstaltung

Vertiefung uJBau

27.11.2025 | Frankfurt am Main',9,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":1,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','9595553f97d4e5119f0a2443360c3c9d3b309de39650561e37eba4ec1df7d854');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0a7f7a74308496805ed4971c','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',1,'Seite 2','Agenda

Begrüßung & Einleitung Willkommen! 5 min

Überblick neue unterjährige Fahrplanprodukte 15 min

Veränderung in der

Zusammenarbeit

Konsultationsprozess mittels KOMBau 15 min

zwischen EVU und DB

InfraGO

Überblick „Digitale BauFplo“ 15 min

Ihre Fragen und

Beantwortung Ihrer Fragen 30 min

Hinweise

Abschluss Nächste Schritte 10 min

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 2',60,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":2,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','82d03650416222704b4bb16ea4bf6b46c55f4a0ccba5e8c1edb5aa5af2a3fcf1');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_aa0ef0ddcd101a5b82e107a2','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',2,'Seite 3','Hinweise

für den heutigen

Teams Chat

Termin

Fragen & Kommentare jederzeit während der Präsentation

kurz & auf den Punkt hilft uns beim späteren Beantworten

Voice-Beiträge (Hand heben)

Wir freuen uns

In der Q&A-Phase am Ende des Termins

über eine aktive

Wir schalten gezielt frei; max. ~1 Minute pro Frage, damit viele zu Wort kommen

Teilnahme. Ihre

Gedanken und

Wann antworten wir?

Fragen sind

ausdrücklich Am Ende des Termins in einer gebündelten Q&A-Runde

Wir sammeln und priorisieren währenddessen im Hintergrund

willkommen!

Ziel:

Möglichst viele Fragen, möglichst klare Antworten – fair & respektvoll für alle.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 3',107,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":3,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','5e6b5c1d886e17ef7c99aefd661bc9f77a1c29b1228166c60662f707d97f1849');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_08a85e852a1d9b4d5c78fd4d','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',3,'Seite 4','Veränderungen in der

unterjährigen Baustellenkommunikation

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 4',19,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":4,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','00ac7ec1c94b6c321320f67320d30f6e38000c0a214624fb65f03000ddabca81');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_250fcd74f27a3fe297283266','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',4,'Seite 5','Die heutigen Fahrplanprodukte und die Bereitstellungsart der

Dokumente werden ab Fplj 2027 vollständig abgelöst

Heute: Übersicht Fahrplanprodukte und zugehörige Prozesse

ZvF- ZvF-Endstücke ZvF-Endstücke ÜB ÜB BauFplo

Entwurf1 A-Maßnahmen B-Maßnahmen überreg. überreg.

InfraGO & ÜB NBM SPV/QS SGV

z-24 z-15 z-10 z-8 z-6 bis z-3

Systeme Versand via E-Mail

EVU Stellungnahme

z-21

Annex VII macht europaweite Vorgaben zu Kategorisierung und Fristen in der Kommunikation von

Baumaßnahmen. TAF/TAP TSI (TTT) ermöglicht den standardisierten Datenaustausch zu Zügen

und Trassen.

(1) Bezieht sich auf A-Maßnahmen Prozess

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 5',96,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":5,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','bcf872c82df612bef0fdb7deb778c091cafb5f38b7c1009fd7a3b6b212b7bf0d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_05e462530d075fba2e1ac4fc','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',5,'Seite 6','Die heutigen Fahrplanprodukte und die Bereitstellungsart der

Dokumente werden ab Fplj 2027 vollständig abgelöst

Heute: Übersicht Fahrplanprodukte und zugehörige Prozesse

ZvF- ZvF- ZvF-Endstücke ZvF-Endstücke ÜB ÜB BauFplo

Vorentwurf Entwurf A-Maßnahmen B-Maßnahmen überreg. überreg.

InfraGO & ÜB KS/NBM SPV/QS SGV

z-26 z-24 z-15 z-10 z-8 z-6 bis z-3

Heutige Fahrplandokumente und Bereitstellungsart der Dokumente werden

Systeme Versand via E-Mail

ab Fplj 2027 durch neue Fahrplandokumente und systemische

Bereitstellungsprozesse abgelöst.

EVU Stellungnahme

z-21

Annex VII macht europaweite Vorgaben zu Kategorisierung und Fristen in der Kommunikation von

Baumaßnahmen. TAF/TAP TSI (TTT) ermöglicht den standardisierten Datenaustausch zu Zügen

und Trassen.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 6',110,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":6,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','d07f0dd55e1ce972df2e555f9084d0d374227e94052f2f153f6ab2bbfbf18693');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b7e6b8981a5cd3f4ffb9c3e2','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',6,'Seite 7','Jede Baumaßnahme wird durch Annex VII einer (BKE)-Kategorie

und Konsultationsphase zugeordnet

Baubedingte Kapazitätseinschränkung (BKE)

Baumaßnahme

BKE1-Kategorie Liegt vor, wenn durch eine Baumaßnahme mindestens

Anzahl Anteil geschätztes Auswirkungen

(neu) eine Trasse ganz oder teilweise storniert, umgeleitet oder

aufeinander- Verkehrsaufkommen auf mehr als ein

durch einen anderen Verkehrsträger ersetzt werden

folgender Tage betroffen Netz

muss.

Unerheblich Max. 10% Unerheblich 1

Weitere Informationen finden Sie auf unserer Website.

Bis 7 Mehr als 10% Unerheblich 2

Bis 7 Mehr als 10% bis max. Ja 3 Fpl. 2028

50%

Konsultationsphase 1

Bis 7 Mehr als 50% Ja 4 N BKE 6 - 8 x – 242

Jede BKE wird einer Konsultationsphase 2

Mehr als 7 Mehr als 10% und max. Unerheblich 5

n

30% e Konsultationsphase BKE 4 x - 122

m

u zugeteilt

lo

Mehr als 7 Mehr als 30% Tlw v s 6 N Konsultationsphase 3

g

n

u BKE 2,3 & 5 x - 42

k

Min. 30 Mehr als 50% Unerheblich n ä 7 N

r

h Konsultationsphase 43

c

s

Mehr als 30 Mehr als 50% Tlw n iE 8 N BKE 1 uJ Bau

(1) Baubedingte Kapazitätseinschränkung (2) Monate vor Fahrplanwechsel

Tabelle: Auszug Ril 402.0305A10 BKE-Kategorien N = Netzfahrplan (3) Ausnahmen bei der zugeteilten Konsultationsphase sind geregelt nach Annex VII, Nr. 14

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 7',227,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":7,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','8d58d7c254b7bcaa229c83c8d3f7115ac79eb97ffb89ce8e5d743bbfa1d6c278');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_db3ea1b38ba908fdb7fd5468','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',7,'Seite 8','Mit Annex VII und TTT erwarten Sie neue Begrifflichkeiten

Grobplanungsergebnis Stellungnahme Grobplanungsergebnis nach

(GPE) (SN) Stellungnahme (GPEnS)

Planungsstand einer Zugtrasse

Nach Anpassungswünschen des

von Start bis Ziel mit allen Anpassungswünsche des Kunden

Kunden ggf. geänderte Trasse

Baumaßnahmen

Annex VII & TTT

TTT-Message-Format TTT-Message-Format TTT-Message-Format

Neue (PathDetailsMessage) (PathRequestMessage) (PathDetailsMessage)

Begrifflichkeiten

Feinplanungsergebnis Netzausgelöste Änderung Bau-Fahrplananordnung

(FPE) (NAÄ) (BauFplo)

Basis der

ausdetaillierten Zugtrasse von Umsetzung der vertraglichen

Laufweg der Trasse inkl.

Start bis Ziel mit allen Anpassung

betrieblich relevanter Fahrdaten

Baumaßnahmen der Trasse

TTT-Message-Format TTT-Message-Format Digital verarbeitbare Schnittstelle

(PathDetailsMessage) (PathDetailsMessage) (.xml/.json) & menschenlesbare PDF

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 8',105,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":8,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','1c4d6b1143b7a2b33fb853cba5546d0efe3669035e946d3849ffb5ee67614ef9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_94027b3c9922f0920c338ded','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',8,'Seite 9','Unter Berücksichtigung der Anforderungen von TTT / Annex VII

werden neue unterjährige Fahrplanprodukte eingeführt

Migrationszeitraum Fplj 2027: Übersicht Fahrplanprodukte und zugehörige Prozesse

1 3

GPE1 GPEnS2 FPE3 NAÄ4 BauFplo5

InfraGO

z-24 z-15 z-8 z-8 bis z-3

Webportal

Webanwendung KOMBau PDF per Mail

Systeme pathOS

Common Interface pathOS (Schnittstelle zur Trassenmeldung) API

EVU

Stellungnahme

z-21

2

1 Überblick Planungsdokumente 2 Konsultationsprozess KOMBau 3 Digitale BauFplo / Durchführungsdokument

(1) Grobplanungsergebnis (2) Grobplanungsergebnis nach Stellungnahme (3) Feinplanungsergebnis (4) Netzausgelöste Änderung (5) Baufahrplananordnung

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 9',93,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":9,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','1700da42eaecd930becb2643637082d38f2e35158aa8ed8a4ed2e6f92e0f56f9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4d0b7466dc4ddc23c2e6007e','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',9,'Seite 10','Überblick neue unterjährige

Fahrplanprodukte

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 10',18,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":10,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','88e9861732a35df2e2327fce8560062de99c9334fd2a3ddd513f70cab19f93ed');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7eb780b4fd4ec9fb1ac72d6c','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',10,'Seite 11','Unter Berücksichtigung der Anforderungen von TTT / Annex VII

werden neue unterjährige Fahrplanprodukte eingeführt

Migrationszeitraum Fplj 2027: Übersicht Fahrplanprodukte und zugehörige Prozesse

1

GPE1 GPEnS2 FPE3 NAÄ4 BauFplo5

InfraGO

z-24 z-15 z-8 z-8 bis z-3

Webportal

Webanwendung KOMBau PDF per Mail

Systeme pathOS

Common Interface pathOS (Schnittstelle zur Trassenmeldung) API

EVU

Stellungnahme

z-21

1 Überblick Planungsdokumente

(1) Grobplanungsergebnis (2) Grobplanungsergebnis nach Stellungnahme (3) Feinplanungsergebnis (4) Netzausgelöste Änderung (5) Baufahrplananordnung

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 11',83,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":11,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','1ac0757c858327cb53f5f872165febdd33682a20bb9244813e1e0d01a42f43c7');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c9fcb24f585b025e496d274f','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',11,'Seite 12','Die Migration der Fahrplanproduktwelt vom heutigen Prozess

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

i l a e 1 4 2 1 2 8 1 6 1 4 1 2 1

R z - z - z - z - z - z -

x

e

n

n

A

7

2 n I I GPE

GPE GPE nach

FPE Netzausgelöste FPLO

0 o V Stellungnahme Stellungnahme

2 i t a Änderung

r

g

i

M

3

5 0 -

2 1 1 8 6 z

6 - - - - s

z z z z i

2 B

0 e

2 t u

/ e

5 H

2

0

2

(1) z = Wochen vor Ereignis (2) Bezieht sich auf A-Maßnahmen Prozess

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 12',165,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":12,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','a637ae7b4af4b6c7c151e657a3b285cab4dfca46568bb15062b67abbfc66296b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_85a8cf49c9bd61b571d1d8b6','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',12,'Seite 13','In der neuen Logik sind die Fahrplanprodukte auf die Gesamt-

Zugsicht – anstatt Baustellensicht – ausgerichtet

heute mit TTT

• Für einen Zug mit einer Zugnummer gibt es 1..m • Für einen Zug mit einer Path-ID gibt es 1

abschnitts- und ausschnittsweise Regelungen in Gesamtlaufwegs-Regelung in GPE, FPE und NAÄ.

ZvF/ÜB-Dokumenten.

<TTT>

• Zu demselben Zug mit einer Zugnummer gibt es 1..n • Zu demselben Zug mit 1..o Path-ID gibt es je 1..n eine

abschnitts- und ausschnittsweise Fplo. BauFplo für den Gesamtlaufweg.

• Trasse/Fahrplan ist mindestens bei KS/QS konsistent. • Trasse/Fahrplan sind ggf. zeitlich inkonsistent.

Weitere Informationen finden Sie auf unserer Website.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 13',116,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":13,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','29b1d91896e5f1ba20b14f892f5aa907e91e183c6debe5581c69bd95127965b8');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_681c00111e790c692b546258','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',13,'Seite 14','Wir ermöglichen eine einfachere systemische Verarbeitung von

GPE/FPE durch Bereitstellung im xml-Format

Von Word-Datei via Mailversand... ... zu plattformgestützter Bereitstellung (xml-Format) via KOMBau

Kopfdaten

Detailansicht

Betriebsstelle

Darstellung

des Laufwegs

ZvF GPE (exemplarischer Ausschnitt)

Hinweis: Die dargestellten Inhalte und Daten sind rein fiktiv und entsprechen keiner realen Planung.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 14',61,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":14,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','930e0e04d42b1da5a1301edec93ad0a62a4c5b588c4e2380fb87d9193f1f2bd8');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2a86b4f5662e14a578d72984','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',14,'Seite 15','NAÄ setzt den neuen Vertragszustand für die Trasse um und

wird in pathOS dargestellt

1

2

Details Screenshot aus pathOS

• In der Kopfzeile wird die PathID des

1

ursprünglichen Vertrags angezeigt

• Zudem wird ganz oben die dahinter

2 3

liegende ReferenceTrain ID genannt

• Die gelbe Markierung kennzeichnet,

3

dass alles darunter liegende eine

netzausgelöste Änderung ist und die

Angebotsdetails, Zeiten, Laufwege etc.

darstellt

• Hier sind alle zugehörigen

4

4

netzausgelösten Änderungen

aufgelistet, bei mehreren Angeboten

(kann gemäß der 1:n-Logik auftreten)

auch als einzelne „Angebote“. Alle NAÄ

werden automatisch angenommen. Es

gibt keine weitere Auswahlmöglichkeit.

Hinweis: Die dargestellten Inhalte und Daten sind rein fiktiv und entsprechen keiner realen Planung.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 15',126,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":15,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','496753eb0b492539a9807b0f0a73730f98c31926497fa2253aa2d8a7f315916b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ffcd0b10f4a2f9139f1b2387','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',15,'Seite 16','Ab Mitte 2026 ist mit dem Versand des ersten GPEs zu rechnen

30.08.2026 18.10.2026 22.11.2026

Möglicher Zeitrahmen für

Versand 1. GPE Frist 1. GPE (z-15) Frist 1. FPE (z-8) Frist 1. digitale

BauFplo

Frist 1. NAÄ (z-8)

Jun. Jul. Aug. Sep. Okt. Nov. Dez.

06.07.2026 17.08.2026 13.12.2026

VNP1 (TTT-konform) ENP2 (TTT-konform) 1.Verkehrstag nach

Fahrplanwechsel

1 Das GPE für den 13.12.26 wird spätestens am 30.08.2026 veröffentlicht. Bei früherem Versand kann die Konstruktion auf Basis des VNP

erfolgen. Die Frist für das FPE im SPV ist 18.10.2026 (z-8), die Frist für das FPE im SGV ist z-5 (08.11.2026).

2

Die Stellungnahmefrist von 3 Wochen auf das GPE bleibt bestehen.

3

Es handelt sich jeweils um die spätesten Versandzeitpunkte, insb. die erste digitale BauFplo kann auch früher kommen.

(1) Vorläufiger Netzplanentwurf (2) Endgültiger Netzfahrplan

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 16',145,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":16,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','069d7e7398761a322c0ffd9511e0da3de172c64444f8f2479c425ee9c7c77e4e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a02d509b761433107220bc00','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',16,'Seite 17','Konsultationsprozess

mittels KOMBau

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 17',17,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":17,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','0a736e4c9e5db2c7958ace935b1d81d5a5fa7d11c3a15d3a08210e701fb9881f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_014a87269986c536642b072e','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',17,'Seite 18','Unter Berücksichtigung der Anforderungen von TTT / Annex VII

werden neue unterjährige Fahrplanprodukte eingeführt

Migrationszeitraum Fplj 2027: Übersicht Fahrplanprodukte und zugehörige Prozesse

GPE1 GPEnS2 FPE3 NAÄ4 BauFplo5

InfraGO

z-24 z-15 z-8 z-8 bis z-3

Webportal

Webanwendung KOMBau PDF per Mail

Systeme pathOS

Common Interface pathOS (Schnittstelle zur Trassenmeldung) API

EVU

Stellungnahme

z-21

2

2 Konsultationsprozess KOMBau

(1) Grobplanungsergebnis (2) Grobplanungsergebnis nach Stellungnahme (3) Feinplanungsergebnis (4) Netzausgelöste Änderung (5) Baufahrplananordnung

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 18',83,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":18,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','2ee605d377365e124b2674bf4f679ab0290c3027632e6f71c792c36091c689ec');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e49d6ad7f7f63b00fd50a77f','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',18,'Seite 19','Die KOMBau beseitigt Medienbrüche und erhöht die

Nachvollziehbarkeit für die Kund:innen

Von einer Dokumentenflut ... ...zu einem zentralen Kommunikationsmedium

Unser Ziel ist die Realisierung Weiterentwicklung unter Berücksichtigung der Anforderungen

• Durchgängigkeit und

der Anforderungen von Kunden aus Annex VII – die KOMBau ist für die 1. Konsultationsphase

Historisierung über alle

gem. Annex VII seit August 2023 in Betrieb.

Prozessphasen

Seit Oktober 2024 wird die 2. Konsultationsphase und

seit März 2025 wird die 3. Konsultationsphase über die • Integrierte Erfassung von

KOMBau abgehandelt. Stellungnahmen

• Bedarfsgerechte

Information mit vielfältigen

Filter- und

Exportmöglichkeiten

• Einheitliches

Bedienkonzept in

allen Prozessphasen

• Digitale Schnittstellen

• Tagesscharfe Zuglaufsicht

mit Berücksichtigung von

Mehrfachbetroffenheiten

(MFB)

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 19',122,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":19,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','ed011963fde59ab904eea762a12f1d5160e2b84b5be5fed76436987356458e69');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4daaf404feb3460a0a33b0c3','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',19,'Seite 20','Konsultation mittels KOMBau nach Regelprozess im

Migrationsjahr 2027

Fplj 2027

Das GPE (Grobplanungsergebnis) zeigt geplante Änderungen an einer Trasse.

KOMBau zeigt das GPE unverändert an und wird in Zukunft die Unterschiede

z-24 GPE

zur ursprünglich bestellten Trasse hervorheben.

Durch eine SN (Stellungnahme) kann ein Zugangsberechtigter detailliert auf das

z-21 Annahme SN Ablehnung

GPE der DB InfraGO reagieren. Neben einer Stellungnahme sind auch eine

Annahme oder eine Ablehnung des GPE möglich.

Das GPEnS (Grobplanungsergebnis nach Stellungnahme) ist die von DB

z-15 GPEnS

InfraGO geprüfte und überarbeitete Trassenplanung nach der

Stellungnahmephase. Es enthält alle umsetzbaren Änderungswünsche und zeigt

die neue geplante Trassenführung. ZB können es nur annehmen oder ablehnen,

z-14 Annahme Ablehnung jedoch nicht erneut kommentieren.

FPE FPE Das FPE (Feinplanungsergebnis) markiert den Abschluss des

z-8 (Trasse wird (Trasse wird

Änderungsprozesses und zeigt die endgültige Trassenführung mit finalen

konstruiert) storniert)

Fahrzeiten und bestätigten Betroffenheiten.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 20',156,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":20,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','be555435aa91aabc7f04255996274582111209bcdf7c0418d43dec2667cde123');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_edee05a8b8563613548df56f','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',20,'Seite 21','Detailansicht

Grobplanungsergebnis (GPE) [z-24]

Definition Fahrplanprodukt 1

• Das GPE zeigt geplante Änderungen an einer

Trasse

• Veröffentlichung: Montags 06:00 Uhr als

2

PathDetailsMessage in KOMBau

• Stornierungen: per PathNotAvailableMessage

• KOMBau zeigt GPE unverändert an und wird

zukünftig Unterschiede zur ursprünglich bestellten

Trasse hervorheben

Details Screenshot

1• Zentrale Übersichtsseite mit detaillierter Ansicht

relevanter Trassen

→ Zugriff über Navigationspunkt „GPE & FPE“

• Darstellung der Trassendaten in Tabellenform

2

→ eine Zeile pro Trasse mit relevanten Trasseninformationen für schnellen Überblick

• Strukturierte Themenblöcke erleichtern Analyse

/

und Bearbeitung

Hinweis: Die dargestellten Inhalte und Daten sind rein fiktiv und entsprechen keiner realen Planung.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 21',116,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":21,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','0ba1074ad9416bd0d9dce76135a4093c46e1a0ca36d2153800dccd07dad3c306');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b94e1b6675175b945546e74e','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',21,'Seite 22','Detailansicht

Grobplanungsergebnis (GPE) [z-24]

Definition Fahrplanprodukt

• Das GPE zeigt geplante Änderungen an einer

Trasse

• Veröffentlichung: Montags 06:00 Uhr als

PathDetailsMessage in KOMBau

2

• Stornierungen: per PathNotAvailableMessage

• KOMBau zeigt GPE unverändert an und wird

3

zukünftig Unterschiede zur ursprünglich bestellten

Trasse hervorheben

Details Screenshot 1

• Detaillierte Darstellung eines

1

Planungsergebnisses mit Laufweg,

Laufwegspunkten und Zugcharakteristik

• Enthält direkte Hinweise und Anmerkungen der

2

DB InfraGO

3• Verlinkungen zu Baukapazitätseinschränkungen

• Zukünftig: Vergleich zwischen Planungsergebnis

/

und Regeltrasse

Hinweis: Die dargestellten Inhalte und Daten sind rein fiktiv und entsprechen keiner realen Planung.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 22',109,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":22,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','ee1dc4530ff9bf0a15c9ab5bfcb31bfcccf8ad467f3b530775a884b106ddcfe0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1bb2deb651885a46fa876da6','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',22,'Seite 23','Detailansicht

Stellungnahme (SN) [z-21]

1

Definition Fahrplanprodukt

• Durch das Verfassen einer SN (Stellungnahme)

kann ein Zugangsberechtigter detailliert auf das

GPE (Grobplanungsergebnis) der DB InfraGO

2

reagieren.

• Der Zeitraum für Stellungnahmen umfasst drei

Wochen (z-24 bis z-21).

• Neben einer Stellungnahme sind auch eine

Annahme oder eine Ablehnung des GPE möglich.

Details Screenshot

1• Anpassung von Laufwegen (Umleitungen und

Teilausfälle)

• Anpassung von Laufwegspunktangaben wie

2

Ankunft und Abfahrtzeiten, Haltedauern,

3

Streckenpunktangaben, Haltearten

• Anpassung von Zugaktivitäten und

3

Zugcharakteristiken

Hinweis: Die dargestellten Inhalte und Daten sind rein fiktiv und entsprechen keiner realen Planung.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 23',109,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":23,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','460411e07b0bcc1fd760c045363d5a427f1742af962221753faa5c1c3985baf1');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_60191391b18dbb20ecf61a3d','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',23,'Seite 24','Detailansicht

Stellungnahme (SN) [z-21]

Definition Fahrplanprodukt

• Durch das Verfassen einer SN (Stellungnahme)

kann ein Zugangsberechtigter detailliert auf das

GPE (Grobplanungsergebnis) der DB InfraGO

1 2

reagieren.

• Der Zeitraum für Stellungnahmen umfasst drei

Wochen (z-24 bis z-21).

• Neben einer Stellungnahme sind auch eine

Annahme oder eine Ablehnung des GPE möglich.

Details Screenshot

1• Einbinden neuer möglicher Laufwege, um

Kundenwünsche so genau wie möglich

abzubilden

2• Direkte Visualisierung in den Laufweg der

Stellungnahme

/• Modalentwicklung gemeinsam mit dem Markt

Hinweis: Die dargestellten Inhalte und Daten sind rein fiktiv und entsprechen keiner realen Planung.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 24',108,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":24,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','91cb833bae92d5e8d321f3768da04a41bde84d4304da075aba6c628b74fd5178');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_82bee7690c79a99db2bfd7f2','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',24,'Seite 25','Detailansicht

Grobplanungsergebnis nach Stellungnahme (GPEnS) [z-15]

Definition Fahrplanprodukt

• Das GPEnS ist die von DB InfraGO geprüfte und

überarbeitete Trassenplanung nach der Stellungnahmephase. Es enthält alle bestätigten Änder-

1 2

ungen und zeigt die neu geplante Trassenführung.

• ZB können es innerhalb einer Woche annehmen

oder ablehnen, jedoch nicht erneut kommentieren.

• Bereitstellung: Montags 06:00 Uhr als

PathDetailsMessage.

Details Screenshot

1• Navigation in die vergangene „Meine SN“ oder

auch GPE

• Darstellung des aktuellen Prozessschrittes im

2

Workflow-Assistent der Detailseite als auch

Übersichtsseite

/• Aufbau identisch zur GPE

• Laufweg

• Laufwegspunktangaben

• Zugcharakterisitik

Hinweis: Die dargestellten Inhalte und Daten sind rein fiktiv und entsprechen keiner realen Planung.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 25',122,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":25,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','e7a77abcd78a43845175e9b9134da636387d02e025017c6899de10234f0378d4');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_966ebde67feb92d3c8a89a9e','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',25,'Seite 26','Exkurs

Zustimmen & Ablehnen GPE / GPEnS [z-21 / z-14]

Fristigkeiten

• GPE (3 Wochen Frist)

• Stellungnahme verfassen

1

• Ablehnen

• Zustimmen

• GPEnS (1 Woche Frist)

• Ablehnen

• Zustimmen

Details Screenshot

1• Solange die Frist aktiv ist, kann der Status

verändert werden

• Übergabe an DB InfraGO erst nach Ablauf der

/

Frist

Ablehnen Zustimmen

Hinweis: Die dargestellten Inhalte und Daten sind rein fiktiv und entsprechen keiner realen Planung.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 26',87,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":26,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','6a6033e56ab521f5973a993f1106b0d0dd6e49f9508fab5afd5e938e672c3e52');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7eece4569cb6696e0ba3b52e','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',26,'Seite 27','Detailansicht

Feinplanungsergebnis (FPE) [z-8]

Definition Fahrplanprodukt

• Das FPE (Feinplanungsergebnis) markiert den

Abschluss des Änderungsprozesses und zeigt die

1

endgültige Trassenführung mit finalen Fahrzeiten

und bestätigten Betroffenheiten.

• Bereitstellung: Unmittelbar nach Erhalt als

PathDetailsMessage in KOMBau

Details Screenshot

1• Gleicher Aufbau wie bei einer GPE oder GPEnS

• Dient der reinen Information ohne Möglichkeit

/

eine Stellungnahme abzugeben

• Historisierung des Abstimmungsprozess

/

weiterhin gegeben

Hinweis: Die dargestellten Inhalte und Daten sind rein fiktiv und entsprechen keiner realen Planung.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 27',93,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":27,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','32dd7014fb0bc302d6d1366337bd254504f2151f7dbbf381cc15682f80bee686');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_50c354694cbcf46a7e42feb8','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',27,'Seite 28','Informationen zur KOMBau

Die jeweils aktuellen Release Notes mit

Beschreibung der neuen Funktionalitäten (und

weiteren Optimierungen und Fehlerbehebungen)

sowie die aktualisierte Bedienungsanleitung sind

wie gewohnt veröffentlicht unter:

KOMBau Info (Internet)

Bei fachlichen Fragen, Fehlermeldungen und

Anmerkungen zum Inhalt der KOMBau wenden

Sie sich bitte an:

[E-Mail-Adresse entfernt]

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 2288',61,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":28,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','b70d40f6f20aa1bd661785652fbf41bf99d6efffa409cc8d8fa1e46c656667b5');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0ca85638b0447a29cccccb44','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',28,'Seite 29','Digitale BauFplo

Startschuss für den Hochlauf in 2026

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 29',22,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":29,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','6d5e2c45eca7f63f87ecf420812ba5901d1226c42f2f799afe683ad7c8449ffd');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_700c65e96f9602132596da3f','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',29,'Seite 30','Unter Berücksichtigung der Anforderungen von TTT / Annex VII

werden neue unterjährige Fahrplanprodukte eingeführt

Migrationszeitraum Fplj 2027: Übersicht Fahrplanprodukte und zugehörige Prozesse

3

GPE1 GPEnS2 FPE3 NAÄ4 BauFplo5

InfraGO

z-24 z-15 z-8 z-8 bis z-3

Webportal

Webanwendung KOMBau PDF per Mail

Systeme pathOS

Common Interface pathOS (Schnittstelle zur Trassenmeldung) API

EVU

Stellungnahme

z-21

3 Digitale BauFplo / Durchführungsdokument

(1) Grobplanungsergebnis (2) Grobplanungsergebnis nach Stellungnahme (3) Feinplanungsergebnis (4) Netzausgelöste Änderung (5) Baufahrplananordnung

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 30',85,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":30,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','b36900381a788148cedb8bcfbeec12a4f28155968e24128721e8c65489f97c54');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_db8f29c6d40503a818c04d63','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',30,'Seite 31','Die digitale BauFplo reiht sich in die neue Fahrplanwelt ein und

erzielt positive Effekte bei Digitalisierung und Betrieb

VON ZU

Sicht auf einzelne Baumaßnahmen je BauFplo Sicht auf gesamte Zugfahrt je BauFplo

→ Keine Gesamtsicht → Überregionale Sicht (Start bei Ziel)

Logik

→ Mehrere BauFplo pro Zugfahrt → Eine BauFplo pro Zug und Verkehrstag

Keine unterstützte Schnittstelle Direkte Anbindung an Daten-Schnittstelle

→ PDF sowie xml-Datensätze, ohne → Maschinenlesbare Formate (xml, json)

Format

Gewährleistung, möglich zusätzlich zu PDF

Hoher manueller Aufwand in der Erstellung Automatische Erstellung

→ Hohe Fehlerquote bei Erstellung → Fehlerquellen systemisch ausgeschlossen

Schnittstelle

→ Händisches Zusammenstellen für Zugfahrt → Geringerer Aufwand bei InfraGO und EVU

Geringe EBuLa-Quote Nahezu 100% EBuLa-Quote

Daten-

→ Hohe Anzahl an Sonderlösungen zur digitalen → Standardformat EBuLa

qualität

Darstellung von Fplo

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 31',141,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":31,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','288e953fe1ae178af6cd7aaf717d5529fd4a328574f4d55c7f7388f8ee13c8a9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0b3ecb8be19c7dbacb3aa93a','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',31,'Seite 32','Exkurs: Gegenüberstellung BauFplo alt vs. BauFplo neu

VON ZU

1

Eine Baumaßnahme

Eine

Zugnummer

1-n Bau-

Mehrere

maßnahmen

Zugnummern

Hinweis: Die dargestellten Inhalte und Daten sind rein fiktiv und entsprechen keiner realen Planung.

(1) Aktuelles Format der digitalen BauFplo

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 32',53,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":32,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','265ae8904ab9dac0ca15acef064ad00a2918ca70a27992332e771e2b8227054b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b2e9c3e19a6a83e847d394a2','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',32,'Seite 33','Mit der Betriebserprobung bereiten wir sukzessive die

Einführung der digitalen BauFplo in 2026 vor

Einblick in die laufende Betriebserprobung

Stand 26.11.25

107

107 7

beantwortete Fragen &

veröffentlichte BauFplon teilnehmende EVU

Veröffentlichung im FAQ

5 von 7 8 12

Regionen sind Teil der Erprobung EVU in Vorgesprächen verprobte Anwendungsfälle

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 33',63,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":33,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','592be03fe4dde14247137f58c5d0b3396602d474c5d7445e240b04e22bd2769b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_19c008f7cdf3f22538369515','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',33,'Seite 34','Die DB InfraGO bietet eine unterstützte XML-Schnittstelle zum

digitalen Abruf und Verarbeiten der BauFplo an

Digitaler Datenabruf der BauFplo

Anfrage EVU: Antwort EIU:

Abruf BauFplo Digitale BauFplo

gefiltert nach Zug dieses Zuges an

und Tag diesem Tag

Beschreibung

• Verfügbar sind sämtliche in der PDF vorhandenen

Attribute

• Ein Datensatz entspricht einem Zug

• Eine Schnittstellendokumentation sowie eine Anleitung

für den Testzugang zur BauFplo API sind über unsere

Website abrufbar

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 34',84,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":34,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','82770522dfac0c6cc9e9762dbd73a2f589d90b1b9ef59b69fb9a3d54218bdfe0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_367c81342eef83e74e24079d','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',34,'Seite 35','Mit Einführung des Annex VII im uj Bau löst die digitale BauFplo

die bisherige BauFplo Ende 2026 vollständig ab

Rollout digitale BauFplo 2025-2027

2025 2026 2027

Jan. Febr. März Apr. Mai Juni Juli Aug. Sept. Okt. Nov. Dez. Jan. Febr. März Apr. Mai Juni Juli Aug. Sept. Okt. Nov. Dez. Jan. Febr.

Wichtig: Da es sich bei

der BauFplo um ein

Betriebserprobung

kritisches Fahrplan-

100%

produkt handelt, darf

digitale

ein Zug nur in einem

BauFplo

Format kommuniziert

Hochlauf möglich werden, um die Datenkonsistenz und damit

die Sicherheit zu

wahren.

10/2026

Schnittstellen-Spezifikation

Hochlauf digitale BauFplo in Finale

steht zur Verfügung: EVU-

Abstimmung mit EVU möglich Umstellung

seitige Entwicklung möglich

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 35',122,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":35,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','881f2d59e0d0d523bffe825c6e862c50082f247c7421c9def586e525159c3450');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_37bf3589846b250c840a1a97','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',35,'Seite 36','Die Umstellung auf die neue BauFplo ist alternativlos und

bringt Veränderungen für die EVU mit sich

Auf neuer Logik Systemseitige Anpassungen Veränderte Prozesse und

aufbauen vornehmen Kommunikation umsetzen

Finale Umstellung

− Mehrzahl an Dokumenten aufgrund − Anbindung an Schnittstelle − Zuglauf muss nicht mehr aus

von neuer Logik: Nicht mehr eine empfohlen einzelnen Sammel-Fplon

BauFplo je Baumaßnahme, sondern zusammengesetzt werden, sondern

eine BauFplo je Zug und Verkehrstag − PDF Versand erfolgt weiterhin (im wird als gesamthaftes Dokument

neuen Format) bereitgestellt

Hochlauf 2026

− Bei Teilnahme an der − Im Hochlauf Parallelbetrieb beider − Befähigung Betriebsabläufe,

Betriebserprobung und im Hochlauf Systeme und Prüfung der EVU- Disposition und Tf schon jetzt

ist es notwendig, mit beiden seitigen Systemlandschaft (z.B. sicherstellen

Formaten umgehen zu können Abrechnungssysteme)

Auch wenn seitens EVU keine techn. Anbindung an Schnittstelle erfolgt, wird mit der Einführung von Annex VII und der

digit. BauFplo ab Q4/26 ausschließlich das neue Format mit Trassensicht, bestehend aus PDF und API, bereitgestellt.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 36',172,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":36,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','34436c19af9dba03e2423189aba7900d1f22bcbe34b9b2487252373b70294c3f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7a8970e678c277d03ffd98bf','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',36,'Seite 37','Jetzt an der Betriebserprobung teilnehmen und die Vorteile der

digitalen BauFplo kennenlernen!

Eckpunkte und Inhalte der Betriebserprobung So funktioniert die Teilnahme

Checkliste

Trasse und zugehörige Kontakt aufnehmen über

Fahrplananordnung wird individuell [E-Mail-Adresse entfernt]

ausgewählt

Vereinbarung eines Info-Termins und

Besprechung des weiteren Vorgehens

Abstimmung je nach Konstellation zwischen

Gemeinsame Trassenauswahl

Konstrukteur und EVU notwendig

Trassenauswahl für bestimmte Anwendungsfälle,

Erste digitale BauFplo erhalten

Baumaßnahmen, Züge, Linien oder Bereiche.

Ein Aussetzen ist jederzeit möglich

Feedback senden

EVU kann anhand der digitalen BauFplo ihre internen

Prozesse prüfen, da manuelle Anpassungen aufgrund

Die Betriebserprobung ist die Gelegenheit, um sich

Formatänderung notwendig sein können

bereits jetzt mit dem neuen Format vertraut zu

machen und verschiedene Anwendungsfälle zu erproben!

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 37',126,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":37,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','1884595d6036b5255cfb3d7a2437b88455668e931bb7fcf80fdce04c46e6a0e6');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_fbeff1dd8757bb51a911221e','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',37,'Seite 38','Ihre bisherigen Top-Fragen zur digitalen BauFplo auf einen Blick

Frage Antwort

Wann erfolgt die finale Umstellung auf Die finale Umstellung auf die BauFplo erfolgt zum Oktober 2026. Wird ein FPE von Annex VII

die digitale BauFplo? verschickt, erfolgt automatisch die BauFplo im neuen Trassensicht-Format.

Wie sieht der Hochlauf in 2026 genau In 2026 kann die BauFplo sowohl im alten als auch im neuen Format erhalten werden.

aus? Was erwartet uns als EVUs? Bis zum Oktober 2026 muss jedoch die Komplettumstellung auf die digitale BauFplo erfolgen.

Wieso nutzen wir in der Derzeit ist eine Komplett-Umstellung auf ein System nicht möglich, da wir noch in den

Betriebserprobung zwei Systeme (Alt- Vorprodukten ZvF und ÜB arbeiten und aus diesem Grund Trassen mehrfach erstellen müssten.

und Neusystem) parallel? Wichtig ist jedoch: Eine BauFplo wird immer nur über ein System (und nicht doppelt) versendet.

Kann ich mir alle Züge meines EVUs In der Betriebserprobung erfolgt eine individuelle Abstimmung zwischen EVU und dem

wünschen oder nur bestimmte jeweiligen Konstrukteur zu geeigneten Zügen ausgewählt. Bei einem gewünschten Hochlauf ist

Zugnummern? ebenfalls eine Vorabstimmung sinnvoll.

Gibt es die BauFplo auch für Havarie-

Ab Fahrplanjahr 2027 wird auch die Havarie im neuen Format und somit an der Schnittstelle zur

Fplon oder werden diese im alten Format

Verfügung gestellt.

gesendet?

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 38',224,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":38,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','e23c9926719fb7f974f03c6a30c965aee5ca694da4576f62538849b67d4ae43b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b51684eeae8038eebfd41378','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',38,'Seite 39','Fragen und Hinweise

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 39',17,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":39,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','c555e00334d61d2c72df73ebe44efd0a67e0e29c60fbb453a4a221ff2ca292df');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8364b06806d5c062bed330ce','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',39,'Seite 40','Zeit für Ihre Fragen

30 Min.

Bitte stellen Sie ihre Fragen im Chat und

voten Sie interessante Fragen nach oben

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 40',34,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":40,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','1652c935773c260010edce09228b05631610a865971b3039f8eff25c5323f459');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0cc4135b33250110a4c19f4a','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',40,'Seite 41','So bleiben Sie mit uns in Kontakt

Annex VII KOMBau Digitale BauFplo

Hier geht‘s zur Hier geht‘s zur

Hier geht‘s zur

Website Website

Website

• Informationen zur • Neuerungen auf

• Informationen zum

Webanwendung, inkl. einen Blick

neuen Prozess

Direktlink • Beschreibung

Baukommunikation

• Bedienungsanleitung Testzugang auf

• Zusammenhang mit

• FAQ BauFplo API

KOMBau

• Beispieldokumente in

• FAQ

xml- und json-Format

• FAQ

Sie erhalten die gezeigte Unterlage im Anschluss an diese Veranstaltung.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 41',89,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":41,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','fe576962ec61921c311de8b430ff2a5c9b7e87741c6a6099ba3225f575025bec');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_0ed972984c152ac37d60','file','Über TAF/TAP TSI','https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_7c633488c07b24cabd17e8b9','src_0ed972984c152ac37d60','7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba','2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065',11436,'text/markdown','Über TAF_TAP TSI.md','sources/normalized/bootstrap/uber-taf-tap-tsi.md','identity-markdown','1','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"identity-markdown","version":"1"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"text/markdown","normalized_repo_path":"sources/normalized/bootstrap/uber-taf-tap-tsi.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Über TAF_TAP TSI.md","page_count":null,"raw_binary_committed":false,"schema_version":1,"size_bytes":11436,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9","title":"Über TAF/TAP TSI","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba','src_0ed972984c152ac37d60','sv_7c633488c07b24cabd17e8b9','{"content_duplicate_group":null,"original_filename":"Über TAF_TAP TSI.md"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065','src_0ed972984c152ac37d60',NULL,'{"content_duplicate_group":null,"original_filename":"Über TAF_TAP TSI.md"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','0b85f7c845d9323f0c8ed5fa1fd5d1e2a4e2a0692a180e601c6c097bdc380559','src_0ed972984c152ac37d60',NULL,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_7c633488c07b24cabd17e8b9' WHERE id='src_0ed972984c152ac37d60';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/uber-taf-tap-tsi.md','Über TAF/TAP TSI','Bis zur Einführung von TAF/TAP TSI werden wir unsere Kund:innen so intensiv und detailliert wie möglich informieren und durch diese Veränderung begleiten. Auf dieser Informationsplattform werden alle relevanten Informationen und Unterlagen übersichtlich gebündelt und selbstverständlich regelmäßig aktualisiert und ergänzt. Stärkere Wettbewerbsfähigkeit Weiter','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','6304a9ca9cd6ca7793909267b868b432adfc416f32434a020e80b8636b79d37e','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_0ed972984c152ac37d60","source_version_id":"sv_7c633488c07b24cabd17e8b9"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/uber-taf-tap-tsi.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_80bb882163940814e855ca1b','wiki/sources/uber-taf-tap-tsi.md',0,'Inhalt','Bis zur Einführung von TAF/TAP TSI werden wir unsere Kund:innen so intensiv und detailliert wie möglich informieren und durch diese Veränderung begleiten. Auf dieser Informationsplattform werden alle relevanten Informationen und Unterlagen übersichtlich gebündelt und selbstverständlich regelmäßig aktualisiert und ergänzt.

Stärkere Wettbewerbsfähigkeit

Weitere Digitalisierung und Harmonisierung im Datenaustausch macht den Eisenbahnsektor in Europa wettbewerbsfähiger. TAF/TAP als „gemeinsame Sprache“ für bessere Kommunikation durch eine standardisierte Meldungsstruktur.

Grenzüberschreitend eine Identifikation

Eindeutige und tagesscharfe Identifikation von Zügen und Trassen – räumlich, zeitlich und auch über Netzgrenzen hinweg. Klare Trennung von Zug und Trasse in neuer Objektstruktur und einfacherer Umgang im grenzüberschreitenden Verkehr.

Einheitlicher Kommunikationsweg für Trasseninformationen

Vollständige Neuentwicklung der Trassenanmeldung mit vereinfachter Bearbeitung und Änderung sowie Vereinheitlichung des Kommunikationsweges. Und alles mit neuen benutzerfreundlichen IT-Systemen bei der DB InfraGO AG.

Bessere betriebliche Durchführung

Deutlich verbesserte betriebliche Durchführung durch qualitativ hochwertigen Austausch zwischen beteiligten EIU und EVU. Bessere Prognosequalität durch höheres Informationslevel und größere Verfügbarkeit von Echtzeitdaten.',152,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','5593b497c967f2d8976db3f3eea124ec05e8356324c4671c26fdec2f0aac6e55');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a40e634538bc24e4cef50fbf','wiki/sources/uber-taf-tap-tsi.md',1,'Vertiefende Informationen zu TAF/TAP TSI','1\. Übergreifende Information - thematische Einleitung

Die Europäische Union definiert mit den technischen Spezifikationen für die Interoperabilität (TSI) europaweit die Anforderungen für die Entwicklung von interoperablen Telematikanwendungen im Güter- und Personenverkehr (TAF und TAP) für alle Bahnakteure (Eisenbahninfrastrukturunternehmen, Eisenbahnverkehrsunternehmen, Spediteure, Wagenhalter etc.). Die entsprechenden Verordnungen der EU, 1305/2014 (TAF TSI) und 454/2011 (TAP TSI), beinhalten u. a. die Vorgaben und Anforderungen an die Standardisierung für Anmeldungen von und Angebote für Trassen sowie den Austausch betrieblicher Meldungen zu Zügen. Daraus resultiert in Zukunft eine einfachere und effizientere Planung und Disposition von Verkehren entlang der gesamten Logistikkette auf der Schiene, insbesondere über Infrastruktur- und Ländergrenzen hinweg, sowie eine standardisierte und digitalisierte Kommunikation zwischen allen Beteiligten.

Die DB InfraGO AG arbeitet – parallel zur Ablösung der derzeitigen Verfahren zur Trassenanmeldung, Fahrplanerstellung und Betriebsführung – intensiv an der Umsetzung der genannten Verordnungen. Bereits zum jetzigen Zeitpunkt besteht für Eisenbahnverkehrsunternehmen die Möglichkeit, ausgewählte betriebliche Meldungen pilothaft im TAF/TAP-Format zu erhalten. Ferner können Eisenbahnverkehrsunternehmen dedizierte Zugbildungsdaten bereits heute TAF/TAP-konform an die DB InfraGO AG übersenden. Die Umsetzung im Betrieb folgt vorgelagert zum Dezember 2025 (Fahrplanwechsel 2025/2026) – allerdings zunächst noch auf Basis der heutigen Identifikatoren: OTN bzw. Zugnummer. Die Planungen der DB InfraGO AG sehen vor, die Umsetzung der TSI TAF/TAP in den Fahrplansystemen zum Jahresplan 2027 abzuschließen.',212,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','bb6b21ff8722af27707aef2cd550a9792eda978f06e46197528ed7637e9fd398');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e368d8d6d55080bd9a12c371','wiki/sources/uber-taf-tap-tsi.md',2,'Vertiefende Informationen zu TAF/TAP TSI','Die DB InfraGO AG wird weiterhin bis zur Einführung die Kommunikation rund um TAF/TAP TSI fortführen und die breit angelegte Kommunikationskampagne ausbauen. Alle Unterlagen und Materialien finden sich dann immer auf der Informationsplattform wieder – anstehende Kundenveranstaltungen und Termine ebenfalls, diese im Bereich „Events“. Konkrete Schulungsmaterialien für das neue Anmeldesystem pathOS werden sich künftig direkt auf der pathOS-Webseite wiederfinden und sukzessive erweitert.

Trotz allem gilt es sich auch eigenständig und intensiv mit der Thematik TAF/TAP zu beschäftigen – denn am Ende müssen alle mitmachen!

Ziel ist es, EU-weit die Implementierung der TSI TAF und TAP möglichst harmonisiert und standardisiert zu gestalten sowie fachliche und inhaltliche Interpretationsspielräume zu vermeiden. Innerhalb der europäischen Verordnungen existieren derzeit Teilbereiche, bei denen verbindliche Vorgaben noch ausstehen bzw. aktuell – bspw. anhand von Pilotprojekten – in Erarbeitung sind. Die Festlegung der derzeit noch offenen Vorgaben kann den von der DB InfraGO AG angestrebten Zeitplan beeinflussen.

2\. Allgemeine Unterlagen, EU-Verordnungen und Sektorhandbuch

An dieser Stelle finden Sie immer die aktuelle Kurzpräsentation der DB InfraGO AG in Deutsch und Englisch mit einer Zusammenfassung der wesentlichen Änderungen, die TAF/TAP bei der DB InfraGO AG mit sich bringt.

Zudem gibt es hier ebenfalls die aktuellen Versionen der EU-Verordnungen in Deutsch. Da sich diese jedoch ändern können und zudem auch in anderen Sprachen zur Verfügung stehen, haben wir hier noch den direkten Link zur offiziellen Webseite der EU hinterlegt: Startseite [EUR-Lex](https://eur-lex.europa.eu/homepage.html "Wird in einem neuen Tab geöffnet").',236,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','6b5911b05f9863a110051971ee4afdb2dba755aafedb1c34148167e39e050beb');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f3c4e51c61048035cfcfa0a5','wiki/sources/uber-taf-tap-tsi.md',3,'Vertiefende Informationen zu TAF/TAP TSI','Viele essentielle Dokumente für die Umsetzung von TAF/TAP TSI sowie weitere fachliche Vertiefungen finden sich auf der [Homepage der Joint Sector Group (JSG)](http://taf-jsg.info/ "Wird in einem neuen Tab geöffnet"). Dort ist auch das jeweils aktuelle Sektorhandbuch zu finden – direkt auf der Startseite am rechten Rand. Dieses ist quasi eine Art Umsetzungsanleitung für TAF/TAP TSI.

Weitere allgemeine Informationen:

[Kurzpräsentation TAF/TAP TSI bei der DB InfraGO AG - Deutsch (PDF | 2,0 MB)](https://www.dbinfrago.com/resource/blob/11089276/26c6ac26e595835ef6813a0b0082cd24/Download-Kurzpraesentation-InnoTrans-DE-data.pdf "Es wird eine Datei heruntergeladen")

[Management Summary TAF/TAP TSI at DB InfraGO AG - English (PDF | 578,0 KB)](https://www.dbinfrago.com/resource/blob/11089278/3740e56280d501b3d3ae30baa52e3afa/Download-Kurzpraesentation-InnoTrans-EN-data.pdf "Es wird eine Datei heruntergeladen")

3\. "Flyer-Bibliothek" - Wichtige Themen auf einer Seite erklärt

[Flyer zum Company Code (PDF | 500,7 KB)](https://www.dbinfrago.com/resource/blob/11089290/4d0d46e1e07b0fb5a22f8a6bd4cff0b7/Flyer-Company-Code-data.pdf "Es wird eine Datei heruntergeladen")

[Flyer pathOS (PDF | 133,3 KB)](https://www.dbinfrago.com/resource/blob/11089292/ddf605e647c997ba20c272183179ef7d/Flyer-Neues-Bestellsystem-pathOS--data.pdf "Es wird eine Datei heruntergeladen")

[Flyer zu den TAF/TAP Identifikatoren (PDF | 350,4 KB)](https://www.dbinfrago.com/resource/blob/11089294/6a4b5990c9ce96a7a1bb71efa5c48f16/Flyer-TAF-TAP-Identifikatoren-data.pdf "Es wird eine Datei heruntergeladen")

[Flyer zum National Contact Point (NCP) (PDF | 192,0 KB)](https://www.dbinfrago.com/resource/blob/11089296/2af27698e8ca6f1897d945b1bfe322b9/Flyer-National-Contact-Point-data.pdf "Es wird eine Datei heruntergeladen")',158,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','0a892b199c931656ee8655a59d9e659c17f042586157782a5699c25f33d5a7a7');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8e9ce6854273b977d6f8a5a6','wiki/sources/uber-taf-tap-tsi.md',4,'Vertiefende Informationen zu TAF/TAP TSI','[Flyer zur TCM/PTCM (PDF | 189,4 KB)](https://www.dbinfrago.com/resource/blob/11089298/4e18e826234c994109813595aeb14eec/Flyer-TCM-PTCM-data.pdf "Es wird eine Datei heruntergeladen")

[Flyer zum Common Interface (techn. Schnittstelle) (PDF | 201,9 KB)](https://www.dbinfrago.com/resource/blob/11089300/4ecb2b413d7c89a1eb2c6d9d7fe4bb80/Flyer-Common-Interface-data.pdf "Es wird eine Datei heruntergeladen")

[Flyer zur Umsetzungs-Checkliste TAF/TAP TSI für EVU (PDF | 214,3 KB)](https://www.dbinfrago.com/resource/blob/11089304/748022c34b79d03bdd3e6ae0e5914836/Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf "Es wird eine Datei heruntergeladen")

[Flyer zum Location Coding (PLC) (PDF | 201,7 KB)](https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf "Es wird eine Datei heruntergeladen")

[Flyer zur Unterjährigen Baukommunikation nach Annex VII (PDF | 188,8 KB)](https://www.dbinfrago.com/resource/blob/13011080/a3545a1d844e118ef682864da6054eab/Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf "Es wird eine Datei heruntergeladen")

4\. TAF/TAP in der Trassenanmeldung

An dieser Stelle werden weitergehende und vertiefte Informationen rund um das neue Bestellsystem zur Trassenanmeldung hinterlegt. Einen noch detaillierteren Blick erhalten Sie jederzeit auf [PathOS](https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/pathOS-neues-Bestellsystem--13003480 "Wird in einem neuen Tab geöffnet").

5\. TAF/TAP im Betrieb',113,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','a1d4c11c71319fa0c9f0620500f340676649f3ddacd6c8a5b891aa0efafdfc3c');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7eaaf7330ef5a291404c50ce','wiki/sources/uber-taf-tap-tsi.md',5,'Vertiefende Informationen zu TAF/TAP TSI','An dieser Stelle finden Sie grundsätzliche Informationen zu TAF/TAP im Betrieb der DB InfraGO AG. Weitere Informationen zur insbesondere technischen Umsetzung von TAF/TAP im Betrieb finden Sie auf den beiden Reitern " [Betrieb: Meldungen DB InfraGO AG an EVU](https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/betrieb-meldungen-db-infrago-ag-an-evu-11089210 "Wird in einem neuen Tab geöffnet") " und " [Betrieb: Meldungen EVU an DB InfraGO AG](https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/betrieb-meldungen-evu-an-db-infrago--11089212 "Wird in einem neuen Tab geöffnet") ".

Eine Übersicht über die TAF/TAP im Betrieb im Allgemeinen und die Umsetzung bei der DB InfraGO AG im Speziellen bietet die folgenden Präsentation:

[Übersicht und Einordnung - TAF/TAP im Betrieb der DB InfraGO AG (PDF | 1,2 MB)](https://www.dbinfrago.com/resource/blob/12599502/ff17862a59a7a68bdcc076eea45d1993/Download-Uebersicht-und-Einordnung-TAF-TAP-im-Betrieb-data.pdf "Es wird eine Datei heruntergeladen")

Hier finden Sie **Erklärvideos zum TAF/TAP-Meldungsaustausch bei betrieblichen Störfallszenarien**. Diese basieren auf Annex 13 des europäischen TAF/TAP RU/IM Sector Handbook:',125,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','3d299157f8c15c88eb973be6466b4f385c0e884d9001bff99f11773cef0b8775');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2ddc82da45981254e9bba67b','wiki/sources/uber-taf-tap-tsi.md',6,'Vertiefende Informationen zu TAF/TAP TSI','- [TAF/TAP im Betrieb - Kapitel 1: Standardmeldungen](https://ecm-mediathek-cdn.deutschebahn.com/resources/video7/video_embed.html?url=/cdnenhancedecmvidhls/db297946/2834184/video_config.json&autostart=false&defaultquality=0&mute=false "Wird in einem neuen Tab geöffnet")
- [TAF/TAP im Betrieb - Kapitel 2: Verspätung / Gleiswechsel](https://ecm-mediathek-cdn.deutschebahn.com/resources/video7/video_embed.html?url=/cdnenhancedecmvidhls/db297990/2834576/video_config.json&autostart=false&defaultquality=0&mute=false "Wird in einem neuen Tab geöffnet")
- [TAF/TAP im Betrieb - Kapitel 3: Doppelführung](https://ecm-mediathek-cdn.deutschebahn.com/resources/video7/video_embed.html?url=/cdnenhancedecmvidhls/db298039/2834566/video_config.json&autostart=false&defaultquality=0&mute=false "Wird in einem neuen Tab geöffnet")
- [TAF/TAP im Betrieb - Kapitel 4: Zuglauf wird geteilt](https://ecm-mediathek-cdn.deutschebahn.com/resources/video7/video_embed.html?url=/cdnenhancedecmvidhls/db298040/2834586/video_config.json&autostart=false&defaultquality=0&mute=false "Wird in einem neuen Tab geöffnet")
- [TAF/TAP im Betrieb - Kapitel 5: Zug wird umgeleitet](https://ecm-mediathek-cdn.deutschebahn.com/resources/video7/video_embed.html?url=/cdnenhancedecmvidhls/db298041/2834596/video_config.json&autostart=false&defaultquality=0&mute=false "Wird in einem neuen Tab geöffnet")',76,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','fde9040a79c1e3ffd0332fbb61229a30f1da618a745a0388ac0577b14bda0d2a');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_15a62986bf5cb9217f1c','file','Überblick - Trassenanmeldung zum Netzfahrplan und im Gelegenheitsverkehr','https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/ueberblick-10907392','de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_7b15f5b01728d3b71a6f9897','src_15a62986bf5cb9217f1c','d1d89d8b90a962ba16dce9b22ae218e7b0ccd766b71ff68a904b7006e4d94e4b','7fd9db8d5533ab30214d2ac05eff7c2c5c6bed0147989a4dff4a9d0e86d2a489',3293,'text/markdown','Überblick - Trassenanmeldung zum Netzfahrplan und im Gelegenheitsverkehr.md','sources/normalized/bootstrap/uberblick-trassenanmeldung-zum-netzfahrplan-und-im-gelegenheitsverkehr/sv_7b15f5b01728d3b71a6f9897.md','identity-markdown','1','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/ueberblick-10907392","contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"d1d89d8b90a962ba16dce9b22ae218e7b0ccd766b71ff68a904b7006e4d94e4b","converter":{"name":"identity-markdown","profile":"bootstrap-markdown-v2","version":"1"},"final_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/ueberblick-10907392","import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_7b15f5b01728d3b71a6f9897.json","media_type":"text/markdown","normalized_repo_path":"sources/normalized/bootstrap/uberblick-trassenanmeldung-zum-netzfahrplan-und-im-gelegenheitsverkehr/sv_7b15f5b01728d3b71a6f9897.md","normalized_sha256":"7fd9db8d5533ab30214d2ac05eff7c2c5c6bed0147989a4dff4a9d0e86d2a489","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/ueberblick-10907392","original_filename":"Überblick - Trassenanmeldung zum Netzfahrplan und im Gelegenheitsverkehr.md","page_count":null,"raw_binary_committed":false,"requested_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/ueberblick-10907392","schema_version":2,"size_bytes":3293,"source_id":"src_15a62986bf5cb9217f1c","source_sha256":"d1d89d8b90a962ba16dce9b22ae218e7b0ccd766b71ff68a904b7006e4d94e4b","source_version_id":"sv_7b15f5b01728d3b71a6f9897","supersedes_source_version_id":null,"title":"Überblick - Trassenanmeldung zum Netzfahrplan und im Gelegenheitsverkehr","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','d1d89d8b90a962ba16dce9b22ae218e7b0ccd766b71ff68a904b7006e4d94e4b','src_15a62986bf5cb9217f1c','sv_7b15f5b01728d3b71a6f9897','{"content_duplicate_group":null,"original_filename":"Überblick - Trassenanmeldung zum Netzfahrplan und im Gelegenheitsverkehr.md"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','7fd9db8d5533ab30214d2ac05eff7c2c5c6bed0147989a4dff4a9d0e86d2a489','src_15a62986bf5cb9217f1c',NULL,'{"content_duplicate_group":null,"original_filename":"Überblick - Trassenanmeldung zum Netzfahrplan und im Gelegenheitsverkehr.md"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
