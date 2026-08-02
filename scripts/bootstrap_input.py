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
from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import unquote, urlparse

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


@dataclass(frozen=True)
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


def sha256_bytes(value: bytes) -> str:
    return hashlib.sha256(value).hexdigest()


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


def source_markdown(document: SourceDocument, imported_at: str) -> str:
    source_id = "src_" + hashlib.sha256(document.slug.encode()).hexdigest()[:20]
    version_id = "sv_" + document.sha256[:24]
    header = [
        "---",
        f"title: {yaml_string(document.title)}",
        f"source_id: {yaml_string(source_id)}",
        f"source_version_id: {yaml_string(version_id)}",
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
    source_id = "src_" + hashlib.sha256(document.slug.encode()).hexdigest()[:20]
    version_id = "sv_" + document.sha256[:24]
    normalized_path = f"sources/normalized/bootstrap/{document.slug}.md"
    return {
        "schema_version": 1,
        "source_id": source_id,
        "source_version_id": version_id,
        "title": document.title,
        "original_filename": document.input_path.name,
        "source_sha256": document.sha256,
        "size_bytes": document.input_path.stat().st_size,
        "media_type": document.media_type,
        "language": "de",
        "license": "unknown",
        "visibility": "public",
        "canonical_url": document.canonical_url,
        "origin_page_url": document.origin_page_url,
        "page_count": document.page_count,
        "normalized_repo_path": normalized_path,
        "converter": {
            "name": document.converter_name,
            "version": document.converter_version,
        },
        "imported_at": imported_at,
        "raw_binary_committed": False,
        "contact_redaction": "email_phone_identified_contact_names_and_contact_address",
    }


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

    for document in documents:
        manifest = build_manifest(document, imported_at)
        source_id = str(manifest["source_id"])
        version_id = str(manifest["source_version_id"])
        normalized_path = str(manifest["normalized_repo_path"])
        wiki_path = f"wiki/sources/{document.slug}.md"
        markdown = source_markdown(document, imported_at)
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
            f"{sql_string(imported_at)},NULL) "
            "ON CONFLICT(id) DO UPDATE SET title=excluded.title,canonical_url=excluded.canonical_url,"
            "language=excluded.language,license=excluded.license,visibility=excluded.visibility,status=excluded.status;"
        )
        statements.append(
            "INSERT INTO source_versions "
            "(id,source_id,sha256,size_bytes,media_type,original_filename,normalized_repo_path,"
            "converter_name,converter_version,fetch_time,created_at,manifest_json) VALUES "
            f"({sql_string(version_id)},{sql_string(source_id)},{sql_string(document.sha256)},"
            f"{document.input_path.stat().st_size},{sql_string(document.media_type)},"
            f"{sql_string(document.input_path.name)},{sql_string(normalized_path)},"
            f"{sql_string(document.converter_name)},{sql_string(document.converter_version)},"
            f"{sql_string(imported_at)},{sql_string(imported_at)},{sql_string(json_text(manifest))}) "
            "ON CONFLICT(id) DO UPDATE SET sha256=excluded.sha256,size_bytes=excluded.size_bytes,"
            "media_type=excluded.media_type,original_filename=excluded.original_filename,"
            "normalized_repo_path=excluded.normalized_repo_path,converter_name=excluded.converter_name,"
            "converter_version=excluded.converter_version,fetch_time=excluded.fetch_time,"
            "manifest_json=excluded.manifest_json;"
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
            f"{sql_string(imported_at)},{sql_string(json_text(page_metadata))}) "
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

    for start in range(0, len(term_rows), 100):
        values = ",".join(
            f"({sql_string(chunk_id)},{sql_string(term)},{frequency})"
            for chunk_id, term, frequency in term_rows[start : start + 100]
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
    output_path.write_text(
        "\n--> statement-breakpoint\n".join(statements) + "\n",
        encoding="utf-8",
        newline="\n",
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
    imported_at = parse_imported_at(args.imported_at)

    paths = sorted(
        [
            path
            for path in input_dir.iterdir()
            if path.is_file() and path.suffix.casefold() in {".pdf", ".md", ".markdown"}
        ],
        key=lambda path: path.name.casefold(),
    )
    markdown_paths = [path for path in paths if path.suffix.casefold() != ".pdf"]
    root_markdown = markdown_paths[0].read_text(encoding="utf-8-sig") if markdown_paths else ""
    root_metadata, _ = parse_frontmatter(root_markdown)
    origin_page_url = root_metadata.get("source") or None
    link_map = extract_link_map(root_markdown)
    quarantine_policy_path = repo / "scripts" / "bootstrap-quarantine.json"
    manual_quarantine: dict[str, dict[str, object]] = {}
    if quarantine_policy_path.exists():
        policy = json.loads(quarantine_policy_path.read_text(encoding="utf-8"))
        manual_quarantine = {
            str(item["filename"]): item
            for item in policy.get("documents", [])
            if isinstance(item, dict) and item.get("filename")
        }

    documents: list[SourceDocument] = []
    quarantined: list[dict[str, object]] = []
    errors: list[dict[str, str]] = []
    used_slugs: set[str] = set()

    for path in paths:
        try:
            raw = path.read_bytes()
            digest = sha256_bytes(raw)
            slug = slugify(path.stem)
            base_slug = slug
            counter = 2
            while slug in used_slugs:
                slug = f"{base_slug}-{counter}"
                counter += 1
            used_slugs.add(slug)

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
                canonical_url = link_map.get(path.name.casefold())
                document = SourceDocument(
                    input_path=path,
                    slug=slug,
                    title=title,
                    media_type="application/pdf",
                    canonical_url=canonical_url,
                    origin_page_url=origin_page_url,
                    sha256=digest,
                    sections=sections,
                    page_count=page_count,
                    converter_name="pdfplumber",
                    converter_version=getattr(pdfplumber, "__version__", "unknown"),
                )
            else:
                markdown = raw.decode("utf-8-sig")
                metadata, body = parse_frontmatter(markdown)
                document = SourceDocument(
                    input_path=path,
                    slug=slug,
                    title=metadata.get("title") or human_title(path),
                    media_type="text/markdown",
                    canonical_url=metadata.get("source") or None,
                    origin_page_url=metadata.get("source") or None,
                    sha256=digest,
                    sections=split_markdown_sections(body),
                    page_count=None,
                    converter_name="identity-markdown",
                    converter_version="1",
                )
            documents.append(document)
        except Exception as error:  # Keep a complete, auditable inventory.
            errors.append({"filename": path.name, "error": str(error)})

    if errors:
        print(json_text({"errors": errors}, pretty=True), file=sys.stderr)
        return 1
    if not documents:
        print("Keine öffentlich importierbaren Quellen gefunden.", file=sys.stderr)
        return 1

    normalized_dir = repo / "sources" / "normalized" / "bootstrap"
    manifest_dir = repo / "sources" / "manifests" / "bootstrap"
    quarantine_dir = repo / "sources" / "quarantine"
    wiki_dir = repo / "wiki" / "sources"
    for directory in (normalized_dir, manifest_dir, quarantine_dir, wiki_dir):
        directory.mkdir(parents=True, exist_ok=True)

    # Remove only files owned by a previous bootstrap run. This prevents a
    # newly quarantined source from surviving in Git after policy changes.
    previous_index_path = manifest_dir / "index.json"
    if previous_index_path.exists():
        previous_index = json.loads(previous_index_path.read_text(encoding="utf-8"))
        for item in previous_index.get("sources", []):
            if not isinstance(item, dict):
                continue
            normalized_repo_path = item.get("normalized_repo_path")
            if not isinstance(normalized_repo_path, str):
                continue
            previous_slug = Path(normalized_repo_path).stem
            for generated_path in (
                normalized_dir / f"{previous_slug}.md",
                manifest_dir / f"{previous_slug}.json",
                wiki_dir / f"{previous_slug}.md",
            ):
                if generated_path.is_file():
                    generated_path.unlink()

    corpus_sha = sha256_bytes(
        "\n".join(sorted(document.sha256 for document in documents)).encode("utf-8")
    )
    index_entries: list[dict[str, object]] = []
    for document in documents:
        markdown = source_markdown(document, imported_at)
        normalized_path = normalized_dir / f"{document.slug}.md"
        wiki_path = wiki_dir / f"{document.slug}.md"
        manifest = build_manifest(document, imported_at)
        normalized_path.write_text(markdown, encoding="utf-8", newline="\n")
        wiki_path.write_text(markdown, encoding="utf-8", newline="\n")
        (manifest_dir / f"{document.slug}.json").write_text(
            json_text(manifest, pretty=True) + "\n", encoding="utf-8", newline="\n"
        )
        index_entries.append(manifest)

    import_report = {
        "schema_version": 1,
        "imported_at": imported_at,
        "input_directory": "../input",
        "corpus_sha256": corpus_sha,
        "imported_count": len(documents),
        "quarantined_count": len(quarantined),
        "sources": index_entries,
    }
    (manifest_dir / "index.json").write_text(
        json_text(import_report, pretty=True) + "\n", encoding="utf-8", newline="\n"
    )
    (quarantine_dir / "bootstrap-review.json").write_text(
        json_text(
            {
                "schema_version": 1,
                "reviewed_at": imported_at,
                "policy": "explicit internal/confidential labels are excluded from the public corpus",
                "documents": quarantined,
            },
            pretty=True,
        )
        + "\n",
        encoding="utf-8",
        newline="\n",
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
                f"{len(quarantined)} Dokument(e) mit expliziter interner oder vertraulicher Kennzeichnung wurden nicht öffentlich übernommen.",
            ]
        )
    (repo / "wiki" / "index.md").write_text(
        "\n".join(wiki_index).rstrip() + "\n", encoding="utf-8", newline="\n"
    )

    log_path = repo / "wiki" / "log.md"
    log = log_path.read_text(encoding="utf-8").rstrip()
    log_heading = f"## [{imported_at}] bootstrap-import | TAF/TAP-Quellen"
    if log_heading in log:
        log = log.split(log_heading, 1)[0].rstrip()
    log_entry = [
        "",
        "",
        log_heading,
        "",
        f"- {len(documents)} Markdown-/PDF-Quellen normalisiert und indiziert.",
        f"- {len(quarantined)} gekennzeichnete Dokument(e) aus dem öffentlichen Import quarantänisiert.",
        "- Original-PDFs verbleiben unverändert außerhalb des Repositories.",
        f"- Korpus-SHA-256: `{corpus_sha}`.",
    ]
    log_path.write_text(log + "\n".join(log_entry) + "\n", encoding="utf-8", newline="\n")

    chunk_count, term_count = write_seed(
        repo / "drizzle" / "0002_bootstrap_taf_tap.sql",
        documents,
        imported_at,
        corpus_sha,
    )
    print(
        json_text(
            {
                "imported": len(documents),
                "quarantined": len(quarantined),
                "chunks": chunk_count,
                "terms": term_count,
                "corpus_sha256": corpus_sha,
            },
            pretty=True,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
