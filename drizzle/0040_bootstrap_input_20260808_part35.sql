INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f','src_19a7b48948c766db65df',NULL,'{"content_duplicate_group":null,"original_filename":"TAF-TAP-TSI-Dialog-26-Maerz-2026-Antworten-und-offene-Punkte-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_edb2bc1e9f24d50e73b6b8c5' WHERE id='src_19a7b48948c766db65df';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md','TAF/TAP TSI Dialog 26 Maerz 2026 Antworten und offene Punkte','13. TAF/TAP TSI-Dialog der DB InfraGO Follow-up: Ausgewählte Antworten aus dem Termin 26.03.2026 Versand im Nachgang','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','218d13e4e230490de7ee1e1816d7b5e69ac48dc425087d1a80b817f7ac31a6f9','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":null,"license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_19a7b48948c766db65df","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8a658f41b63399a489938fb2','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',0,'Seite 1','13. TAF/TAP TSI-Dialog der DB InfraGO

Follow-up: Ausgewählte Antworten aus dem Termin

26.03.2026 Versand im

Nachgang',16,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":1,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','262291183d897eb37638d2f4ef4018f97982bb16837df515932429fe69f6f6dd');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c52395bba7174acf73f0ada0','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',1,'Seite 2','• Diese Präsentation beinhaltet die allgemeingültigen Fragen

und Antworten aus dem TTT-Dialog vom 26.03.2026 sowie

Antworten zu den wenigen nicht direkt beantworteten

Fragen.

• Diese wurden nach der Agenda des TTT-Dialogs gruppiert.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 2',43,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":2,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','279d5eb06e232d22dc454ceec95a805a9565ee10d23304a39af11cfc467b599d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c152ef54e822738cc46dfd35','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',2,'Seite 3','Agenda des TTT-Dialog vom 26.03.

1. Begrüßung

1. Begrüßung

2. Status TTT Einführung

3. Zentraler Eingangskanal: Support

4. Update pathOS

5. TTT im Betrieb

6. Update KOMBau

7. ujBau Implementierungsdetails

8. Fragen & Antworten

9. Zum Nachlesen: Nächste Termine & Antworten im

Nachgang zum TTT-Dialog am 09. März

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 3',59,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":3,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','0a8cb9655b0018aee2899289a3d55447f41a8494ee1f853a7b676d45d2d13d20');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_dbca749b4d0c000fc1a8b051','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',3,'Seite 4','DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 4',11,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":4,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','f38c9e317b8e79a87191698adcd9a45a9e2205a4ac81c1335ce99a30a5065d3a');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c2dc97e426d1209cc5b52824','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',4,'Seite 5','Frage Antwort DB InfraGO

Sind die PCS Bestellungen in den CI Frage bezieht sich auf Folie 5 des Foliensatzes und darin enthaltende Grafik mit der Darstellung der

Zahlen enthalten? Trassenanmeldungen über das Common Interface. Darin sind die PCS Bestellungen nicht enthalten.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 5',52,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":5,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','fa043785d02983926f87a9c2936dbf8d45ef0b9ca3464aae7fe7752bb84833ab');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d80a4ddbc5929ff85e8200ed','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',5,'Seite 6','DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 6',11,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":6,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','42b663fa9128f2f3515bca4b24bd13149908f37c39b5dabc63518a1ae1ae3275');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_bf58f989d5764db52b1a9ab5','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',6,'Seite 7','Frage Antwort DB InfraGO

PZB90 Grundsätzlich reicht es, wenn PZB90 am ersten Zuglaufpunkt angegeben ist. Bei den aus TPN

1. Am ersten Zuglaufpunkt die PZB90 importierten Entwürfen werden aber an den folgenden Zuglaufpunkten im Hintergrund

angegeben. Muss das nochmal angeben Charakteristiken gespeichert, die PZB90 nicht enthalten. Daher ist es am sichersten, an den folgenden

werden? Zuglaufpunkten die Charakteristiken zu löschen, sodass nur die am Beginn angegebene Charakteristik

2. Kann ich nicht darauf vertrauen, (mit PZB90) über den gesamten Zuglauf wirkt.

dass die PZB90 Angabe sich

durchzieht?

Gibt es eine Möglichkeit, wie in TPN In pathOS gibt es aktuell und für die Trassenanmeldung zum Netzfahrplan 2027 keine Option, den

einen Entwurf mit umgekehrten Laufweg eines Entwurfs umzukehren oder einen Entwurf mit umgekehrtem Laufweg zu erstellen. Wir

Laufweg zu kopieren? haben das Thema aber bereits aufgenommen.

Wer kann sich Export ziehen, noch Man kann sich in der Vorgangsübersicht einen Export über alle Vorgänge ziehen. Dieser enthält die

mehr Details dazu? Kopfdaten zu den Vorgängen, jedoch keine Details wie Laufwege. Zusätzlich kann man in der

Detailansicht einen Export eines einzelnen Entwurfs erstellen. Dieser enthält zu einem Entwurf alle

angegebenen Laufwegspunkte mit Zeiten, jedoch keine Zugcharakteristiken. Diese Übersicht soll aber

noch weiterentwickelt werden.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 7',210,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":7,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','d4c66f4ad00abb1efcdf797ff739219c4b57a062d4f0b64ea1733ca8b9fda1c6');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_febba4b137fd492460778521','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',7,'Seite 8','Frage Antwort DB InfraGO

Muss ich die Kundennummer an jedem Bei neu angelegten Entwürfen wird als Kundennummer des durchführenden EVU automatisch die

Haltepunkt nachtragen? Ich bin davon Kundennummer des Bestellers hinterlegt und kann manuell überschrieben werden. Bei den aus TPN

ausgegangen, dass sich die importierten Entwürfen wird die Kundennummer des durchführenden EVU aber nicht immer an alle

Kundennummer automatisch ausfüllt, Laufwegspunkte geschrieben, weswegen man hier einen Blick darauf werfen sollte.

wenn man die einmal eingibt. Das

müsste doch als Default-Wert

eingestellt sein.

Gibt es seitens DB InfraGO Derzeit gibt es keine konkreten Pläne, PCS für internationale Trassenanmeldungen im Fahrplan

Bestrebungen, Bestellungen zu 2028 verpflichtend zu machen.

internationalen Zügen für DB InfraGO-

Abschnitte ausschließlich aus PCS zu

akzeptieren?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 8',128,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":8,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','3d55d949fb048d06d6e602fb6831ab7ef4702fa1ad638cf95a0a5d09cec8a856');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3a86cda1d4c98434fb8db1d9','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',8,'Seite 9','Frage Antwort DB InfraGO

Die Angaben für das RRU im Grenzabschnitt also hier Korrekt, die Angabe für das durchführende EVU (RRU) bitte nicht auf

eingeben? Fahrtlaufpunktebene hinterlegen.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 9',38,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":9,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','8dab9d0de41f77a7225a2a1e23b831ea816412c227047220d897762d39f020e8');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_df40eeaf380df94939e065b7','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',9,'Seite 10','Frage Antwort DB InfraGO

Wird künftig dann das Feld Ja, die NSPs werden für das Fahrplanjahr 2028 nochmal

Zuggattungsprodukt noch im PCS überarbeitet, sodass hier keine Doppelarbeit mehr

eliminiert? Diese Doppelarbeit ist etwas entsteht.

müßig?

Aktuell dient die zusätzliche Angabe als Eingabehilfe für

die Zuggattung.

In PCS ist allerdings kein Ril100-Code Die PLCs können entweder in der pathOS

hinterlegt, nur PLCs, somit nicht Bestelloberfläche überprüft werden oder entsprechend

erkennbar, ob einer hinterlegt ist. aus den veröffentlichten Stammdaten gezogen werden.

Mindestens zwei PLCs mit DE sollten

dann aber genügen, oder?

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 10',100,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":10,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','45703a4d21a433e9d0904426ef100ccb6a6bc8c7ac9c261ea64af565e95a21ae');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_435dcbd00bac9ec8777821ff','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',10,'Seite 11','Frage Antwort DB InfraGO

Wie soll das Freitextfeld angegeben werden in PCS oder Wir erlauben 6 Freitextfelder. Es wird für jeden hinterlegten Kommentar ein

an anderer Stelle? Freitextfeld befüllt, welches bis zu 255 Zeichen zulässt. Bitte darauf achten, dass es

Er ist immer in dem Fall, dass es mehrere EVU gibt bei Dt. nicht mehr als 6 Kommentare sind, da wir sonst Informationen verlieren (PCS lässt

Netz und vorher andere... mehr als 6 Kommentare zu, die beim Übertrag in pathOS verloren gehen)

Sie sollen ausschließlich in PCS bestellen.

1. Baukorridore angeben in PCS (weil nicht auswählbar) 1. Notwendige Angaben zum Baukorridor, können über das Freitextfeld

2. Angabe einer EGB-Nummer „Gesamtkommentar“ angegeben werden.

3. Note auf Location Ebene 2. Formathinweis bei Angabe der EGB-Nr. Beginnend mit „EGB...“. Die zusätzliche

4. ReasonOfReference bei Laufwegsvarianten in Angabe eines PLC ist nicht notwendig

Baukorridoren 3. Gibt es in pathOS nicht. Wird nicht übertragen.

4. DE06 kann nicht angegeben werden

→ manuelle Anpassung dazu notwendig

→ beide Bestellungen kommen bei uns an

RoR wird von PCS nicht unterstützt.

Noch ein wichtiger Hinweis zur PCS Bestellung: Bitte bei allen Fahrtlaufpunkten die

in der Trassenanmeldung von DB InfraGO vorkommen den TrainActitivtyCode

0001,0002,0030 oder 0040 angeben, da es eine Pflichtangabe ist. Eine Ausprägung

muss hinterlegt sein.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 11',219,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":11,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','c29b3bbaf027577529445fa732af9c224d38869df98888e428f7e0080358be23');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1b81f1a01d3778f5ced939a0','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',11,'Seite 12','DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 12',11,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":12,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','687f246d4834b5cf855763cabda428104ba30abe1d590e1be533b358aed933b3');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_84de73e67b33f95954cba58f','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',12,'Seite 13','Frage Antwort DB InfraGO

Wegen NSS: Kann der Zeitraum doch ein wenig erweitert Nein, leider kann der Zeitraum nicht verlängert werden, da sich das Datenvolumen

werden z.B. 40 Tage? dadurch um rund 30 % erhöhen und eine zusätzliche Datenlast entstehen würde.

An wen wurden die Einladungen zu NSS versendet, an die Alle uns bekannten Ansprechpartner EVU und IT-DL wurden eingeladen. Falls

EVUs oder die IT-Dienstleister? jemand die Einladung benötigt, können Sie sich bei

[E-Mail-Adresse entfernt] melden.

Und für die, die nicht an die NSS angebunden sind, bleibt Wenn Sie sich auf die betriebliche Datenversorgung beziehen, sollte es aus unserer

alles wie bisher? Sicht keine wesentlichen Änderungen geben.

Bei Problemen mit der P/TCM Datenqualität bitte direkt Aktuell laufen die Auswertungen der P/TCMs. Die ersten Auffälligkeiten wurden

auf die EVU zugehen und die konkreten Fehler benennen. bereits gemeinsam mit den EVUn besprochen und kurzfristig behoben.

Zukünftig wird der BDV bei Unregelmäßigkeiten in der P/TCM-Datenqualität die

EVUn direkt informieren, sodass identifizierte Probleme zeitnah korrigiert werden

können.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 13',174,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":13,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','df466d8970a7aeabe7c367f5f7973435a0d767e409200b7ded466c04263df8c8');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5db6bfa9efcc2a8a137d7456','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',13,'Seite 14','Frage / Feedback Antwort DB InfraGO

Sie senden die Daten kurz vor Abfahrt und wenn dann Diese Fälle sind nicht vermeidbar. Sofern vom EVU leistbar, kann die Störung mit

noch eine Störung kommt, können Sie die Daten nicht einer neuen PTCM/TCM abgebildet werden.

zurückholen.

Gibt es aktuell Bestrebungen der DB InfraGO, in den Nein, der Meldeweg über GSM-R bleibt alternativ zur TrainReady erhalten.

nächsten Jahren den Versand von TrainReadyMessages Info: Die Telematics TSI (Nachfolge-Verordnung der TAF/TAP TSI) fordert

durch die EVU verpflichtend zu machen? europarechtlich ab voraussichtlich 2030 eine Abfahrtsprognose der EVU für ihre

Züge via TrainReady message. Ab diesem Zeitpunkt wäre insofern für diesen Inhalt

eine Verpflichtung per EU-Verordnung gegeben.

Die betriebliche PDM kommt manchmal nur für Falls es um kurzfristig angemeldete Züge in der BZ geht, so kann passieren, dass

Teillaufwege: Bug oder Feature? erst "untern rollenden Rad" konstruiert werden kann, da wir versuchen im Sinne der

Kunden auch solche kurzfristigsten Bedarfe abzubilden. Falls es um über die

Trassenanmeldung angemeldete Trassen geht bitte unter Angabe konkreter

Beispiele (Zugnummer, Betriebstag, etc.) an:

Ansprechpartner bei Störungen/Problemen mit dem BDV:

Zentrale fachliche Betriebsführung (ZFBF) erreichbar unter:

Hotline: [Telefonnummer entfernt] (Mo-Fr: 07:00 - 18:45 Uhr besetzt)

E-Mail:[E-Mail-Adresse entfernt]

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 14',207,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":14,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','9cbbe846d85b703352097830b393b149853f422730f1c23753c3752d55128b62');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1198f459b6d6c688f1b97214','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',14,'Seite 15','Frage Antwort DB InfraGO

Können wir auch mit kleiner 1h über das CI Trassen Für von der BZ eingelegte Paths kommt über den BDV eine PathDetails message, sobald

bestellen? Wie läuft das sonst mit der PTCM dazu? der Path in den Disposystemen eingelegt wurde. Dies kann zeitverzögert erfolgen, da die

Aufrechterhaltung des Verkehrsflusses natürlich Priorität über die Eingabe von Daten in

die Systeme genießt.

Die PTCM kann vom EVU auch vor Versand der PDM gesendet werden, da eingehende

Meldungen bei der DB InfraGO AG gepuffert werden.

Gibt es Aussagen der DB InfraGO AG zum zeitlichen Die InfraGO informiert hier transparent, wie das Sendeverhalten der Meldungen ist. Dies

Ablauf von Durchführen einer Disposition und ist auch so in der entsprechenden Technischen Beschreibung sowie der Präsentation zu

Versand der zugehörigen Nachrichten (Beispiel TTT im Betrieb auf unserer TTT-Homepage so beschrieben. Die InfraGO kann keine

PSNM, PDM)? Aussage dazu treffen, welche Verfahren auf Seiten des EVU man auf Basis dessen auf

Hintergrund: müssen wir einplanen das erst manuell diesen Meldungen aufsetzen kann, diese Beurteilung kann nur das jeweilige EVU selbst

zu erfassen und dann die "überflüssige" Nachricht treffen.

zu verarbeiten, oder können wir davon ausgehen,

das immer die Nachricht zuerst da ist?

Wunsch: Zusatztermin für eine Der Zusatztermin findet am 17.04.2026 von 11-12 Uhr statt.

Informationsveranstaltung zum Markttest mit TTT-

Identifiern

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 15',229,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":15,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','69b82c3877d814073a810c1a6045ecda4288eb641b569e72377488580d5536c8');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_fe8f1921421eb1e0e0defc97','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-antworten-und-offene-punkte-data.md',15,'Seite 16','DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 26.03.2026 ​ 16',11,'{"canonical_url":null,"normalized_sha256":"365107c16438b2f929141ebdcbc04b749cee0b52baa3fdfe2875ac99103e286f","page":16,"source_id":"src_19a7b48948c766db65df","source_sha256":"edb2bc1e9f24d50e73b6b8c5392b5a4059bcf8d2bb5c26d06b979c3c6784db41","source_version_id":"sv_edb2bc1e9f24d50e73b6b8c5"}','76625f39a807b5810ed985d4d58689b693383861b28657f3c17af8489b756db1');
--> statement-breakpoint
