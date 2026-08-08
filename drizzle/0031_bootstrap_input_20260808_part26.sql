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
