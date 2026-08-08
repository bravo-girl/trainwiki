#!/usr/bin/env python3
"""Capture available YouTube captions with stable timestamp locators.

The script downloads captions only, never audio or video. Outputs belong in
the ignored ``work/`` tree until license and provenance review is complete.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
from urllib.parse import parse_qs, urlparse

from youtube_transcript_api import YouTubeTranscriptApi


def video_id(value: str) -> str:
    candidate = value.strip()
    if len(candidate) == 11 and all(char.isalnum() or char in "-_" for char in candidate):
        return candidate
    parsed = urlparse(candidate)
    if parsed.hostname in {"youtu.be", "www.youtu.be"}:
        candidate = parsed.path.strip("/").split("/", 1)[0]
    elif parsed.hostname and parsed.hostname.endswith("youtube.com"):
        candidate = parse_qs(parsed.query).get("v", [""])[0]
    if len(candidate) != 11 or not all(char.isalnum() or char in "-_" for char in candidate):
        raise ValueError(f"Ungültige YouTube-ID oder URL: {value}")
    return candidate


def timestamp(seconds: float) -> str:
    total = max(0, int(seconds))
    hours, remainder = divmod(total, 3600)
    minutes, secs = divmod(remainder, 60)
    return f"{hours:02d}:{minutes:02d}:{secs:02d}"


def markdown_capture(payload: dict[str, object], digest: str) -> str:
    identifier = str(payload["video_id"])
    lines = [
        f"# YouTube transcript {identifier}",
        "",
        f"- URL: https://www.youtube.com/watch?v={identifier}",
        f"- Language: {payload['language_code']}",
        f"- Generated captions: {str(payload['is_generated']).lower()}",
        f"- Transcript SHA-256: `{digest}`",
        "",
        "## Timestamped transcript",
        "",
    ]
    snippets = payload["snippets"]
    if not isinstance(snippets, list):
        raise TypeError("snippets must be a list")
    lines.extend(
        f"[{timestamp(float(item['start']))}] {str(item['text']).replace(chr(10), ' ').strip()}"
        for item in snippets
        if isinstance(item, dict)
    )
    return "\n".join(lines) + "\n"


def cached_capture(identifier: str, output: Path) -> dict[str, object] | None:
    path = output / f"{identifier}.json"
    if not path.is_file():
        return None
    try:
        payload = json.loads(path.read_text(encoding="utf-8"))
        if not isinstance(payload, dict):
            return None
        expected = payload.pop("sha256")
        canonical = json.dumps(
            payload, ensure_ascii=False, sort_keys=True, separators=(",", ":")
        )
        actual = hashlib.sha256(canonical.encode("utf-8")).hexdigest()
        if payload.get("video_id") != identifier or expected != actual:
            return None
        markdown_path = output / f"{identifier}.md"
        expected_markdown = markdown_capture(payload, actual)
        if (
            not markdown_path.is_file()
            or markdown_path.read_text(encoding="utf-8") != expected_markdown
        ):
            markdown_path.write_text(
                expected_markdown,
                encoding="utf-8",
                newline="\n",
            )
        return {
            "video_id": identifier,
            "language_code": payload["language_code"],
            "is_generated": payload["is_generated"],
            "snippets": len(payload["snippets"]),
            "sha256": actual,
            "cached": True,
        }
    except (KeyError, TypeError, ValueError, json.JSONDecodeError):
        return None


def capture(
    value: str,
    output: Path,
    languages: list[str],
    refresh: bool = False,
) -> dict[str, object]:
    identifier = video_id(value)
    if not refresh and (cached := cached_capture(identifier, output)):
        return cached
    transcript = YouTubeTranscriptApi().fetch(identifier, languages=languages)
    snippets = [
        {
            "text": snippet.text,
            "start": snippet.start,
            "duration": snippet.duration,
        }
        for snippet in transcript
    ]
    payload = {
        "video_id": identifier,
        "url": f"https://www.youtube.com/watch?v={identifier}",
        "language": transcript.language,
        "language_code": transcript.language_code,
        "is_generated": transcript.is_generated,
        "snippets": snippets,
    }
    canonical = json.dumps(payload, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    digest = hashlib.sha256(canonical.encode("utf-8")).hexdigest()
    payload["sha256"] = digest

    output.mkdir(parents=True, exist_ok=True)
    (output / f"{identifier}.json").write_text(
        json.dumps(payload, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    (output / f"{identifier}.md").write_text(
        markdown_capture(payload, digest),
        encoding="utf-8",
        newline="\n",
    )
    return {
        "video_id": identifier,
        "language_code": transcript.language_code,
        "is_generated": transcript.is_generated,
        "snippets": len(snippets),
        "sha256": digest,
        "cached": False,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("videos", nargs="+")
    parser.add_argument("--output", type=Path, default=Path("work/research/youtube"))
    parser.add_argument("--languages", default="de,en")
    parser.add_argument(
        "--refresh",
        action="store_true",
        help="Captions erneut abrufen; vorhandene, hash-geprüfte Captures werden sonst lokal verwendet.",
    )
    args = parser.parse_args()
    languages = [item.strip() for item in args.languages.split(",") if item.strip()]
    results = [
        capture(value, args.output, languages, refresh=args.refresh)
        for value in args.videos
    ]
    print(json.dumps(results, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
