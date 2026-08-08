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
