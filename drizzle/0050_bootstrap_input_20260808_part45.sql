INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_0cc4135b33250110a4c19f4a','wiki/sources/unterlage-vertiefung-ujbau-27-11-data.md',40,'Seite 41','So bleiben Sie mit uns in Kontakt

Annex VII KOMBau Digitale BauFplo

Hier geht‘s zur Hier geht‘s zur

Hier geht‘s zur

Website Website

Website

• Informationen zur • Neuerungen auf

• Informationen zum

Webanwendung, inkl. einen Blick

neuen Prozess

Direktlink • Beschreibung

Baukommunikation

• Bedienungsanleitung Testzugang auf

• Zusammenhang mit

• FAQ BauFplo API

KOMBau

• Beispieldokumente in

• FAQ

xml- und json-Format

• FAQ

Sie erhalten die gezeigte Unterlage im Anschluss an diese Veranstaltung.

DB InfraGO AG | EVU Informationsveranstaltung | Neuerungen im Baufahrplan 2027 | 27.11.2025 41',89,'{"canonical_url":null,"normalized_sha256":"b8dac29882ca03410182ee1cc3877874bf2603fc3814432a56926812715f7939","page":41,"source_id":"src_6564bb0ccae19080edd4","source_sha256":"61e0fd780a0643eded9510e89a8b1c4b4f982a6742e50fb2379ef7390cde57e3","source_version_id":"sv_9911c8dfe35973048b5d6173"}','fe576962ec61921c311de8b430ff2a5c9b7e87741c6a6099ba3225f575025bec');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_0ed972984c152ac37d60','file','Über TAF/TAP TSI','https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206','de','unknown','public','active','bootstrap','2026-08-02T10:25:48Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_7c633488c07b24cabd17e8b9','src_0ed972984c152ac37d60','7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba','2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065',11436,'text/markdown','Über TAF_TAP TSI.md','sources/normalized/bootstrap/uber-taf-tap-tsi.md','identity-markdown','1','2026-08-02T10:25:48Z','2026-08-02T10:25:48Z',NULL,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","contact_redaction":"email_phone_identified_contact_names_and_contact_address","converter":{"name":"identity-markdown","version":"1"},"imported_at":"2026-08-02T10:25:48Z","language":"de","license":"unknown","media_type":"text/markdown","normalized_repo_path":"sources/normalized/bootstrap/uber-taf-tap-tsi.md","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","original_filename":"Über TAF_TAP TSI.md","page_count":null,"raw_binary_committed":false,"schema_version":1,"size_bytes":11436,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9","title":"Über TAF/TAP TSI","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba','src_0ed972984c152ac37d60','sv_7c633488c07b24cabd17e8b9','{"content_duplicate_group":null,"original_filename":"Über TAF_TAP TSI.md"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065','src_0ed972984c152ac37d60',NULL,'{"content_duplicate_group":null,"original_filename":"Über TAF_TAP TSI.md"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('canonical_url','0b85f7c845d9323f0c8ed5fa1fd5d1e2a4e2a0692a180e601c6c097bdc380559','src_0ed972984c152ac37d60',NULL,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206"}','2026-08-02T10:25:48Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
UPDATE sources SET current_version_id='sv_7c633488c07b24cabd17e8b9' WHERE id='src_0ed972984c152ac37d60';
--> statement-breakpoint
INSERT INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES ('wiki/sources/uber-taf-tap-tsi.md','Über TAF/TAP TSI','Bis zur Einführung von TAF/TAP TSI werden wir unsere Kund:innen so intensiv und detailliert wie möglich informieren und durch diese Veränderung begleiten. Auf dieser Informationsplattform werden alle relevanten Informationen und Unterlagen übersichtlich gebündelt und selbstverständlich regelmäßig aktualisiert und ergänzt. Stärkere Wettbewerbsfähigkeit Weiter','bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','6304a9ca9cd6ca7793909267b868b432adfc416f32434a020e80b8636b79d37e','2026-08-02T10:25:48Z','{"bootstrap":true,"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","license":"unknown","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","source_id":"src_0ed972984c152ac37d60","source_version_id":"sv_7c633488c07b24cabd17e8b9"}') ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;
--> statement-breakpoint
DELETE FROM wiki_chunks WHERE page_path='wiki/sources/uber-taf-tap-tsi.md';
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_80bb882163940814e855ca1b','wiki/sources/uber-taf-tap-tsi.md',0,'Inhalt','Bis zur Einführung von TAF/TAP TSI werden wir unsere Kund:innen so intensiv und detailliert wie möglich informieren und durch diese Veränderung begleiten. Auf dieser Informationsplattform werden alle relevanten Informationen und Unterlagen übersichtlich gebündelt und selbstverständlich regelmäßig aktualisiert und ergänzt.

Stärkere Wettbewerbsfähigkeit

Weitere Digitalisierung und Harmonisierung im Datenaustausch macht den Eisenbahnsektor in Europa wettbewerbsfähiger. TAF/TAP als „gemeinsame Sprache“ für bessere Kommunikation durch eine standardisierte Meldungsstruktur.

Grenzüberschreitend eine Identifikation

Eindeutige und tagesscharfe Identifikation von Zügen und Trassen – räumlich, zeitlich und auch über Netzgrenzen hinweg. Klare Trennung von Zug und Trasse in neuer Objektstruktur und einfacherer Umgang im grenzüberschreitenden Verkehr.

Einheitlicher Kommunikationsweg für Trasseninformationen

Vollständige Neuentwicklung der Trassenanmeldung mit vereinfachter Bearbeitung und Änderung sowie Vereinheitlichung des Kommunikationsweges. Und alles mit neuen benutzerfreundlichen IT-Systemen bei der DB InfraGO AG.

Bessere betriebliche Durchführung

Deutlich verbesserte betriebliche Durchführung durch qualitativ hochwertigen Austausch zwischen beteiligten EIU und EVU. Bessere Prognosequalität durch höheres Informationslevel und größere Verfügbarkeit von Echtzeitdaten.',152,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','5593b497c967f2d8976db3f3eea124ec05e8356324c4671c26fdec2f0aac6e55');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_a40e634538bc24e4cef50fbf','wiki/sources/uber-taf-tap-tsi.md',1,'Vertiefende Informationen zu TAF/TAP TSI','1\. Übergreifende Information - thematische Einleitung

Die Europäische Union definiert mit den technischen Spezifikationen für die Interoperabilität (TSI) europaweit die Anforderungen für die Entwicklung von interoperablen Telematikanwendungen im Güter- und Personenverkehr (TAF und TAP) für alle Bahnakteure (Eisenbahninfrastrukturunternehmen, Eisenbahnverkehrsunternehmen, Spediteure, Wagenhalter etc.). Die entsprechenden Verordnungen der EU, 1305/2014 (TAF TSI) und 454/2011 (TAP TSI), beinhalten u. a. die Vorgaben und Anforderungen an die Standardisierung für Anmeldungen von und Angebote für Trassen sowie den Austausch betrieblicher Meldungen zu Zügen. Daraus resultiert in Zukunft eine einfachere und effizientere Planung und Disposition von Verkehren entlang der gesamten Logistikkette auf der Schiene, insbesondere über Infrastruktur- und Ländergrenzen hinweg, sowie eine standardisierte und digitalisierte Kommunikation zwischen allen Beteiligten.

Die DB InfraGO AG arbeitet – parallel zur Ablösung der derzeitigen Verfahren zur Trassenanmeldung, Fahrplanerstellung und Betriebsführung – intensiv an der Umsetzung der genannten Verordnungen. Bereits zum jetzigen Zeitpunkt besteht für Eisenbahnverkehrsunternehmen die Möglichkeit, ausgewählte betriebliche Meldungen pilothaft im TAF/TAP-Format zu erhalten. Ferner können Eisenbahnverkehrsunternehmen dedizierte Zugbildungsdaten bereits heute TAF/TAP-konform an die DB InfraGO AG übersenden. Die Umsetzung im Betrieb folgt vorgelagert zum Dezember 2025 (Fahrplanwechsel 2025/2026) – allerdings zunächst noch auf Basis der heutigen Identifikatoren: OTN bzw. Zugnummer. Die Planungen der DB InfraGO AG sehen vor, die Umsetzung der TSI TAF/TAP in den Fahrplansystemen zum Jahresplan 2027 abzuschließen.',212,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','bb6b21ff8722af27707aef2cd550a9792eda978f06e46197528ed7637e9fd398');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_e368d8d6d55080bd9a12c371','wiki/sources/uber-taf-tap-tsi.md',2,'Vertiefende Informationen zu TAF/TAP TSI','Die DB InfraGO AG wird weiterhin bis zur Einführung die Kommunikation rund um TAF/TAP TSI fortführen und die breit angelegte Kommunikationskampagne ausbauen. Alle Unterlagen und Materialien finden sich dann immer auf der Informationsplattform wieder – anstehende Kundenveranstaltungen und Termine ebenfalls, diese im Bereich „Events“. Konkrete Schulungsmaterialien für das neue Anmeldesystem pathOS werden sich künftig direkt auf der pathOS-Webseite wiederfinden und sukzessive erweitert.

Trotz allem gilt es sich auch eigenständig und intensiv mit der Thematik TAF/TAP zu beschäftigen – denn am Ende müssen alle mitmachen!

Ziel ist es, EU-weit die Implementierung der TSI TAF und TAP möglichst harmonisiert und standardisiert zu gestalten sowie fachliche und inhaltliche Interpretationsspielräume zu vermeiden. Innerhalb der europäischen Verordnungen existieren derzeit Teilbereiche, bei denen verbindliche Vorgaben noch ausstehen bzw. aktuell – bspw. anhand von Pilotprojekten – in Erarbeitung sind. Die Festlegung der derzeit noch offenen Vorgaben kann den von der DB InfraGO AG angestrebten Zeitplan beeinflussen.

2\. Allgemeine Unterlagen, EU-Verordnungen und Sektorhandbuch

An dieser Stelle finden Sie immer die aktuelle Kurzpräsentation der DB InfraGO AG in Deutsch und Englisch mit einer Zusammenfassung der wesentlichen Änderungen, die TAF/TAP bei der DB InfraGO AG mit sich bringt.

Zudem gibt es hier ebenfalls die aktuellen Versionen der EU-Verordnungen in Deutsch. Da sich diese jedoch ändern können und zudem auch in anderen Sprachen zur Verfügung stehen, haben wir hier noch den direkten Link zur offiziellen Webseite der EU hinterlegt: Startseite [EUR-Lex](https://eur-lex.europa.eu/homepage.html "Wird in einem neuen Tab geöffnet").',236,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','6b5911b05f9863a110051971ee4afdb2dba755aafedb1c34148167e39e050beb');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_f3c4e51c61048035cfcfa0a5','wiki/sources/uber-taf-tap-tsi.md',3,'Vertiefende Informationen zu TAF/TAP TSI','Viele essentielle Dokumente für die Umsetzung von TAF/TAP TSI sowie weitere fachliche Vertiefungen finden sich auf der [Homepage der Joint Sector Group (JSG)](http://taf-jsg.info/ "Wird in einem neuen Tab geöffnet"). Dort ist auch das jeweils aktuelle Sektorhandbuch zu finden – direkt auf der Startseite am rechten Rand. Dieses ist quasi eine Art Umsetzungsanleitung für TAF/TAP TSI.

Weitere allgemeine Informationen:

[Kurzpräsentation TAF/TAP TSI bei der DB InfraGO AG - Deutsch (PDF | 2,0 MB)](https://www.dbinfrago.com/resource/blob/11089276/26c6ac26e595835ef6813a0b0082cd24/Download-Kurzpraesentation-InnoTrans-DE-data.pdf "Es wird eine Datei heruntergeladen")

[Management Summary TAF/TAP TSI at DB InfraGO AG - English (PDF | 578,0 KB)](https://www.dbinfrago.com/resource/blob/11089278/3740e56280d501b3d3ae30baa52e3afa/Download-Kurzpraesentation-InnoTrans-EN-data.pdf "Es wird eine Datei heruntergeladen")

3\. "Flyer-Bibliothek" - Wichtige Themen auf einer Seite erklärt

[Flyer zum Company Code (PDF | 500,7 KB)](https://www.dbinfrago.com/resource/blob/11089290/4d0d46e1e07b0fb5a22f8a6bd4cff0b7/Flyer-Company-Code-data.pdf "Es wird eine Datei heruntergeladen")

[Flyer pathOS (PDF | 133,3 KB)](https://www.dbinfrago.com/resource/blob/11089292/ddf605e647c997ba20c272183179ef7d/Flyer-Neues-Bestellsystem-pathOS--data.pdf "Es wird eine Datei heruntergeladen")

[Flyer zu den TAF/TAP Identifikatoren (PDF | 350,4 KB)](https://www.dbinfrago.com/resource/blob/11089294/6a4b5990c9ce96a7a1bb71efa5c48f16/Flyer-TAF-TAP-Identifikatoren-data.pdf "Es wird eine Datei heruntergeladen")

[Flyer zum National Contact Point (NCP) (PDF | 192,0 KB)](https://www.dbinfrago.com/resource/blob/11089296/2af27698e8ca6f1897d945b1bfe322b9/Flyer-National-Contact-Point-data.pdf "Es wird eine Datei heruntergeladen")',158,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','0a892b199c931656ee8655a59d9e659c17f042586157782a5699c25f33d5a7a7');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_8e9ce6854273b977d6f8a5a6','wiki/sources/uber-taf-tap-tsi.md',4,'Vertiefende Informationen zu TAF/TAP TSI','[Flyer zur TCM/PTCM (PDF | 189,4 KB)](https://www.dbinfrago.com/resource/blob/11089298/4e18e826234c994109813595aeb14eec/Flyer-TCM-PTCM-data.pdf "Es wird eine Datei heruntergeladen")

[Flyer zum Common Interface (techn. Schnittstelle) (PDF | 201,9 KB)](https://www.dbinfrago.com/resource/blob/11089300/4ecb2b413d7c89a1eb2c6d9d7fe4bb80/Flyer-Common-Interface-data.pdf "Es wird eine Datei heruntergeladen")

[Flyer zur Umsetzungs-Checkliste TAF/TAP TSI für EVU (PDF | 214,3 KB)](https://www.dbinfrago.com/resource/blob/11089304/748022c34b79d03bdd3e6ae0e5914836/Flyer-Umsetzungscheckliste-TAF-TAP-TSI-fuer-EVU-data.pdf "Es wird eine Datei heruntergeladen")

[Flyer zum Location Coding (PLC) (PDF | 201,7 KB)](https://www.dbinfrago.com/resource/blob/11089306/e5136b48ca351e34b2ac216bca04b341/Flyer-Location-Coding-data.pdf "Es wird eine Datei heruntergeladen")

[Flyer zur Unterjährigen Baukommunikation nach Annex VII (PDF | 188,8 KB)](https://www.dbinfrago.com/resource/blob/13011080/a3545a1d844e118ef682864da6054eab/Flyer-zur-Unterjaehrigen-Baukommunikation-nach-Annex-VII-data.pdf "Es wird eine Datei heruntergeladen")

4\. TAF/TAP in der Trassenanmeldung

An dieser Stelle werden weitergehende und vertiefte Informationen rund um das neue Bestellsystem zur Trassenanmeldung hinterlegt. Einen noch detaillierteren Blick erhalten Sie jederzeit auf [PathOS](https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/pathOS-neues-Bestellsystem--13003480 "Wird in einem neuen Tab geöffnet").

5\. TAF/TAP im Betrieb',113,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','a1d4c11c71319fa0c9f0620500f340676649f3ddacd6c8a5b891aa0efafdfc3c');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_7eaaf7330ef5a291404c50ce','wiki/sources/uber-taf-tap-tsi.md',5,'Vertiefende Informationen zu TAF/TAP TSI','An dieser Stelle finden Sie grundsätzliche Informationen zu TAF/TAP im Betrieb der DB InfraGO AG. Weitere Informationen zur insbesondere technischen Umsetzung von TAF/TAP im Betrieb finden Sie auf den beiden Reitern " [Betrieb: Meldungen DB InfraGO AG an EVU](https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/betrieb-meldungen-db-infrago-ag-an-evu-11089210 "Wird in einem neuen Tab geöffnet") " und " [Betrieb: Meldungen EVU an DB InfraGO AG](https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/betrieb-meldungen-evu-an-db-infrago--11089212 "Wird in einem neuen Tab geöffnet") ".

Eine Übersicht über die TAF/TAP im Betrieb im Allgemeinen und die Umsetzung bei der DB InfraGO AG im Speziellen bietet die folgenden Präsentation:

[Übersicht und Einordnung - TAF/TAP im Betrieb der DB InfraGO AG (PDF | 1,2 MB)](https://www.dbinfrago.com/resource/blob/12599502/ff17862a59a7a68bdcc076eea45d1993/Download-Uebersicht-und-Einordnung-TAF-TAP-im-Betrieb-data.pdf "Es wird eine Datei heruntergeladen")

Hier finden Sie **Erklärvideos zum TAF/TAP-Meldungsaustausch bei betrieblichen Störfallszenarien**. Diese basieren auf Annex 13 des europäischen TAF/TAP RU/IM Sector Handbook:',125,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','3d299157f8c15c88eb973be6466b4f385c0e884d9001bff99f11773cef0b8775');
--> statement-breakpoint
INSERT INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES ('chunk_2ddc82da45981254e9bba67b','wiki/sources/uber-taf-tap-tsi.md',6,'Vertiefende Informationen zu TAF/TAP TSI','- [TAF/TAP im Betrieb - Kapitel 1: Standardmeldungen](https://ecm-mediathek-cdn.deutschebahn.com/resources/video7/video_embed.html?url=/cdnenhancedecmvidhls/db297946/2834184/video_config.json&autostart=false&defaultquality=0&mute=false "Wird in einem neuen Tab geöffnet")
- [TAF/TAP im Betrieb - Kapitel 2: Verspätung / Gleiswechsel](https://ecm-mediathek-cdn.deutschebahn.com/resources/video7/video_embed.html?url=/cdnenhancedecmvidhls/db297990/2834576/video_config.json&autostart=false&defaultquality=0&mute=false "Wird in einem neuen Tab geöffnet")
- [TAF/TAP im Betrieb - Kapitel 3: Doppelführung](https://ecm-mediathek-cdn.deutschebahn.com/resources/video7/video_embed.html?url=/cdnenhancedecmvidhls/db298039/2834566/video_config.json&autostart=false&defaultquality=0&mute=false "Wird in einem neuen Tab geöffnet")
- [TAF/TAP im Betrieb - Kapitel 4: Zuglauf wird geteilt](https://ecm-mediathek-cdn.deutschebahn.com/resources/video7/video_embed.html?url=/cdnenhancedecmvidhls/db298040/2834586/video_config.json&autostart=false&defaultquality=0&mute=false "Wird in einem neuen Tab geöffnet")
- [TAF/TAP im Betrieb - Kapitel 5: Zug wird umgeleitet](https://ecm-mediathek-cdn.deutschebahn.com/resources/video7/video_embed.html?url=/cdnenhancedecmvidhls/db298041/2834596/video_config.json&autostart=false&defaultquality=0&mute=false "Wird in einem neuen Tab geöffnet")',76,'{"canonical_url":"https://www.dbinfrago.com/web/schienennetz/netzzugang-und-regulierung/taf-tap-tsi/allgemein-11089206","normalized_sha256":"2a2b16b1d2f6d1b92b9170b0c0c97576f272f7cfcfd1e75e3f432e19989c1065","page":null,"source_id":"src_0ed972984c152ac37d60","source_sha256":"7c633488c07b24cabd17e8b90258c25559c2bfbe215c2e23efcc3a0ddb98e0ba","source_version_id":"sv_7c633488c07b24cabd17e8b9"}','fde9040a79c1e3ffd0332fbb61229a30f1da618a745a0388ac0577b14bda0d2a');
--> statement-breakpoint
INSERT INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES ('src_15a62986bf5cb9217f1c','file','Überblick - Trassenanmeldung zum Netzfahrplan und im Gelegenheitsverkehr','https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/ueberblick-10907392','de','unknown','public','active','bootstrap','2026-08-08T12:35:15Z',NULL) ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;
--> statement-breakpoint
INSERT INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES ('sv_7b15f5b01728d3b71a6f9897','src_15a62986bf5cb9217f1c','d1d89d8b90a962ba16dce9b22ae218e7b0ccd766b71ff68a904b7006e4d94e4b','7fd9db8d5533ab30214d2ac05eff7c2c5c6bed0147989a4dff4a9d0e86d2a489',3293,'text/markdown','Überblick - Trassenanmeldung zum Netzfahrplan und im Gelegenheitsverkehr.md','sources/normalized/bootstrap/uberblick-trassenanmeldung-zum-netzfahrplan-und-im-gelegenheitsverkehr/sv_7b15f5b01728d3b71a6f9897.md','identity-markdown','1','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z',NULL,'{"aliases":[],"canonical_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/ueberblick-10907392","contact_redaction":"email_phone_identified_contact_names_and_contact_address","content_duplicate_group":null,"content_sha256":"d1d89d8b90a962ba16dce9b22ae218e7b0ccd766b71ff68a904b7006e4d94e4b","converter":{"name":"identity-markdown","profile":"bootstrap-markdown-v2","version":"1"},"final_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/ueberblick-10907392","import_status":"imported","imported_at":"2026-08-08T12:35:15Z","language":"de","license":"unknown","manifest_repo_path":"sources/manifests/bootstrap/by-version/sv_7b15f5b01728d3b71a6f9897.json","media_type":"text/markdown","normalized_repo_path":"sources/normalized/bootstrap/uberblick-trassenanmeldung-zum-netzfahrplan-und-im-gelegenheitsverkehr/sv_7b15f5b01728d3b71a6f9897.md","normalized_sha256":"7fd9db8d5533ab30214d2ac05eff7c2c5c6bed0147989a4dff4a9d0e86d2a489","origin_page_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/ueberblick-10907392","original_filename":"Überblick - Trassenanmeldung zum Netzfahrplan und im Gelegenheitsverkehr.md","page_count":null,"raw_binary_committed":false,"requested_url":"https://www.dbinfrago.com/web/schienennetz/leistungen/trassen/trassenbestellung/trassenanmeldung/ueberblick-10907392","schema_version":2,"size_bytes":3293,"source_id":"src_15a62986bf5cb9217f1c","source_sha256":"d1d89d8b90a962ba16dce9b22ae218e7b0ccd766b71ff68a904b7006e4d94e4b","source_version_id":"sv_7b15f5b01728d3b71a6f9897","supersedes_source_version_id":null,"title":"Überblick - Trassenanmeldung zum Netzfahrplan und im Gelegenheitsverkehr","visibility":"public"}') ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,media_type=excluded.media_type,original_filename=excluded.original_filename,normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256','d1d89d8b90a962ba16dce9b22ae218e7b0ccd766b71ff68a904b7006e4d94e4b','src_15a62986bf5cb9217f1c','sv_7b15f5b01728d3b71a6f9897','{"content_duplicate_group":null,"original_filename":"Überblick - Trassenanmeldung zum Netzfahrplan und im Gelegenheitsverkehr.md"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
INSERT INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256','7fd9db8d5533ab30214d2ac05eff7c2c5c6bed0147989a4dff4a9d0e86d2a489','src_15a62986bf5cb9217f1c',NULL,'{"content_duplicate_group":null,"original_filename":"Überblick - Trassenanmeldung zum Netzfahrplan und im Gelegenheitsverkehr.md"}','2026-08-08T12:35:15Z') ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,source_id=excluded.source_id,source_version_id=excluded.source_version_id,metadata_json=excluded.metadata_json;
--> statement-breakpoint
