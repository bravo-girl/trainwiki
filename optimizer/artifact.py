"""Portable, secret-free DSPy artifact generation.

The artifact is intentionally plain JSON.  The TypeScript runtime consumes the
same instructions, field contracts, demos, and retrieval configuration without
embedding Python, pickles, provider credentials, or DSPy implementation state.
"""

from __future__ import annotations

import hashlib
import json
import re
from pathlib import Path
from typing import Any, Mapping

from .dataset import (
    DEFAULT_DATASET_DIR,
    SPLITS,
    coerce_dspy_example,
    load_manifest,
    load_split,
)
from .signatures import SIGNATURES, portable_signature_spec


PACKAGE_ROOT = Path(__file__).resolve().parent
DEFAULT_ARTIFACT_PATH = PACKAGE_ROOT / "artifacts" / "trainwiki-taf-tap-baseline-v1.json"
ARTIFACT_ID = "trainwiki-taf-tap-baseline-v1"
ARTIFACT_VERSION = "1.0.0"
PROGRAM_VERSION = "taf-tap-program-v1"
MAX_ARTIFACT_BYTES = 2_000_000
MAX_PROGRAM_DEMOS = 64
TASK_KEYS = {
    "query_plan": "queryPlan",
    "rank_evidence": "rankEvidence",
    "grounded_answer": "groundedAnswer",
    "extract_learning_candidate": "extractLearningCandidate",
}


RETRIEVAL_CONFIG: dict[str, Any] = {
    "algorithm": "deterministic-lexical-v1",
    "maxQueryTerms": 12,
    "maxCandidates": 24,
    "maxEvidence": 6,
    "minimumScore": 0.01,
    "weights": {
        "exactPhrase": 4.0,
        "title": 3.0,
        "heading": 2.0,
        "body": 1.0,
        "sourceRecency": 0.0,
    },
    "aliasExpansion": {
        "TAF": ["TAF TSI", "Telematics Applications for Freight Services", "Güterverkehr"],
        "TAP": ["TAP TSI", "Telematics Applications for Passenger Services", "Personenverkehr"],
        "CI": ["Common Interface"],
        "CC": ["Company Code", "RICS-Code"],
        "EVU": ["Eisenbahnverkehrsunternehmen", "RU"],
        "EIU": ["Eisenbahninfrastrukturunternehmen", "IM"],
        "PLC": ["Primary Location Code", "Primary Location"],
        "SLC": ["Subsidiary Location Code", "Subsidiary Location"],
        "PRID": ["PathRequest", "Path Request Identifier"],
        "PAID": ["Path", "Path Identifier"],
        "TRID": ["ReferenceTrain", "Train Identifier"],
        "TCM": ["Train Composition Message"],
        "PTCM": ["Passenger Train Composition Message"],
    },
}


QUALITY_GATES: dict[str, Any] = {
    "retrieval": {
        "metric": "recall_at_6",
        "minimum": 0.90,
    },
    "grounding": {
        "citationCoverageMinimum": 1.0,
        "invalidReferenceRateMaximum": 0.0,
        "abstainWhenUnsupported": True,
    },
    "learning": {
        "requiresVerifiedEvidence": True,
        "publishesAutomatically": False,
    },
}


SECRET_KEY_FRAGMENTS = (
    "api_key",
    "apikey",
    "authorization",
    "bearer",
    "credential",
    "password",
    "secret",
    "token",
)


def _plain(value: Any) -> Any:
    if hasattr(value, "model_dump"):
        return _plain(value.model_dump())
    if isinstance(value, Mapping):
        return {str(key): _plain(item) for key, item in value.items()}
    if isinstance(value, (list, tuple)):
        return [_plain(item) for item in value]
    if value is None or isinstance(value, (str, int, float, bool)):
        return value
    return str(value)


def canonical_json_bytes(value: object) -> bytes:
    return json.dumps(
        _plain(value), ensure_ascii=False, sort_keys=True, separators=(",", ":")
    ).encode("utf-8")


def sha256_digest(value: object) -> str:
    return "sha256:" + hashlib.sha256(canonical_json_bytes(value)).hexdigest()


def dataset_digest(dataset_dir: Path = DEFAULT_DATASET_DIR) -> str:
    snapshot = {
        "manifest": load_manifest(dataset_dir),
        "splits": {
            split: [
                {
                    "id": item.id,
                    "task": item.task,
                    "inputs": item.inputs,
                    "expected": item.expected,
                    "metadata": item.metadata,
                }
                for item in load_split(split, dataset_dir)
            ]
            for split in SPLITS
        },
    }
    return sha256_digest(snapshot)


def _optimized_program_payload(task: str, program: object) -> dict[str, Any]:
    predictors = list(program.named_predictors())  # type: ignore[attr-defined]
    if len(predictors) != 1:
        raise ValueError(f"{task} must contain exactly one DSPy predictor")
    _, predictor = predictors[0]
    spec = portable_signature_spec(task)
    spec["instructions"] = str(predictor.signature.instructions)
    demos: list[dict[str, Any]] = []
    input_names = {item["name"] for item in spec["inputFields"]}
    output_names = {item["name"] for item in spec["outputFields"]}
    for demo in predictor.demos:
        values = _plain(demo.toDict() if hasattr(demo, "toDict") else demo)
        if not isinstance(values, dict):
            continue
        demos.append(
            {
                "inputs": {name: values[name] for name in input_names if name in values},
                "outputs": {name: values[name] for name in output_names if name in values},
            }
        )
    spec["demos"] = demos
    spec["task"] = task
    return spec


def _baseline_program_payload(task: str, dataset_dir: Path) -> dict[str, Any]:
    spec = portable_signature_spec(task)
    spec["task"] = task
    spec["demos"] = [
        {"inputs": record.inputs, "outputs": record.expected}
        for record in load_split("train", dataset_dir, task=task)
    ]
    return spec


def assert_secret_free(value: object, *, location: str = "artifact") -> None:
    """Reject credential-like keys and provider-token prefixes recursively."""

    if isinstance(value, Mapping):
        for raw_key, child in value.items():
            key = str(raw_key).casefold().replace("-", "_")
            if any(fragment in key for fragment in SECRET_KEY_FRAGMENTS):
                raise ValueError(f"{location}: secret-like key is forbidden: {raw_key}")
            assert_secret_free(child, location=f"{location}.{raw_key}")
    elif isinstance(value, (list, tuple)):
        for index, child in enumerate(value):
            assert_secret_free(child, location=f"{location}[{index}]")
    elif isinstance(value, str) and (value.startswith("gsk_") or value.startswith("Bearer ")):
        raise ValueError(f"{location}: secret-like value is forbidden")


def build_artifact(
    *,
    dataset_dir: Path = DEFAULT_DATASET_DIR,
    optimized_programs: Mapping[str, object] | None = None,
    optimizer_name: str = "none",
    artifact_version: str = ARTIFACT_VERSION,
) -> dict[str, Any]:
    manifest = load_manifest(dataset_dir)
    optimized_programs = optimized_programs or {}
    unknown_tasks = set(optimized_programs) - set(SIGNATURES)
    if unknown_tasks:
        raise ValueError(f"Unknown optimized program tasks: {sorted(unknown_tasks)}")

    programs: dict[str, Any] = {}
    for task in SIGNATURES:
        payload = (
            _optimized_program_payload(task, optimized_programs[task])
            if task in optimized_programs
            else _baseline_program_payload(task, dataset_dir)
        )
        programs[TASK_KEYS[task]] = payload

    program_digest = sha256_digest(programs)
    program_version = (
        PROGRAM_VERSION
        if not optimized_programs
        else f"{PROGRAM_VERSION}-{program_digest.removeprefix('sha256:')[:12]}"
    )

    artifact: dict[str, Any] = {
        "schemaVersion": 1,
        "artifactId": ARTIFACT_ID,
        "artifactVersion": artifact_version,
        "programVersion": program_version,
        "createdAt": manifest["releasedAt"],
        "mode": "dspy-optimized" if optimized_programs else "deterministic-baseline",
        "runtime": {
            "provider": "groq",
            "model": "openai/gpt-oss-120b",
            "dspyModel": "groq/openai/gpt-oss-120b",
            "dspyVersion": "3.2.1",
        },
        "corpus": {
            "datasetVersion": manifest["datasetVersion"],
            **manifest["corpus"],
            "sourceSnapshot": manifest["sourceSnapshot"],
        },
        "retrieval": RETRIEVAL_CONFIG,
        "programs": programs,
        "qualityGates": QUALITY_GATES,
        "build": {
            "datasetDigest": dataset_digest(dataset_dir),
            "configDigest": sha256_digest(
                {
                    "programVersion": program_version,
                    "retrieval": RETRIEVAL_CONFIG,
                    "qualityGates": QUALITY_GATES,
                }
            ),
            "programDigest": program_digest,
            "optimizer": optimizer_name,
            "networkUsed": bool(optimized_programs),
            "randomSeed": 0,
        },
    }
    assert_secret_free(artifact)
    return artifact


def serialize_artifact(artifact: Mapping[str, Any]) -> str:
    assert_secret_free(artifact)
    return json.dumps(artifact, ensure_ascii=False, sort_keys=True, indent=2) + "\n"


def write_artifact(artifact: Mapping[str, Any], output_path: Path) -> None:
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(serialize_artifact(artifact), encoding="utf-8", newline="\n")


def _require_exact_keys(
    value: object, expected: set[str], *, location: str
) -> Mapping[str, Any]:
    if not isinstance(value, Mapping):
        raise ValueError(f"{location}: expected an object")
    if set(value) != expected:
        raise ValueError(f"{location}: fields do not match the portable artifact schema")
    return value


def validate_portable_artifact(
    artifact: object, *, dataset_dir: Path = DEFAULT_DATASET_DIR
) -> dict[str, Any]:
    """Strictly validate a portable artifact before it becomes executable state."""

    assert_secret_free(artifact)
    baseline = build_artifact(dataset_dir=dataset_dir)
    artifact_map = _require_exact_keys(
        artifact, set(baseline), location="artifact"
    )

    for stable_key in (
        "schemaVersion",
        "artifactId",
        "createdAt",
        "runtime",
        "corpus",
        "retrieval",
        "qualityGates",
    ):
        if artifact_map[stable_key] != baseline[stable_key]:
            raise ValueError(f"artifact.{stable_key}: unsupported value")

    artifact_version = artifact_map["artifactVersion"]
    if not isinstance(artifact_version, str) or not re.fullmatch(
        r"\d+\.\d+\.\d+(?:-[a-z0-9.-]+)?", artifact_version
    ):
        raise ValueError("artifact.artifactVersion: invalid version")
    mode = artifact_map["mode"]
    if mode not in {"deterministic-baseline", "dspy-optimized"}:
        raise ValueError("artifact.mode: unsupported value")

    baseline_programs = baseline["programs"]
    programs = _require_exact_keys(
        artifact_map["programs"], set(baseline_programs), location="artifact.programs"
    )
    for task, key in TASK_KEYS.items():
        expected_program = baseline_programs[key]
        program = _require_exact_keys(
            programs[key], set(expected_program), location=f"artifact.programs.{key}"
        )
        for contract_key in (
            "task",
            "signatureName",
            "inputFields",
            "outputFields",
            "inputSchema",
            "outputSchema",
        ):
            if program[contract_key] != expected_program[contract_key]:
                raise ValueError(
                    f"artifact.programs.{key}.{contract_key}: signature contract mismatch"
                )
        instructions = program["instructions"]
        if not isinstance(instructions, str) or not 1 <= len(instructions) <= 20_000:
            raise ValueError(f"artifact.programs.{key}.instructions: invalid text")
        demos = program["demos"]
        if not isinstance(demos, list) or len(demos) > MAX_PROGRAM_DEMOS:
            raise ValueError(f"artifact.programs.{key}.demos: invalid demo list")
        for index, demo_value in enumerate(demos):
            demo = _require_exact_keys(
                demo_value,
                {"inputs", "outputs"},
                location=f"artifact.programs.{key}.demos[{index}]",
            )
            if not isinstance(demo["inputs"], Mapping) or not isinstance(
                demo["outputs"], Mapping
            ):
                raise ValueError(f"artifact.programs.{key}.demos[{index}]: invalid fields")
            coerce_dspy_example(
                task,
                demo["inputs"],
                demo["outputs"],
                source=f"artifact.programs.{key}.demos[{index}]",
            )

    build = _require_exact_keys(
        artifact_map["build"], set(baseline["build"]), location="artifact.build"
    )
    if build["datasetDigest"] != dataset_digest(dataset_dir):
        raise ValueError("artifact.build.datasetDigest: local dataset mismatch")
    program_digest = sha256_digest(programs)
    if build["programDigest"] != program_digest:
        raise ValueError("artifact.build.programDigest: checksum mismatch")
    expected_program_version = (
        PROGRAM_VERSION
        if mode == "deterministic-baseline"
        else f"{PROGRAM_VERSION}-{program_digest.removeprefix('sha256:')[:12]}"
    )
    if artifact_map["programVersion"] != expected_program_version:
        raise ValueError("artifact.programVersion: checksum-derived version mismatch")
    expected_config_digest = sha256_digest(
        {
            "programVersion": expected_program_version,
            "retrieval": artifact_map["retrieval"],
            "qualityGates": artifact_map["qualityGates"],
        }
    )
    if build["configDigest"] != expected_config_digest:
        raise ValueError("artifact.build.configDigest: checksum mismatch")
    if build["randomSeed"] != 0:
        raise ValueError("artifact.build.randomSeed: unsupported value")
    if mode == "deterministic-baseline":
        if artifact_version != ARTIFACT_VERSION or build["optimizer"] != "none" or build["networkUsed"]:
            raise ValueError("artifact.build: invalid deterministic baseline metadata")
    elif build["optimizer"] not in {"bootstrap", "gepa"} or build["networkUsed"] is not True:
        raise ValueError("artifact.build: invalid optimized artifact metadata")

    return dict(artifact_map)


def _reject_duplicate_keys(pairs: list[tuple[str, Any]]) -> dict[str, Any]:
    result: dict[str, Any] = {}
    for key, value in pairs:
        if key in result:
            raise ValueError("portable artifact contains a duplicate object key")
        result[key] = value
    return result


def _reject_nonfinite_json(value: str) -> None:
    del value
    raise ValueError("portable artifact contains a non-finite number")


def load_portable_artifact(
    path: Path, *, dataset_dir: Path = DEFAULT_DATASET_DIR
) -> dict[str, Any]:
    """Load strict JSON without duplicate keys, constants, pickle, or secrets."""

    payload = path.read_bytes()
    if not payload or len(payload) > MAX_ARTIFACT_BYTES:
        raise ValueError("portable artifact has an invalid size")
    try:
        parsed = json.loads(
            payload.decode("utf-8"),
            object_pairs_hook=_reject_duplicate_keys,
            parse_constant=_reject_nonfinite_json,
        )
    except (UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise ValueError("portable artifact is not valid UTF-8 JSON") from exc
    return validate_portable_artifact(parsed, dataset_dir=dataset_dir)


def programs_from_artifact(
    artifact: Mapping[str, Any], tasks: list[str]
) -> dict[str, object]:
    """Hydrate validated instructions and demos into fresh DSPy programs."""

    from .programs import build_program

    unknown = set(tasks) - set(SIGNATURES)
    if unknown:
        raise ValueError("portable artifact requested an unknown task")
    programs: dict[str, object] = {}
    for task in tasks:
        payload = artifact["programs"][TASK_KEYS[task]]
        program = build_program(task)
        program.predict.signature = SIGNATURES[task].with_instructions(
            payload["instructions"]
        )
        program.predict.demos = [
            coerce_dspy_example(
                task,
                demo["inputs"],
                demo["outputs"],
                source=f"artifact.{TASK_KEYS[task]}.demo[{index}]",
            )
            for index, demo in enumerate(payload["demos"])
        ]
        programs[task] = program
    return programs
