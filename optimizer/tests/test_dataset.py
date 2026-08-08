from __future__ import annotations

import re
import unittest
from pathlib import Path

from optimizer.dataset import SPLITS, all_records, load_manifest, load_split
from optimizer.signatures import Evidence, GroundedClaim, LearningClaim, SIGNATURES


REPO_ROOT = Path(__file__).resolve().parents[2]


class DatasetTests(unittest.TestCase):
    def test_manifest_counts_and_ids_are_stable(self) -> None:
        manifest = load_manifest()
        ids: set[str] = set()
        for split in SPLITS:
            records = load_split(split)
            self.assertEqual(len(records), manifest["splits"][split])
            self.assertTrue(set(SIGNATURES).issubset({item.task for item in records}))
            for record in records:
                self.assertNotIn(record.id, ids)
                ids.add(record.id)

    def test_every_gold_source_exists_in_snapshot(self) -> None:
        manifest = load_manifest()
        snapshot_paths = {item["path"] for item in manifest["sourceSnapshot"]}
        for record in all_records():
            for path in record.metadata.get("gold_source_paths", []):
                self.assertIn(path, snapshot_paths)
                self.assertTrue((REPO_ROOT / path).is_file())

    def test_snapshot_matches_source_front_matter(self) -> None:
        for source in load_manifest()["sourceSnapshot"]:
            text = (REPO_ROOT / source["path"]).read_text(encoding="utf-8")
            for front_matter_key, manifest_key in (
                ("source_id", "sourceId"),
                ("source_version_id", "sourceVersionId"),
                ("source_sha256", "sourceSha256"),
            ):
                match = re.search(
                    rf'^{front_matter_key}:\s*"([^"]+)"\s*$', text, re.MULTILINE
                )
                self.assertIsNotNone(match, f"missing {front_matter_key} in {source['path']}")
                self.assertEqual(match.group(1), source[manifest_key])

    def test_dspy_example_only_marks_inputs_as_inputs(self) -> None:
        record = load_split("train", task="grounded_answer", limit=1)[0]
        example = record.to_dspy_example()
        self.assertEqual(set(example.inputs().toDict()), set(record.inputs))
        self.assertEqual(set(example.labels().toDict()), set(record.expected))
        self.assertIsInstance(example.evidence[0], Evidence)
        self.assertIsInstance(example.claim_evidence[0], GroundedClaim)

        learning = load_split("train", task="extract_learning_candidate", limit=1)[0]
        learning_example = learning.to_dspy_example()
        self.assertIsInstance(learning_example.verified_evidence[0], Evidence)
        self.assertIsInstance(learning_example.claims[0], LearningClaim)


if __name__ == "__main__":
    unittest.main()
