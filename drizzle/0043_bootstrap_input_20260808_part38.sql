INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3b4689a30fe1dcde135ac1d7','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',29,'Seite 30','Update zu Datenqualität P/TCM und Vorblick auf Delta-Liste

Seit dem 14.12.2025 ist gemäß Infrastrukturnutzungsbedingungen der DB InfraGO AG (INB) die Versendung der

aktuellen Zugcharakteristik durch Passenger/Train Composition Message (P/TCM) an die DB InfraGO

Link offizielle

verpflichtend.

Kundeninformation

Folgende Auffälligkeiten wurden unter anderem festgestellt:

• Plausibilitätsfehler

• Meldungen zu Zügen, die nicht existieren bzw. nicht gefahren sind

Es wurden zunächst folgende Werte auf Plausibilität geprüft:

▪ Zugnummer zwischen 2 und 99999 ▪ Anzahl Wagen zwischen 0 und 100

▪ Bremshundertstel zwischen 6 und 230 ▪ Anzahl Triebfahrzeuge > 0

▪ Höchstgeschwindigkeit zwischen 10 km/h und 330 km/h ▪ Länge pro Einheit (Wagen oder Triebfahrzeug) < 450 m

▪ Gesamtzuggewicht zwischen 10 t und 8.350 t ▪ Meterlast des Gesamtzugs zwischen 0,7 t/m und 10,0 t/m

▪ Gesamtzuglänge zwischen 10 m und 835 m

Wir bitten um eine umgehende Prüfung der geschilderten Auffälligkeiten sowie um eine Stellungnahme, ob die genannten

Abweichungen bei den EVUn ebenfalls festgestellt wurden.

Die EVUn haben die korrekte Eingabe der Daten für die Zukunft sicher zu stellen.

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 30',178,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":30,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','5d03da4757972af87ab8846ab34d23a6d7b7b3613925499f525d9cea450822d3');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_ccc16860ea8595b8b0bcfa72','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',30,'Seite 31','Update zum Markttest nach Kick-Off

26.03.2026

TAF/TAP TSI – Dialog mit nächsten Schritten basierend auf Anmeldungen

Informationsveranstaltung zum Ende-zu-Ende Kundentests: Besprechung

08.04.2026

weiterer Details mit angemeldeten Testpartnern, je nach angemeldetem

Testbedarf

KW 15/16

Betriebssprechstunde inkl. Experten von LeiDis-D, BDV und TTT

14.04.- 14.06.

Durchführung Ende-zu-Ende Kundentests TAF/TAP TSI mit Identifiern

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 31',59,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":31,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','6f9b9c58edb9ab7835d6426720b4798e060cb7d52c89364161a0be37f6ee488e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7bc96b9aa3bdf7d4f7771e54','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',31,'Seite 32','Kundenfragen zu TTT-Identifier im Betrieb

Frage: Wird der TAF/P-Identifier (z. B. für Betriebsphase TR/0001/AB12345.../2026-12-29)

zukünftig für die Meldungen des Tf benötigt oder genügt bei den Meldungen weiterhin die

OTN als Identifikator?

Antwort: Fernmündliche Meldungen des Tf an die DB InfraGO unterliegen nicht dem TTT-

Meldungsaustausch. Die TTT-Identifier sind nicht für die „mündliche Kommunikation“

vorgesehen, dies geschieht unverändert anhand der Zugnummer/OTN.

Frage: Wird der TAF/P-Identifier (z. B. für Betriebsphase TR/0001/AB12345.../2026-12-29)

ab 12/2026 in der (Passenger)TrainComposition message P/TCM verpflichtend sein?

Antwort: Die Angabe der ReferenceTrainID ist grundsätzlich verpflichtend, jedoch

akzeptiert DB InfraGO in den betrieblichen TTT-Meldungen übergangsweise bis auf Weiteres

auch Meldungen nur mit Angabe des OTN-Identifier (analog des aktuellen Verfahrens seit

06/2025).

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 32',120,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":32,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','7ca759bac752eee85063a5062abee1e27fe7065af905ab02755d17d312afa345');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_b7389b5b2011603797006023','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',32,'Seite 33','6. Update KOMBau

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 33',12,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":33,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','751133b1a4899c0c6b94652cb585a6e9001a4e2d34db02e5d0708789a9ff5ece');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_c1c02f0cf4b04253d1c82c1f','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',33,'Seite 34','KOMBau – Kundentesttage und Einweisungen

Kundentesttage

• Zum Testen des Front-Ends bieten wir 2-3 Kundentesttage an:

• Pro Tag etwa sechs Session von je einer Stunde (Vergabe der Sessions nach First come,

first served)

• Einzelbetreuung der Kunden, um die Fragen direkt beantworten und das Feedback

entgegennehmen zu können

• Die Einladung zu den Kundentests wird in Kürze über eine Kundeninformation erfolgen

• Vorgesehene Termine: in Abstimmung (vsl. Kw 20)

Einweisungen für GPE und weitere Erklärvideos

• Wie angekündigt, bieten wir auf Basis unserer Schulungsvideos auch zwei Einweisungen für

den Umgang mit den neuen Planungsergebnissen und den Stellungnahmen an

• Die Einladung zu den Einweisungen wird in Kürze über eine Kundeninformation erfolgen

• Ergänzt werden die Einweisungen durch Sprechstunden zur Unterstützung der Nutzer zur

Klärung von aufkommenden Fragen

• weitere Erklärvideos zu BKE und BAE sind auf der KOMBau-Seite verfügbar

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 34',149,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":34,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','a7a3d1520cd96112775d887e8e779ff48af0b8e628a4fbdd40498059307375ab');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_43057a1b5c31642c42615c9e','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',34,'Seite 35','Hinweis zu Anfragen an die KOMBau

ART-KOM Support Adresse

• Bitte den ARTKOM-Support [E-Mail-Adresse entfernt] anschreiben

• Gerne themenspezifisch nach Konsultationsphasen getrennt, um die Anfragen besser

beantworten zu können

Massenverarbeitung - Mehrfachstellungnahme

• Umsetzung war für einen späteren Zeitpunkt vorgesehen

• Zur Zeit werden die Möglichkeiten zum Vorziehen der Grundfunktionalität geprüft

→ genauere Infos zum Planungsstand können wir zum nächsten TTT-Dialog liefern

Export GPE

• Wegen der vorhandenen TTT-Schnittstelle war ein Export der Planungsergebnisse

ursprünglich nicht vorgesehen

• Die Anforderung wurde aufgenommen, ein Konzept dafür wird zur Zeit erstellt

→ genauer Infos zum Planungsstand können wir zum nächsten TTT-Dialog liefern

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 35',109,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":35,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','9e196dd066dc277f135a2aa24cd47443c520619bbbc924c6ff3161e94d2ec535');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7d539eaad9d7a83fbe1c0c3f','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',35,'Seite 36','7. ujBau Implementierungsdetails

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 36',12,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":36,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','1419261a017616ad27b77f19181bebdbc0b8ee0d1845f16b096f542890863faf');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2540380b49983864a2cf8452','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',36,'Seite 37','Umgang mit fehlender BKE-ID in Fahrplanprodukten

Ausgangslage

In bestimmten Fällen (z.B. Havarie) ist keine BKE-ID

vorhanden.

Folgen

Die Dokumente zur unterjährigen Baukonsultation sowie

das Vertragsdokument NAÄ werden ohne BKE-ID

versendet.

Hinweis

Erkennung Bauherkunft durch FPE sichergestellt (FPE

werden nur im Bau- und Havariefall gesendet).

FPE: Feinplanungsergebnis

NAÄ: Netzausgelöste Änderung

BKE: Baukapazitätseinschränkung

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 37',60,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":37,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','667776d190121a57094fded3e04faeccb9eabb050522ee6b4514089e8bfee396');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8c2565b167d1204e0921e66f','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',37,'Seite 38','8. Fragen & Antworten

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 38',13,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":38,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','70ded24629b63e7d16b56308ff732f6c14f3789afde3b11a99e2f25bb1dc6b6d');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_550fcb8c61cc1529dd762f1e','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',38,'Seite 39','Zeit für Ihre Fragen!

Gerne beantworten wir Ihnen

Ihre Fragen direkt im Termin.

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 39',22,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":39,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','7eab037e979f8994ca39a7f64c9405b2b65ddc0444d8cc7ddb9bafc06ec7671b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_00a6eee56d71fc6559343661','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',39,'Seite 40','9. Zum Nachlesen:

Nächste Termine & Antworten im Nachgang

zum TTT-Dialog am 09.03.

Alle Informationen immer aktuell unter:

www.dbinfrago.com/taf-tap-tsi

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 40',28,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":40,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','de135c88756987c57796dcbf242f4f5ae80f5dd56ebbf36d3ef535f1efa7d4b3');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8f2c7ac793931f10f45af3f1','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',40,'Seite 41','Übersicht TAF/TAP TSI-Kommunikation

Arbeitsweise (A)/Turnus (T)

Teilnehmer: Management & Experten aller EVU u. deren IT-Partner A: online

TAF/TAP TSI

1 Ziel: Überblick für GF-Ebene, allg. Infos (Betrieb + Fahrplan), zzgl. Vertiefung T: ca. monatlich

-Dialog

aktueller Fokusthemen in Entwicklung/Testing Nächster Termin: 22.04.2026

Sprechstunde Teilnehmer: Alle künftigen Schnittstellenpartner (EVU, ZB) A: online

2 Onboarding für Ziel: Informationen und Sprechstunde zum Onboarding der SST-Partner inkl. T: mittwochs - Details auf pathOS-

Schnittstellenpartner Vorbereitung und Begleitung der Tests und Anbindung an die SST Homepage unter Kapitel 3)

TAF/TAP TSI –

Teilnehmer: Schnittstellenpartner Fahrplan, die bereits mit uns testen A: online

3 Schnittstellen-

Ziel: Aktuelle Informationen/Entwicklungen; Sprechstunde, Updates T: nach Bedarf

partner Fahrplan

Teilnehmer: Alle künftigen Anwendenden von pathOS A: online

pathOS -

3 Ziel: Erklärung der Grundlagen und wesentlichen Inhalte von pathOS in einzelnen T: seit 23.10. – Termine auf pathOS-

Schulungen

e

g Terminen. Regelmäßige Sprechstunde startet am 22.01.26 Homepage (in Kapitel 2.4)

o

la

i D TAF/TAP TSI - Teilnehmer: Gesamtmarkt inkl. EIU A: online / in Präsenz

5

Sektormeeting Ziel: nationale Spiegelgruppe TTT (Infos zu TTT, Verordnungen, ...) T: 4x jährlich, Nächster Termin: 27.03.

A: in Präsenz

Runder Tisch Bau Teilnehmer: 35 Mitglieder aus SPNV, SPV, SGV, BNetzA, Verbände, AT

6 T: 4x p.a. + Arbeitsgruppe;

(RTB) AG 3 Ziel: Beratung DB InfraGO bei Erarbeitung und Entwicklung für ujBau

Nächster Termin: 19.05.

EVU-Informations- Teilnehmer: Gesamtmarkt

A: online

7 veranstaltung unter- Ziel: Information zum neuen unterjährigen Baufahrplanprozess mit neuen

T: nach Bedarf, Nächster Termin: 27.03.',244,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":41,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','b1b8e1b257c482629caed6373ea0b8134065af08b1f34c908efab0f67825c235');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_41d5de7fcdf4792da3bd9e2b','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',41,'Seite 41','jähriger Bau Fahrplanprodukten und der digitalen BauFplo

A: online

Teilnehmer: Geschäftspartner mit G-INV

8 BDV Nächster Termin: 08.04. (nur für

Ziel: Informationen, To-Dos vermitteln

Teilnehmer des Kundentests)

o Homepage + Teilnehmer: für alle zugängliches Format, KI an Verteiler (inkl. IT-Partner, nicht alle EVU) A: Homepage

f 9

n Newsletter (KI) Ziel: aktuelle Informationen zum Nachlesen: Testing-Zugang, Ansprechpartner, Updates T: kontinuierlich

I

DB InfraGO AG | TAF/TAP TSI-Dialog am 26.03.2026 41',70,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":41,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','6f28f2c90ec94bc0ea61602f1fe3828fb3300497caf2d940e107798a05850a92');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7047ccc45cd20c13f41f1d08','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',42,'Seite 42','Offene Punkte und Antworten (1/3)

Frage Antwort DB InfraGO

Sollen Fahrzeuge fehlen, inhaltlich Für die Anmeldung neuer Triebfahrzeugbaureihen während der Trassenanmeldephase ist zwingend

falsch sein. Wo melden wir uns dazu, der offizielle Regelprozess gemäß Richtlinie 402 einzuhalten. Das bedeutet, dass Sie rechtzeitig vor

damit Fehler behoben werden? Abgabe der Trassenanmeldung einen formalen Antrag auf Aufnahme des Triebfahrzeugs in die Tfz-

Datenbank stellen müssen, indem Sie das "Anforderungsprofil für fahrdynamische

Triebfahrzeugdaten" (Vordruck 402.0202V05) bei der DB InfraGO AG einreichen. Nur über diesen

Weg wird das Fahrzeug fahrdynamisch bewertet und offiziell in den Stammdaten des Bestellsystems

hinterlegt, was Voraussetzung für die Nutzung in einer Trassenanmeldung ist.

Gleichzeitig ist es jedoch unterstützend sehr hilfreich, wenn Sie das Fehlen der benötigten Baureihe

zusätzlich via Ticket melden. Diese parallele Information erleichtert die Nachverfolgung und hilft

sicherzustellen, dass die erforderlichen Stammdaten rechtzeitig für Ihre konkreten Trassenentwürfe

im System zur Verfügung stehen.

DB InfraGO wird vor Ende der Anmeldefrist ein zusätzliches Stammdatenupdate bereitstellen. Damit

Ihre benötigten Baureihen in dieses Update einfließen können, ist eine Meldung fehlender

Triebfahrzeuge (TFZ) bis spätestens 31.03.2026 erforderlich. Dieses Vorgehen ersetzt nicht den

offiziellen Regelprozess gemäß Richtlinie 402, unterstützt aber die fristgerechte Bereitstellung der

Stammdaten.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 09.03.2026 ​ 42',203,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":42,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','4abf7691c402bdd664c23c05aa1a700966ef2244dbff86cd3c08d00e85231cd3');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_52d96ea6a3208f65eef6aa88','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',43,'Seite 43','Offene Punkte und Antworten (2/3)

Frage Antwort DB InfraGO

Wann wird es denn überhaupt möglich Es gibt aktuell einen Defect im pathOS Webportal, der die Angabe des durchführenden EVU am

sein, die „synthetische“ Handoverpunkt stört. Dieser wird bis zum 18.03.2026 behoben. Bitte bestellen Sie betroffene

Kundennummer für die Grenzstrecke Trassen ab diesem Datum.

im Ausland anzugeben?

Aktualisierung: Der Defect ist seit dem 18.03.2026 behoben.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 09.03.2026 ​ 43',75,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":43,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','9bb9c45b6121eb9782ad1b30ab98d56219c621a847463684b0b2477f2fd30022');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d79e23ea05d4c4b723193117','wiki/sources/taf-tap-tsi-dialog-26-maerz-2026-terminunterlage-data.md',44,'Seite 44','Offene Punkte und Antworten (3/3)

Frage Antwort DB InfraGO

Hinweis auf abweichende Die TCM/PTCM muss an das jeweils betrieblich verantwortliche EIU für den jeweiligen

TrainCompositionMessage / Streckenabschnitt geschickt werden. Ferner sind die Inhalte der TCM/PTCM für die Disposition

Probleme bei TCM-Trassen- relevant und müssen der InfraGO daher für den Bereich vorliegen, in dem sie die Disposition für den

Zuordnung: In Fällen, in denen die Zug übernimmt. Daher wird diese von Netzgrenze bis Netzgrenze an die DB InfraGO geschickt.

Fahrplanbearbeitungsgrenze im

Ausland liegt, enthält die PDM der

InfraGO einen ausländischen

Abschnitt, während die TCM an das

ausländische EIU geschickt werden

muss.

DB InfraGO AG | Follow-up: TAF/TAP TSI-Dialog am 09.03.2026 ​ 44',111,'{"canonical_url":null,"normalized_sha256":"8780ed51602e70efd5973305ad8a6b6b005a0e7c7edeadbb99fe66d11fa65692","page":44,"source_id":"src_3144bf05b4098f1b3f75","source_sha256":"44fe2d3163612d9c0a1e98037270d0a8bb34b94b75bed09d755c2fcc750d4008","source_version_id":"sv_44fe2d3163612d9c0a1e9803"}','0b387166df6fb4b23c7d8f90e78efa1c642cd7c11d5dfe8bb08dc3c138a39fe0');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_41228a549ad00f141eea','file','TAF/TAP TSI FAQ','https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/TAF-TAP-TSI-FAQ-13868920','de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_a6f59414e6ebc1e04ca2c673','src_41228a549ad00f141eea','001147e3eec4df3b47c092cac0b059cf11d3ef1aa86dbcd443f452d502fe8314','97bc3bb746068822730652b85d950b631a9901e1f53d4728d99bef285fb45739',14695,'text/markdown','TAF_TAP TSI FAQ.md','sources/normalized/bootstrap/taf-tap-tsi-faq/sv_a6f59414e6ebc1e04ca2c673.md','identity-markdown','1','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/TAF-TAP-TSI-FAQ-13868920","contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"001147e3eec4df3b47c092cac0b059cf11d3ef1aa86dbcd443f452d502fe8314","converter":{"name":"identity-markdown","profile":"bootstrap-markdown-v2","version":"1"},"final_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/TAF-TAP-TSI-FAQ-13868920","import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_a6f59414e6ebc1e04ca2c673.json","media_type":"text/markdown","normalized_repo_path":"sources/normalized/bootstrap/taf-tap-tsi-faq/sv_a6f59414e6ebc1e04ca2c673.md","normalized_sha256":"97bc3bb746068822730652b85d950b631a9901e1f53d4728d99bef285fb45739","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/TAF-TAP-TSI-FAQ-13868920","original_filename":"TAF_TAP TSI FAQ.md","page_count":null,"raw_binary_committed":false,"requested_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/TAF-TAP-TSI-FAQ-13868920","schema_version":2,"size_bytes":14695,"source_id":"src_41228a549ad00f141eea","source_sha256":"001147e3eec4df3b47c092cac0b059cf11d3ef1aa86dbcd443f452d502fe8314","source_version_id":"sv_a6f59414e6ebc1e04ca2c673","supersedes_source_version_id":null,"title":"TAF/TAP TSI FAQ","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','001147e3eec4df3b47c092cac0b059cf11d3ef1aa86dbcd443f452d502fe8314','src_41228a549ad00f141eea','sv_a6f59414e6ebc1e04ca2c673','{"content_duplicate_group":null,"original_filename":"TAF_TAP TSI FAQ.md"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','97bc3bb746068822730652b85d950b631a9901e1f53d4728d99bef285fb45739','src_41228a549ad00f141eea',NULL,'{"content_duplicate_group":null,"original_filename":"TAF_TAP TSI FAQ.md"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
