from __future__ import annotations

import copy
import tempfile
import unittest
from pathlib import Path

from optimizer.artifact import (
    DEFAULT_ARTIFACT_PATH,
    PROGRAM_VERSION,
    assert_secret_free,
    build_artifact,
    load_portable_artifact,
    programs_from_artifact,
    serialize_artifact,
    validate_portable_artifact,
)
from optimizer.signatures import Evidence
from optimizer.programs import build_program


class ArtifactTests(unittest.TestCase):
    def test_baseline_is_byte_reproducible_and_checked_in(self) -> None:
        first = serialize_artifact(build_artifact())
        second = serialize_artifact(build_artifact())
        self.assertEqual(first, second)
        self.assertEqual(first, DEFAULT_ARTIFACT_PATH.read_text(encoding="utf-8"))

    def test_baseline_has_no_network_or_secret_state(self) -> None:
        artifact = build_artifact()
        self.assertEqual(artifact["programVersion"], PROGRAM_VERSION)
        self.assertEqual(artifact["runtime"]["dspyModel"], "groq/openai/gpt-oss-120b")
        self.assertFalse(artifact["build"]["networkUsed"])
        self.assertEqual(artifact["build"]["optimizer"], "none")
        self.assertIn("programDigest", artifact["build"])
        assert_secret_free(artifact)

    def test_optimized_program_gets_distinct_deterministic_version(self) -> None:
        program = build_program("grounded_answer")
        first = build_artifact(
            optimized_programs={"grounded_answer": program}, optimizer_name="bootstrap"
        )
        second = build_artifact(
            optimized_programs={"grounded_answer": program}, optimizer_name="bootstrap"
        )
        self.assertEqual(first["programVersion"], second["programVersion"])
        self.assertNotEqual(first["programVersion"], PROGRAM_VERSION)
        self.assertTrue(first["build"]["networkUsed"])

    def test_secret_like_keys_and_values_are_rejected(self) -> None:
        with self.assertRaisesRegex(ValueError, "secret-like key"):
            assert_secret_free({"nested": {"api_key": "not-real"}})
        with self.assertRaisesRegex(ValueError, "secret-like value"):
            assert_secret_free({"value": "gsk_not-real"})

    def test_strict_loader_hydrates_instructions_and_typed_demos(self) -> None:
        artifact = load_portable_artifact(DEFAULT_ARTIFACT_PATH)
        program = programs_from_artifact(artifact, ["grounded_answer"])[
            "grounded_answer"
        ]
        self.assertEqual(
            program.predict.signature.instructions,
            artifact["programs"]["groundedAnswer"]["instructions"],
        )
        self.assertEqual(len(program.predict.demos), 2)
        self.assertIsInstance(program.predict.demos[0].evidence[0], Evidence)

    def test_strict_loader_rejects_tampering_and_duplicate_keys(self) -> None:
        tampered = copy.deepcopy(build_artifact())
        tampered["programs"]["groundedAnswer"]["instructions"] += " changed"
        with self.assertRaisesRegex(ValueError, "programDigest"):
            validate_portable_artifact(tampered)

        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "duplicate.json"
            path.write_text('{"schemaVersion":1,"schemaVersion":1}', encoding="utf-8")
            with self.assertRaisesRegex(ValueError, "duplicate object key"):
                load_portable_artifact(path)


if __name__ == "__main__":
    unittest.main()
