#!/usr/bin/env python3
"""Capture public web sources once and refresh them with conditional requests."""

from __future__ import annotations

import argparse
import hashlib
import ipaddress
import json
import socket
import ssl
from datetime import datetime, timezone
from pathlib import Path
from urllib.error import HTTPError
from urllib.parse import urlparse
from urllib.request import HTTPRedirectHandler, HTTPSHandler, Request, build_opener

import certifi

MAX_BYTES = 5 * 1024 * 1024
USER_AGENT = "TrainWiki-Research-Capture/1.0 (+https://github.com/bravo-girl/trainwiki)"


def validate_public_url(value: str) -> str:
    parsed = urlparse(value)
    if (
        parsed.scheme not in {"http", "https"}
        or not parsed.hostname
        or parsed.username
        or parsed.password
    ):
        raise ValueError(f"Nur öffentliche HTTP(S)-URLs sind erlaubt: {value}")

    port = parsed.port or (443 if parsed.scheme == "https" else 80)
    addresses = {
        item[4][0]
        for item in socket.getaddrinfo(parsed.hostname, port, type=socket.SOCK_STREAM)
    }
    if not addresses or any(not ipaddress.ip_address(address).is_global for address in addresses):
        raise ValueError(f"Private oder nicht öffentliche Zieladresse abgelehnt: {value}")
    return value


class PublicRedirectHandler(HTTPRedirectHandler):
    def __init__(self) -> None:
        super().__init__()
        self.redirects = 0

    def redirect_request(self, request, file_pointer, code, message, headers, new_url):
        self.redirects += 1
        if self.redirects > 5:
            raise HTTPError(new_url, code, "Zu viele Redirects", headers, file_pointer)
        validate_public_url(new_url)
        return super().redirect_request(
            request, file_pointer, code, message, headers, new_url
        )


def paths_for(url: str, output: Path) -> tuple[Path, Path]:
    identifier = hashlib.sha256(url.encode("utf-8")).hexdigest()[:16]
    return output / f"{identifier}.body", output / f"{identifier}.json"


def read_manifest(path: Path) -> dict[str, object] | None:
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
        return value if isinstance(value, dict) else None
    except (OSError, json.JSONDecodeError):
        return None


def verified_cache(
    url: str,
    body_path: Path,
    manifest: dict[str, object] | None,
) -> dict[str, object] | None:
    if not manifest or manifest.get("url") != url or not body_path.is_file():
        return None
    digest = hashlib.sha256(body_path.read_bytes()).hexdigest()
    if digest != manifest.get("sha256"):
        return None
    return {
        "url": url,
        "final_url": manifest.get("final_url"),
        "sha256": digest,
        "bytes": body_path.stat().st_size,
        "status": "cached",
    }


def capture(url: str, output: Path, refresh: bool = False) -> dict[str, object]:
    validate_public_url(url)
    output.mkdir(parents=True, exist_ok=True)
    body_path, manifest_path = paths_for(url, output)
    manifest = read_manifest(manifest_path)
    cached = verified_cache(url, body_path, manifest)
    if cached and not refresh:
        return cached

    headers = {"Accept": "text/html,application/xhtml+xml;q=0.9,*/*;q=0.5", "User-Agent": USER_AGENT}
    if cached and manifest:
        if etag := manifest.get("etag"):
            headers["If-None-Match"] = str(etag)
        if last_modified := manifest.get("last_modified"):
            headers["If-Modified-Since"] = str(last_modified)

    request = Request(url, headers=headers)
    tls_context = ssl.create_default_context(cafile=certifi.where())
    opener = build_opener(PublicRedirectHandler(), HTTPSHandler(context=tls_context))
    try:
        response = opener.open(request, timeout=30)
    except HTTPError as error:
        if error.code == 304 and cached:
            return {**cached, "status": "not_modified"}
        raise

    with response:
        final_url = response.geturl()
        validate_public_url(final_url)
        body = response.read(MAX_BYTES + 1)
        if len(body) > MAX_BYTES:
            raise ValueError(f"Quelle überschreitet {MAX_BYTES} Bytes: {url}")
        digest = hashlib.sha256(body).hexdigest()
        record = {
            "url": url,
            "final_url": final_url,
            "captured_at": datetime.now(timezone.utc).isoformat(),
            "status_code": response.status,
            "content_type": response.headers.get("Content-Type"),
            "etag": response.headers.get("ETag"),
            "last_modified": response.headers.get("Last-Modified"),
            "bytes": len(body),
            "sha256": digest,
            "body": body_path.name,
        }

    body_path.write_bytes(body)
    manifest_path.write_text(
        json.dumps(record, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    return {
        "url": url,
        "final_url": final_url,
        "sha256": digest,
        "bytes": len(body),
        "status": "downloaded",
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("urls", nargs="+")
    parser.add_argument("--output", type=Path, default=Path("work/research/web"))
    parser.add_argument(
        "--refresh",
        action="store_true",
        help="Vorhandene Captures per ETag/Last-Modified auf Änderungen prüfen.",
    )
    args = parser.parse_args()
    results = []
    failed = False
    for url in args.urls:
        try:
            results.append(capture(url, args.output, refresh=args.refresh))
        except (OSError, ValueError) as error:
            failed = True
            results.append({"url": url, "status": "error", "error": str(error)})
    print(json.dumps(results, ensure_ascii=False, indent=2))
    return int(failed)


if __name__ == "__main__":
    raise SystemExit(main())
