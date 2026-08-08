---
title: "Changelog BauFplo API EVU 2 17 0"
source_id: "src_9a8ac84849939f0108ef"
source_version_id: "sv_9aacda759a56475d3f64f6e0"
source_sha256: "c78844566eba2b02b0ca49e411141537e83f45f357a5682c0ae52f5858b99ccb"
original_filename: "Changelog-BauFplo-API-EVU-2-17-0-data.pdf"
media_type: "application/pdf"
imported_at: "2026-08-08T12:35:15Z"
license: "unknown"
---

# Changelog BauFplo API EVU 2 17 0

## Seite 1

DB
Changelog BauFplo API EVU
Inhaltsverzeichnis
1. Einleitung. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1
2. Version 2.17.0 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1
2.1. Zusammenfassung der Auswirkungen . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1
3. Version 2.16.4 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1
3.1. Zusammenfassung der Auswirkungen . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1
3.2. Detaillierte Änderungen. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1
4. Version 2.16.1 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2
4.1. Zusammenfassung der Auswirkungen . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2
4.2. Detaillierte Änderungen. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2
5. Version 2.8.0 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 3
5.1. Zusammenfassung der Auswirkungen . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 3
5.2. Detaillierte Änderungen. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 3
6. Version 2.2.0 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4
1. Einleitung
Diese Änderungsübersicht der Schnittstellenbeschreibung der Digitalen
Baufahrplananordnung wird fortlaufend gepflegt und informiert über Anpassungen,
Erweiterungen und Korrekturen der Schnittstelle. Ziel ist es, relevante Änderungen kompakt
darzustellen und die Bewertung möglicher Auswirkungen auf Ihre Systeme zu unterstützen.
Bitte prüfen Sie die aufgeführten Punkte und planen Sie erforderliche Anpassungen
rechtzeitig ein. Bei Fragen nutzen Sie bitte die bekannten Support-Kanäle.
2. Version 2.17.0
2.1. Zusammenfassung der Auswirkungen
Erhöhung der Versionsnummer, um der bereitgestellten Version auf dem DB API
Marketplace zu entsprechen. Keine weiteren Änderungen im Vergleich zu Version 2.16.4.
3. Version 2.16.4
3.1. Zusammenfassung der Auswirkungen
▮ Breaking Changes: keine
▮ Deprecations ohne Ersatz:
▮ „Baumassnahme"
▮ „nummer"
▮ „zeitraum"
▮ „artDerArbeiten"
3.2. Detaillierte Änderungen
Tabelle 1. Beschreibung der Änderungen zwischen Version 2.16.4 und 2.16.1
Changelog BauFplo API EVU 1

## Seite 2

DB
Thema Änderung
Baumassnahme Das Element „Baumassnahme" ist deprecated
mit dem Hinweis in der Beschreibung, dass es
nur noch für das Fahrplanjahr 2026 relevant ist
und ab Fahrplanjahr 2027 nicht mehr befüllt wird.
Baumassnahme > properties > nummer Attribut „nummer" ist deprecated mit dem
Hinweis in der Beschreibung, dass es nur noch
für das Fahrplanjahr 2026 relevant ist und ab
Fahrplanjahr 2027 nicht mehr befüllt wird.
Baumassnahme > properties > zeitraum Attribut „zeitraum" ist deprecated mit dem
Hinweis in der Beschreibung, dass es nur noch
für das Fahrplanjahr 2026 relevant ist und ab
Fahrplanjahr 2027 nicht mehr befüllt wird.
Baumassnahme > properties > artDerArbeiten Attribut „artDerArbeiten" ist deprecated mit dem
Hinweis in der Beschreibung, dass es nur noch
für das Fahrplanjahr 2026 relevant ist und ab
Fahrplanjahr 2027 nicht mehr befüllt wird.
4. Version 2.16.1
4.1. Zusammenfassung der Auswirkungen
▮ Breaking Changes: keine
▮ Deprecations mit Ersatz:
▮ „hatNotbremsueberbrueckung" am Zugverband wird ersetzt durch
„notbremsueberbrueckung" an den Regelungen
▮ „hatNotbremsueberbrueckung" am RahmendatenZugverband wird ersetzt durch
„notbremsueberbrueckung" an den Regelungen
▮ Additive Erweiterungen:
▮ „keineangabe" am Fahrplan
▮ „startBetriebsstelleRoute"
▮ „zielBetriebsstelleRoute"
▮ „bpolMeldepflichtig"
▮ „leichterNahverkehrstriebwagen"
▮ „notbremsueberbrueckung"
4.2. Detaillierte Änderungen
Tabelle 2. Beschreibung der Änderungen zwischen Version 2.16.1 und 2.8.0
Thema Änderung
Fahrplan > properties > keineangabe Neues Element „keineangabe" vom Typ
„KeineAngabe". Enthält Informationen zu Teilen
des Laufwegs, bei denen keine
Fahrplanangaben erfolgen (mit Angaben zu
Start-/Zielbetriebsstelle, Einreihung, Art und
Beschreibung).
Changelog BauFplo API EVU 2

## Seite 3

DB
Thema Änderung
Rahmendaten > properties > Attribut „startBetriebsstelleRoute" neu. Erste
startBetriebsstelleRoute Betriebsstelle der Gesamtzugroute (weicht von
„startBetriebsstelle" ab, wenn der Zug im
Fremdnetz beginnt).
Rahmendaten > properties > Attribut „zielBetriebsstelleRoute" neu. Letzte
zielBetriebsstelleRoute Betriebsstelle der Gesamtzugroute (weicht von
„zielBetriebsstelle" ab, wenn der Zug im
Fremdnetz endet).
Rahmendaten > properties > bpolMeldepflichtig Attribut „bpolMeldepflichtig" neu. Gibt an, ob die
Zugtrasse an die Bundespolizei gemeldet
werden muss.
RahmendatenZugcharakteristik > properties > Attribut „leichterNahverkehrstriebwagen" neu.
leichterNahverkehrstriebwagen Angabe, ob es sich um einen leichten
Nahverkehrstriebwagen handelt.
RahmendatenRegelungen > properties > Attribut „notbremsueberbrueckung" neu. Angabe,
notbremsueberbrueckung ob eine NBÜ erforderlich ist.
RahmendatenZugverband > properties > Attribut „hatNotbremsueberbrueckung" ist
hatNotbremsueberbrueckung deprecated mit dem Hinweis in der
Beschreibung, dass „notbremsueberbrueckung"
gilt. Bitte nutzen Sie dieses Attribut nicht mehr.
Zugverband > properties > Attribut „hatNotbremsueberbrueckung" ist
hatNotbremsueberbrueckung deprecated mit dem Hinweis in der
Beschreibung, dass „notbremsueberbrueckung"
gilt. Bitte nutzen Sie dieses Attribut nicht mehr.
5. Version 2.8.0
5.1. Zusammenfassung der Auswirkungen
▮ Breaking Changes:
▮ „zugfolgevermerk“ entfernt (Ablösung über „hinweise“)
▮ Deprecations mit Ersatz:
▮ „abfahrzeit“ wird ersetzt durch „abfahrtuhrzeit“
▮ „ankunftzeit“ wird ersetzt durch „ankunftuhrzeit“
▮ „betriebsname“ am Buchfahrplanverweis wird ersetzt durch „betriebsname“ am
Laufwegpunkt
▮ Additive Erweiterungen:
▮ „strecke“
▮ Validierungsänderung:
▮ „minItems“ bei „textbausteine“ entfällt
5.2. Detaillierte Änderungen
Tabelle 3. Beschreibung der Änderungen zwischen Version 2.8.0 und 2.2.0
Changelog BauFplo API EVU 3

## Seite 4

DB
Thema Änderung
Allgemeines > properties > textbausteine Attribut „minItems“ entfällt.
Laufwegpunkt > properties > betriebsname Attribut „betriebsname“ am „Laufwegpunkt“ neu.
Buchfahrplanverweis > properties > Attribut „betriebsname“ am
betriebsname „Buchfahrplanverweis“ ist deprecated, da dieser
am „Laufwegpunkt“ gepflegt wird.
Laufwegpunkt > properties > abfahrtuhrzeit Attribut „abfahrtuhrzeit“ neu.
Laufwegpunkt > properties > abfahrzeit Attribut „abfahrzeit“ ist deprecated mit dem
Hinweis in der Beschreibung, dass
„abfahrtuhrzeit“ gilt. Bitte nutzen Sie dieses
Attribut nicht mehr.
Laufwegpunkt > properties > ankunftuhrzeit Attribut „ankunftuhrzeit“ neu.
Laufwegpunkt > properties > ankunftzeit Attribut „ankunftzeit“ ist deprecated mit dem
Hinweis in der Beschreibung, dass
„ankunftuhrzeit“ gilt. Bitte nutzen Sie dieses
Attribut nicht mehr.
Laufwegpunkt > properties > strecke Attribut „strecke“ wurde hinzugefügt.
Laufwegpunkt > properties > zugfolgevermerk Attribut „zugfolgevermerk“ entfällt. Ein
Zugfolgevermerk wird über die „hinweise“ am
„Laufwegpunkt“ übergeben.
6. Version 2.2.0
Initialerstellung
Changelog BauFplo API EVU 4
