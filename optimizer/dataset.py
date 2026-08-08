"""Versioned JSONL dataset loading and validation."""

from __future__ import annotations

import json
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Iterable, Mapping

import dspy
from pydantic import TypeAdapter, ValidationError

from .signatures import SIGNATURES


PACKAGE_ROOT = Path(__file__).resolve().parent
DEFAULT_DATASET_DIR = PACKAGE_ROOT / "data" / "v1"
SPLITS = ("train", "dev", "test")


@dataclass(frozen=True)
class DatasetRecord:
    id: str
    task: str
    inputs: dict[str, Any]
    expected: dict[str, Any]
    metadata: dict[str, Any]

    def to_dspy_example(self) -> dspy.Example:
        return coerce_dspy_example(
            self.task, self.inputs, self.expected, source=self.id
        )


def coerce_dspy_example(
    task: str,
    inputs: Mapping[str, Any],
    outputs: Mapping[str, Any],
    *,
    source: str = "example",
) -> dspy.Example:
    """Validate and type an example against its exact DSPy signature."""

    if task not in SIGNATURES:
        raise ValueError(f"{source}: unknown task")
    required_inputs, required_outputs = _required_fields(task)
    if set(inputs) != required_inputs or set(outputs) != required_outputs:
        raise ValueError(f"{source}: fields do not match the {task} signature")
    raw_values = {**inputs, **outputs}
    signature = SIGNATURES[task]
    try:
        values = {
            name: TypeAdapter(field.annotation).validate_python(raw_values[name])
            for name, field in signature.model_fields.items()
        }
    except ValidationError as exc:
        raise ValueError(f"{source}: value does not match the {task} signature") from exc
    return dspy.Example(**values).with_inputs(*inputs.keys())


def load_manifest(dataset_dir: Path = DEFAULT_DATASET_DIR) -> dict[str, Any]:
    manifest_path = dataset_dir / "manifest.json"
    with manifest_path.open("r", encoding="utf-8") as handle:
        manifest = json.load(handle)
    if manifest.get("schemaVersion") != 1:
        raise ValueError("Unsupported dataset manifest schemaVersion")
    return manifest


def _required_fields(task: str) -> tuple[set[str], set[str]]:
    signature = SIGNATURES[task]
    inputs: set[str] = set()
    outputs: set[str] = set()
    for name, field in signature.model_fields.items():
        extra = field.json_schema_extra or {}
        if extra.get("__dspy_field_type") == "input":
            inputs.add(name)
        else:
            outputs.add(name)
    return inputs, outputs


def validate_record(value: object, *, source: str = "record") -> DatasetRecord:
    if not isinstance(value, dict):
        raise ValueError(f"{source}: expected an object")
    allowed = {"id", "task", "inputs", "expected", "metadata"}
    unknown = set(value) - allowed
    if unknown:
        raise ValueError(f"{source}: unknown keys {sorted(unknown)}")
    record_id = value.get("id")
    task = value.get("task")
    inputs = value.get("inputs")
    expected = value.get("expected")
    metadata = value.get("metadata", {})
    if not isinstance(record_id, str) or not record_id:
        raise ValueError(f"{source}: id must be a non-empty string")
    if task not in SIGNATURES:
        raise ValueError(f"{source}: unknown task {task!r}")
    if not isinstance(inputs, dict) or not isinstance(expected, dict):
        raise ValueError(f"{source}: inputs and expected must be objects")
    if not isinstance(metadata, dict):
        raise ValueError(f"{source}: metadata must be an object")
    required_inputs, required_outputs = _required_fields(task)
    if set(inputs) != required_inputs:
        raise ValueError(
            f"{source}: input fields must be {sorted(required_inputs)}, got {sorted(inputs)}"
        )
    if set(expected) != required_outputs:
        raise ValueError(
            f"{source}: expected fields must be {sorted(required_outputs)}, got {sorted(expected)}"
        )
    return DatasetRecord(record_id, task, inputs, expected, metadata)


def load_split(
    split: str,
    dataset_dir: Path = DEFAULT_DATASET_DIR,
    *,
    task: str | None = None,
    limit: int | None = None,
) -> list[DatasetRecord]:
    if split not in SPLITS:
        raise ValueError(f"Unknown split: {split}")
    if task is not None and task not in SIGNATURES:
        raise ValueError(f"Unknown task: {task}")
    if limit is not None and limit < 1:
        raise ValueError("limit must be positive")
    records: list[DatasetRecord] = []
    path = dataset_dir / f"{split}.jsonl"
    with path.open("r", encoding="utf-8") as handle:
        for line_number, line in enumerate(handle, start=1):
            if not line.strip():
                continue
            record = validate_record(json.loads(line), source=f"{path.name}:{line_number}")
            if task is not None and record.task != task:
                continue
            records.append(record)
            if limit is not None and len(records) >= limit:
                break
    return records


def all_records(dataset_dir: Path = DEFAULT_DATASET_DIR) -> Iterable[DatasetRecord]:
    for split in SPLITS:
        yield from load_split(split, dataset_dir)
