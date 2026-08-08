---
title: "Schnittstellenbeschreibung BauFplo API EVU Test 2 17 0 im json Format"
source_id: "src_a8fc6bb3e8b7db7a8077"
source_version_id: "sv_4d9deecdfe44da586bc04290"
source_sha256: "beed68d95308a25475618849c734fcab15e5cd1427119934456177d8efb458e8"
original_filename: "Schnittstellenbeschreibung-BauFplo-API-EVU-Test-2-17-0-im-json-Format-data.json"
media_type: "application/json"
imported_at: "2026-08-08T12:35:15Z"
license: "unknown"
---

# Schnittstellenbeschreibung BauFplo API EVU Test 2 17 0 im json Format

## Inhalt

{
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
"type": "string",
"example": "BEB"
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
{
"type": "array",
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
[
"bremsstellung",
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
"type": "array",
"description": "Region und Kontaktdaten der Freigebenden der BauFplo",
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
"deprecated": true,
"description": "Vorgangs-Nr des betrachteten Bauvorgangs\n\n_**Hinweis:** Das Attribut \"nummer\" ist nur noch für den Fahrplanjahr 2026 relevant und wird ab Fahrplanjahr 2027 nicht mehr befüllt._",
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
"description": "Angaben zum Ladegut im Zug",
"example": "diverse Gefahrgüter"
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
},
"betriebsname":
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
{
"$ref": "#/components/schemas/KeineAngabe"
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
"$ref": "#/components/schemas/Betriebsstelle",
"description": "Betriebsstelle, bis zu der die Information zur Laufwegsunterbrechung gilt"
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
},
"betriebsstelle":
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
"type": "string",
"description": "Abfahrtszeit des Fahrplans (ohne Zeitumstellung) bei dieser Betriebsstelle. Im Falle der Zielbetriebsstelle entfällt dieses Attribut",
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
{
"type": "object",
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
"type": "object",
"description": "Der Abschnitt Rahmendaten gibt einen umfassenden Überblick über zentrale Informationen der BauFplo. In den Rahmendaten sind aggregierte Werte der BauFplo zusammengefasst.",
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
{
"radMeterlastbeschraenkungen":
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
"type": "array",
"description": "Beschreibt die Beförderungsbesonderheit ETCS TBV Nummer",
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
{
"type": "array",
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
[
"FdlBfBad Schandau erteilt Befehl 12 (zweisprachig) Grund 41:Zug 45315 fährt von Decin-Prostredni Zleb bis Decin vychod von km 458,900 bis km 457,700 mit höchstens 30 km/h"
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
"type": "object",
"description": "Beschreibt die Eigenschaften des Zugverbands",
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
"description": "Beschreibung der Textbausteine",
"example": "Fplo gilt als Fahrplanmitteilung auf Streckenabschnitten mit Bfpl-Angaben."
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
},
"rufnummer":
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
"format": "int32",
"description": "Hauptnummer der Zuggattung",
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
{
"type": "string",
"description": "Beschreibt die Ausrüstung mit ETCS (european traffic control system)",
"example": "ETCS SRS 3"
}
}
}
}
}
}
