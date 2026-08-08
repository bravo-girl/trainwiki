#!/usr/bin/env python3
"""Convert the local bootstrap corpus into auditable Markdown and a D1 seed.

PDF binaries remain outside Git. Documents carrying explicit internal or
confidential markings are quarantined by default and never written to the
public wiki or retrieval index.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
import unicodedata
from collections import Counter
from dataclasses import dataclass, field
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import quote, unquote, urlparse, urlsplit, urlunsplit

try:
    import pdfplumber
except ImportError as error:  # pragma: no cover - exercised by operators
    raise SystemExit(
        "pdfplumber fehlt. Installiere die Abhängigkeiten aus "
        "scripts/requirements-bootstrap.txt."
    ) from error


SENSITIVE_MARKERS = (
    ("DB Intern", re.compile(r"\bDB\s+(?:Intern|internal)\b", re.IGNORECASE)),
    (
        "DB Vertraulich",
        re.compile(r"\bDB\s+(?:Vertraulich|confidential)\b", re.IGNORECASE),
    ),
)

EMAIL_PATTERN = re.compile(
    r"\b[A-Z0-9._%+\-]+\s*@\s*[A-Z0-9.\-]+\.[A-Z]{2,}\b",
    re.IGNORECASE,
)
PHONE_PATTERN = re.compile(
    r"(?<![\w])(?:\+|00)\s*49(?:[\s()./\-]*\d){6,}",
    re.IGNORECASE,
)
CONVERTER_PROFILE = "bootstrap-markdown-v2"
PERSONAL_CONTACT_NAMES = (
    re.compile(r"\bThomas\s+Komari\b", re.IGNORECASE),
    re.compile(r"\bOliver\s+Mundo\b", re.IGNORECASE),
    re.compile(r"\bSebastian\s+Beenken\b", re.IGNORECASE),
)
CONTACT_ADDRESS_PATTERN = re.compile(
    r"\bAdam-\s*\n?\s*Riese-Str(?:aße|\.)\s*11-13[;,]\s*60327\s+Frankfurt\s+am\s+Main\.?",
    re.IGNORECASE,
)

STOPWORDS = {
    "aber", "alle", "allem", "allen", "aller", "alles", "als", "also",
    "am", "an", "and", "auch", "auf", "aus", "bei", "beim", "bereits",
    "bis", "bzw", "da", "dabei", "dadurch", "daher", "damit", "dann",
    "das", "dass", "dem", "den", "denn", "der", "des", "die", "dies",
    "diese", "diesem", "diesen", "dieser", "dieses", "durch", "ein",
    "eine", "einem", "einen", "einer", "eines", "einerseits", "er",
    "es", "etwa", "für", "gegen", "gemäß", "hat", "haben", "hier",
    "im", "in", "ins", "ist", "ja", "kann", "keine", "mit", "nach",
    "nicht", "noch", "nur", "oder", "ohne", "sich", "sind", "sowie",
    "the", "to", "und", "unter", "vom", "von", "vor", "was", "wenn",
    "werden", "wie", "wird", "wo", "wurde", "wurden", "zum", "zur",
    "zwischen", "über", "that", "this", "with", "from", "into", "for",
    "are", "was", "were", "have", "has", "not", "only", "than", "then",
}


@dataclass(frozen=True)
class Section:
    heading: str
    text: str
    page: int | None = None


@dataclass
class SourceDocument:
    input_path: Path
    slug: str
    title: str
    media_type: str
    canonical_url: str | None
    origin_page_url: str | None
    sha256: str
    sections: tuple[Section, ...]
    page_count: int | None
    converter_name: str
    converter_version: str
    declared_source_id: str | None = None
    normalized_sha256: str = ""
    source_id: str = ""
    version_id: str = ""
    supersedes_version_id: str | None = None
    normalized_repo_path: str = ""
    manifest_repo_path: str = ""
    import_status: str = "imported"
    run_status: str = "imported"
    imported_at: str = ""
    aliases: list[dict[str, object]] = field(default_factory=list)
    content_duplicate_group: str | None = None
    previous_manifest: dict[str, object] | None = None


@dataclass(frozen=True)
class PreviousSource:
    source_id: str
    version_id: str
    supersedes_version_id: str | None
    slug: str
    title: str
    original_filename: str
    sha256: str
    normalized_sha256: str | None
    canonical_url: str | None
    origin_page_url: str | None
    media_type: str
    page_count: int | None
    normalized_repo_path: str
    manifest_repo_path: str | None
    converter_name: str
    converter_version: str
    converter_profile: str | None
    import_status: str
    imported_at: str
    manifest_payload: dict[str, object]


@dataclass(frozen=True)
class DeduplicationResult:
    documents: tuple[SourceDocument, ...]
    duplicate_files: tuple[dict[str, object], ...]
    content_duplicate_groups: tuple[dict[str, object], ...]
    identity_conflicts: tuple[dict[str, object], ...]


def sha256_bytes(value: bytes) -> str:
    return hashlib.sha256(value).hexdigest()


def normalize_source_url(value: str | None) -> str | None:
    """Normalize HTTP URL syntax without changing resource semantics."""
    if not value:
        return None
    candidate = value.strip()
    if (
        not candidate
        or len(candidate) > 2_048
        or re.search(r"[\x00-\x1f\x7f]", candidate)
        or "\\" in candidate
    ):
        return None

    try:
        parsed = urlsplit(candidate)
        if any(
            segment.replace("%2e", ".").replace("%2E", ".") in {".", ".."}
            for segment in parsed.path.split("/")
        ):
            return None
        scheme = parsed.scheme.casefold()
        if scheme not in {"http", "https"} or not parsed.hostname:
            return None
        if parsed.username is not None or parsed.password is not None:
            return None

        hostname = parsed.hostname.encode("idna").decode("ascii").casefold()
        if ":" in hostname:
            hostname = f"[{hostname}]"
        port = parsed.port
        if port is None or (scheme == "http" and port == 80) or (
            scheme == "https" and port == 443
        ):
            authority = hostname
        else:
            authority = f"{hostname}:{port}"

        path = quote(
            parsed.path or "/",
            safe="/%:@!$&'()*+,;=-._~",
        )
        query = quote(
            parsed.query,
            safe="!$&'()*+,-./:;=?@_~%",
        )
        return urlunsplit((scheme, authority, path, query, ""))
    except (UnicodeError, ValueError):
        return None


def normalize_markdown_content(markdown: str) -> str:
    """Return the deterministic payload used for content deduplication."""
    normalized = unicodedata.normalize("NFKC", markdown.lstrip("\ufeff"))
    normalized = normalized.replace("\r\n", "\n").replace("\r", "\n")
    if normalized.startswith("---\n"):
        end = normalized.find("\n---\n", 4)
        if end >= 0:
            normalized = normalized[end + 5 :]
    normalized = re.sub(
        r"\A(?:[ \t]*\n)*#[ \t]+[^\n]*(?:\n+|\Z)",
        "",
        normalized,
        count=1,
    )

    compact: list[str] = []
    blank_lines = 0
    for line in normalized.split("\n"):
        line = line.replace("\t", " ").rstrip(" ")
        if not line:
            blank_lines += 1
            if blank_lines <= 2:
                compact.append("")
        else:
            blank_lines = 0
            compact.append(line)
    content = "\n".join(compact).strip()
    return f"{content}\n" if content else ""


def content_markdown(document: SourceDocument) -> str:
    lines = [f"# {document.title}", ""]
    for section in document.sections:
        lines.extend([f"## {section.heading}", "", section.text, ""])
    return "\n".join(lines).rstrip() + "\n"


def normalized_document_sha256(document: SourceDocument) -> str:
    return sha256_bytes(normalize_markdown_content(content_markdown(document)).encode("utf-8"))


def source_identity_hash(identity_type: str, value: str) -> str:
    if identity_type in {"raw_sha256", "normalized_sha256"}:
        digest = value.strip().casefold()
        if not re.fullmatch(r"[0-9a-f]{64}", digest):
            raise ValueError(f"Ungültiger SHA-256 für {identity_type}.")
        return digest
    if identity_type == "canonical_url":
        normalized = normalize_source_url(value)
        if not normalized:
            raise ValueError("Ungültige kanonische HTTP(S)-URL.")
        return sha256_bytes(normalized.encode("utf-8"))
    raise ValueError(f"Unbekannter Identitätstyp: {identity_type}")


def corpus_identity_sha256(documents: list[SourceDocument]) -> str:
    identities = [
        {
            "source_id": document.source_id,
            "source_version_id": document.version_id,
            "raw_sha256": document.sha256,
            "normalized_sha256": document.normalized_sha256,
            "canonical_url": document.canonical_url,
            "origin_page_url": document.origin_page_url,
            "converter_name": document.converter_name,
            "converter_version": document.converter_version,
            "conversion_profile": CONVERTER_PROFILE,
        }
        for document in sorted(
            documents,
            key=lambda item: (item.source_id, item.version_id),
        )
    ]
    return sha256_bytes(json_text(identities).encode("utf-8"))


def legacy_corpus_sha256(documents: list[SourceDocument]) -> str:
    return sha256_bytes(
        "\n".join(sorted(document.sha256 for document in documents)).encode("utf-8")
    )


def valid_source_id(value: str) -> bool:
    return bool(re.fullmatch(r"src_[a-z0-9][a-z0-9_-]{7,95}", value))


def repository_path(repo: Path, value: str) -> Path:
    resolved = (repo / value).resolve()
    try:
        resolved.relative_to(repo)
    except ValueError as error:
        raise ValueError(f"Repository-Pfad verlässt das Repository: {value}") from error
    return resolved


def load_previous_sources(
    index_path: Path,
    repo: Path,
) -> tuple[dict[str, object], list[PreviousSource]]:
    if not index_path.exists():
        return {}, []
    payload = json.loads(index_path.read_text(encoding="utf-8"))
    if not isinstance(payload, dict):
        raise ValueError("Der bisherige Bootstrap-Index ist kein JSON-Objekt.")

    index_imported_at = str(payload.get("imported_at") or "")
    previous: list[PreviousSource] = []
    for item in payload.get("sources", []):
        if not isinstance(item, dict):
            continue
        source_id = str(item.get("source_id") or "")
        version_id = str(item.get("source_version_id") or "")
        supersedes_version_id = item.get("supersedes_source_version_id")
        supersedes_version_id = (
            str(supersedes_version_id) if supersedes_version_id else None
        )
        normalized_path = str(item.get("normalized_repo_path") or "")
        sha256 = str(item.get("content_sha256") or item.get("source_sha256") or "")
        original_filename = str(item.get("original_filename") or "")
        if (
            not valid_source_id(source_id)
            or not re.fullmatch(r"sv_[a-f0-9]{24}", version_id)
            or (
                supersedes_version_id is not None
                and not re.fullmatch(r"sv_[a-f0-9]{24}", supersedes_version_id)
            )
            or not normalized_path
            or not re.fullmatch(r"[0-9a-f]{64}", sha256)
            or not original_filename
        ):
            raise ValueError("Der bisherige Bootstrap-Index enthält eine ungültige Source-Identität.")
        normalized_sha = item.get("normalized_sha256")
        normalized_sha = str(normalized_sha) if normalized_sha else None
        if normalized_sha and not re.fullmatch(r"[0-9a-f]{64}", normalized_sha):
            raise ValueError("Der bisherige Bootstrap-Index enthält einen ungültigen Normalized-Hash.")
        slug = Path(normalized_path).stem
        if Path(normalized_path).parent.name != "bootstrap":
            # Versioned paths end in .../bootstrap/<slug>/<version>.md.
            slug = Path(normalized_path).parent.name
        manifest_path = item.get("manifest_repo_path")
        if not manifest_path:
            legacy_manifest = index_path.parent / f"{slug}.json"
            if legacy_manifest.is_file():
                manifest_path = legacy_manifest.relative_to(repo).as_posix()

        if not manifest_path:
            raise ValueError(
                f"Kein Manifest für bestehende Quellversion gefunden: {version_id}"
            )
        manifest_file = repository_path(repo, str(manifest_path))
        if not manifest_file.is_file():
            raise ValueError(f"Bestehendes Manifest fehlt: {manifest_path}")
        loaded_manifest = json.loads(manifest_file.read_text(encoding="utf-8"))
        if not isinstance(loaded_manifest, dict):
            raise ValueError(f"Bestehendes Manifest ist kein JSON-Objekt: {manifest_path}")
        manifest_payload: dict[str, object] = loaded_manifest
        if manifest_payload != item:
            raise ValueError(
                f"Bootstrap-Index und Manifest unterscheiden sich: {manifest_path}"
            )

        normalized_file = repository_path(repo, normalized_path)
        if not normalized_file.is_file():
            raise ValueError(f"Bestehendes Normalisierungsartefakt fehlt: {normalized_path}")
        normalized_markdown = normalized_file.read_text(encoding="utf-8")
        normalized_metadata, _ = parse_frontmatter(normalized_markdown)
        if (
            normalized_metadata.get("source_id") != source_id
            or normalized_metadata.get("source_version_id") != version_id
            or normalized_metadata.get("source_sha256") != sha256
        ):
            raise ValueError(
                f"Identitätsfelder im Normalisierungsartefakt sind inkonsistent: "
                f"{normalized_path}"
            )
        artifact_normalized_sha = sha256_bytes(
            normalize_markdown_content(normalized_markdown).encode("utf-8")
        )
        if normalized_sha and normalized_sha != artifact_normalized_sha:
            raise ValueError(
                f"Normalized-Hash stimmt nicht mit dem Artefakt überein: {normalized_path}"
            )
        normalized_sha = artifact_normalized_sha

        manifest_raw_sha = str(
            manifest_payload.get("content_sha256")
            or manifest_payload.get("source_sha256")
            or ""
        )
        manifest_version_id = str(
            manifest_payload.get("source_version_id")
            or manifest_payload.get("source_version")
            or ""
        )
        manifest_normalized_sha = manifest_payload.get("normalized_sha256")
        if (
            str(manifest_payload.get("source_id") or "") != source_id
            or manifest_version_id != version_id
            or manifest_raw_sha != sha256
            or str(manifest_payload.get("original_filename") or "")
            != original_filename
            or str(manifest_payload.get("normalized_repo_path") or "")
            != normalized_path
            or (
                manifest_normalized_sha is not None
                and str(manifest_normalized_sha) != normalized_sha
            )
        ):
            raise ValueError(
                f"Identitätsfelder im bestehenden Manifest sind inkonsistent: {manifest_path}"
            )

        converter = manifest_payload.get("converter") or item.get("converter") or {}
        if not isinstance(converter, dict):
            converter = {}
        previous.append(
            PreviousSource(
                source_id=source_id,
                version_id=version_id,
                supersedes_version_id=supersedes_version_id,
                slug=slug,
                title=str(item.get("title") or ""),
                original_filename=original_filename,
                sha256=sha256,
                normalized_sha256=normalized_sha,
                canonical_url=normalize_source_url(
                    str(item.get("canonical_url") or "")
                ),
                origin_page_url=normalize_source_url(
                    str(item.get("origin_page_url") or "")
                ),
                media_type=str(item.get("media_type") or ""),
                page_count=(
                    int(item["page_count"])
                    if item.get("page_count") is not None
                    else None
                ),
                normalized_repo_path=normalized_path,
                manifest_repo_path=str(manifest_path) if manifest_path else None,
                converter_name=str(converter.get("name") or ""),
                converter_version=str(converter.get("version") or ""),
                converter_profile=(
                    str(converter["profile"]) if converter.get("profile") else None
                ),
                import_status=str(item.get("import_status") or "imported"),
                imported_at=str(item.get("imported_at") or index_imported_at),
                manifest_payload=manifest_payload,
            )
        )
    return payload, previous


def previous_input_inventory(
    index_payload: dict[str, object],
    quarantine_payload: dict[str, object],
) -> dict[str, str]:
    inventory: dict[str, str] = {}

    def add(filename: object, digest: object) -> None:
        name = str(filename or "")
        sha256 = str(digest or "")
        if not name or not re.fullmatch(r"[0-9a-f]{64}", sha256):
            return
        existing = inventory.get(name)
        if existing and existing != sha256:
            raise ValueError(f"Dateiname ist im bisherigen Inventar mehrfach belegt: {name}")
        inventory[name] = sha256

    for item in index_payload.get("sources", []):
        if not isinstance(item, dict):
            continue
        add(
            item.get("original_filename"),
            item.get("content_sha256") or item.get("source_sha256"),
        )
        for alias in item.get("aliases", []):
            if isinstance(alias, dict):
                add(alias.get("filename"), alias.get("content_sha256"))

    for item in quarantine_payload.get("documents", []):
        if isinstance(item, dict):
            add(item.get("filename"), item.get("sha256") or item.get("content_sha256"))
    return inventory


def allocate_slug(base: str, used: set[str]) -> str:
    slug = base
    counter = 2
    while slug in used:
        slug = f"{base}-{counter}"
        counter += 1
    used.add(slug)
    return slug


def assign_source_id(base_key: str, slug: str, used: set[str]) -> str:
    source_id = "src_" + sha256_bytes(base_key.encode("utf-8"))[:20]
    if source_id not in used:
        used.add(source_id)
        return source_id
    source_id = "src_" + sha256_bytes(f"{base_key}\0{slug}".encode("utf-8"))[:20]
    suffix = 2
    while source_id in used:
        source_id = "src_" + sha256_bytes(
            f"{base_key}\0{slug}\0{suffix}".encode("utf-8")
        )[:20]
        suffix += 1
    used.add(source_id)
    return source_id


def deduplicate_documents(
    candidates: list[SourceDocument],
    previous_sources: list[PreviousSource],
) -> DeduplicationResult:
    previous_by_id = {item.source_id: item for item in previous_sources}
    previous_by_filename = {
        item.original_filename.casefold(): item for item in previous_sources
    }
    previous_by_url: dict[str, PreviousSource] = {}
    for item in previous_sources:
        if item.canonical_url:
            existing = previous_by_url.get(item.canonical_url)
            if existing and existing.source_id != item.source_id:
                raise ValueError("Der bisherige Index enthält eine mehrfach belegte kanonische URL.")
            previous_by_url[item.canonical_url] = item

    used_slugs = {item.slug for item in previous_sources}
    used_source_ids = set(previous_by_id)
    current_by_source: dict[str, SourceDocument] = {}
    current_by_url: dict[str, SourceDocument] = {}
    documents: list[SourceDocument] = []
    duplicate_files: list[dict[str, object]] = []
    identity_conflicts: list[dict[str, object]] = []

    for document in sorted(candidates, key=lambda item: item.input_path.name.casefold()):
        matches: dict[str, set[str]] = {}

        def add_match(source_id: str, reason: str) -> None:
            matches.setdefault(source_id, set()).add(reason)

        if document.declared_source_id:
            add_match(document.declared_source_id, "declared_source_id")
        filename_match = previous_by_filename.get(document.input_path.name.casefold())
        if filename_match:
            add_match(filename_match.source_id, "previous_filename")
        if document.canonical_url:
            url_match = previous_by_url.get(document.canonical_url)
            if url_match:
                add_match(url_match.source_id, "canonical_url")
            current_url_match = current_by_url.get(document.canonical_url)
            if current_url_match:
                add_match(current_url_match.source_id, "current_canonical_url")
        if len(matches) > 1:
            identity_conflicts.append(
                {
                    "filename": document.input_path.name,
                    "decision": "identity_conflict",
                    "candidate_sources": [
                        {"source_id": source_id, "reasons": sorted(reasons)}
                        for source_id, reasons in sorted(matches.items())
                    ],
                }
            )
            continue

        previous = None
        if matches:
            source_id = next(iter(matches))
            previous = previous_by_id.get(source_id)
            if document.declared_source_id and not valid_source_id(source_id):
                identity_conflicts.append(
                    {
                        "filename": document.input_path.name,
                        "decision": "identity_conflict",
                        "reason": "invalid_declared_source_id",
                    }
                )
                continue
            if not previous:
                used_source_ids.add(source_id)
        elif document.canonical_url:
            source_id = assign_source_id(
                f"canonical_url:{document.canonical_url}",
                slugify(document.input_path.stem),
                used_source_ids,
            )
        else:
            source_id = assign_source_id(
                f"normalized_sha256:{document.normalized_sha256}",
                slugify(document.input_path.stem),
                used_source_ids,
            )

        existing_current = current_by_source.get(source_id)
        if existing_current:
            if existing_current.sha256 == document.sha256:
                alias = {
                    "filename": document.input_path.name,
                    "content_sha256": document.sha256,
                    "normalized_sha256": document.normalized_sha256,
                    "canonical_url": document.canonical_url,
                    "reason": "same_source_same_bytes",
                }
                existing_current.aliases.append(alias)
                duplicate_files.append(
                    alias
                    | {
                        "status": "duplicate",
                        "duplicate_of": existing_current.input_path.name,
                        "source_id": source_id,
                    }
                )
            else:
                identity_conflicts.append(
                    {
                        "filename": document.input_path.name,
                        "decision": "identity_conflict",
                        "reason": "multiple_unordered_versions_for_one_source",
                        "source_id": source_id,
                        "other_filename": existing_current.input_path.name,
                    }
                )
            continue

        document.source_id = source_id
        document.slug = previous.slug if previous else allocate_slug(
            slugify(document.input_path.stem), used_slugs
        )
        if previous and previous.sha256 == document.sha256:
            retry_conversion_matches = (
                previous.original_filename == document.input_path.name
                and previous.title == document.title
                and previous.canonical_url == document.canonical_url
                and previous.origin_page_url == document.origin_page_url
                and previous.media_type == document.media_type
                and previous.page_count == document.page_count
                and previous.normalized_sha256 == document.normalized_sha256
                and previous.converter_name == document.converter_name
                and previous.converter_version == document.converter_version
                and previous.converter_profile in {None, CONVERTER_PROFILE}
            )
            if not retry_conversion_matches:
                identity_conflicts.append(
                    {
                        "filename": document.input_path.name,
                        "content_sha256": document.sha256,
                        "decision": "identity_conflict",
                        "reason": "raw_retry_conversion_or_provenance_mismatch",
                        "source_id": source_id,
                    }
                )
                continue
            document.version_id = previous.version_id
            document.supersedes_version_id = previous.supersedes_version_id
            document.normalized_repo_path = previous.normalized_repo_path
            document.manifest_repo_path = previous.manifest_repo_path or (
                f"sources/manifests/bootstrap/by-version/{document.version_id}.json"
            )
            document.import_status = previous.import_status
            document.run_status = "retry_noop"
            document.imported_at = previous.imported_at
            document.previous_manifest = previous.manifest_payload
        else:
            document.version_id = "sv_" + sha256_bytes(
                f"{source_id}\0{document.sha256}".encode("utf-8")
            )[:24]
            document.normalized_repo_path = (
                f"sources/normalized/bootstrap/{document.slug}/{document.version_id}.md"
            )
            if previous:
                document.supersedes_version_id = previous.version_id
                document.import_status = "new_version"
                document.run_status = "new_version"
            else:
                document.import_status = "imported"
                document.run_status = "imported"
            document.manifest_repo_path = (
                f"sources/manifests/bootstrap/by-version/{document.version_id}.json"
            )

        documents.append(document)
        current_by_source[source_id] = document
        if document.canonical_url:
            current_by_url[document.canonical_url] = document

    content_groups: list[dict[str, object]] = []
    by_normalized_hash: dict[str, list[SourceDocument]] = {}
    for document in documents:
        by_normalized_hash.setdefault(document.normalized_sha256, []).append(document)
    for digest, grouped in sorted(by_normalized_hash.items()):
        source_ids = {item.source_id for item in grouped}
        if len(source_ids) < 2:
            continue
        group_id = "content_" + digest[:20]
        for item in grouped:
            item.content_duplicate_group = group_id
        content_groups.append(
            {
                "id": group_id,
                "normalized_sha256": digest,
                "sources": [
                    {
                        "source_id": item.source_id,
                        "source_version_id": item.version_id,
                        "filename": item.input_path.name,
                    }
                    for item in sorted(grouped, key=lambda entry: entry.source_id)
                ],
                "decision": "preserve_distinct_provenance",
            }
        )

    return DeduplicationResult(
        documents=tuple(documents),
        duplicate_files=tuple(duplicate_files),
        content_duplicate_groups=tuple(content_groups),
        identity_conflicts=tuple(identity_conflicts),
    )


def slugify(value: str) -> str:
    transliterated = (
        unicodedata.normalize("NFKD", value)
        .encode("ascii", "ignore")
        .decode("ascii")
        .lower()
    )
    slug = re.sub(r"[^a-z0-9]+", "-", transliterated).strip("-")
    return slug[:96] or "quelle"


def human_title(path: Path) -> str:
    stem = re.sub(r"-data$", "", path.stem, flags=re.IGNORECASE)
    stem = stem.replace("_", " ").replace("--", " ").replace("-", " ")
    title = re.sub(r"\s+", " ", stem).strip()
    title = re.sub(r"\bTAF TAP\b", "TAF/TAP", title, flags=re.IGNORECASE)
    return title


def clean_extracted_text(value: str) -> str:
    value = unicodedata.normalize("NFKC", value).replace("\u00ad", "")
    value = value.replace("\r\n", "\n").replace("\r", "\n")
    value = re.sub(r"(?<=\w)-\n(?=[a-zäöüß])", "", value)
    lines = [re.sub(r"[ \t]+", " ", line).strip() for line in value.split("\n")]
    cleaned: list[str] = []
    empty = False
    for line in lines:
        if not line:
            if cleaned and not empty:
                cleaned.append("")
            empty = True
            continue
        cleaned.append(line)
        empty = False
    return "\n".join(cleaned).strip()


def redact_contact_details(value: str) -> str:
    """Remove direct contact details that are irrelevant to factual retrieval."""
    value = EMAIL_PATTERN.sub("[E-Mail-Adresse entfernt]", value)
    value = PHONE_PATTERN.sub("[Telefonnummer entfernt]", value)
    for name in PERSONAL_CONTACT_NAMES:
        value = name.sub("[Kontaktname entfernt]", value)
    return CONTACT_ADDRESS_PATTERN.sub("[Dienstanschrift entfernt]", value)


def parse_frontmatter(markdown: str) -> tuple[dict[str, str], str]:
    normalized = markdown.replace("\r\n", "\n").replace("\r", "\n")
    if not normalized.startswith("---\n"):
        return {}, normalized.strip()
    end = normalized.find("\n---\n", 4)
    if end < 0:
        return {}, normalized.strip()
    metadata: dict[str, str] = {}
    for line in normalized[4:end].split("\n"):
        match = re.match(r"^([A-Za-z0-9_-]+):\s*(.*)$", line)
        if not match:
            continue
        metadata[match.group(1)] = match.group(2).strip().strip("\"'")
    return metadata, normalized[end + 5 :].strip()


def split_markdown_sections(body: str) -> tuple[Section, ...]:
    sections: list[Section] = []
    heading = "Inhalt"
    buffer: list[str] = []
    for line in body.split("\n"):
        match = re.match(r"^#{1,6}\s+(.+?)\s*$", line)
        if match:
            text = clean_extracted_text("\n".join(buffer))
            if text:
                sections.append(Section(heading=heading, text=text))
            heading = match.group(1).strip()
            buffer = []
        else:
            buffer.append(line)
    text = clean_extracted_text("\n".join(buffer))
    if text:
        sections.append(Section(heading=heading, text=text))
    return tuple(sections) or (Section(heading="Inhalt", text=body.strip()),)


def extract_link_map(markdown: str) -> dict[str, str]:
    mapping: dict[str, str] = {}
    for target in re.findall(r"\]\((https?://[^\s)]+)", markdown):
        clean_target = target.split('"', 1)[0].strip()
        filename = unquote(Path(urlparse(clean_target).path).name)
        if filename:
            mapping[filename.casefold()] = clean_target
    return mapping


def build_markdown_link_context(
    markdown_paths: list[Path],
    known_filenames: set[str],
) -> tuple[dict[str, str], dict[str, str]]:
    """Map linked downloads to their URL and the page that documents them."""
    link_map: dict[str, str] = {}
    origin_map: dict[str, str] = {}
    for markdown_path in markdown_paths:
        markdown = markdown_path.read_text(encoding="utf-8-sig")
        metadata, _ = parse_frontmatter(markdown)
        raw_origin = metadata.get("source") or metadata.get("canonical_url") or None
        origin = normalize_source_url(raw_origin)
        if raw_origin and not origin:
            raise ValueError(
                f"Ungültige Source-URL in Markdown-Datei: {markdown_path.name}"
            )
        for filename, target in extract_link_map(markdown).items():
            if filename not in known_filenames:
                continue
            normalized_target = normalize_source_url(target)
            if not normalized_target:
                raise ValueError(
                    f"Ungültiger Download-Link in Markdown-Datei: {markdown_path.name}"
                )
            if filename in link_map and link_map[filename] != normalized_target:
                raise ValueError(f"Mehrdeutiger Download-Link für: {filename}")
            if origin and filename in origin_map and origin_map[filename] != origin:
                raise ValueError(f"Mehrdeutige Ursprungsseite für: {filename}")
            link_map[filename] = normalized_target
            if origin:
                origin_map[filename] = origin
    return link_map, origin_map


def extract_pdf(path: Path) -> tuple[tuple[Section, ...], dict[str, list[int]]]:
    sections: list[Section] = []
    findings: dict[str, list[int]] = {}
    with pdfplumber.open(path) as document:
        for page_number, page in enumerate(document.pages, start=1):
            extracted_text = clean_extracted_text(
                page.extract_text(x_tolerance=2, y_tolerance=3, layout=False) or ""
            )
            text = redact_contact_details(extracted_text)
            if text:
                sections.append(
                    Section(heading=f"Seite {page_number}", text=text, page=page_number)
                )
            for label, marker in SENSITIVE_MARKERS:
                if marker.search(extracted_text):
                    findings.setdefault(label, []).append(page_number)
        page_count = len(document.pages)
    if not sections:
        raise ValueError(f"Kein extrahierbarer Text: {path.name}")
    return tuple(sections), findings | {"__page_count__": [page_count]}


def split_long_text(text: str, limit: int = 1_800) -> list[str]:
    paragraphs = [item.strip() for item in re.split(r"\n{2,}", text) if item.strip()]
    if len(paragraphs) <= 1:
        paragraphs = [item.strip() for item in text.split("\n") if item.strip()]
    parts: list[str] = []
    current = ""
    for paragraph in paragraphs:
        candidates = [paragraph]
        if len(paragraph) > limit:
            candidates = [
                item.strip()
                for item in re.split(r"(?<=[.!?;:])\s+", paragraph)
                if item.strip()
            ]
        for candidate in candidates:
            while len(candidate) > limit:
                cut = candidate.rfind(" ", 0, limit + 1)
                cut = cut if cut > limit // 2 else limit
                prefix, candidate = candidate[:cut].strip(), candidate[cut:].strip()
                if current:
                    parts.append(current)
                    current = ""
                if prefix:
                    parts.append(prefix)
            combined = f"{current}\n\n{candidate}".strip() if current else candidate
            if len(combined) > limit and current:
                parts.append(current)
                current = candidate
            else:
                current = combined
    if current:
        parts.append(current)
    return parts


def query_terms(text: str, maximum: int = 64) -> list[tuple[str, int]]:
    normalized = unicodedata.normalize("NFKC", text).casefold()
    tokens = re.findall(r"[^\W_]{3,}", normalized, flags=re.UNICODE)
    counts = Counter(token for token in tokens if token not in STOPWORDS)
    return sorted(counts.items(), key=lambda item: (-item[1], item[0]))[:maximum]


def json_text(value: object, *, pretty: bool = False) -> str:
    return json.dumps(
        value,
        ensure_ascii=False,
        indent=2 if pretty else None,
        sort_keys=True,
        separators=None if pretty else (",", ":"),
    )


def yaml_string(value: str) -> str:
    return json.dumps(value, ensure_ascii=False)


def sql_string(value: str | None) -> str:
    if value is None:
        return "NULL"
    return "'" + value.replace("'", "''") + "'"


def atomic_write_text(path: Path, content: str, *, immutable: bool = False) -> bool:
    """Atomically publish text and return whether the target changed."""
    if path.exists():
        existing = path.read_text(encoding="utf-8")
        if existing == content:
            return False
        if immutable:
            raise ValueError(f"Unveränderliches Artefakt würde geändert: {path}")
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name(f".{path.name}.tmp")
    temporary.write_text(content, encoding="utf-8", newline="\n")
    temporary.replace(path)
    return True


def source_markdown(document: SourceDocument, imported_at: str) -> str:
    if not document.source_id or not document.version_id:
        raise ValueError("Source- und Versionsidentität müssen vor der Ausgabe feststehen.")
    header = [
        "---",
        f"title: {yaml_string(document.title)}",
        f"source_id: {yaml_string(document.source_id)}",
        f"source_version_id: {yaml_string(document.version_id)}",
        f"source_sha256: {yaml_string(document.sha256)}",
        f"original_filename: {yaml_string(document.input_path.name)}",
        f"media_type: {yaml_string(document.media_type)}",
        f"imported_at: {yaml_string(imported_at)}",
        'license: "unknown"',
    ]
    if document.canonical_url:
        header.append(f"canonical_url: {yaml_string(document.canonical_url)}")
    if document.origin_page_url:
        header.append(f"origin_page_url: {yaml_string(document.origin_page_url)}")
    header.extend(["---", "", f"# {document.title}", ""])
    for section in document.sections:
        header.extend([f"## {section.heading}", "", section.text, ""])
    return "\n".join(header).rstrip() + "\n"


def build_manifest(document: SourceDocument, imported_at: str) -> dict[str, object]:
    return {
        "schema_version": 2,
        "source_id": document.source_id,
        "source_version_id": document.version_id,
        "title": document.title,
        "original_filename": document.input_path.name,
        "content_sha256": document.sha256,
        "source_sha256": document.sha256,
        "normalized_sha256": document.normalized_sha256,
        "size_bytes": document.input_path.stat().st_size,
        "media_type": document.media_type,
        "language": "de",
        "license": "unknown",
        "visibility": "public",
        "canonical_url": document.canonical_url,
        "requested_url": document.canonical_url,
        "final_url": document.canonical_url,
        "origin_page_url": document.origin_page_url,
        "page_count": document.page_count,
        "normalized_repo_path": document.normalized_repo_path,
        "manifest_repo_path": document.manifest_repo_path,
        "supersedes_source_version_id": document.supersedes_version_id,
        "import_status": document.import_status,
        "aliases": document.aliases,
        "content_duplicate_group": document.content_duplicate_group,
        "converter": {
            "name": document.converter_name,
            "version": document.converter_version,
            "profile": CONVERTER_PROFILE,
        },
        "imported_at": imported_at,
        "raw_binary_committed": False,
        "contact_redaction": "email_phone_identified_contact_names_and_contact_address",
    }


def retry_manifest_matches(document: SourceDocument, repo: Path) -> bool:
    if not document.previous_manifest or not document.manifest_repo_path:
        return False
    manifest_path = repository_path(repo, document.manifest_repo_path)
    if not manifest_path.is_file():
        return False
    try:
        persisted = json.loads(manifest_path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return False
    if persisted != document.previous_manifest:
        return False

    raw_sha = str(
        document.previous_manifest.get("content_sha256")
        or document.previous_manifest.get("source_sha256")
        or ""
    )
    version_id = str(
        document.previous_manifest.get("source_version_id")
        or document.previous_manifest.get("source_version")
        or ""
    )
    converter = document.previous_manifest.get("converter") or {}
    normalized_sha = document.previous_manifest.get("normalized_sha256")
    manifest_path = document.previous_manifest.get("manifest_repo_path")
    return (
        isinstance(converter, dict)
        and str(document.previous_manifest.get("source_id") or "")
        == document.source_id
        and version_id == document.version_id
        and raw_sha == source_identity_hash("raw_sha256", document.sha256)
        and str(document.previous_manifest.get("original_filename") or "")
        == document.input_path.name
        and str(document.previous_manifest.get("title") or "") == document.title
        and str(document.previous_manifest.get("media_type") or "")
        == document.media_type
        and str(document.previous_manifest.get("normalized_repo_path") or "")
        == document.normalized_repo_path
        and (normalized_sha is None or str(normalized_sha) == document.normalized_sha256)
        and (
            manifest_path is None
            or str(manifest_path) == document.manifest_repo_path
        )
        and normalize_source_url(
            str(document.previous_manifest.get("canonical_url") or "")
        )
        == document.canonical_url
        and normalize_source_url(
            str(document.previous_manifest.get("origin_page_url") or "")
        )
        == document.origin_page_url
        and str(converter.get("name") or "") == document.converter_name
        and str(converter.get("version") or "") == document.converter_version
    )


def append_only_log(existing: str, heading: str, body_lines: list[str]) -> str:
    """Append one log section, or accept an already byte-equivalent section."""
    section = "\n".join([heading, "", *body_lines]).rstrip()
    heading_match = re.search(
        rf"(?m)^{re.escape(heading)}[ \t]*$",
        existing,
    )
    if heading_match:
        next_heading = re.search(r"(?m)^## \[", existing[heading_match.end() :])
        section_end = (
            heading_match.end() + next_heading.start()
            if next_heading
            else len(existing)
        )
        persisted_section = existing[heading_match.start() : section_end].strip()
        if persisted_section != section:
            raise ValueError(
                "Ein bestehender Bootstrap-Logeintrag trägt denselben Schlüssel, "
                "aber einen anderen Inhalt."
            )
        return existing

    base = existing.rstrip() or "# Wiki-Log"
    return f"{base}\n\n{section}\n"


def write_seed(
    output_path: Path,
    documents: list[SourceDocument],
    imported_at: str,
    corpus_sha: str,
) -> tuple[int, int]:
    statements: list[str] = [
        "-- Generated by scripts/bootstrap_input.py; original PDFs stay outside Git."
    ]
    term_rows: list[tuple[str, str, int]] = []
    chunk_count = 0
    term_count = 0

    def identity_statement(
        identity_type: str,
        identity_hash: str,
        source_id: str,
        source_version_id: str | None,
        metadata: dict[str, object],
        created_at: str,
    ) -> str:
        return (
            "INSERT INTO source_identities "
            "(identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES "
            f"({sql_string(identity_type)},{sql_string(identity_hash)},{sql_string(source_id)},"
            f"{sql_string(source_version_id)},{sql_string(json_text(metadata))},{sql_string(created_at)}) "
            "ON CONFLICT(identity_type,identity_hash,source_id) DO UPDATE SET "
            "identity_type=excluded.identity_type,identity_hash=excluded.identity_hash,"
            "source_id=excluded.source_id,source_version_id=excluded.source_version_id,"
            "metadata_json=excluded.metadata_json;"
        )

    for document in documents:
        document_imported_at = document.imported_at or imported_at
        manifest = (
            document.previous_manifest
            if document.run_status == "retry_noop" and document.previous_manifest
            else build_manifest(document, document_imported_at)
        )
        source_id = str(manifest["source_id"])
        version_id = str(manifest["source_version_id"])
        normalized_path = str(manifest["normalized_repo_path"])
        wiki_path = f"wiki/sources/{document.slug}.md"
        markdown = source_markdown(document, document_imported_at)
        content_sha = sha256_bytes(markdown.encode("utf-8"))
        summary_source = next((section.text for section in document.sections if section.text), "")
        summary = re.sub(r"\s+", " ", summary_source).strip()[:360]
        page_metadata = {
            "source_id": source_id,
            "source_version_id": version_id,
            "canonical_url": document.canonical_url,
            "origin_page_url": document.origin_page_url,
            "license": "unknown",
            "bootstrap": True,
        }

        statements.append(
            "INSERT INTO sources "
            "(id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES "
            f"({sql_string(source_id)},{sql_string('file')},{sql_string(document.title)},"
            f"{sql_string(document.canonical_url)},{sql_string('de')},{sql_string('unknown')},"
            f"{sql_string('public')},{sql_string('active')},{sql_string('bootstrap')},"
            f"{sql_string(document_imported_at)},NULL) "
            "ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,"
            "language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;"
        )
        statements.append(
            "INSERT INTO source_versions "
            "(id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,"
            "converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES "
            f"({sql_string(version_id)},{sql_string(source_id)},{sql_string(document.sha256)},"
            f"{sql_string(document.normalized_sha256)},{document.input_path.stat().st_size},"
            f"{sql_string(document.media_type)},"
            f"{sql_string(document.input_path.name)},{sql_string(normalized_path)},"
            f"{sql_string(document.converter_name)},{sql_string(document.converter_version)},"
            f"{sql_string(document_imported_at)},{sql_string(document_imported_at)},"
            f"{sql_string(document.supersedes_version_id)},{sql_string(json_text(manifest))}) "
            "ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,"
            "normalized_sha256=excluded.normalized_sha256,size_bytes=excluded.size_bytes,"
            "media_type=excluded.media_type,original_filename=excluded.original_filename,"
            "normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,"
            "converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,"
            "supersedes_version_id=excluded.supersedes_version_id,manifest_json=excluded.manifest_json;"
        )
        identity_metadata = {
            "original_filename": document.input_path.name,
            "content_duplicate_group": document.content_duplicate_group,
        }
        statements.append(
            identity_statement(
                "raw_sha256",
                source_identity_hash("raw_sha256", document.sha256),
                source_id,
                version_id,
                identity_metadata,
                document_imported_at,
            )
        )
        statements.append(
            identity_statement(
                "normalized_sha256",
                source_identity_hash("normalized_sha256", document.normalized_sha256),
                source_id,
                None,
                identity_metadata,
                document_imported_at,
            )
        )
        if document.canonical_url:
            statements.append(
                identity_statement(
                    "canonical_url",
                    source_identity_hash("canonical_url", document.canonical_url),
                    source_id,
                    None,
                    {"canonical_url": document.canonical_url},
                    document_imported_at,
                )
            )
        statements.append(
            f"UPDATE sources SET current_version_id={sql_string(version_id)} "
            f"WHERE id={sql_string(source_id)};"
        )
        statements.append(
            "INSERT INTO wiki_pages "
            "(path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES "
            f"({sql_string(wiki_path)},{sql_string(document.title)},{sql_string(summary)},"
            f"{sql_string('bootstrap:' + corpus_sha)},{sql_string(content_sha)},"
            f"{sql_string(document_imported_at)},{sql_string(json_text(page_metadata))}) "
            "ON CONFLICT(path) DO UPDATE SET title=excluded.title,summary=excluded.summary,"
            "commit_sha=excluded.commit_sha,content_sha=excluded.content_sha,"
            "updated_at=excluded.updated_at,metadata_json=excluded.metadata_json;"
        )
        statements.append(f"DELETE FROM wiki_chunks WHERE page_path={sql_string(wiki_path)};")

        ordinal = 0
        for section in document.sections:
            for chunk_text in split_long_text(section.text):
                chunk_sha = sha256_bytes(chunk_text.encode("utf-8"))
                chunk_id = "chunk_" + hashlib.sha256(
                    f"{wiki_path}:{ordinal}:{chunk_sha}".encode("utf-8")
                ).hexdigest()[:24]
                refs = {
                    "source_id": source_id,
                    "source_version_id": version_id,
                    "source_sha256": document.sha256,
                    "normalized_sha256": document.normalized_sha256,
                    "page": section.page,
                    "canonical_url": document.canonical_url,
                }
                token_count = len(re.findall(r"\S+", chunk_text))
                statements.append(
                    "INSERT INTO wiki_chunks "
                    "(id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) VALUES "
                    f"({sql_string(chunk_id)},{sql_string(wiki_path)},{ordinal},"
                    f"{sql_string(section.heading)},{sql_string(chunk_text)},{token_count},"
                    f"{sql_string(json_text(refs))},{sql_string(chunk_sha)});"
                )
                for term, frequency in query_terms(chunk_text):
                    term_rows.append((chunk_id, term, frequency))
                    term_count += 1
                ordinal += 1
                chunk_count += 1

    # Keep multi-row inserts below the stricter compound-select limit used by
    # the hosted D1 migration runner.
    for start in range(0, len(term_rows), 20):
        values = ",".join(
            f"({sql_string(chunk_id)},{sql_string(term)},{frequency})"
            for chunk_id, term, frequency in term_rows[start : start + 20]
        )
        statements.append(
            "INSERT INTO wiki_terms (chunk_id,term,frequency) VALUES " + values + ";"
        )

    job_id = "job_bootstrap_" + corpus_sha[:20]
    details = {
        "documents": len(documents),
        "chunks": chunk_count,
        "terms": term_count,
        "corpus_sha256": corpus_sha,
    }
    statements.extend(
        [
            "INSERT INTO jobs "
            "(id,type,state,attempt,idempotency_key,requested_by,progress,created_at,started_at,finished_at) VALUES "
            f"({sql_string(job_id)},{sql_string('bootstrap_inventory')},{sql_string('succeeded')},1,"
            f"{sql_string('bootstrap:' + corpus_sha)},{sql_string('bootstrap')},100,"
            f"{sql_string(imported_at)},{sql_string(imported_at)},{sql_string(imported_at)}) "
            "ON CONFLICT(id) DO UPDATE SET state=excluded.state,progress=excluded.progress,"
            "finished_at=excluded.finished_at;",
            "INSERT INTO job_events "
            "(id,job_id,from_state,to_state,message,details_json,actor,created_at) VALUES "
            f"({sql_string('event_' + corpus_sha[:20])},{sql_string(job_id)},NULL,"
            f"{sql_string('succeeded')},{sql_string('Bootstrap-Quellen indiziert.')},"
            f"{sql_string(json_text(details))},{sql_string('bootstrap')},{sql_string(imported_at)}) "
            "ON CONFLICT(id) DO NOTHING;",
            "INSERT INTO audit_events "
            "(id,actor,action,resource_type,resource_id,details_json,created_at) VALUES "
            f"({sql_string('audit_' + corpus_sha[:20])},{sql_string('bootstrap')},"
            f"{sql_string('bootstrap_import')},{sql_string('wiki')},{sql_string(corpus_sha)},"
            f"{sql_string(json_text(details))},{sql_string(imported_at)}) "
            "ON CONFLICT(id) DO NOTHING;",
            "PRAGMA optimize;",
        ]
    )
    atomic_write_text(
        output_path,
        "\n--> statement-breakpoint\n".join(statements) + "\n",
        immutable=True,
    )
    return chunk_count, term_count


def parse_imported_at(value: str | None) -> str:
    if value:
        parsed = datetime.fromisoformat(value.replace("Z", "+00:00"))
    else:
        parsed = datetime.now(timezone.utc)
    if parsed.tzinfo is None:
        parsed = parsed.replace(tzinfo=timezone.utc)
    return parsed.astimezone(timezone.utc).replace(microsecond=0).isoformat().replace(
        "+00:00", "Z"
    )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--repo", type=Path, required=True)
    parser.add_argument("--imported-at")
    parser.add_argument(
        "--allow-sensitive",
        action="store_true",
        help="Importiert ausdrücklich markierte Dokumente; standardmäßig gesperrt.",
    )
    args = parser.parse_args()
    input_dir = args.input.resolve()
    repo = args.repo.resolve()
    requested_imported_at = parse_imported_at(args.imported_at)

    normalized_dir = repository_path(repo, "sources/normalized/bootstrap")
    manifest_dir = repository_path(repo, "sources/manifests/bootstrap")
    quarantine_dir = repository_path(repo, "sources/quarantine")
    wiki_dir = repository_path(repo, "wiki/sources")
    previous_index, previous_sources = load_previous_sources(
        manifest_dir / "index.json",
        repo,
    )
    previous_by_filename_and_hash = {
        (source.original_filename.casefold(), source.sha256): source
        for source in previous_sources
    }
    previous_quarantine_path = quarantine_dir / "bootstrap-review.json"
    previous_quarantine: dict[str, object] = {}
    if previous_quarantine_path.is_file():
        loaded_quarantine = json.loads(
            previous_quarantine_path.read_text(encoding="utf-8")
        )
        if isinstance(loaded_quarantine, dict):
            previous_quarantine = loaded_quarantine

    paths = sorted(
        [
            path
            for path in input_dir.iterdir()
            if path.is_file()
            and path.suffix.casefold() in {".pdf", ".md", ".markdown", ".json", ".xml"}
        ],
        key=lambda path: path.name.casefold(),
    )
    markdown_paths = [
        path for path in paths if path.suffix.casefold() in {".md", ".markdown"}
    ]
    try:
        link_map, link_origin_map = build_markdown_link_context(
            markdown_paths,
            {path.name.casefold() for path in paths},
        )
    except ValueError as error:
        print(str(error), file=sys.stderr)
        return 1
    quarantine_policy_path = repository_path(
        repo,
        "scripts/bootstrap-quarantine.json",
    )
    manual_quarantine: dict[str, dict[str, object]] = {}
    if quarantine_policy_path.exists():
        policy = json.loads(quarantine_policy_path.read_text(encoding="utf-8"))
        manual_quarantine = {
            str(item["filename"]): item
            for item in policy.get("documents", [])
            if isinstance(item, dict) and item.get("filename")
        }

    candidates: list[SourceDocument] = []
    quarantined: list[dict[str, object]] = []
    errors: list[dict[str, str]] = []
    input_inventory: dict[str, str] = {}

    for path in paths:
        try:
            raw = path.read_bytes()
            digest = sha256_bytes(raw)
            input_inventory[path.name] = digest
            slug = slugify(path.stem)

            if path.suffix.casefold() == ".pdf":
                sections, findings = extract_pdf(path)
                page_count = findings.pop("__page_count__")[0]
                manual_finding = manual_quarantine.get(path.name)
                if (findings or manual_finding) and not args.allow_sensitive:
                    reasons = [
                        {"marker": marker, "pages": pages, "detected_by": "text"}
                        for marker, pages in sorted(findings.items())
                    ]
                    if manual_finding:
                        reasons.extend(manual_finding.get("reasons", []))
                    quarantined.append(
                        {
                            "filename": path.name,
                            "sha256": digest,
                            "size_bytes": path.stat().st_size,
                            "page_count": page_count,
                            "reasons": reasons,
                            "decision": "excluded_from_public_import",
                        }
                    )
                    continue
                title = human_title(path)
                previous_source = previous_by_filename_and_hash.get(
                    (path.name.casefold(), digest)
                )
                raw_canonical_url = link_map.get(path.name.casefold()) or (
                    previous_source.canonical_url if previous_source else None
                )
                canonical_url = normalize_source_url(raw_canonical_url)
                if raw_canonical_url and not canonical_url:
                    raise ValueError("Ungültige kanonische HTTP(S)-URL.")
                document = SourceDocument(
                    input_path=path,
                    slug=slug,
                    title=title,
                    media_type="application/pdf",
                    canonical_url=canonical_url,
                    origin_page_url=link_origin_map.get(path.name.casefold()) or (
                        previous_source.origin_page_url if previous_source else None
                    ),
                    sha256=digest,
                    sections=sections,
                    page_count=page_count,
                    converter_name="pdfplumber",
                    converter_version=getattr(pdfplumber, "__version__", "unknown"),
                )
            elif path.suffix.casefold() in {".md", ".markdown"}:
                markdown = raw.decode("utf-8-sig")
                metadata, body = parse_frontmatter(markdown)
                raw_canonical_url = (
                    metadata.get("canonical_url") or metadata.get("source") or None
                )
                canonical_url = normalize_source_url(raw_canonical_url)
                if raw_canonical_url and not canonical_url:
                    raise ValueError("Ungültige kanonische HTTP(S)-URL.")
                document = SourceDocument(
                    input_path=path,
                    slug=slug,
                    title=metadata.get("title") or human_title(path),
                    media_type="text/markdown",
                    canonical_url=canonical_url,
                    origin_page_url=canonical_url,
                    sha256=digest,
                    sections=split_markdown_sections(body),
                    page_count=None,
                    converter_name="identity-markdown",
                    converter_version="1",
                    declared_source_id=metadata.get("source_id") or None,
                )
            else:
                text = raw.decode("utf-8-sig")
                cleaned = redact_contact_details(clean_extracted_text(text))
                if not cleaned:
                    raise ValueError(f"Kein extrahierbarer Text: {path.name}")
                suffix = path.suffix.casefold()
                document = SourceDocument(
                    input_path=path,
                    slug=slug,
                    title=human_title(path),
                    media_type=(
                        "application/json" if suffix == ".json" else "application/xml"
                    ),
                    canonical_url=link_map.get(path.name.casefold()),
                    origin_page_url=link_origin_map.get(path.name.casefold()),
                    sha256=digest,
                    sections=(Section(heading="Inhalt", text=cleaned),),
                    page_count=None,
                    converter_name="identity-structured-text",
                    converter_version="1",
                )
            document.normalized_sha256 = normalized_document_sha256(document)
            candidates.append(document)
        except Exception as error:  # Keep a complete, auditable inventory.
            errors.append({"filename": path.name, "error": str(error)})

    if errors:
        print(json_text({"errors": errors}, pretty=True), file=sys.stderr)
        return 1
    if not candidates:
        print("Keine öffentlich importierbaren Quellen gefunden.", file=sys.stderr)
        return 1

    deduplication = deduplicate_documents(candidates, previous_sources)
    documents = list(deduplication.documents)
    if deduplication.identity_conflicts:
        print(
            json_text(
                {
                    "error": "Identitätskonflikte verhindern den gesamten Bootstrap-Import.",
                    "conflicts": deduplication.identity_conflicts,
                },
                pretty=True,
            ),
            file=sys.stderr,
        )
        return 1

    current_source_ids = {document.source_id for document in documents}
    missing_previous_source_ids = sorted(
        {source.source_id for source in previous_sources} - current_source_ids
    )
    if missing_previous_source_ids:
        print(
            json_text(
                {
                    "error": (
                        "Bestehende öffentliche Quellen fehlen oder wurden quarantänisiert; "
                        "der Bootstrap-Import bricht vor allen Writes ab."
                    ),
                    "missing_source_ids": missing_previous_source_ids,
                },
                pretty=True,
            ),
            file=sys.stderr,
        )
        return 1
    if not documents:
        print("Keine logische Quelle für den Import übrig.", file=sys.stderr)
        return 1

    corpus_sha = corpus_identity_sha256(documents)
    legacy_corpus_sha = legacy_corpus_sha256(documents)
    previous_corpus_sha = str(previous_index.get("corpus_sha256") or "")
    previous_imported_at = str(previous_index.get("imported_at") or "")
    previous_schema_version = previous_index.get("schema_version", 1)
    previous_corpus_matches = previous_corpus_sha == corpus_sha or (
        previous_schema_version == 1 and previous_corpus_sha == legacy_corpus_sha
    )
    if previous_corpus_matches and previous_imported_at:
        if args.imported_at and requested_imported_at != previous_imported_at:
            print(
                "Der Idempotenzschlüssel wurde bereits mit einem anderen imported_at erfasst.",
                file=sys.stderr,
            )
            return 1
        imported_at = previous_imported_at
    else:
        imported_at = requested_imported_at
    for document in documents:
        if not document.imported_at:
            document.imported_at = imported_at

    previous_quarantine_documents = previous_quarantine.get("documents", [])
    exact_retry_artifacts = all(
        document.run_status == "retry_noop"
        and repository_path(repo, document.normalized_repo_path).is_file()
        and repository_path(repo, document.normalized_repo_path).read_text(
            encoding="utf-8"
        )
        == source_markdown(document, document.imported_at)
        and retry_manifest_matches(document, repo)
        and repository_path(repo, f"wiki/sources/{document.slug}.md").is_file()
        and repository_path(repo, f"wiki/sources/{document.slug}.md").read_text(
            encoding="utf-8"
        )
        == source_markdown(document, document.imported_at)
        for document in documents
    )
    complete_retry_noop = (
        previous_corpus_matches
        and len(documents) == len(previous_sources)
        and exact_retry_artifacts
        and previous_input_inventory(previous_index, previous_quarantine)
        == input_inventory
        and previous_quarantine_documents == quarantined
    )
    if complete_retry_noop:
        print(
            json_text(
                {
                    "status": "retry_noop",
                    "sources": len(documents),
                    "retry_noop": len(documents),
                    "duplicates": len(deduplication.duplicate_files),
                    "quarantined": len(quarantined),
                    "corpus_sha256": corpus_sha,
                    "seed": None,
                },
                pretty=True,
            )
        )
        return 0

    retry_preflight_errors: list[dict[str, str]] = []
    for document in documents:
        normalized_path = repository_path(repo, document.normalized_repo_path)
        repository_path(repo, document.manifest_repo_path)
        repository_path(repo, f"wiki/sources/{document.slug}.md")
        if document.run_status != "retry_noop":
            continue
        expected_markdown = source_markdown(document, document.imported_at)
        if (
            not normalized_path.is_file()
            or normalized_path.read_text(encoding="utf-8") != expected_markdown
        ):
            retry_preflight_errors.append(
                {
                    "source_id": document.source_id,
                    "error": "normalized_retry_artifact_mismatch",
                }
            )
        if not retry_manifest_matches(document, repo):
            retry_preflight_errors.append(
                {
                    "source_id": document.source_id,
                    "error": "retry_manifest_mismatch",
                }
            )
    if retry_preflight_errors:
        print(
            json_text(
                {
                    "error": "Retry-Prüfung fehlgeschlagen; keine Dateien wurden verändert.",
                    "details": retry_preflight_errors,
                },
                pretty=True,
            ),
            file=sys.stderr,
        )
        return 1

    log_path = repository_path(repo, "wiki/log.md")
    existing_log = (
        log_path.read_text(encoding="utf-8") if log_path.exists() else "# Wiki-Log\n"
    )
    log_heading = f"## [{imported_at}] bootstrap-import | TAF/TAP-Quellen"
    log_body = [
        f"- {len(documents)} logische Markdown-/PDF-Quellen normalisiert und indiziert.",
        f"- {len(deduplication.duplicate_files)} Retry-/Dateiduplikat(e) ohne zusätzliche Source-Version.",
        f"- {len(deduplication.content_duplicate_groups)} quellenübergreifende Inhaltsgruppe(n) mit getrennter Provenienz.",
        f"- {len(quarantined)} Dokument(e) quarantänisiert.",
        "- Original-PDFs verbleiben unverändert außerhalb des Repositories.",
        f"- Korpus-SHA-256: `{corpus_sha}`.",
    ]
    try:
        updated_log = append_only_log(existing_log, log_heading, log_body)
    except ValueError as error:
        print(str(error), file=sys.stderr)
        return 1

    for directory in (normalized_dir, manifest_dir, quarantine_dir, wiki_dir):
        directory.mkdir(parents=True, exist_ok=True)
    index_entries: list[dict[str, object]] = []
    file_statuses: list[dict[str, object]] = []
    for document in documents:
        markdown = source_markdown(document, document.imported_at)
        normalized_path = repository_path(repo, document.normalized_repo_path)
        wiki_path = repository_path(repo, f"wiki/sources/{document.slug}.md")
        manifest = (
            document.previous_manifest
            if document.run_status == "retry_noop" and document.previous_manifest
            else build_manifest(document, document.imported_at)
        )
        if document.run_status == "retry_noop":
            if (
                not normalized_path.is_file()
                or normalized_path.read_text(encoding="utf-8") != markdown
            ):
                raise ValueError(
                    f"Retry-Artefakt stimmt nicht bytegenau überein: {normalized_path}"
                )
            if not retry_manifest_matches(document, repo):
                raise ValueError(
                    f"Retry-Manifest ist nicht byte- und identitätsgleich: "
                    f"{document.manifest_repo_path}"
                )
        else:
            atomic_write_text(normalized_path, markdown, immutable=True)
            atomic_write_text(
                repository_path(repo, document.manifest_repo_path),
                json_text(manifest, pretty=True) + "\n",
                immutable=True,
            )
        atomic_write_text(wiki_path, markdown)
        index_entries.append(manifest)
        file_statuses.append(
            {
                "filename": document.input_path.name,
                "status": document.run_status,
                "source_id": document.source_id,
                "source_version_id": document.version_id,
            }
        )
    file_statuses.extend(deduplication.duplicate_files)
    file_statuses.extend(quarantined)

    import_report = {
        "schema_version": 2,
        "imported_at": imported_at,
        "input_directory": "../input",
        "corpus_sha256": corpus_sha,
        "source_count": len(documents),
        "imported_count": sum(item.import_status == "imported" for item in documents),
        "new_version_count": sum(
            item.import_status == "new_version" for item in documents
        ),
        "unchanged_count": sum(item.run_status == "retry_noop" for item in documents),
        "duplicate_count": len(deduplication.duplicate_files),
        "quarantined_count": len(quarantined),
        "content_duplicate_groups": deduplication.content_duplicate_groups,
        "files": sorted(
            file_statuses,
            key=lambda item: str(item.get("filename", "")).casefold(),
        ),
        "sources": index_entries,
    }
    atomic_write_text(
        repository_path(repo, "sources/manifests/bootstrap/index.json"),
        json_text(import_report, pretty=True) + "\n",
    )
    atomic_write_text(
        repository_path(repo, "sources/quarantine/bootstrap-review.json"),
        json_text(
            {
                "schema_version": 2,
                "reviewed_at": imported_at,
                "policy": "sensitive documents and identity conflicts remain outside the public corpus",
                "documents": quarantined,
            },
            pretty=True,
        )
        + "\n",
    )

    wiki_index = [
        "---",
        "id: system:wiki-index",
        "title: TrainWiki-Index",
        "type: index",
        "status: approved",
        f"updated_at: {imported_at}",
        "---",
        "",
        "# TrainWiki-Index",
        "",
        f"Die öffentliche Wissensbasis enthält {len(documents)} geprüfte Bootstrap-Quellen.",
        "",
        "## Quellseiten",
        "",
    ]
    wiki_index.extend(
        f"- [{document.title}](sources/{document.slug}.md)"
        for document in documents
    )
    if quarantined:
        wiki_index.extend(
            [
                "",
                "## Zur Prüfung zurückgehalten",
                "",
                f"{len(quarantined)} Dokument(e) wurden nicht öffentlich übernommen.",
            ]
        )
    atomic_write_text(
        repository_path(repo, "wiki/index.md"),
        "\n".join(wiki_index).rstrip() + "\n",
    )

    atomic_write_text(log_path, updated_log)

    seed_path = repository_path(
        repo,
        f"outputs/bootstrap/{corpus_sha}/seed.sql",
    )
    chunk_count, term_count = write_seed(
        seed_path,
        documents,
        imported_at,
        corpus_sha,
    )
    print(
        json_text(
            {
                "sources": len(documents),
                "retry_noop": sum(
                    document.run_status == "retry_noop" for document in documents
                ),
                "duplicates": len(deduplication.duplicate_files),
                "content_duplicate_groups": len(
                    deduplication.content_duplicate_groups
                ),
                "quarantined": len(quarantined),
                "chunks": chunk_count,
                "terms": term_count,
                "corpus_sha256": corpus_sha,
                "seed": seed_path.relative_to(repo).as_posix(),
            },
            pretty=True,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
