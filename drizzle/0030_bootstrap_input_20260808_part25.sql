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
