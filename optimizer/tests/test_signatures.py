from __future__ import annotations

import unittest

import dspy

from optimizer.programs import build_program
from optimizer.signatures import SIGNATURES, portable_signature_spec


EXPECTED_FIELDS = {
    "query_plan": (
        {"question", "conversation_context", "known_exact_terms"},
        {"exact_terms", "queries", "needs_multihop"},
    ),
    "rank_evidence": (
        {"question", "candidate_evidence"},
        {"ranked_evidence_ids"},
    ),
    "grounded_answer": (
        {"question", "evidence"},
        {"answer", "claim_evidence", "abstain"},
    ),
    "extract_learning_candidate": (
        {"current_wiki_context", "verified_evidence", "conversation_observation"},
        {"action", "target_page", "claims", "conflicts", "review_note"},
    ),
}


class SignatureTests(unittest.TestCase):
    def test_dspy_version_is_pinned_runtime(self) -> None:
        self.assertEqual(dspy.__version__, "3.2.1")

    def test_signatures_have_separate_exact_contracts(self) -> None:
        self.assertEqual(set(SIGNATURES), set(EXPECTED_FIELDS))
        for task, (expected_inputs, expected_outputs) in EXPECTED_FIELDS.items():
            spec = portable_signature_spec(task)
            self.assertEqual(
                {field["name"] for field in spec["inputFields"]}, expected_inputs
            )
            self.assertEqual(
                {field["name"] for field in spec["outputFields"]}, expected_outputs
            )
            self.assertTrue(spec["instructions"])
            self.assertEqual(set(spec["inputSchema"]["required"]), expected_inputs)
            self.assertEqual(set(spec["outputSchema"]["required"]), expected_outputs)

    def test_each_program_has_one_predictor(self) -> None:
        for task in SIGNATURES:
            program = build_program(task)
            predictors = list(program.named_predictors())
            self.assertEqual(len(predictors), 1)
            self.assertEqual(program.task, task)


if __name__ == "__main__":
    unittest.main()
