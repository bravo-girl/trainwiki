---
title: "Flyer TAF/TAP Identifikatoren"
source_id: "src_f99e066f37874620df4e"
source_version_id: "sv_c88a5b74e140e9fe73443e98"
source_sha256: "c88a5b74e140e9fe73443e9863972c19c7f111c996d24206262bf4ae2bfd373b"
original_filename: "Flyer-TAF-TAP-Identifikatoren-data.pdf"
media_type: "application/pdf"
imported_at: "2026-08-02T10:25:48Z"
license: "unknown"
canonical_url: "https://www.dbinfrago.com/resource/blob/11089294/6a4b5990c9ce96a7a1bb71efa5c48f16/Flyer-TAF-TAP-Identifikatoren-data.pdf"
origin_page_url: "https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206"
---

# Flyer TAF/TAP Identifikatoren

## Seite 1

Informationen zu den neuen TAF/TAP-
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
dbinfrago.com/taf-tap-tsi Identifikatoren | Seite 1 von 2

## Seite 2

Struktur Identifikatoren (immer gleiche Abfolge)
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
dbinfrago.com/taf-tap-tsi Identifikatoren | Seite 2 von 2
