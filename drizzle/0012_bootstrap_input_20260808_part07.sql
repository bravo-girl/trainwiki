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
