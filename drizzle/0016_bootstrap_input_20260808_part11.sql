INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/fragenkatalog-annex-vii-data.md','Fragenkatalog Annex VII','I.NPB 2 (B) Fragenkatalog ANNEX VII 4. Konsultationsphase Stand vom 01.07.2026 DB InfraGO AG Ersteller: V.IWF 41 01.07.2026 Version 3.0','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','c903daa3e22cf39ccf82df12a8fd0acac7df91d11b6a0196d213836edb55c794','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_49e6bd4a29f18c068815","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/fragenkatalog-annex-vii-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f0ff8a9d9b0d5bbff4a8d42c','wiki/sources/fragenkatalog-annex-vii-data.md',0,'Seite 1','I.NPB 2 (B)

Fragenkatalog ANNEX VII

4. Konsultationsphase

Stand vom 01.07.2026

DB InfraGO AG

Ersteller: V.IWF 41

01.07.2026

Version 3.0',20,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":1,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','f2c080689c4c32f360b319daa28ddac44f81c8c6cd2c71331700433be689c61b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_672396d697279a44bd54be8d','wiki/sources/fragenkatalog-annex-vii-data.md',1,'Seite 2','Allgemein ANNEX VII

1.1 Wie wird ANNEX VII in den DB RegioNetz Verkehrsgesellschaft GmbH und den beiden

Gleichstrom Netzen S-Bahn Hamburg und S-Bahn Berlin umgesetzt werden? Werden

diese genannten Netze identisch zu den anderen DB InfraGO Netzen umgesetzt oder gibt

es hier Abweichungen?

Die INB gelten auch für DB RegioNetz und S-Bahn Netze, der ANNEX VII unterscheidet hier

nicht.

1.2 Wann wird es eine Visualisierung/graphische Darstellung der Konsultationszeiträume

im ANNEX VII geben.

Wir werden uns anhand der veröffentlichten Terminkalender orientieren und gemäß der Ril.

402.0305 und haben beim Terminkalender eine visualisierte Darstellung für das Jahr 2026 und

seinen jeweiligen Konsultationsphasen hinzugefügt.

1.3 Wie wird sichergestellt, dass Aufgabenträger die Informationen zum ANNEX VII erhalten und die KOMBau nutzen können.

Alle Details zu ANNEX VII sind diskriminierungsfrei auf unserer Website veröffentlicht. Um die

Leistungen der DB InfraGO beziehen zu können und eine eigene Kundennummer zu erhalten,

ist ein G-INV, Grundsatzinfrastrukturnutzungsvertrag erforderlich. Dieser ist jährlich neu abzuschließen nach den INB (Infrastrukturnutzungsbedingungen). Sofern kein eigener G-INV vorhanden ist und auch keine Absicht besteht einen eigenen G-INV zu erhalten, kann bei entsprechender Zustimmung ein lesender Zugang über die Kundennummer des EVU eingerichtet werden. Der G-INV ist eine Anlage der INB (Anlage 3.2.1.1) und dort regulär zu finden.

1.4 Die parallellaufenden Stellungnahmen in der KOMBau und PlaTo bringt die Regionen,',214,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":2,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','76abbbc63a77064a4dc7c6888b9de6df4b737ea6eb94e65d6b21b6850b484b90');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_28540950e047292e2988b9a9','wiki/sources/fragenkatalog-annex-vii-data.md',2,'Seite 2','in der ohnehin angespannten Lage mit Verfristungen von Baumaßnahmen, an ihre Belastungsgrenze. Wie stehen nach Einführung von Annex VII – KOMBau und PlaTo zueinander? Wo werden in Zukunft Ergebnisse, wie zum Beispiel die Alternativprüfungen x-33,

kommuniziert und hinterlegt?

PlaTo dient als System für den Übergang bis alle Konsultationsphasen und deren Besonderheiten in der KOMBau vollumfänglich abgebildet werden können.

1.5 Frage zum betroffenen Verkehrsaufkommen in den BKE-Kategorien. Wenn es sich um

nächtliche Sperrungen handelt, wird für die Berechnung der % das Verkehrsaufkommen

des ganzen Tages zugrunde gelegt oder nur für die Stunden, in denen tatsächlich gesperrt ist?

Die Kapazitätseinschränkung ist über 24 Stunden zu berechnen/anzugeben.

Dabei werden die Züge, die durch die Baustelle(n) nicht mehr verkehren können, ins Verhältnis

zu den Zügen gesetzt, die über 24 Stunden verkehren.

Beispiel:

•Über 24 Stunden verkehren 100 Züge.

•Durch eine nächtliche TSP (Totalsperrung) sind 25 Züge betroffen. Diese 25 müssten also umgeleitet werden oder ausfallen.

•25 von 100 sind 25% - somit ergibt sich für den einen Tag eine Kapazitätseinschränkung von

25%.

Die Vorgehensweise wird in Abschnitt 2 der Richtlinie 402.0305 beschrieben.

V.IWF 41 Fragenkatalog 2',182,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":2,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','5a7f303cf2108d5b9ed5f56381ebf7d295cae1ca7c975c7c33e0c3a33b9f6c63');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_6827075ccaa05497314df157','wiki/sources/fragenkatalog-annex-vii-data.md',3,'Seite 3','1.6 Wie granular sollen Stellungnahmen sein? Zu welchem Zeitpunkt soll u.a. die Erreichbarkeit von Serviceeinrichtungen (SE) mit betrachtet werden?

Die DB InfraGO konsultiert Baumaßnahmen nach den Fristen des Annex VII und ist daher bestrebt frühzeitig über Einschränkungen zu informieren. Gleisscharfe Einschränkungen an SE

werden erstmals ab der 2. KP veröffentlicht. Sind hier Gleise betroffen, auf denen Sie einen

Mehrjahresvertrag haben, bitte wir sie dies in der Stellungnahme mitzuteilen, damit hier zeitnah

nach Ersatz geschaut werden kann.

Falls Sie bereits in der 1. KP feststellen, dass durch BKEn für Sie wichtige SE ggfs. eingeschränkt sind, können Sie uns dies natürlich gerne mitteilen. Dies könnte dann, sofern möglich,

im weiteren Planungsverlauf der Maßnahme berücksichtigt werden.

In jedem Fall ist zu beachten, dass Einschränkungen nach Abschluss einer Konsultationsphase

i.d.R. kein weiteres Mal zu Stellungnahme veröffentlicht werden.

1.7 Stellungnahmen, die in Konsultationsphase (KP) 1 abgegeben wurden, sollten/müssen über die einzelnen KP mitgenommen werden können bzw. sichtbar sein.

Die Stellungnahme ist immer in dem Zeitpunkt einsehbar in dem diese auch abgegeben wurde.

1.8 Wann erfolgte die unterjährige Anpassung der INB 2027 und welche Themen betraf

das?

Veröffentlichung der Kund:inneninformation war am 12.02.2026. Bis zum 12.03.2026 war Zeit

Stellung zu nehmen. Es werden verschiedene Regelungen in der Richtlinie 402.0305 für die

INB 2026 und / oder 2027 überarbeitet. Für die INB 2026 und 2027 werden der Abschnitt 7 (1)

bzw. Abschnitt 8 (1), Abschnitt 9 (1) bzw. 10 (1) und Abschnitt 16 (1) bzw. 15 (1) geändert. Für

die INB 2027 werden zusätzlich die Abschnitte 8 (6), 10 (7) und Abschnitt 16 (1) angepasst.',258,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":3,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','e01509d66eb3b518abca297d72425163f23f9784706d1e55d0d78562454efc6a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_18b1a1b809859476b8c5a097','wiki/sources/fragenkatalog-annex-vii-data.md',4,'Seite 3','1.9 Welche BKE-Nummern werden dargestellt und wie ist das verbindliche Format?

Die ID''s der 1. Konsultationsphase beschreiben den Bautaktkorridor/die Bauaktphase. Die ID''s

der 2.-4. Konsultationsphase beschreiben die BKE, die aus dem BKE-Verwaltungssystem geliefert werden.

1.10 Kann auf eine bereits abgestimmte BKE 7 aus der 1. und 2. Konsultationsphase in

der 3. Konsultationsphase noch ein BKE 2 folgen?

Der konsultierte Stand der 2.KP geht in den Netzfahrplan und bildet die Grundlage für die Fpl.-

Konzepte der 3.KP. D. h., abgestimmte BKE der 2.KP können mit BKE der 3.KP in der 3.KP

bzw. BKE der 4.KP in der 4.KP nochmal zusätzlich koordiniert werden.

V.IWF 41 Fragenkatalog 3',105,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":3,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','852175fd81bb2939265865921e87c9d8da2c632809ce7525dfb2ba8c8d73ed54');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1858e6d1027599ded0466af7','wiki/sources/fragenkatalog-annex-vii-data.md',5,'Seite 4','IT

1.1 Ist die Einführung eines neuen TC-Objektes (Bau ID) für Fplj 2026 vorgesehen

Es handelt sich hierbei nicht um ein neues Objekt, sondern einen neuen Objekttype für die Baumaßnahme. Der Objekttype ist bereits in der xsd vorhanden.

1.2 Wir gehen davon aus, dass die GPE, wenn sie inhaltlich gleich sind, immer in einem

Datensatz/PathRequest geschickt werden.

Bei einem GPE handelt es sich nicht um einen PathRequest, sondern eine PathDetailsMessage. Wenn ein Zug im GPE an 7 Tagen gleich ausgeregelt ist, wird ein GPE versendet. Die

Stellungnahme (PathRequestMessage) ist ebenfalls gesammelt (also nur eine SN auf ein GPE)

und am Anfang nicht einzeln möglich.

1.3 Object Info Message zu Start KP 4 – Gibt es eine abschließende Entscheidung zur

Einführung? Die Frage bezieht sich auf die finale Entscheidung für den Zielzustand.

Für den Migrationszeitraum ist keine Umsetzung der OIM geplant. Die OIM kommt nicht vor der

vollständigen Einführung TTT.

1.4 Gibt es schon eine Idee, wie die BKEID aussehen soll, wenn sie nicht CR ist? Die

Case Reference ID sind für unterschiedliche Geschäftsvorfälle. Wichtig ist, dass diese ID

eineindeutig sein muss. Wissen wir wie das Core-Element also die BKE-Nr. aussieht?

Die 24-stellige ID wird sich nur an den ersten beiden Stellen verändern. Die ersten beiden Stellen beschreiben den ObjektType. Dieser ändert sich von „CR“ zu „TC“. Der Core der BKE-ID

ergibt sich aus verschiedenen Parametern, die eine eindeutige ID ergeben.

1.5 Heute werden Dauer-LÜ manchmal in den Fplo angemerkt, wo / wie soll das in TTT

gemacht werden?

Wir ändern nichts am bisherigen Vorgehen. Die Dauer Lü ist erst in der BauFplo hinterlegt.

1.6 Werden die DB InfraGO AG Ansprechpartner:innnen auch über die Schnittstelle geliefert?',275,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":4,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','311ec23abb1886fc1a745e7d042679288fd53bbb4846e2fcdffa7f6f6a344fe9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2896b4cb18835141208d7ba7','wiki/sources/fragenkatalog-annex-vii-data.md',6,'Seite 4','Die Kontaktinformationen werden auch über die Schnittstelle geliefert.

1.7 Wo genau sehen wir bei GPE/FPE den/die Ansprechpartner:in für Rückfragen bei der

DB InfraGO AG. Können wir das Testen?

Kontaktmöglichkeiten finden Sie unter dem Abschnitt Kontaktinformationen in den Fahrplanprodukten.

1.8 Momentan kommunizieren wir intern und mit DB InfraGO zu Baustellen mit der ZvF- /

Fplo- Nummer. Diese hat 5 Stellen und eine logische numerische Ziffernfolge. Wie wird

die zukünftige Kennzeichnung der Baumaßnahmen erfolgen? Mit welchem Merkmal erkennt man, welches GPE zusammengehört? Eine einfache, maximal fünfstellige Vorgangsnummer wäre auch weiterhin wünschenswert. Die momentan verwendeten 8- stelligen alpha-numerischen BKE-Nummern erfüllen diese Voraussetzungen nicht.

Die zugehörigen BKE-Nummern werden an das jeweilige GPE verknüpft.

BKE-Nummern entsprechen dem Format der TTT-Identifier und sind 24-stellig. Der Core des

Indentifiers enthält die BKE-ID.

V.IWF 41 Fragenkatalog 4',129,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":4,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','d3e3e062bc2b5aeca864594bdafdb47185a709cde44afd235c6e7633aaf4a13a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7900f9f38b513ea797f6f794','wiki/sources/fragenkatalog-annex-vii-data.md',7,'Seite 5','1.9 Nach einen GPE soll die Beschreibung für die Stellungnahme nicht mehr notwendig

sein, sondern das EVU soll ein alternativ Trassenvorschlag in Form einer gesamten

Trasse bestellen. Verschlechterung und kann nicht hingenommen werden da diese ein

erheblicher Mehraufwand nach sich zieht.

Das Senden einer Gesamttrasse ist notwendig.

1.10 Ist gewährleistet, dass bei einem Angebot einer Umleitungstrecke, die Streckenklasse im gesamten Laufweg angezeigt und ersichtlich ist?

Die Streckenklasse wird ersichtlich sein.

1.11 Der Prozessschritt „Entwurf Ausfall nach Stellungnahme“ sieht nicht vor, dass das

EVU auf das ursprüngliche GPE zurückfallen kann, wenn DB InfraGO den Änderungsvorschlag des EVU nicht umsetzen kann. Diese Vorgehensweise kann nicht akzeptiert werden. Es wird jegliche Stellungnahme zum GPE verhindert, wenn das EVU dabei das Risiko eines Ausfalls der Trasse in Kauf nehmen muss.

Wenn DB InfraGO den Änderungsvorschlag des EVU nicht umsetzen kann, entspricht das

GPEnS/FPE inhaltlich dem GPE (sofern keine weiteren Anpassungen seitens InfraGO nötig

sind). Es liegt beim EVU zu entscheiden, ob die Trasse storniert werden soll. Das Diagramm ist

an allen angemerkten Stellen korrekt, da es immer zu kurzfristigen Störungen kommen kann.

Selbstverständlich erfolgt eine kurzfristige Änderung nur wenn sie unvermeidbar ist.

1.12 Wird in Anlage 10 das Freitextfeld für die Stellungnahme erwähnt?

Lt. Anlage 10 (Fahrplan: EVU-Schnittstelle) gibt es ein Freitextfeld (FreeTextField) auf Message- und auf Location-Ebene. Das Freitextfeld darf nur Angaben enthalten, die nicht in einem

definierten Attribut (Strukturelement) der Nachricht angegeben werden können.

1.13 Warum wird ein GPE gesendet, obwohl kein Trassenvertrag vorliegt?',242,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":5,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','5713274a9306f3a49def10d5779cbaa15c854b9316139408dc92888750fc5336');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_783a41a882b08a9c1058bd6d','wiki/sources/fragenkatalog-annex-vii-data.md',8,'Seite 5','Mit der Veröffentlichung des Vorläufigen Netzfahrplans (VNP) können GPE versendet werden.

Dies gleicht dem heutigen Prozess, bei dem auf Basis des VNPs bereits ZvF gesendet werden

können.

1.14 Wann erfolgt die Anpassung zu den Zusatzleistungen, dass diese nicht mehr über

einen Rabattcode gehen, sondern über baubedingte Zusatzleistungen und wo wird das

stehen?

In der Veröffentlichung im September in Anlage 1 bei „VerkehrsartKundeZusatz“ wurde die Ausprägung „baubedingteZusatzleistung“ ergänzt. Die Verwendung des Rabattcode für baubedingten Zusatzleistungen wurde verworfen.

1.15 Was ist mit den veröffentlichten Baumaßnahmen bei Streckenpunkt.info. Was ist der

single Point of Truth?

Die Baustellendaten in strecken.info basieren auf der 12-Wochen-Bauvorschau. Nicht enthalten

sind Baumaßnahmen ohne betriebliche Auswirkung das sind z.B. Baumaßnahmen in Streckendienstruhen, Langsamfahrstellen oder Sperrpausen. Die Baustellendaten dienen als zusätzliche

Information.

1.16 Was passiert mit den Änderungen und entfernten BKE. Was ist mit dem Problem

Splitt?

Es soll zukünftig eine Kreuzreferenz auf BKE-IDn möglich sein. Die Umsetzung wird aktuell für

das Fahrplanjahr 2027 zu x-6,5 geplant. (Juni 2026)

1.17 Wie werden die Ansprechpartner bei DB I für Rückfragen definiert wenn der Grund

für eine GPE nicht plausibel ist?

Kontaktmöglichkeiten finden Sie unter dem Abschnitt Kontaktinformationen in den Fahrplanprodukten.

V.IWF 41 Fragenkatalog 5',193,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":5,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','678b947cfa7111b721a1a51472e19fea41eaa57ba8040a5da0d1fbf0fdb680b2');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8034d1f50eb2a5bef67a1423','wiki/sources/fragenkatalog-annex-vii-data.md',9,'Seite 6','1.18 Wie ist der Prozess, wenn in eine Stellungnahme unterschiedliche Optionen beinhalten würde? Wir würden z.b. Variante A zurückmelden, sollte A nicht funktionieren aber

eine Variante B im Kopf haben. Es besteht die Sorge, dass wenn A nicht konstruiert werden kann "irgendetwas" konstruiert wird, obwohl wir als EVU bereits eine Alternative im

Hinterkopf haben.

Eine Alternative B kann z.B. über die Funktion "Nachricht verfassen" in der KOMBau hinterlegt

werden. Variante A wird über das Stellungnahmeformular eingegeben.

1.19 In welchem Datenformat wird das GPE/FPE gesendet und wird es eine Beispiel

GPE/FPE geben, damit wir prüfen können wie wir mit der neuen Datenstruktur umgehen

können.

Wir verschicken die Planungsergbnisse im offiziellen Format der TAF/TAP-TSI-Schnittstelle

über das vorhandene Common Interface. Siehe dazu die folgende Website Fahrplan: EVU-

Schnittstelle Anlage 1 und Anlage 10.

1.20 Wann wird der Bereich "Netzausgelöste Änderungen (NAÄ)" in der PathOS Schulungsplattform mit Beispielen verfügbar sein?

Informationen finden Sie in folgendem Video: https://ecm-mediathek-cdn.deutschebahn.com/resources/video7/video_embed.html?url=/cdnenhancedecmvidhls/db292506/2801325/video_config.json&autostart=false&defaultquality=0&mute=false

Im Handbuch pathOS pathOS - Handbuch V1.01 - Stand 03.2026 ab Folie 228 finden Sie Bilder

dazu.

1.21 Wie erfolgt die Übermittlung des Zeitraumes, wenn durch eine zusätzliche Baumaßnahme die Verkehrstage innerhalb eines GPE geteilt werden? Erhalten wir für jede Nachricht einen Gültigkeitszeitraum von 7 Tagen oder ist auch ein verkürzter Zeitraum möglich?

Die Bautrasse des ursprünglichen GPE wird im Folgeprodukt um die baubetroffenen Tage der',219,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":6,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','4b89853f59c058ba4aa04fcf1c430795d592e19891d8a8b321a6ed223ed63f96');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_32e9c9b4a9dd6a6e0b099e05','wiki/sources/fragenkatalog-annex-vii-data.md',10,'Seite 6','neuen BKE eingekürzt. Für die baubetroffenen Tage der neuen BKE versenden wir ebenfalls

ein fristabhängiges Fahrplanprodukt.

V.IWF 41 Fragenkatalog 6',20,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":6,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','525f8fc3624da7d5437a4321f1194750ae29091547659eabd8aaefa8d353d9b0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5467f4e0ef289c563f5f2b62','wiki/sources/fragenkatalog-annex-vii-data.md',11,'Seite 7','Neue Fahrplanprodukte

1.1 Kann in der Stellungnahme zum GPE eine Arbeitsgruppe zu einem BKE gefordert

werden?

Abschnitt 3 Abs 2 der Ril 402.0305 sagt u.A: "Zusätzlich zu den in dieser Richtlinie beschriebenen Konsultationsprozessen besteht die Möglichkeit, sich bei Fragen und Hinweisen direkt an

ihre Ansprechpartner innerhalb der DB InfraGO AG zu wenden."

1.2 Wie ist gewährleistet, dass zu Beginn der Fahrplanjahres trotz doppelter GPE-Menge

die Qualität und Fristigkeit gut ist?

Durch den Verschub der GPE-Frist (z-15), unsere interne Arbeitssteuerung und den sukzessiven Hochlauf der IT streben wir eine fristgerechte Bearbeitung an.

1.3 Wie erkennt man BKEn in GPE, die nicht in KP 3 waren? Wie wird die Information

(Dauer, Abschnitt, Regelungsart etc.) den EVU bereitgestellt? Wie können Konzepte zu

den BKEn/Zügen abgestimmt werden? Es ist eine Erklärung notwendig.

Im GPE sind die auslösenden BKE-IDn sichtbar. Darüber kann in der KOMBau eine entsprechende BKE eingesehen werden. Dauer, Abschnitt und Art der Einschränkung werden hier angezeigt. Unterjährig ausgeregelte Züge werden übers GPE konsultiert. BKEn > 1 werden in den

KP 1-3 abgestimmt. Sollte es Änderungen dazu geben, dann werden die BKE in der KOMBau

neu konsultiert. Bei Fahrplanprodukten ohne eine zugehörige BKE-ID, erkennt man den Baubezug am versendeten FPE.

1.4 Wie wird für eine NAÄ mit einer Gültigkeit ab einem Donnerstag, welche an einem

Montag zugestellt wird, die Verfristung ermittelt? Erfolgt die Berechnung basierend auf

dem mitgesendeten Gültigkeitsbeginn oder auf Basis des 1. Verkehrstages.

Berechnung erfolgt auf Basis des 1. Verkehrstages.

1.5 Gilt eine NAÄ > 3 Tage ohne Reaktion als angenommen?',250,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":7,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','be85a9cd94d978721a71243098bebd74162c24424eb6e5bb01964ab7edcf2a14');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_fe0236f74e6d7b26a0d9f47a','wiki/sources/fragenkatalog-annex-vii-data.md',12,'Seite 7','Eine NAÄ gilt nach Versand direkt als angenommen. Für ZB besteht jedoch die Möglichkeit, die

Trasse innerhalb von drei Arbeitstagen (Montag bis Freitag, ausgenommen bundeseinheitliche

Feiertage) kostenfrei zu stornieren.

Eine Änderung der INB Ril. 402.305 Abschnitt 8 Absatz (6) ist derzeit in Arbeit.

1.6 NAÄ werden tagesscharf verschickt, wie ist das gemeint? Wird es hier eine wochenweise Bündelung geben? Wir erwarten, dass alle NAÄ wg. Bau bis z-8 vorliegen.

Tagesscharfer Versand bedeutet in diesem Zusammenhang, dass FPEs nicht montags gesammelt versendet werden, sondern direkt, wenn das FPE und NAÄ fertiggestellt sind.

1.7 Ist die NAÄ als Resultat des Bauprozesses vollständig im EBuLa Fahrplan abgebildet? Sind damit die zusätzlichen Fplo ́en obsolet?

Die NAÄ ist ein „kaufmännisches“ Produkt. Dort werden nicht ausreichend Attribute zur Durchfahrt enthalten sein. Das Fahrplanprodukt "BauFplo" ist auch im Annex Prozess die offizielle

BauFahrplananordnung und wird weiter existieren und relevant für die Durchführung der Zugfahrt sein. Dort werden die entsprechenden relevanten Daten zur Verfügung gestellt, die FDL

und TF benötigen. Mit BSV (Baufahrplan Service Veröffentlichung) liefern wir die Daten in einer

neuen Form trassenbezogen sowohl als pdf als auch über eine neue Kunden-Schnittstelle.

V.IWF 41 Fragenkatalog 7',190,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":7,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','daabcb55a53020a02a0b07cd219c9c8475357c4e1bfe26f67d7680eea35c06f9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3b00dd98d5f726e4ec9425f8','wiki/sources/fragenkatalog-annex-vii-data.md',13,'Seite 8','1.8 Grundsätzlich ist die Erwartungshaltung weiterhin, dass es keine Inkonsistenzen bei

GPE, FPE und NAÄ gibt. Für einen Übergangszeitraum, jetzt nur Fplj 2027 sind Mindestanforderungen zu diesem Thema zu erfüllen.

Räumliche Inkonsistenzen werden mit der Einführung von TTT durch den veränderten Arbeitsprozess ab FPE ausgeschlossen. Räumliche Inkonsistenzen in GPE und GPE nach SN können

nicht komplett ausgeschlossen werden. Bezüglich der zeitlichen Inkonsistenzen werden, wie

bereits kommuniziert, die aktuellen Niveaus gehalten. Eine Reduzierung der zeitlichen Inkonsistenzen ist mit fortschreitender Automatisierung sowie der Umsetzung des Annex VII zu erwarten. Inkonsistenzen werden im GPE/GPE nach SN, FPE und NAÄ dargestellt. Es kann aktuell

jedoch nicht sichergestellt werden, dass dies zum Beginn des Versands der Fahrplanprodukte

umgesetzt ist. Auch auf eine inkonsistente GPE-Trasse kann mit einer Stellungnahme reagiert

werden.

1.9 Wie ist der aktuelle Stand zur Stafette? Es besteht der Wunsch nach regelmäßigen

Updates dazu.

Die Stafette befindet sich im Fpl. Jahr 2026 weiterhin im Pilotverfahren mit 31 Korridoren. Mit

Einführung von TTT soll sie wie vorgestellt im neuen GPE/FPE Prozess aufgehen.

1.10 Wie erfolgt der Hinweis auf Reisendensicherung in GPE/NAÄ? Können wir davon

ausgehen, dass es wie im Jahresfahrplan gehandhabt wird -> Nutzung Feld für „Bahnsteiglänge nicht ausreichend“ und eine Information über das Gleis?

Der Hinweis der geringen Nutzlänge wird erfolgen. Eine konkrete Angabe der Differenz als Meterangabe erfolgt nicht, da dafür kein TAF/TAP-TSI Feld vorgesehen ist.

(INB 2027) Ril 402.0305 Abschnitt 8 Absatz (9)

Wird bei der Konstruktion festgestellt, dass für veröffentlichte Regel- und/oder Bedarfshalte',243,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":8,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','c46e99e7f31f5ca4c5b4c26b8a82e8b7427b97d591a28b0dae3c57dd6483c3bf');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d4b6ed66a2542573ee7659da','wiki/sources/fragenkatalog-annex-vii-data.md',14,'Seite 8','nicht alle nach der Trassenanmeldung mit Reisenden besetzten Wagen an den Bahnsteig gelangen können, muss für die betroffene Stelle im Feinplanungsergebnis (FPE) darauf hingewiesen werden.

Die DB InfraGO AG ergänzt im NAÄ an der entsprechen-den Betriebsstelle „Bahnsteignutzlänge nicht ausreichend“ sowie die sich aus der Konstruktion ergebende Gleisnummer. Das EVU

ist danach zu entsprechenden Sicherungsmaßnahmen gemäß EBO verpflichtet. Zu beachten

ist, dass es sich bei dieser Angabe der Gleisnummer um einen Planungsstand handelt und sich

die Gleisnummer im Nachgang ändern kann.

1.11 Absage einer BM: Wenn eine BM ausfällt, zu der uns bereits ein GPE zugespielt

wurde, bekommen wir dazu eine Info per Mail? Bereits gestellte Frage von August 2024:

Wenn ein Zug im Nachgang einer GPE doch keine Änderung durch Bau mehr erfährt und

damit keine NAÄ mehr notwendig ist, wird trotzdem eine FPE versendet?

Ist ein Zug nicht mehr baubetroffen, wird die letzte Bautrasse erneut als PDM (PathDetailMessage) mit TOI (Type of information) ‚withdrawal‘ gesendet. Siehe dazu Anlage 10 (Fahrplan:

EVU-Schnittstelle)

1.12 Absage einer BM bei Mehrfachbetroffenheit: Beispiel = GPE mit 3 Baustellen, eine

im Süden, eine im Norden und eine im Osten, alles konsistent und eine der Baustellen

fällt aus - bekommen wir ein neues GPE?

Eine Aktualisierung der Bautrasse erfolgt im Folgeprodukt (GPEnS oder FPE).

1.13 Kann die Rückmeldung auf das GPE auch über die Trassenschnittstelle erfolgen?

Sprich, wir importieren das GPE als Trassen in unsere Systeme und senden Ihnen die

Rückmeldung auf gleichem Wege zurück? Oder muss die Rückmeldung via KOMBau erfolgen?

Die Stellungnahme auf das GPE kann über die KOMBau oder die TAF/TAP-konforme EVU-',259,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":8,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','f2010fb90e86050358df2cc8f2c45ca65c3b3365e051573f4ab688680354ed8d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a5aae7f109abe2e9f64bae70','wiki/sources/fragenkatalog-annex-vii-data.md',15,'Seite 8','Schnittstelleerfolgen. Hierüber können GPE, GPEnS und FPE auch empfangen und im eigenen

System weiterverarbeitet werden.

V.IWF 41 Fragenkatalog 8',19,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":8,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','d72cec152ef484d27a51cddd214ef387737d5217d3fe5fb69913f26288b0f4a2');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_4555e582b0c9f091cde6323c','wiki/sources/fragenkatalog-annex-vii-data.md',16,'Seite 9','1.14 Für den Fall, dass eine größere BKE nach dem GPE-Prozess notwendig wird die erst

mit FPE kommuniziert wird, bitten wir unbedingt um Kontaktaufnahme und Konzeptabstimmung auf Linienebene (ohne zunächst einzelne Trassen zu betrachten)

Wenn dieser Fall eintreten sollte, wird es nicht möglich sein einzelne EVU zu Abstimmungen zu

kontaktieren. Können bestehende Fristen nicht eingehalten werden, konsultiert die DB InfraGO

AG die ZB und EIU umgehend. Siehe dazu (INB 2027) Ril 402.0305 Abschnitt 9.

1.15 Wird vor der Absage von Baustellen mit den EVU gesprochen, ob die Absage zur erneuten Umplanung bzw. Rückfallen auf Vertragszustand führt oder ob man den ausgeplanten Bauzustand wegen ggf. zu kurzem Vorlauf erhält?

Es erfolgt keine gesonderte Abstimmung. Vor Versand des GPE zu z-24 erfolgt die Absage der

Baumaßnahme und die Regeltrasse erhält ihre Gültigkeit zurück. Nach z-24 erfolgt die Prüfung

der Komplexität der Dekonstruktion. Nach z-8 erfolgt keine Änderung der Bautrasse mehr, die

FPE-Trasse bleibt bestehen, da die Bautrasse bereits zur Regeltrasse geworden ist.

1.16 GPE nach Stellungnahme/ Zielzustand: Es werden aktuell einige Prozesse auf das

GPE nach Stellungnahme (GPEnS) aufgesetzt z.B.

-kurzfristige Baumaßnahmen, die nicht konsultiert werden müssen

-und Splittung der Path bei OTN-Wechsel

Wo werden diese Dinge im Zielzustand ohne GPE nach Stellungnahme aufgesetzt? Ist

der Auftragstyp nicht mehr nur temporär vorgesehen oder wird dann davon abgewichen,

dass FPE identisch zur NAÄ ist?

Im Zielzustand passiert das im FPE.

1.17 Sind BKE gleisscharf beschrieben? Unterschiede BKE 1 zu den anderen BKE-Kategorien?

BKE sind nicht gleisscharf beschrieben. Der Unterschied ist, dass unterjährig die Konsultation',251,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":9,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','574608e06c4913a9c31b005d84e4bb1da2bd52ad96fa1ef290c509334f531ec5');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_90ac03c86010d471057b4cef','wiki/sources/fragenkatalog-annex-vii-data.md',17,'Seite 9','mittels des GPE stattfindet und die BKE jeweils dazu verlinkt ist. Siehe dazu auch (INB 2027)

Ril. 402.0305 Abschnitt 1 Absatz 11.

1.18 Zu Absage einer Baumaßnahme -> Szenario: Der Ersatzverkehr lässt sich nicht mehr

zurückdrehen, Vorschlag Kunden/EVU -> hier wäre doch eine Einzelfallbetrachtung besser!

Es gilt die Stichtagsregelungen. Einzelfallbetrachtungen können diskriminierend sein, daher gilt

die Regelung für alle, um Transparenz herzustellen.

1.19 Welchen Gültigkeitszeitraum kann eine FPE/NAÄ umfassen? Immer nur maximal den

Zeitraum des vorgelagerten GPE/GPE nach Stellungnahme? Kann der Gültigkeitseitraum

der FPE/NAÄ auch länger als 7 Tage sein, wenn es kein GPE gab?

Ein FPE/ eine NAÄ umfasst maximal den Zeitraum des GPE/ GPEnS. In Ausnahmefällen kann

eine NAÄ 8 Tage umfassen.

1.20 Nicht alle Trassen einer BKE erhalten zwingend ein GPE. In einer BKE ist nach unserem Kenntnisstand enthalten, welche Trassen dann genau ein GPE erhalten werden. Das

Erkennen betrachten wir als sehr aufwendig.

An einer BKE sind nicht alle betroffenen Züge erkenntlich, sondern nur die Obermenge aller potenziell betroffenen Züge.

V.IWF 41 Fragenkatalog 9',168,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":9,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','080ed3f078bf156145b8d4d5e9a742e3aae85962222474cfca9ec32c56c31ab1');
--> statement-breakpoint
