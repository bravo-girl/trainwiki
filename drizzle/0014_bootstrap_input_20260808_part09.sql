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
