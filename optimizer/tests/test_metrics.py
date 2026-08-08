from __future__ import annotations

import unittest

import dspy

from optimizer.metrics import (
    feedback_metric,
    grounded_answer_metric,
    grounding_metrics,
    learning_candidate_metric,
    rank_evidence_metric,
    retrieval_metrics,
    set_f1,
    token_f1,
)


class MetricTests(unittest.TestCase):
    def test_text_metrics_are_unicode_aware_and_deterministic(self) -> None:
        self.assertEqual(token_f1("Güterverkehr TAF", "taf güterverkehr"), 1.0)
        self.assertEqual(set_f1(["Common Interface", "CI"], ["ci", "common interface"]), 1.0)
        self.assertEqual(set_f1(["expected"], ["disjoint"]), 0.0)

    def test_retrieval_metrics_reward_correct_order(self) -> None:
        perfect = retrieval_metrics(["a", "b"], ["a", "b"])
        reversed_score = retrieval_metrics(["a", "b"], ["b", "a"])
        missing = retrieval_metrics(["a", "b"], ["x"])
        self.assertEqual(perfect["recall_at_k"], 1.0)
        self.assertEqual(perfect["ndcg_at_k"], 1.0)
        self.assertGreater(perfect["ndcg_at_k"], reversed_score["ndcg_at_k"])
        self.assertEqual(missing["reciprocal_rank"], 0.0)

    def test_rank_metric_penalizes_invented_ids(self) -> None:
        example = dspy.Example(
            candidate_evidence=[{"id": "a"}, {"id": "b"}],
            ranked_evidence_ids=["a"],
        )
        valid = dspy.Prediction(ranked_evidence_ids=["a"])
        invented = dspy.Prediction(ranked_evidence_ids=["a", "invented"])
        self.assertGreater(
            rank_evidence_metric(example, valid), rank_evidence_metric(example, invented)
        )

    def test_grounding_rejects_unknown_references(self) -> None:
        example = dspy.Example(
            evidence=[{"id": "source-1"}],
            answer="Ein belegter Fakt.",
            claim_evidence=[{"claim": "Ein belegter Fakt.", "evidence_ids": ["source-1"]}],
            abstain=False,
        )
        grounded = dspy.Prediction(
            answer="Ein belegter Fakt.",
            claim_evidence=[{"claim": "Ein belegter Fakt.", "evidence_ids": ["source-1"]}],
            abstain=False,
        )
        invalid = dspy.Prediction(
            answer="Ein belegter Fakt.",
            claim_evidence=[{"claim": "Ein belegter Fakt.", "evidence_ids": ["made-up"]}],
            abstain=False,
        )
        self.assertEqual(grounded_answer_metric(example, grounded), 1.0)
        self.assertEqual(grounding_metrics(example, invalid)["invalid_reference_rate"], 1.0)
        self.assertGreater(
            grounded_answer_metric(example, grounded), grounded_answer_metric(example, invalid)
        )

    def test_gepa_feedback_is_deterministic(self) -> None:
        example = dspy.Example(
            ranked_evidence_ids=["a"], candidate_evidence=[{"id": "a"}]
        )
        prediction = dspy.Prediction(ranked_evidence_ids=[])
        first = feedback_metric("rank_evidence")(example, prediction)
        second = feedback_metric("rank_evidence")(example, prediction)
        self.assertEqual(first.score, second.score)
        self.assertEqual(first.feedback, second.feedback)

        predictor_level = feedback_metric("rank_evidence")(
            example,
            prediction,
            [("module", {}, {})],
            "predict",
            [("predictor", {}, {})],
        )
        self.assertEqual(predictor_level.score, first.score)
        self.assertEqual(predictor_level.feedback, first.feedback)

    def test_learning_metric_handles_fully_disjoint_nonempty_sets(self) -> None:
        example = dspy.Example(
            action="conflict",
            target_page="wiki/company-code.md",
            claims=[{"claim": "Organization Code ab 2026", "evidence_ids": ["source-a"]}],
            conflicts=["bestehender Text ist veraltet"],
        )
        prediction = dspy.Prediction(
            action="add",
            target_page="wiki/other.md",
            claims=[{"claim": "anderer Inhalt", "evidence_ids": ["source-b"]}],
            conflicts=["kein Widerspruch"],
        )
        score = learning_candidate_metric(example, prediction)
        self.assertGreaterEqual(score, 0.0)
        self.assertLessEqual(score, 1.0)


if __name__ == "__main__":
    unittest.main()
