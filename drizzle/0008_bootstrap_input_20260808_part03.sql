INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_907e99d75b2b31cd7568b7ea','wiki/sources/flyer-taf-tap-identifikatoren-data.md',0,'Seite 1','Informationen zu den neuen TAF/TAP-

TSI-Objekten und ihren Identifikatoren

Ein Kernanliegen von TAF/TAP-TSI ist die Schaffung von eindeutig zu

zuordnenden Elementen zu ihren Eigentümern. Dafür wurden für den Austausch

zwischen EIU und EVU die Objekte ReferenceTrain, Route sowie Path(-Request)

mit zugehörigen Identifikatoren geschaffen. Züge und Routen sind

Planungselemente der EVU. Die Trassen gehören zur Infrastruktur.

ReferenceTrain (Identifikator: TRID) Path (PAID)

• Beschreibt die Zugfamilie für eine geplante • Ist das EIU-Angebot zur Bestellung und

Verkehrsdienstleistung Grundlage des Trassennutzungsvertrags

• Fahrplan: Enthält den Kalender der • Enthält alle notwendigen Informationen

Verkehrstage, an jedem Tag des Kalenders für die Buchung der Trasse

kann ein Zug aus der Zugfamilie fahren • Verfahren mit Kalender für Fahrplanung

und tagesscharfer-ID für Betrieb analog

• Betrieb: Bezeichnet als tagesscharfe ID

zu ReferenceTrain

europaweit genau einen Zug an einem Tag

• Ein Attribut des Path ist die Zugnummer

• Der Identifikator wird bei interoperablen

(OTN = Operational Train Number)

Zügen vom führenden EVU (LeadRU)

vergeben & von beteiligten EVU genutzt

PathRequest (PRID), nur für

Fahrplanung

Route (ROID), nur für Fahrplanung

• Ist vom durchführenden EVU zu

• Beschreibt den globalen Laufweg des Zuges

erstellen

über EIU-Grenzen hinweg

• Beschreibt die konkrete

• Dient allen beteiligten EVU zur Planung &

Trassenbestellung ggü. dem EIU und

groben Beschreibung der Strecke

enthält die Details zum genutzten Zug &

• Mehrere Routen können zu einem der gewünschten Fahrlage

ReferenceTrain definiert werden

dbinfrago.com/taf-tap-tsi Identifikatoren | Seite 1 von 2',237,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089294/6a4b5990c9ce96a7a1bb71efa5c48f16/Flyer-TAF-TAP-Identifikatoren-data.pdf","normalized_sha256":"e78666ffc6c51fcf488e8a18d3a827bdb6a63564bc3f3bbd875c2294cfdd2c2d","page":1,"source_id":"src_f99e066f37874620df4e","source_sha256":"c88a5b74e140e9fe73443e9863972c19c7f111c996d24206262bf4ae2bfd373b","source_version_id":"sv_c88a5b74e140e9fe73443e98"}','ccaf47d2f55a4e79d9bfc5d93822b2df5d44625068fdcda6b3cd4996735d6aee');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_68d7e82bdc919f7376c57581','wiki/sources/flyer-taf-tap-identifikatoren-data.md',1,'Seite 2','Struktur Identifikatoren (immer gleiche Abfolge)

• Objekttyp: TR, RO, PR, PA (2-Stellen)

• CompanyCode (4-Stellig)

• Core-Element (frei wählbar, 12-Stellen)

• Variant (frei wählbar, 2-Stellen)

• Fahrplanjahr (4-Stellen)

• Nur im Betrieb: Startdatum am Ursprungsbahnhof (10-Stellen: dann tagesscharfe ID

analog Tagesfahrplan) – Dieser kann im Bereich eines anderen EIU liegen

ReferenceTrain-ID 1

(Zugfamilie, Variant immer v00)

n Ersteller: Führendes EVU (LeadRU)

e

r

o

t Train-ID 1 Train-ID 2 Siehe

a

k Hinweis

i (Ein Zug der Familie, Variant nie v00) (Ein Zug der Familie, Variant nie v00)

f

i t Ersteller: Führendes EVU (LeadRU) Ersteller: Führendes EVU (LeadRU) unten

n

e

d

I Route-ID 1 Route-ID 2

&

(Grober Laufweg des Zuges über alle Netze) (Grober Laufweg des Zuges über alle Netze)

e

t Ersteller: Führendes EVU (LeadRU) Ersteller: Führendes EVU (LeadRU)

k

e

j

b

O

- PathRequest-ID 1

P

A

(Genauer gewünschter Laufweg des Zuges in einem Netz)

T

/ Ersteller: Anmelder (ResponsibleApplicant)

F

A

T

Path-ID 1 Path-ID 2

(Genauer Laufweg des Zuges in einem Netz) (Genauer Laufweg des Zuges in einem Netz)

Ersteller: EIU Ersteller: EIU

t h

u t OTN 1 OTN 2

b a

P

i r (Zugnr.) (Zugnr.)

t s

t e Ersteller: EIU Ersteller: EIU

A

d

Beispielhafter Aufbau aller Identifikatoren

Fahrplanungsphase TR/0001/AB12345TFRLH/00/2023 + Kalender

Betriebsphase TR/0001/AB12345TFRLH/00/2023/2023-11-05

Hinweis zur Train-ID

Das Zugobjekt mit der Train-ID wird nur im Datenaustausch zwischen den EVU genutzt, es

ist für das EIU nicht sichtbar oder relevant.

dbinfrago.com/taf-tap-tsi Identifikatoren | Seite 2 von 2',248,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089294/6a4b5990c9ce96a7a1bb71efa5c48f16/Flyer-TAF-TAP-Identifikatoren-data.pdf","normalized_sha256":"e78666ffc6c51fcf488e8a18d3a827bdb6a63564bc3f3bbd875c2294cfdd2c2d","page":2,"source_id":"src_f99e066f37874620df4e","source_sha256":"c88a5b74e140e9fe73443e9863972c19c7f111c996d24206262bf4ae2bfd373b","source_version_id":"sv_c88a5b74e140e9fe73443e98"}','56ab36d6006d005216d9d06130662f8efceee799d091c56bd55795b847ade766');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_a731ecf1b5573c6eba01','file','Flyer TCM PTCM','https://www.dbinfrago.com/resource/blob/11089298/4e18e826234c994109813595aeb14eec/Flyer-TCM-PTCM-data.pdf','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_c7063d63a8af5e6fac38fb2c','src_a731ecf1b5573c6eba01','c7063d63a8af5e6fac38fb2c81a6e9a8c5f177562f6bb484e43d10f1884b5e47','5b2099e9c62191e2e6ff25602bfe83452aad24027ee6189565cf8a6402606123',193928,'application/pdf','Flyer-TCM-PTCM-data.pdf','sources/normalized/bootstrap/flyer-tcm-ptcm-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089298/4e18e826234c994109813595aeb14eec/Flyer-TCM-PTCM-data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/flyer-tcm-ptcm-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Flyer-TCM-PTCM-data.pdf","page_count":2,"raw_binary_committed":false,"schema_version":1,"size_bytes":193928,"source_id":"src_a731ecf1b5573c6eba01","source_sha256":"c7063d63a8af5e6fac38fb2c81a6e9a8c5f177562f6bb484e43d10f1884b5e47","source_version_id":"sv_c7063d63a8af5e6fac38fb2c","title":"Flyer TCM PTCM","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','c7063d63a8af5e6fac38fb2c81a6e9a8c5f177562f6bb484e43d10f1884b5e47','src_a731ecf1b5573c6eba01','sv_c7063d63a8af5e6fac38fb2c','{"content_duplicate_group":null,"original_filename":"Flyer-TCM-PTCM-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','5b2099e9c62191e2e6ff25602bfe83452aad24027ee6189565cf8a6402606123','src_a731ecf1b5573c6eba01',NULL,'{"content_duplicate_group":null,"original_filename":"Flyer-TCM-PTCM-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','6ea600bb078f32c2c0efa960fc40afb41b36bc6c1a496abae9a6124a9528dd29','src_a731ecf1b5573c6eba01',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089298/4e18e826234c994109813595aeb14eec/Flyer-TCM-PTCM-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_c7063d63a8af5e6fac38fb2c' WHERE id='src_a731ecf1b5573c6eba01';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/flyer-tcm-ptcm-data.md','Flyer TCM PTCM','Versand von Ist-Zugdaten an DB InfraGO AG mit TAF/TAP TSI: TCM und PTCM (Passenger) Train Composition Message Die DB InfraGO AG möchte durch die Berücksichtigung aktueller Zugdaten, wie z.B. Länge und Gewicht des Gesamtzuges, eine erhöhte Prognosequalität sowie eine verbesserte digitale Unterstützung der Zusammenarbeit zwischen den Mitarbeiter:innen der EVU ','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','c00440040f8dc81f9d1445f89907ba4a337daa7f3823877fd432baa2e9fbe9bd','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/11089298/4e18e826234c994109813595aeb14eec/Flyer-TCM-PTCM-data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_a731ecf1b5573c6eba01","source_version_id":"sv_c7063d63a8af5e6fac38fb2c"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/flyer-tcm-ptcm-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_65e92140483521ddcf31e6e4','wiki/sources/flyer-tcm-ptcm-data.md',0,'Seite 1','Versand von Ist-Zugdaten an DB InfraGO

AG mit TAF/TAP TSI: TCM und PTCM

(Passenger) Train Composition Message

Die DB InfraGO AG möchte durch die Berücksichtigung aktueller Zugdaten, wie

z.B. Länge und Gewicht des Gesamtzuges, eine erhöhte Prognosequalität sowie

eine verbesserte digitale Unterstützung der Zusammenarbeit zwischen den

Mitarbeiter:innen der EVU und den Betriebszentralen erreichen.

Motivation

Die Kenntnis der aktuelle Zugcharakteristik ermöglicht in den Dispositionssystemen der

DB InfraGO AG durch die Berücksichtigung der aktuellen fahrdynamischen Eigenschaften

des Zuges eine akkuratere Prognoserechnung. Diese wirkt direkt auf die

Prognosedatensätze, welche die DB InfraGO AG den EVU bereitstellt. Des weiteren bietet

die verbesserte Prognose und Angaben wie etwa die Zuglänge für die Mitarbeiter:innen in

der Disposition eine bessere Informationsbasis z.B. für Überholungen und Einfädelungen.

Auch wirkt die verbesserte Prognose auf Prognosedatensätze, welche die DB InfraGO AG

ihren Kunden bereitstellt.

Aufgrund dieses hohen Mehrwerts für alle Verkehre auf unserem Netz, haben wir uns

entschlossen, die Abgabe der Train Composition Message / Passenger Train Composition

Message gemäß TAF/TAP TSI bereits zum Fahrplanwechsel im Dezember 2025

verpflichtend zu machen (zunächst noch auf Basis OTN/Zugnr.). Die Einführung auf Basis

TAF/TAP-Identifikatoren folgt dann zum Fahrplanwechsel im Dezember 2026. Wir als DB

InfraGO AG werden eine Weboberfläche zur manuellen Eingabe der Zugcharakteristika

oder deren Upload als csv-/xml-Datei als Alternative zum Meldungsversand

bereitzustellen.

dbinfrago.com/taf-tap-tsi TCM/PTCM | Seite 1 von 2',218,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089298/4e18e826234c994109813595aeb14eec/Flyer-TCM-PTCM-data.pdf","normalized_sha256":"5b2099e9c62191e2e6ff25602bfe83452aad24027ee6189565cf8a6402606123","page":1,"source_id":"src_a731ecf1b5573c6eba01","source_sha256":"c7063d63a8af5e6fac38fb2c81a6e9a8c5f177562f6bb484e43d10f1884b5e47","source_version_id":"sv_c7063d63a8af5e6fac38fb2c"}','94a8b9880a2f57d4df20e236cf6b4a9f009bbcc6aad650065607cc6b1d05e389');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_44658b23d28b71ab8ad3ac15','wiki/sources/flyer-tcm-ptcm-data.md',1,'Seite 2','Versand von Ist-Zugdaten an DB InfraGO

AG mit TAF/TAP TSI: TCM und PTCM

Zeitachse Weitere Funktionen

‒ Bereits jetzt kann die PTCM/TCM mit Mit Inbetriebnahme sind auch die

der DB InfraGO AG getestet werden folgenden optionalen Funktionen

verfügbar:

− Alle EVU können künftig die Meldung

selbst oder über einen Dienstleister − Zulieferung Wagenliste im Rahmen

freiwillig senden (genaue Schienenlärmschutzgesetz

Zeitplanung aktuell in Arbeit)

− Übermittlung verminderter

− Eine Verpflichtung via INB ist für Bremshundertstel mit automatischer

Dezember 2025 (also zum Ausgabe neuer Fahrzeiten

Fahrplanjahr 2026) auf Basis

OTN/Zugnummer vorgesehen

− Verwendung auf Basis TAF/TAP-

Identifikatoren folgt dann zum

Fahrplanjahr 2027

dbinfrago.com/taf-tap-tsi TCM/PTCM | Seite 2 von 2',107,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089298/4e18e826234c994109813595aeb14eec/Flyer-TCM-PTCM-data.pdf","normalized_sha256":"5b2099e9c62191e2e6ff25602bfe83452aad24027ee6189565cf8a6402606123","page":2,"source_id":"src_a731ecf1b5573c6eba01","source_sha256":"c7063d63a8af5e6fac38fb2c81a6e9a8c5f177562f6bb484e43d10f1884b5e47","source_version_id":"sv_c7063d63a8af5e6fac38fb2c"}','dfb802d58d40650ae32a648715ee59ae85275c11cbf966c4b598212314c4f817');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_154242f98906f347d53b','file','Flyer Umsetzungscheckliste TAF/TAP TSI fuer EVU','https://www.dbinfrago.com/resource/blob/11089304/748022c34b79d03bdd3e6ae0e5914836/Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_1eeb0a97a58e3ea642480851','src_154242f98906f347d53b','1eeb0a97a58e3ea6424808511dea54b1fdd13f3355b02dedd05eaab6f0fed061','9f98e995f66cec9d6f71a50e824d0ccdde3e78cc35f739192e74958a961b2a41',219407,'application/pdf','Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf','sources/normalized/bootstrap/flyer-umsetzungscheckliste-taf-tap-tsi-fuer-evu-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089304/748022c34b79d03bdd3e6ae0e5914836/Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/flyer-umsetzungscheckliste-taf-tap-tsi-fuer-evu-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf","page_count":2,"raw_binary_committed":false,"schema_version":1,"size_bytes":219407,"source_id":"src_154242f98906f347d53b","source_sha256":"1eeb0a97a58e3ea6424808511dea54b1fdd13f3355b02dedd05eaab6f0fed061","source_version_id":"sv_1eeb0a97a58e3ea642480851","title":"Flyer Umsetzungscheckliste TAF/TAP TSI fuer EVU","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','1eeb0a97a58e3ea6424808511dea54b1fdd13f3355b02dedd05eaab6f0fed061','src_154242f98906f347d53b','sv_1eeb0a97a58e3ea642480851','{"content_duplicate_group":null,"original_filename":"Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','9f98e995f66cec9d6f71a50e824d0ccdde3e78cc35f739192e74958a961b2a41','src_154242f98906f347d53b',NULL,'{"content_duplicate_group":null,"original_filename":"Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','31ef22f7f38a67d6a17242230cd46d2f69fb9c8f0b46d2a14e4a4cc61757b1a7','src_154242f98906f347d53b',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089304/748022c34b79d03bdd3e6ae0e5914836/Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_1eeb0a97a58e3ea642480851' WHERE id='src_154242f98906f347d53b';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/flyer-umsetzungscheckliste-taf-tap-tsi-fuer-evu-data.md','Flyer Umsetzungscheckliste TAF/TAP TSI fuer EVU','TAF/TAP TSI kommt. Einführung bei der DB InfraGO AG zum Fahrplanjahr 2027 Ihre Checkliste für die Umsetzung von TAF/TAP Allgemeines und Grundlagen  Kontakt zur DB InfraGO suchen, z.B. Informationsplattform besuchen, Kundenberater:in ansprechen, an NCP Sektorgruppe teilnehmen, Kundenveranstaltungen und Workshops besuchen, Verbände ansprechen, Kundeninformati','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','9a5eee71fa1a2a81968e3ac9c713259e48a07c9d5dadbd98d3145e4e5cf31423','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/11089304/748022c34b79d03bdd3e6ae0e5914836/Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_154242f98906f347d53b","source_version_id":"sv_1eeb0a97a58e3ea642480851"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/flyer-umsetzungscheckliste-taf-tap-tsi-fuer-evu-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_cf2f4966c3743c3f0c89614e','wiki/sources/flyer-umsetzungscheckliste-taf-tap-tsi-fuer-evu-data.md',0,'Seite 1','TAF/TAP TSI kommt. Einführung bei der DB

InfraGO AG zum Fahrplanjahr 2027

Ihre Checkliste für die Umsetzung von TAF/TAP

Allgemeines und Grundlagen

 Kontakt zur DB InfraGO suchen, z.B. Informationsplattform besuchen,

Kundenberater:in ansprechen, an NCP Sektorgruppe teilnehmen, Kundenveranstaltungen

und Workshops besuchen, Verbände ansprechen, Kundeninformationen (KI) zum Thema

lesen etc.

 Grundlagen von TAF/TAP verstehen inkl. Zielsetzung, Zeitplan, EU-Verordnungen und

Updates. Aktuellen Zeitplan der Einführung bei DB InfraGO kennen, regelmäßig über

Neuigkeiten informieren

 Jedes Unternehmen, das an TAF/TAP teilnimmt, muss einen Company Code beantragen:

Flyer auf Infoplattform; Beantragung & Übersicht aller Codes bei UIC (ab 2026 bei ERA)

 Jeder Betreiber von Infrastruktur muss seine Betriebsstellen (an denen Zugverkehr

stattfindet) mit Primary Location Codes versehen: Bitte Kontakt zum NCP aufnehmen

Schnellstmöglich die Umsetzung in eigenen IT-Systemen prüfen

 Umsetzungsbedarf von TAF/TAP hinsichtlich Trassenanmeldung und betrieblicher

Nachrichten prüfen: für sich selbst festlegen, ob eigene IT-Umsetzung inkl. Schnittstelle (= Common Interface/CI) nötig ist oder die Webportale der DB InfraGO

ausreichen

 Eigene IT-Systeme auf TAF/TAP Anforderungen überprüfen, z.B. Abrechnung, Umlaufund Personalplanung. Hierzu gehört auch, die künftigen Identifier unter TAF/TAP TSI zu

verstehen sowie prüfen, wie diese mit eigenen Systemen zusammenspielen

 Gegebenenfalls Kontakt zu IT-Dienstleistern herstellen

 Gegebenenfalls Anforderungen an technische Schnittstelle (CI) verstehen: Aktuelle

Schnittstellendokumentationen für Trassenanmeldung und Betrieb der DB InfraGO

lesen und bei Umsetzung berücksichtigen. Zudem werden Zertifikate zur',220,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089304/748022c34b79d03bdd3e6ae0e5914836/Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf","normalized_sha256":"9f98e995f66cec9d6f71a50e824d0ccdde3e78cc35f739192e74958a961b2a41","page":1,"source_id":"src_154242f98906f347d53b","source_sha256":"1eeb0a97a58e3ea6424808511dea54b1fdd13f3355b02dedd05eaab6f0fed061","source_version_id":"sv_1eeb0a97a58e3ea642480851"}','77bcbfc877875ced9316f9edb7baf72019a4895658bc18b4c7790b2a938ff0de');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_72eb1610afb19002622393b9','wiki/sources/flyer-umsetzungscheckliste-taf-tap-tsi-fuer-evu-data.md',1,'Seite 1','Authentifizierung der RNE benötigt

dbinfrago.com/taf-tap-tsi Checkliste | Seite 1 von 2',11,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089304/748022c34b79d03bdd3e6ae0e5914836/Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf","normalized_sha256":"9f98e995f66cec9d6f71a50e824d0ccdde3e78cc35f739192e74958a961b2a41","page":1,"source_id":"src_154242f98906f347d53b","source_sha256":"1eeb0a97a58e3ea6424808511dea54b1fdd13f3355b02dedd05eaab6f0fed061","source_version_id":"sv_1eeb0a97a58e3ea642480851"}','477ad1f6d11bc442a6b18f31fb8ba6ba241ab2f679209adf4bc0b36bd48576b9');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_87f7e772e0759b5e2c554e96','wiki/sources/flyer-umsetzungscheckliste-taf-tap-tsi-fuer-evu-data.md',2,'Seite 2','TAF/TAP TSI kommt. Einführung bei der DB

InfraGO AG zum Fahrplanjahr 2027

Umsetzung von TAF/TAP in der Trassenanmeldung

 Grundlogik von TAF/TAP in Trassenanmeldung verstehen, u.a. die Objekte

„ReferenceTrain“, „Path“ sowie weitere Identifier und Rollen (wie LeadRU, Responsible

Applicant etc.). Webseite des neuen Bestellsystems pathOS bietet grundlegende

Informationen

 Testzugang neues Bestellportal benutzen, um eigene Ideen zur Gestaltung

einzubringen und das Portal möglichst frühzeitig kennenzulernen

 Bei Nutzung eigener Software/Schnittstellenlösung frühzeitig Testphasen begleiten

und finale Freigabe vor Go-Live in Abstimmung mit IT-Dienstleister sicherstellen

 Frühzeitig Zugänge und User in Erfahrung bringen und mit eigenem PowerUser

Mitarbeiter:innen selber administrieren (wird kurz vorm ersten Go-Live bereitgestellt)

 Bei Nutzung des Webportals: an Schulungen teilnehmen und vor erster „echter“

Trassenanmeldung einloggen, um Entwürfe und Vorlagen vorzubereiten

Umsetzung von TAF/TAP im Betrieb

 Grundlogik der betrieblichen TAF/TAP-Nachrichten verstehen und eigene Umsetzung

prüfen: Alle relevanten Nachrichten kennen

 Für sich selbst die gewünschte Umsetzung und den Bedarf prüfen für von DB InfraGO

zu empfangende Nachrichten (nach aktueller Planung alle freiwillig) und für selbst zu

versendende Nachrichten. Weitere Informationen zu Verbindlichkeit und

Übermittlungsmöglichkeiten der Zuginhaltsdaten (TCM/PTCM) der DB InfraGO beachten

 Bei nicht geplanter Nutzung der TAF/TAP Nachrichten, Alternativen sicherstellen (wie

z.B. UIC-Meldungen oder LeiDis-NK)

 Wenn gewünscht, am Pilot/Test betrieblicher Nachrichten teilnehmen und idealerweise

schon früher die ersten betrieblichen TAF/TAP Nachrichten freiwillig nutzen',218,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089304/748022c34b79d03bdd3e6ae0e5914836/Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf","normalized_sha256":"9f98e995f66cec9d6f71a50e824d0ccdde3e78cc35f739192e74958a961b2a41","page":2,"source_id":"src_154242f98906f347d53b","source_sha256":"1eeb0a97a58e3ea6424808511dea54b1fdd13f3355b02dedd05eaab6f0fed061","source_version_id":"sv_1eeb0a97a58e3ea642480851"}','92d23e609c56850adcf3e5e46bdc8a8078dd1e03e2f0842b7469749787b68ea8');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d4b4e9da441d242eccadf247','wiki/sources/flyer-umsetzungscheckliste-taf-tap-tsi-fuer-evu-data.md',3,'Seite 2','Mehr zu TAF/TAP TSI auf der Informationsplattform

der DB InfraGO AG!

https://www.dbinfrago.com/taf-tap-tsi

dbinfrago.com/taf-tap-tsi Checkliste | Seite 2 von 2',19,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/11089304/748022c34b79d03bdd3e6ae0e5914836/Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf","normalized_sha256":"9f98e995f66cec9d6f71a50e824d0ccdde3e78cc35f739192e74958a961b2a41","page":2,"source_id":"src_154242f98906f347d53b","source_sha256":"1eeb0a97a58e3ea6424808511dea54b1fdd13f3355b02dedd05eaab6f0fed061","source_version_id":"sv_1eeb0a97a58e3ea642480851"}','2a2e34a6d578726535f9175b2ef1d7691096a6c2bcd7a4041de3bff514e830ac');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_444523b5c3ad495650b5','file','Flyer zur Unterjaehrigen Baukommunikation nach Annex VII','https://www.dbinfrago.com/resource/blob/13011080/a3545a1d844e118ef682864da6054eab/Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_4faec1ad62208a667b5fd534','src_444523b5c3ad495650b5','4faec1ad62208a667b5fd53403745ffacd947b2b0cefbd161722c7671b49f536','92c3d9c918b964e120bc38a9760c77356738b169587236b013f80c5fa2bbfafd',193312,'application/pdf','Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf','sources/normalized/bootstrap/flyer-zur-unterjaehrigen-baukommunikation-nach-annex-vii-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13011080/a3545a1d844e118ef682864da6054eab/Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/flyer-zur-unterjaehrigen-baukommunikation-nach-annex-vii-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf","page_count":2,"raw_binary_committed":false,"schema_version":1,"size_bytes":193312,"source_id":"src_444523b5c3ad495650b5","source_sha256":"4faec1ad62208a667b5fd53403745ffacd947b2b0cefbd161722c7671b49f536","source_version_id":"sv_4faec1ad62208a667b5fd534","title":"Flyer zur Unterjaehrigen Baukommunikation nach Annex VII","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','4faec1ad62208a667b5fd53403745ffacd947b2b0cefbd161722c7671b49f536','src_444523b5c3ad495650b5','sv_4faec1ad62208a667b5fd534','{"content_duplicate_group":null,"original_filename":"Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','92c3d9c918b964e120bc38a9760c77356738b169587236b013f80c5fa2bbfafd','src_444523b5c3ad495650b5',NULL,'{"content_duplicate_group":null,"original_filename":"Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','a4e4421cb0803b18e89e95d54a6ca76527debce7f202fcc3cf04166f0b26d9bd','src_444523b5c3ad495650b5',NULL,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13011080/a3545a1d844e118ef682864da6054eab/Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_4faec1ad62208a667b5fd534' WHERE id='src_444523b5c3ad495650b5';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/flyer-zur-unterjaehrigen-baukommunikation-nach-annex-vii-data.md','Flyer zur Unterjaehrigen Baukommunikation nach Annex VII','Unterjährige Baukommunikation nach Annex VII Wie verändert sich die Baukommunikation mit Einführung des ANNEX VII? Mit dem Annex VII gibt die EU den Eisenbahninfrastrukturunternehmen (EIU) in Europa einheitliche Vorgaben zu Fristen in der Kommunikation und Abstimmung von Baumaßnahmen vor und legt verbindlich fest, wann welche Baumaßnahmen in der Konstruktion','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','dfc4aa5f1fac0d0da9956326f50f7d1d386fa9df833ccfb0aef3c121aeac904e','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/resource/blob/13011080/a3545a1d844e118ef682864da6054eab/Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_444523b5c3ad495650b5","source_version_id":"sv_4faec1ad62208a667b5fd534"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/flyer-zur-unterjaehrigen-baukommunikation-nach-annex-vii-data.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_23ff516efb297dd20cd48596','wiki/sources/flyer-zur-unterjaehrigen-baukommunikation-nach-annex-vii-data.md',0,'Seite 1','Unterjährige Baukommunikation nach Annex VII

Wie verändert sich die Baukommunikation mit Einführung des

ANNEX VII?

Mit dem Annex VII gibt die EU den Eisenbahninfrastrukturunternehmen (EIU) in

Europa einheitliche Vorgaben zu Fristen in der Kommunikation und Abstimmung

von Baumaßnahmen vor und legt verbindlich fest, wann welche Baumaßnahmen

in der Konstruktion zu berücksichtigen sind. Wir entwickeln uns von einer

baumaßnahmenbezogenen Bearbeitung zur Auskonstruktion der gesamten

baubetroffenen Zugtrassen. Ebenfalls ändert sich die Kategorisierung der

Baumaßnahmen: es wird von baubedingten Kapazitätseinschränkung (BKE)

gesprochen. Aktuelle Dokumente wie beispielsweise die Zusammenstellung

vertrieblicher Folgen (ZvF) und das Übergabeblatt (ÜB) werden

durch Grobplanungs- und Feinplanungsergebnis (GPE und FPE) ersetzt.

Die Einführung und Umsetzung des Annex VII erfolgt schrittweise. Die vollständige

Umsetzung ist für das Fahrplanjahr 2028 vorgesehen. Für das Unterjährige wird in

zwei Teilschritten vorgegangen, da der Beginn für das Fahrplanjahr 2027ff zugesagt

wurde: Im Migrationszeitraum 2027 werden erst die Produkte für den

unterjährigen Bau umgesetzt, dann für das Fahrplanjahr 2028 die Fristen.

Die neuen Produkte.

Bestehende Produkte werden gänzlich durch neue ersetzt. Die Kommunikation

erfolgt im ersten Schritt über ein Grobplanungsergebnis (GPE): Dies ist der

Erstentwurf der ausgeplanten neuen Trasse. Auf diesen Regelungsvorschlag kann im

Zeitraum von drei Wochen eine Stellungnahme (SN) durch das

Eisenbahnverkehrsunternehmen (EVU) abgegeben werden. Daraufhin wird diese SN

im Rahmen des Möglichen berücksichtigt und es erfolgt der Versand eines GPE nach

SN, auf welches keine Stellung genommen werden kann. Im Anschluss wird das',230,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13011080/a3545a1d844e118ef682864da6054eab/Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf","normalized_sha256":"92c3d9c918b964e120bc38a9760c77356738b169587236b013f80c5fa2bbfafd","page":1,"source_id":"src_444523b5c3ad495650b5","source_sha256":"4faec1ad62208a667b5fd53403745ffacd947b2b0cefbd161722c7671b49f536","source_version_id":"sv_4faec1ad62208a667b5fd534"}','837a6cac03c47bdbdb99774825948ddc425095d2c2c909de2e69d8c26b93d859');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_1400cd88b00a1ef3ac8daba4','wiki/sources/flyer-zur-unterjaehrigen-baukommunikation-nach-annex-vii-data.md',1,'Seite 1','Feinplanungsergebnis (FPE) zeitgleich mit der Netzausgelösten Änderung (NAÄ)

gesendet. Die NAÄ ist die Information über die neue Vertragstrasse. Im letzten

Schritt wird die Fahrplanordnung (FPLO) versendet.

Die nächste Seite zeigt das Schaubild der Zeitpunkte, zu denen die neuen

Fahrplanprodukte zukünftig versendet werden.

dbinfrago.com/taf-tap-tsi',43,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13011080/a3545a1d844e118ef682864da6054eab/Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf","normalized_sha256":"92c3d9c918b964e120bc38a9760c77356738b169587236b013f80c5fa2bbfafd","page":1,"source_id":"src_444523b5c3ad495650b5","source_sha256":"4faec1ad62208a667b5fd53403745ffacd947b2b0cefbd161722c7671b49f536","source_version_id":"sv_4faec1ad62208a667b5fd534"}','ae49e8ebbd508a31e3ec919e83a0e436c67718e6c041e29efb4baa64bdd8bfa1');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_71f9e4e0b48cc607756e05c6','wiki/sources/flyer-zur-unterjaehrigen-baukommunikation-nach-annex-vii-data.md',2,'Seite 2','Unterjährige Baukommunikation nach Annex VII

Wie verändert sich die Baukommunikation mit Einführung von

ANNEX VII?

Die Systeme.

Im Rahmen der Prozessänderung und Einführung von TAF/TAP TSI ändern sich auch

die Formate, in denen die Informationen gesendet werden. Vom aktuellen Versand in

Form von Excel, Word und PDF per E-Mail gehen wir auf eine Weboberfläche über.

Die baubedingte Kapazitätseinschränkung (BKE), das GPE, das GPE nach SN und das

FPE werden in der KOMBau veröffentlicht. Hier erfolgt auch die SN durch das EVU.

Die NAÄ wird im Bestellsystem dargestellt. Die FPLO wird im Leporello dargestellt.

Wer heute und künftig mit eigenen IT-Lösungen die EVU-Schnittstelle nutzt, muss in

diesen die neue TAF/TAP TSI-Schnittstelle implementieren, damit ein

Nachrichtenaustausch mit der DB InfraGO weiterhin möglich ist. Alle Details hierzu

finden Sie in der Schnittstellen-Dokumentation.

dbinfrago.com/taf-tap-tsi',130,'{"canonical_url":"https://www.dbinfrago.com/resource/blob/13011080/a3545a1d844e118ef682864da6054eab/Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf","normalized_sha256":"92c3d9c918b964e120bc38a9760c77356738b169587236b013f80c5fa2bbfafd","page":2,"source_id":"src_444523b5c3ad495650b5","source_sha256":"4faec1ad62208a667b5fd53403745ffacd947b2b0cefbd161722c7671b49f536","source_version_id":"sv_4faec1ad62208a667b5fd534"}','56f156e285dce7139a53d8485c5d8f9b69fda2dc6bef043cb2440f70bd000309');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_49e6bd4a29f18c068815','file','Fragenkatalog Annex VII',NULL,'de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_ad7a22df2cd5529c685aa7d1','src_49e6bd4a29f18c068815','ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca','964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500',342989,'application/pdf','Fragenkatalog-Annex-VII-data.pdf','sources/normalized/bootstrap/fragenkatalog-annex-vii-data.md','pdfplumber','0.11.9','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":null,"contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"pdfplumber","version":"0.11.9"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"application/pdf","normalized_repo_path":"sources/normalized/bootstrap/fragenkatalog-annex-vii-data.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Fragenkatalog-Annex-VII-data.pdf","page_count":33,"raw_binary_committed":false,"schema_version":1,"size_bytes":342989,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1","title":"Fragenkatalog Annex VII","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca','src_49e6bd4a29f18c068815','sv_ad7a22df2cd5529c685aa7d1','{"content_duplicate_group":null,"original_filename":"Fragenkatalog-Annex-VII-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500','src_49e6bd4a29f18c068815',NULL,'{"content_duplicate_group":null,"original_filename":"Fragenkatalog-Annex-VII-data.pdf"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_ad7a22df2cd5529c685aa7d1' WHERE id='src_49e6bd4a29f18c068815';
--> statement-breakpoint
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
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7bb52c7ffaf43e8a4dc19031','wiki/sources/fragenkatalog-annex-vii-data.md',18,'Seite 10','1.21 Erfolgt auch in diesen Ausnahmefällen die Kommunikation immer über mindestens

NAÄ oder gibt es auch andere Kommunikationsformate?

Wir senden immer ein NAÄ, auch in Ausnahmefällen nach Ril 402.0305 Abschnitt 9 (INB 2027).

1.22 Kann während eines Stellungnahmeverfahren NAÄ (3 WT) eine weiteres NAÄ wegen

einer Maßnahme „Nr.14“ folgen?

Es erfolgt eine Änderung der INB 2027 Ril. 402.305 Abs. 8 (6). Es gibt keinen Ablehnen Button,

sondern die Stornierung erfolgt im Regelprozess.

Eine NAÄ gilt als neuer Vertragszustand. Die neue Vertragstrasse kann innerhalb von 3 Arbeitstagen kostenfrei storniert werden. Dadurch besteht die beschriebene Problemstellung nicht.

1.23 Erstversendung der GPEs: In den INB 2027 sowie im TTT-Dialog vom 30.10.2025

werden unterschiedliche Termine für die Erstversendung der GPEs genannt. Bitte teilen

Sie uns das konkrete, verbindliche Datum der Erstversendung mit.

Die korrekten Daten sind auf der Website der DB InfraGO im Terminkalender für das Kalenderjahr 2026 ersichtlich. Die Kund:inneninformation dazu wurde am 13.11.2025 versendet.

Link Website: https://www.dbinfrago.com/web/schienennetz/fahren_und_bauen/annex-vii-richtlinie-2012-34-eu-11857512

1.24 Werden bei der 3-wöchigen Stellungnahmefrist bundeseinheitliche Feiertage berücksichtigt?

Bei der 3-Wochenfrist für die Stellungnahmen auf ein GPE werden keine Feiertage berücksichtigt. Diese 3-wöchige Stellungnahmefrist kann nicht verkürzt werden. Bei Fristangaben in Form

von Arbeitstagen (Montag bis Freitag) werden bundeseinheitliche Feiertage nicht in die Frist gerechnet.',201,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":10,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','b66a2911c9b0cbdb68050c103fae62efddf54e057fb6c40f2d28b114e5bf7459');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_cd5c55aabf719f2be7438bcc','wiki/sources/fragenkatalog-annex-vii-data.md',19,'Seite 10','1.25 In der ZvF ist heute erkennbar welcher Streckenabschnitt in welchem Zeitraum gesperrt oder nur im GWB befahren werden kann. Mitunter sind noch weitere Informationen, wie einzurichtende La-Stellen oder die Sperrung von Gleisen in den Knotenbahnhöfen erkennbar. Diese Informationen sind für uns als Nahverkehrs-EVU notwendig, um alle

Auswirkungen auf den Zugbetrieb beurteilen zu können und eine entsprechende Stellungnahme abzugeben. Im neuen Prozess wird die ZvF durch das GPE ersetzt. Dieses ist

jedoch zugbezogen. Die o.g. Informationen aus der ZvF hinsichtlich des Sperrabschnittes und der zeitlichen Dauer fehlen hingegen. Hier ist lediglich ein Verweis auf die in der

KOMBau kommunizierten BKE enthalten. Für Bauarbeiten in 2026 war der letzte Konsultationszeitpunkt in der KOMBau zu x-4. Die für Januar 2026 enthaltenen BKE stimmen in

weiten Teilen nicht mit den Informationen der versendeten ZvF überein. Einzelne BKE

wurden nicht durch eine ZvF präzisiert, weshalb wir davon ausgehen, dass diese entfallen sind. In anderen Fällen gibt es eine ZvF, obwohl in der BKE steht, dass unsere Züge

nicht betroffen sind oder es gibt eine ZvF, ohne dass eine dazu passende BKE in der

KOMBau existiert.

Wir haben deshalb an den Support der KOMBau folgende Fragen gestellt und würden

diese auch gerne morgen diskutieren: 1. Werden die BKE weiterhin (nach dem Zeitpunkt

x-4) aktualisiert (Ausfall, Verschiebung oder Änderung der Betroffenheit) und wenn ja zu

welchen Zeitpunkten? 2. Werden neu eingerichtete Baustellen auch mit einer BKE in die

KOMBau aufgenommen? Wo sind diese zu finden?

Mit x-4 werden Rückmeldungen der DB InfraGO AG zu Stellungnahmen der BKE des Teil 2, sowie der Gesamtüberblick/Planungsstand zu allen BKE veröffentlicht. Deshalb ist es möglich,',265,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":10,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','fac57f583f03e9e2b906982372bc49b95f25a68085729c40ebf7a6cfdae21ecc');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_d6a431d421eac12e9cb7896b','wiki/sources/fragenkatalog-annex-vii-data.md',20,'Seite 10','dass x-4 nicht alles aus x-8,75 beinhaltet.

V.IWF 41 Fragenkatalog 10',11,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":10,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','4d5f5a4b65ffe1a6484cc61f13013121c60f51361b9cc341b289062da4e2f55c');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_eef0c12755a2ba1d94e78e15','wiki/sources/fragenkatalog-annex-vii-data.md',21,'Seite 11','1.26 Ist eine Teilstornierung im Regelprozess möglich bei 3-tägiger Frist auf NAÄ?

Die kostenfreie Stornierung innerhalb von drei Arbeitstagen gilt nur für die komplette Stornierung der Trasse der NAÄ-Trasse. Eine kostenfreie Teilstornierung ist hier nicht möglich.

1.27 Gibt es feste Zeiträume für den NAÄ-Versand?

Die NAÄ wird zeitlich mit dem FPE versendet. Dies ist im Regelprozess bis spätestens z-8 (z-5

bei SGV) zu erfolgen. Ein Versand zu einem früheren Zeitpunkt ist möglich.

1.28 Wann werden die ersten GPEs, die auf Basis des VNPs erstellt werden mit dem ENP

synchronisiert?

Ein GPE wird nicht aktualisiert. Die Synchronisation erfolgt im nächsten Fahrplanprodukt (FPE

auf Basis ENP).

1.29 Ein möglicher GPE-Versand kann bereits ab dem 06.07.26 erfolgen. Es stellt sich die

Frage, wie sich die Trasse im ENP darstellt, falls eine GPE abgegeben wird – sei es mit

Stellungnahme oder Annahme. Wird die ENP-Trasse durch die Änderung der Stellungnahme bzw. Annahme berücksichtigt, oder bleibt die ENP-Trasse die Trasse zur ursprünglichen Bestellung? Danke vorab für die Aufklärung im Übrigen plädieren wir für

eine Erstversendung auf Basis ENP.

Im ENP wird unterjähriger Bau nicht berücksichtigt. Die Bautrasse wird über FPE/ NAÄ kommuniziert.

1.30 Wird auch bei NEP I und NEP II und den verkürzten Fristen ein GPEnS versendet?

Es wird kein GPEnS zu den verkürzten GPE Fristen (NEP I und NEP II) versendet, erst wieder

wenn die reguläre Frist des GPE zu z-24 erreicht wird.

1.31 Wird es einen Zeitplan für den Hochlauf der GPE geben?

Wir können keinen Hochlaufplan zur Verfügung stellen.

1.32 Wann wird die Zugbetroffenheit konkretisiert? Ab welchem Zeitpunkt werden konkrete Zugnummern für Baumaßnahmen der Konsultationsphasen veröffentlicht? Bisher',266,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":11,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','3561b5e2cc8c4191283949e5a965ab7d2eff1c042300e817892c39213039d30b');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e3fbfcab63f2c2f1d5a4381a','wiki/sources/fragenkatalog-annex-vii-data.md',22,'Seite 11','Info von Trassenkonstrukteur an EVU. Wie ist der Zielprozess?

Erster möglicher Versand des ersten GPE und Beginn Stellungnahmen in KOMBau, somit konsultierte Trassen sind ab 06.07.2026 möglich. Ein direkter Bezug zwischen Zugbetroffenheit

und Baumaßnahme ist erst im GPE erkennbar.

1.33 Zählt die Stornierung der neuen Regeltrasse, die vorher eine Bautrasse war, in die

Stornoquote?

Bautrassen, die innerhalb von drei Tagen storniert werden, zählen nicht in die Stornoquote.

1.34 Auf geplanter Infrastruktur ist eine Baumaßnahme geplant, deswegen wird gezielt

eine Dritt Infrastruktur genutzt. Hier ist bei der Erstellung eines Testfall aufgefallen, das

in RB West prozessual anders verfahren wird wie in RB Süd. Wir bitten um Bekanntgabe

einer einheitlichen prozessualen Regelung.

Das Vorgehen wird individuell von den jeweiligen Regionen bearbeitet und weicht ggf. von anderen Regionen ab wegen unterschiedlicher örtlicher Gegebenheiten oder Abstimmungsvorgehen mit Fremd-EIU.

V.IWF 41 Fragenkatalog 11',138,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":11,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','eddff3e55401284d1daa7e6872ce8e24ef95373653b318fd771abb7c699fb5ea');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_127e418042dfee01aef2d9cb','wiki/sources/fragenkatalog-annex-vii-data.md',23,'Seite 12','1.35 Gibt es die GPE z-15 nur im ersten Jahr der Einführung TTT (also für den Fpl 2027)

oder ggf. alle Jahre wieder (ist bei InfraGO noch in Klärung): Dann werde uns ansonsten

jedes Jahr GPEn immer 9 Wochen zu z- 24 zu spät übergeben.

Hier geht es um das Fahrplanjahr 2028, die Fristen werden derzeit noch abgestimmt.

1.36 Bleibt VNP/ENP-Frist gleich und ist vorgehen mit erstem GPE zu z-15 auch für Folgejahre geplant?

Hier geht es um das Fahrplanjahr 2028, die Fristen werden derzeit noch abgestimmt.

1.37 Ab welchem Zeitpunkt kann damit gerechnet werden, dass der ENP die Datengrundlage der GPEs ist?

Hier geht es um das Fahrplanjahr 2028, die Fristen werden derzeit noch abgestimmt.

1.38 Muss das Zugnummernkontingent für jedes GPE eine Zugnummer eingegeben werden oder geht hier eine Linienbearbeitung? Oder erhalten Taktzüge von DB InfraGO eine

Zugnummer?

Eine Linienbearbeitung geht aktuell nicht. Die Baufahrplankonstrukteur:innen können nicht sicherstellen, dass sich die Information aus einer Stellungnahme gemerkt wird und für z.B. 100

andere Züge genutzt wird.

1.39 Folgendes Beispiel einer Mehrfachbetroffenheit am linken Rhein. Die Herausforderung, die Thematik im GPE erkennen zu können. Es gibt die Befürchtung, dass dort ggf.

Ausfall Mainz - Köln drinsteht, da unklar, ob diese Komplexität im GPE abbildbar; Informationen sind aktuell in den ZvF''en nur mit sehr hohem Aufwand seitens der Bearbeiter

Baufahrpläne möglich.

Mehrfachbetroffenheiten je Zugfahrt werden in den neuen Fahrplanprodukten verarbeitet und

mittels der zugehörigen BKE-IDn angezeigt.

1.40 Wo findet man in den INB die Annahme und Ablehnung vom GPEnS und warum ist

das eine Frist von 1 Woche?',257,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":12,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','b9f1a393664d9ed10f8410c0bb13ec17304f00eb65fd1e6385fa12bdedc877a0');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5f0a99da46e5229b65f0de5a','wiki/sources/fragenkatalog-annex-vii-data.md',24,'Seite 12','Wir planen eine Präzisierung der INB 2027 um die Frist einer Woche für Annahme und Ablehnung zu ergänzen.

1.41 Wann ist der Versand der letzten ZvF Dokumente bei A und B Maßnahmen geplant?

„Der letzte Tag im Fahrplanjahr 2026 ist Samstag, der 12.12.2026. Von diesem Tag 15 Wochen

bei A-Maßnahmen und 10 Wochen bei B-Maßnahmen zurückgerechnet, ist die Versendung der

letzten ZvF-Endstücke ausgehend von dieser Frist bis 24.08.2026 für A-Maßnahmen und bis

28.09.2026 für ZvF-Dokumente bei B-Maßnahmen vorgesehen. Allerdings ist nicht ausgeschlossen, dass auch nach dem 24.08.2026 bzw. 28.09.2026 ZvF-Dokumente für A- und B-

Baumaßnahmen versendet werden.

1.42 Was ist der späteste Zeitpunkt, zu dem eine Bestellung einer neuen Trasse im GelV

(Gelegenheitsverkehr) in diesen Fällen möglich ist?

Die Anmeldung zum unterjährigen Gelegenheitsverkehr sind jederzeit möglich.

1.43 Ist die Anmeldung einer neuen Trasse im GelV direkt nach Ablehnung möglich oder

erst ab z-8 vor der relevanten Baumaßnahme?

Sofern noch keine Bearbeitung der kundenausgelösten Stornierung erfolgt ist, ist die Trasse

noch aktiv und wird als belegte Kapazität in den Systemen angezeigt. Die Kapazität kann und

darf dann nicht nochmals belegt werden. Dies kann erst nach der Bearbeitung der Stornierung

erfolgen.

V.IWF 41 Fragenkatalog 12',193,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":12,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','0c56927996ad2c9f02f123e4ebcadb32cc1a8558a40b12f35e3d28204718ee41');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7d46f4ecdbba9cb25ce3508f','wiki/sources/fragenkatalog-annex-vii-data.md',25,'Seite 13','1.44 Wenn man ein GPE, GPEnS oder FPE ablehnt, erfolgt die netzseitige Stornierung der

Trasse. Anschließend kann man im Rahmen des GelV eine neue Trasse bestellen.

Nach Ablehnung des GPE oder GPEnS erfolgt die Stornierung der Bau- und Regeltrasse. Ein

FPE ist immer automatisch zugestimmt und kann innerhalb von 3 Tagen kostenfrei storniert

werden. Das Neubestellen, bleibt der bisherige Regelprozess im Gelegenheitsverkehr. Siehe

dazu die Ril 402.0204.

1.45 Wenn im Bauprozess ein GPE abgelehnt oder eine NAÄ storniert wird: Kann unmittelbar danach erneut eine Trasse mit derselben OTN bestellt werden?

Es kann noch nicht unmittelbar danach erneut die Trasse mit der OTN bestellt werden, da diese

einen internen Bearbeitungsprozess durchläuft. Wenn die Stornierung bearbeitet wurde, wird

die Zugnummer wieder systemseitig für eine Neubestellung freigegeben.

1.46 Wie oft kommt es vor, dass FPE ohne GPE verschickt wird oder es keine BKE-ID

gibt?

Eine konkrete Anzahl lässt sich leider nicht angeben, da die Fälle nicht prognostizierbar sind.

1.47 Werden Havarie NAÄs dann auch automatisch zum Vertag?

Ein FPE bzw. eine netzausgelöste Änderung bei Havarien stellt automatisch einen neuen Vertrag dar, auch wenn es hierzu kein GPE oder GPEnS gibt.

1.48 Zu Veröffentlichungsterminen der Fahrplanprodukte (GPE, GPEnS, FPE/ NAÄ, etc.).

Sind diese Termine starr oder kann das GPE auch schon zu einem früheren Zeitpunkt

veröffentlicht werden?

Im Regelprozess sind die Fristen starr. Das GPE wird immer montags zu z-24 veröffentlicht.

Eine frühere Veröffentlichung des GPEs wird nicht erfolgen.

1.49 Erfolgt der GPE-Versand auch montags um 06:00 Uhr, wenn der Montag ein Feiertag

ist oder wann erfolgt der Versand dann?

Der Versand erfolgt immer montags, unabhängig von Feiertagen.',264,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":13,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','7d3d2b04b8e1f4f8be14dde389f501a1bac2566af937dfdc17a86b38d7dd067e');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e1de478f65b43137289eac90','wiki/sources/fragenkatalog-annex-vii-data.md',26,'Seite 13','1.50 Gelten die starren Fristen auch für NAÄ/FPE?

Tagesscharfer Versand bedeutet in diesem Zusammenhang, dass FPE nicht montags gesammelt versendet werden, sondern direkt, wenn das FPE und NAÄ fertiggestellt sind.

1.51 Und was passiert, wenn das GPE mit z-24 veröffentlicht ist und sich dann nochmal

etwas an den Trassen verändert? Z.B. Ausfall einer Baustelle? Ich hoffe nicht, dass dann

die nächste Info erst mit FPE erfolgt

Eine Aktualisierung der Bautrasse erfolgt im Folgeprodukt (GPEnS oder FPE).

1.52 Wie ist das Vorgehen, wenn nach Versand der GPE eine weitere (neue) Baumaßnahme den Zuglauf beeinträchtigt?

Eine Aktualisierung der Bautrasse erfolgt im Folgeprodukt (GPEnS oder FPE).

1.53 Die 3 Tagefirst in der Frage "Zählt die Stornierung der neuen Regeltrasse, die vorher

eine Bautrasse war, in die Stornoquote?" sind das Werktage oder Kalendertage?

Die Fristangaben erfolgen in Form von Arbeitstagen (Montag bis Freitag), dabei werden bundeseinheitliche Feiertage nicht in die Frist gerechnet.

1.54 Im Falle, dass eine Baumaßnahme nach Versand der BauFplo entfällt, ist es möglich

diese zu stornieren/zurückzuziehen und Neue Trassen unter Neuen Zugnummern zu bestellen. Dies wäre insbesondere bei großen Teilausfällen relevant.

Ab z-8 Wochen sind Änderungen an der Bautrasse nicht mehr möglich. Die FPE-Trasse bleibt

bestehen, da die Bautrasse bereits als Regeltrasse geführt wird.

V.IWF 41 Fragenkatalog 13',207,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":13,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','82ede9ff3cc33d97d4704a4cd9944bed5d2c706fcf396683f3b995e4067200f5');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0fb785b7861746b7b6f3d9ee','wiki/sources/fragenkatalog-annex-vii-data.md',27,'Seite 14','1.55 Prozesstreu ( Versand zu Z - 24 ) ist gewährleistet? Oder wird es weiterhin verspätete Lieferungen von Seiten DB InfraGO AG geben?

Es kann nach Ril. 402.0305 (INB 2027) Abschnitt 9 zu Ausnahmen bei der Anwendung von

Fristen zur Konsultation, Abstimmung und Koordinierung von BKE sowie Übergabe von

GPE/FPE kommen.

1.56 Erfolgt der GPE-Versand auch montags um 06:00 Uhr, wenn der Montag ein Feiertag

ist oder wann erfolgt der Versand dann?

GPE und GPEnS Versand ist immer montags starr, unabhängig ob ein Feiertag ist.

1.57 Können Sie ebenfalls bestätigen, dass die Veröffentlichung von GPEnS immer zu z-

15 und FPE immer zu z-8 und nicht früher erfolgt?

Das GPEnS wird, wie auch das GPE immer gesammelt und montags versendet.

1.58 Muss somit nun jeden Montag einen Blick ins System KOMBau geworfen werden?

Bleibt in KOMBau alles wie gewohnt oder gibt es dort Änderungen?

Das GPEnS wird, wie auch das GPE immer gesammelt und montags versendet.

1.59 Was ist mit den Kosten? Wir fahren einen Ersatzverkehr den wir eigentlich nicht fahren müssten? Senden wir Kosten an InfraGO. Sollte eine BauFplo versendet worden sein,

mit 8 Wochen Vorlauf und Baumaßnahme ändert sich, sodass BauFplo ausfällt.

Es gilt die neue Vertragstrasse. Ein Rückabwicklung zur ursprünglichen Trasse ist nicht mehr

vorgesehen. Die Bautrasse, die zur Regeltrasse geworden ist, kann innerhalb von drei Tagen

kostenfrei storniert werden, danach kann im Gelegenheitsverkehr eine neue Trasse bestellt

werden. Es gibt allerdings keine Garantie, dass noch Kapazitäten verfügbar sind.

1.60 Wer bezahlt eigentlich die Trasse, wenn die Baumaßnahme dann doch ausfällt,

nachdem FPE/NAÄ/Fplo bereits versandt wurde?

Es gilt die neue Vertragstrasse. Ein Rückabwicklung zur ursprünglichen Trasse ist nicht mehr',272,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":14,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','94d0ecad2083bf98183c5ed5f02f44351f836c3792c847f8ab201ab5d73e25ee');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_3e45b1b121784d7e07b55687','wiki/sources/fragenkatalog-annex-vii-data.md',28,'Seite 14','vorgesehen. Die Bautrasse, die zur Regeltrasse geworden ist, kann innerhalb von drei Tagen

kostenfrei storniert werden, danach kann im Gelegenheitsverkehr eine neue Trasse bestellt

werden. Es gibt allerdings keine Garantie, dass noch Kapazitäten verfügbar sind.

1.61 Wie ist das Vorgehen, wenn Stellungnahmen nur teilweise umgesetzt werden können? Beispiel: GPE: mittige Teilausfälle -> Stellungnahme: Umleitungen -> FPE: Umleitungen in eine Richtung, mittige Teilausfälle in die andere Richtung. Die Umläufe würden

in diesem Fall nicht mehr aufgehen. Eine Stornomöglichkeit hilft dort aber auch nicht.

Auszug aus den INB (2027) Abschnitt 3 Absatz 7:

Die DB InfraGO AG prüft stets, inwiefern eingegangene Stellungnahmen im bestmöglichen Umfang und im Rahmen eines Gesamtkonzeptes (Wechselwirkung zu anderen Stellungnehmenden) berücksichtigt werden können. Hinsichtlich Stellungnahmen zur Anpassung des aktuellen

Planungsstands prüft die DB InfraGO AG, inwiefern den Wünschen der Stellungnahmeberechtigten unter Berücksichtigung der in Abs. 3 beschriebenen Zwänge Rechnung getragen werden

kann. Auf Basis der sich aus den Stellungnahmen abzuleiten den Begründungen, prüft die DB

InfraGO AG zunächst, inwiefern das bisherige Regelungskonzept angepasst werden muss. Sofern dies der Fall ist, überarbeitet die DB InfraGO AG das Regelungskonzept. Derartige Überarbeitungen können z. B. Änderungen der Anzahl der Züge pro Verkehrsart auf der baubetroffenen Strecke oder Nutzung anderer / weiterer Umleitungsstrecken beinhalten.

V.IWF 41 Fragenkatalog 14',206,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":14,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','374326047c6a419bd2f31da8c40fc435af4cae98d08e5fc3ca07d3aa962de3a2');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2b0c0534e26ccad3ded8a20f','wiki/sources/fragenkatalog-annex-vii-data.md',29,'Seite 15','1.62 Wenn man ein GPE, GPEnS oder FPE ablehnt, erfolgt die netzseitige Stornierung der

Trasse. Anschließend kann man im Rahmen des GelV eine neue Trasse bestellen. Wie ist

in diesem Fall der Ablauf des nachgelagerten Prozesses? Wie sind die zeitlichen Eckpunkte zur Bearbeitung und späteren Veröffentlichung dieser Trasse? Ist die Anmeldung

einer neuen Trasse im GelV direkt nach Ablehnung möglich oder erst ab z-8 vor der relevanten Baumaßnahme? Was ist der späteste Zeitpunkt, zu dem eine Bestellung einer

neuen Trasse im GelV in diesen Fällen möglich ist?

NB 2027 Ziffer 4.2.2.4 gelten zum Fahrplan 2027 folgende Fristen im Gelegenheitsverkehr.

Siehe Abschnitt in den genannten INB.

1.63 Bitte zeigen Sie auf, welches Fahrplanprodukt bei Prozessabbruch durch DB InfraGO dann wieder gilt: Prozessabbruch durch DB InfraGO zu folgendem Zeitpunkt: vor

Versand GPE, nach Versand GPE und vor Versand GPEnS, nach Versand GPEnS und vor

Versand FPE, nach Versand FPE und vor Versand BauFplo, nach Versand BauFplo.

Vor Versand GPE gilt die Regeltrasse. Nach Versand GPE und vor Versand GPEnS gilt die Regeltrasse. Nach Versand GPEnS und vor Versand FPE gilt die Regeltrasse. Nach Versand FPE

und vor Versand BauFplo, gilt, dass der Bauprozess hier abgeschlossen ist. Die Bautrasse ist

die neue Regeltrasse und bleibt bestehen. Nach Versand der BauFplo gilt, dass der Bauprozess hier abgeschlossen ist, die Bautrasse ist die neue Regeltrasse und bleibt bestehen.

V.IWF 41 Fragenkatalog 15',227,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":15,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','9f4d211d4490a41828ed64e5de83b9b359bd406199efd4d884244cc4fa6bc25c');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_87e5cba6904b524bfc745c2d','wiki/sources/fragenkatalog-annex-vii-data.md',30,'Seite 16','Zusatzleistungen

1.1 Wenn ein GPE von mehreren BKE betroffen ist, können wir davon ausgehen, dass bei

Leerzugbestellungen die Angabe einer Rabatt-Nummer reicht? Es wird um Erläuterung

der Antwort gebeten.

Es wird keine Rabattnummer mehr geben. Bei der Bestellung wird ein Verweis des EVUs auf

die PathID der Bautrasse erforderlich sein. Dieser wird als RelatedPlannedTransportID angegeben. Zusätzlich muss beim NSP „verkehrsArtKundeZusatz“ die Ausprägung „BaubedingteZusatzleistung“ angegeben werden.

1.2 Wir haben verstanden, dass die baubedingte Zusatzleistung auf die NAÄ beziehen. Ist

es möglich die Bestellungen auch schon zum Zeitpunkt ab GPE auszulösen?

Ja, das ist möglich. Die Empfehlung wäre aber, das so spät wie möglich zu tun.

1.3 Wenn aufgrund der BKE zusätzliche Überführungsfahrten (Leertrassen), Umleitungen

oder die Einrichtung von Bauelektranten (=Zusatzausstattung einer Serviceeinrichtung)

erforderlich wird, übernimmt dann DB InfraGO wie bislang bei unterjährigen Baumaßnahmen die Kosten?

Ja, siehe dazu auch Ril.402.0305 –(INB 2027)- Abschnitt 11 Abs 2: Trassenanmeldungen baubedingter

zusätzlicher Leistungen (...) Hierunter fallen insbesondere zusätzliche baubedingte Anmeldungen für

- Zu- und Abführungsfahrten zu einem Schienenersatzverkehr,

- Drehfahrten,

- Zu- und Abführungsfahrten zu einer anderen als der gewöhnlichen Abstell- oder Tankanlage,

- Zu- und Abführungsfahrten von Triebfahrzeugen oder

- zusätzliche Verkehre auf Grund einer Änderung der Zugcharakteristik (z.B. Ablasten auf

Grund geringerer Grenzlast einer Umleitungsstrecke).',203,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":16,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','f69f0ba976498c38514c852ca71526c4df233f8aa512f1d6d875b9663fae2bb4');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_5bd097dfcef8a1b602b431f3','wiki/sources/fragenkatalog-annex-vii-data.md',31,'Seite 16','1.4 Wir erwarten, dass bei Verfristung/Inkonsistenzen beim FPE/NAÄ nach T-5 noch kostenfreie Leerzug-Bestellungen vorgenommen werden können mit Rabattnummer? Bei einer nicht auszuschließender Verfristung seitens InfraGO muss damit das EVU bei notwendigen Änderungen bezahlen?

Unser Ziel ist, dass das FPE fristgerecht versendet wird. Die Baubedingten Zusatzleistungen

können nur bis z-5 (5 Wochen vor Baubeginn, nicht T-5) bestellt werden, ansonsten fallen Kosten an.

1.5 Ist die Referenzierung des CRID der zugehörigen Trasse (bspw. des GPEs) im NSP

„rabattNr“ erwartet? Falls nein, welche Angabe wird in „rabattNr“ genau erwartet?

Bei der Bestellung wird ein Verweis des EVUs auf die PathID der Bautrasse erforderlich sein.

Dieser wird als RelatedPlannedTransportID angegeben. Zusätzlich muss beim NSP „verkehrs-

ArtKundeZusatz“ die Ausprägung „BaubedingteZusatzleistung“ angegeben werden.

1.6 Da momentan die NV-Nummer auch über das NSP "rabattNr" exportiert wird, sprechen wir uns stark dafür aus, ein anderes Feld für die baub. Zusatzleistung zu verwenden. Damit können wir sicherstellen die NV-Nummer aufrechtzuerhalten. Ist es möglich

ein separates Feld zu verwenden? Wenn nicht, muss eine bestehende Rabattnr. Zum

Neuverkehr bei Folgeaufträgen immer wieder mitgeschickt werden?

Bei der Bestellung wird ein Verweis des EVUs auf die PathID der Bautrasse (FPE) erforderlich

sein. Dieser wird als RelatedPlannedTransportID angegeben. Zusätzlich muss beim NSP „verkehrsArtKundeZusatz“ die Ausprägung „BaubedingteZusatzleistung“ angegeben werden.

V.IWF 41 Fragenkatalog 16',208,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":16,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','c2448d2e3441c61845e9b1c58ca835882f938188454a9a8a41acab7962e3158c');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7dea2dd76a66d0e9dad71d73','wiki/sources/fragenkatalog-annex-vii-data.md',32,'Seite 17','1.7 Das NSP "rabattNr" hat momentan eine Ausprägung 0..5. Was ist, wenn mehr als 5

Baubetroffenheiten inkl. Neuverkehrsnr. Angegeben werden müssten? ("Reicht" die Angabe einer Baureferenz?)

Bei der Bestellung wird ein Verweis des EVUs auf die PathID der Bautrasse erforderlich sein.

Dieser wird als RelatedPlannedTransportID angegeben. Zusätzlich muss beim NSP „verkehrs-

ArtKundeZusatz“ die Ausprägung „BaubedingteZusatzleistung“ angegeben werden.

1.8 Guten Tag. Wo werden zukünftig im Prozess die baubedingten Zusatzleistungen verortet? Dazu konnten wir bisher noch keine Informationen finden.

Bei der Bestellung wird ein Verweis des EVUs auf die PathID der Bautrasse erforderlich sein.

Dieser wird als RelatedPlannedTransportID angegeben. Zusätzlich muss beim NSP „verkehrs-

ArtKundeZusatz“ die Ausprägung „BaubedingteZusatzleistung“ angegeben werden. Weitere Informationen finden Sie in den FAQ 4. Konsultationsphase, in der Ril. 402.0305 INB 2027 und

unter der Website Fahrplan: EVU-Schnittstelle Archiv Dokumentation Anlage 10.

1.9 Findet die Bestellung von baubedingten Zusatzleistungen über das Bestellsystem

statt und wird dann über die Schnittstelle intern für die Erstellung der Fahrplanprodukte

übermittelt?

Es besteht Kanalzwang. Erfolgt die Bestellung über PathOS wird das Angebot zu PathOS gesendet, erfolgt die Bestellung über die Schnittstelle, wird das Angebot an die Schnittstelle versendet. Bei Neubestellung einer baubedingten Zusatzleistung muss bei verkehrsArtKundeZusatz „BaubedingteZusatzleistung“ angegeben werden. Zusätzlich muss eine Referenz zur PathID des FPEs angegeben werden.

1.10 Wenn für abgestimmte Baukapazitätseinschränkungen (BKE) 4, 6, 7 und 8 im Netzfahrplan zusätzliche Leistungen, wie beispielsweise Leerfahrten, erforderlich werden:',225,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":17,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','4c8000a86238351ad7b24194a189f1b0b3127169af8582452b8248a0d2ea3575');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a8413102eb021549c4d9c190','wiki/sources/fragenkatalog-annex-vii-data.md',33,'Seite 17','Werde diese ohne Anrechnung von Trassenkosten bereitgestellt?

Nein. Für Leistungen, die aufgrund bereits im Netzfahrplan eingeplanter Baumaßnahmen entstehen – etwa zusätzliche Leerfahrten – existiert kein vergleichbares Vorgehen zur kostenfreien

Bereitstellung wie bei unterjährigen Baumaßnahmen.

1.11 Wie werden benötigte Leertrassen mit Baubezug im Netzfahrplan bestellt? Wie wird

der Baubezug hergestellt damit kein Trassenentgelt berechnet wird und müssen diese

Leertrassen in der NEP 1 Phase bestellt werden oder wird es größere Bestellfristen geben?

Für Leistungen, die aufgrund bereits im Netzfahrplan eingeplanter Baumaßnahmen entstehen –

etwa zusätzliche Leerfahrten – existiert kein vergleichbares Vorgehen zur kostenfreien Bereitstellung wie bei unterjährigen Baumaßnahmen.

1.12 Wie gestalten sich die Fristen für die Bestellung der überjährigen baubedingten Zusatztrassen?

Für Leistungen, die aufgrund bereits im Netzfahrplan eingeplanter Baumaßnahmen entstehen –

etwa zusätzliche Leerfahrten – existiert kein vergleichbares Vorgehen zur kostenfreien Bereitstellung wie bei unterjährigen Baumaßnahmen.

1.13 Wie werden kostenfreie baubedingte Leerfahrten bei überjähriger Bauplanung berücksichtigt?

Für Leistungen, die aufgrund bereits im Netzfahrplan eingeplanter Baumaßnahmen entstehen –

etwa zusätzliche Leerfahrten – existiert kein vergleichbares Vorgehen zur kostenfreien Bereitstellung wie bei unterjährigen Baumaßnahmen.

V.IWF 41 Fragenkatalog 17',176,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":17,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','9b9862bd912168444281f447f71c499b52dcca9c5b81ce69c276ab0f1ed94c4f');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_dde3c43dfda04a35cbb31442','wiki/sources/fragenkatalog-annex-vii-data.md',34,'Seite 18','1.14 Wenn nur SE/IA von einem BKE/BAE betroffen sind, kann man als EVU bis zu z-18

ein FPE für dadurch entstehende baubedingte zusätzliche Leistungen beantragen. Wo

und wie erfolgt die Beantragung des FPE (pathOS oder KOMBau?), auch im Hinblick auf

die dann mit z-14 folgende 3-wöchige Stellungnahme-Möglichkeit?

Sofern dem Zugangsberechtigten im Kontext der baubedingten Anlageneinschränkung (BAE)

ein Grobplanungsergebnis (GPE) vorliegt, kann die Bestellung einer baubedingten Neuleistung

unter Bezugnahme auf die entsprechende PathID des betroffenen Zuges erfolgen. Für Fälle, in

denen eine BAE ohne vorheriges GPE vorliegt, besteht ebenfalls die Möglichkeit, baubedingte

Neuleitungen zu bestellen. In diesen Fällen erfolgt die Bestellung über die Übermittlung der entsprechenden PathID. Wir bitten hierbei ergänzend darum, im Bestellprozess in pathOS die zugehörige BAE anzugeben, um eine eineindeutige Zuordnung und Bearbeitung sicherzustellen.

V.IWF 41 Fragenkatalog 18',130,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":18,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','bca50e0963ae064d614685df5fbb261d5de29475255224ddf26d38b1cb533cb4');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7dac293c79238551aee061f1','wiki/sources/fragenkatalog-annex-vii-data.md',35,'Seite 19','Änderungsbestellung

1.1 Kann die InfraGO ausschließen, dass zwischenT-24 und T-8 netzausgelöste Änderungen (nicht uj Bau) gesendet werden?

Auszug INB 2027 - Ril 402.0305 Abschnitt 10 Absatz 7

Änderungsbestellungen von baubetroffenen Trassen (7)

Die Bearbeitungsphase von baubetroffenen Trassen erstreckt sich im Zeitraum z-29 bis z-8. Die

DB InfraGO AG führt keine Bearbeitung von Änderungsbestellungen in diesem Zeitraum für

baubetroffene Trassen durch, sobald sich diese bereits in der konkreten Bearbeitung für eine

Baufahrplanregelung (Erstellung GPE bzw. Erstellung FPE) befinden. Über eine etwaige Baubetroffenheit werden ZB nach Auslösung einer Änderungsbestellung über den Grad der Baubetroffenheit durch eine „Path not available Message“ informiert. Dadurch erfährt der ZB gleichzeitig, dass und für welchen Zeitraum sich die baubetroffene Trasse in der konkreten Bearbeitung befindet und somit eine Änderungsbestellung zu diesem Zeitpunkt nicht möglich ist. Für

den nicht baubetroffenen Zeitraum erfolgt die Bearbeitung der eingegangenen Änderungsbestellung. So-bald der einzelne Bearbeitungsschritt im Baufahrplanprozess abgeschlossen ist,

werden Änderungsbestellungen zur Bearbeitung wieder angenommen. Die ZB haben die Möglichkeit zu den baubetroffenen Trassen, für die eine PNAM vor der Veröffentlichung des GPE

versendet wurde, im Rahmen der Stellungnahme zum GPE, Änderungswünsche für den baubetroffenen Zeitraum der DB InfraGO AG mitzuteilen.

Nicht baubetroffene Zeiträume und Verkehrstage sind von dieser Regelung also nicht betroffen.

Ebenso werden Änderungsbestellungen bearbeitet und Trassenangebote erstellt, bei denen die

konkrete Bearbeitung für eine Baufahrplanregelung noch nicht begonnen wurde (auch nach z-',223,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":19,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','1d00de1563b8d72585e6312b6b55c5d0d0a1cc98738ead380e8f9078d3bfced2');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_cf3c387e449637ecd0e9e61f','wiki/sources/fragenkatalog-annex-vii-data.md',36,'Seite 19','29) oder das FPE bereits versendet wurde (auch vor z-8).

1.2 Würde dies bedeuten, dass die Prozesse des Jahresfahrplans und des Baufahrplans

nicht mehr separat laufen und dann auf die Änderungsbestellung keine Bestätigung

käme, sondern nur das FPE?

Auszug INB 2027 - Ril 402.0305 Abschnitt 10 Absatz 7

1.3 Kann es sein, dass nach der baubedingten NAÄ eine weitere NAÄ zur Änderungsbestellung kommt?

Es wird nach der NAÄ nicht automatisch eine weitere NAÄ zur Änderungsbestellung geben.

Wird die NAÄ nicht storniert, können ZB über das Bestellsystem wieder Änderungsbestellungen

für den baubetroffenen Zeitraum auslösen.

1.4 Wie werden unterjährige Regeltrassenänderungen und Neuverkehre gehandhabt (Berücksichtigung in BKE 4, 6, 7, 8)?

Wenn die Baumaßnahmen bereits im Netzfahrplan berücksichtigt sind, werden diese bei Änderungsbestellungen und Neubestellungen im GelV (Gelegenheitsverkehr) berücksichtigt werden.

1.5 Wie soll mit der Parallelität Änderungsbestellung unterjähriger Bauprozess umgegangen werden?

Auszug INB 2027 - Ril 402.0305 Abschnitt 10 Absatz 7

V.IWF 41 Fragenkatalog 19',152,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":19,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','a58d6b87db072f8e3d508d9bd4c60c046ee796e566627f3d11b9b6ceca163394');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_23328d134e3d1b2d7b4b56d8','wiki/sources/fragenkatalog-annex-vii-data.md',37,'Seite 20','1.6 UjBau bei Neubestellungen <T-29: Bei Neubestellungen von Zügen im NFPL nach T-

29 - wie kommen dann GPE und FPE-Informationen auf die Züge? (T-x = Wochen)

INB 2027 Ril 402.0305 Abschnitt 8 Abs. 2

Bereitstellung FPE für BKE der zweiten und dritten Konsultationsphase für Trassen aus NEP II

Die DB InfraGO AG stellt für BKE aus der zweiten und dritten Konsultationsphase das FPE für

Trassen mit Verkehrstagen zwischen dem Fahrplanwechsel und 28. bzw. 29. Februar, welche

zur zweiten Netzfahrplanerstellungsphase angemeldet wurden, bis acht Wochen (SPV) bzw.

fünf Wochen (SGV) vor Baubeginn innerhalb der betroffenen Bauwoche zur Verfügung. Die DB

InfraGO AG strebt an, FPE des SGV bis acht Wochen, spätestens jedoch fünf Wochen vor Baubeginn innerhalb der betroffenen Bauwoche zur Verfügung zu stellen.

INB 2027 Ril 402.0305 Abschnitt 8 Abs. 4

Bereitstellung FPE für BKE der zweiten und dritten Konsultationsphase aus NEP I

Für BKE, die in der zweiten und dritten Konsultationsphase behandelt wurden und bis 28. bzw.

29. Februar des aktuellen Fahrplanjahres beginnen, stellt die DB InfraGO AG den betroffenen

ZB ein GPE bis spätestens 15 Wochen vor Beginn der betroffenen Bauwoche zur Verfügung

(Ausnahmen siehe Abs. 2). Die ZB haben drei Wochen Zeit für eine Stellungnahme. Diese kann

sich ausschließlich auf die Inhalte des GPE beziehen, da die zugrunde liegende BKE zum Versandzeitpunkt des GPE bereits konsultiert wurde.

1.7 Welche Möglichkeit haben EVUs die Baubetroffenheit festzustellen, wenn ein GPE

noch nicht oder verfristet vorliegt?

Die bekannten BKE sind in der KOMBau hinterlegt und können dort eingesehen werden, z.B.

der Zeitraum und die örtliche Lage.',257,'{"canonical_url":null,"normalized_sha256":"964d24cd41f50e75b8bb1d06f76d9cc47af41a110c36b4bb8a20597a3a823500","page":20,"source_id":"src_49e6bd4a29f18c068815","source_sha256":"ad7a22df2cd5529c685aa7d10d878783f41dcf2902c4bb7c1a233c97810359ca","source_version_id":"sv_ad7a22df2cd5529c685aa7d1"}','809a86d7028e69cd1b979257763914c6917ae7c14fa5983a94ee73583cdc8b9d');
--> statement-breakpoint
