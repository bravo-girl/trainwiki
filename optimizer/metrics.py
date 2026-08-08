"""Deterministic retrieval and grounding metrics for DSPy optimization.

No metric in this module calls an LM or performs network I/O.  Scores are
bounded to [0, 1] and can therefore be used by both BootstrapFewShot and GEPA.
"""

from __future__ import annotations

import math
import re
from collections import Counter
from collections.abc import Callable, Iterable, Mapping
from typing import Any

import dspy


TOKEN_RE = re.compile(r"[^\W_]+", re.UNICODE)


def _value(container: object, name: str, default: Any = None) -> Any:
    if isinstance(container, Mapping):
        return container.get(name, default)
    return getattr(container, name, default)


def _plain(value: Any) -> Any:
    if hasattr(value, "model_dump"):
        return value.model_dump()
    return value


def normalize_text(value: object) -> str:
    return " ".join(TOKEN_RE.findall(str(value).casefold()))


def _tokens(value: object) -> list[str]:
    return TOKEN_RE.findall(str(value).casefold())


def _bounded(value: float) -> float:
    return max(0.0, min(1.0, value))


def token_f1(expected: object, predicted: object) -> float:
    """Bag-of-words F1 with Unicode-aware, case-insensitive tokens."""

    expected_tokens = Counter(_tokens(expected))
    predicted_tokens = Counter(_tokens(predicted))
    if not expected_tokens and not predicted_tokens:
        return 1.0
    if not expected_tokens or not predicted_tokens:
        return 0.0
    overlap = sum((expected_tokens & predicted_tokens).values())
    precision = overlap / sum(predicted_tokens.values())
    recall = overlap / sum(expected_tokens.values())
    return 2 * precision * recall / (precision + recall) if precision + recall else 0.0


def set_f1(expected: Iterable[object], predicted: Iterable[object]) -> float:
    expected_set = {normalize_text(item) for item in expected if normalize_text(item)}
    predicted_set = {normalize_text(item) for item in predicted if normalize_text(item)}
    if not expected_set and not predicted_set:
        return 1.0
    if not expected_set or not predicted_set:
        return 0.0
    overlap = len(expected_set & predicted_set)
    precision = overlap / len(predicted_set)
    recall = overlap / len(expected_set)
    return 2 * precision * recall / (precision + recall) if precision + recall else 0.0


def _unique_strings(values: object) -> list[str]:
    if not isinstance(values, (list, tuple)):
        return []
    result: list[str] = []
    seen: set[str] = set()
    for item in values:
        if not isinstance(item, str) or not item or item in seen:
            continue
        seen.add(item)
        result.append(item)
    return result


def retrieval_metrics(
    expected_ranked_ids: Iterable[str], predicted_ranked_ids: Iterable[str], *, k: int = 6
) -> dict[str, float]:
    """Compute recall@k, reciprocal rank, and ranking-sensitive nDCG@k."""

    gold = _unique_strings(list(expected_ranked_ids))
    predicted = _unique_strings(list(predicted_ranked_ids))[:k]
    if not gold:
        empty_score = 1.0 if not predicted else 0.0
        return {"recall_at_k": empty_score, "reciprocal_rank": empty_score, "ndcg_at_k": empty_score}

    gold_set = set(gold)
    recall = len(gold_set & set(predicted)) / len(gold_set)
    first_relevant = next((index for index, item in enumerate(predicted, 1) if item in gold_set), None)
    reciprocal_rank = 1.0 / first_relevant if first_relevant else 0.0

    relevance = {item: len(gold) - index for index, item in enumerate(gold)}

    def dcg(items: list[str]) -> float:
        return sum(
            (2 ** relevance.get(item, 0) - 1) / math.log2(index + 2)
            for index, item in enumerate(items[:k])
        )

    ideal = dcg(gold)
    ndcg = dcg(predicted) / ideal if ideal else 0.0
    return {
        "recall_at_k": _bounded(recall),
        "reciprocal_rank": _bounded(reciprocal_rank),
        "ndcg_at_k": _bounded(ndcg),
    }


def query_plan_metric(example: object, prediction: object, trace: object = None) -> float:
    del trace
    exact_score = set_f1(
        _value(example, "exact_terms", []), _value(prediction, "exact_terms", [])
    )
    expected_queries = " ".join(_unique_strings(_value(example, "queries", [])))
    predicted_queries = " ".join(_unique_strings(_value(prediction, "queries", [])))
    query_score = token_f1(expected_queries, predicted_queries)
    multihop_score = float(
        bool(_value(example, "needs_multihop", False))
        == bool(_value(prediction, "needs_multihop", False))
    )
    return _bounded(0.45 * exact_score + 0.35 * query_score + 0.20 * multihop_score)


def rank_evidence_metric(example: object, prediction: object, trace: object = None) -> float:
    del trace
    ranked = retrieval_metrics(
        _value(example, "ranked_evidence_ids", []),
        _value(prediction, "ranked_evidence_ids", []),
    )
    candidates = _value(example, "candidate_evidence", [])
    candidate_ids = {
        str(_value(_plain(item), "id", "")) for item in candidates if _value(_plain(item), "id", "")
    }
    predicted = _unique_strings(_value(prediction, "ranked_evidence_ids", []))
    valid_fraction = (
        sum(item in candidate_ids for item in predicted) / len(predicted) if predicted else 1.0
    )
    return _bounded(
        0.45 * ranked["ndcg_at_k"]
        + 0.30 * ranked["recall_at_k"]
        + 0.15 * ranked["reciprocal_rank"]
        + 0.10 * valid_fraction
    )


def _claims(value: object) -> list[dict[str, Any]]:
    if not isinstance(value, (list, tuple)):
        return []
    result: list[dict[str, Any]] = []
    for item in value:
        item = _plain(item)
        if not isinstance(item, Mapping):
            continue
        claim = item.get("claim")
        ids = item.get("evidence_ids")
        if isinstance(claim, str) and isinstance(ids, (list, tuple)):
            result.append({"claim": claim, "evidence_ids": _unique_strings(ids)})
    return result


def grounding_metrics(example: object, prediction: object) -> dict[str, float]:
    evidence = _value(example, "evidence", [])
    valid_ids = {
        str(_value(_plain(item), "id", "")) for item in evidence if _value(_plain(item), "id", "")
    }
    expected_claims = _claims(_value(example, "claim_evidence", []))
    predicted_claims = _claims(_value(prediction, "claim_evidence", []))

    predicted_references = [
        evidence_id for item in predicted_claims for evidence_id in item["evidence_ids"]
    ]
    valid_references = [item for item in predicted_references if item in valid_ids]
    invalid_reference_rate = (
        1.0 - len(valid_references) / len(predicted_references)
        if predicted_references
        else 0.0
    )
    citation_coverage = (
        sum(any(evidence_id in valid_ids for evidence_id in item["evidence_ids"]) for item in predicted_claims)
        / len(predicted_claims)
        if predicted_claims
        else float(not expected_claims)
    )
    expected_ids = {
        evidence_id for item in expected_claims for evidence_id in item["evidence_ids"]
    }
    predicted_valid_ids = set(valid_references)
    evidence_recall = (
        len(expected_ids & predicted_valid_ids) / len(expected_ids)
        if expected_ids
        else float(not predicted_valid_ids)
    )
    claim_alignment = (
        sum(
            max(
                (token_f1(expected["claim"], predicted["claim"]) for predicted in predicted_claims),
                default=0.0,
            )
            for expected in expected_claims
        )
        / len(expected_claims)
        if expected_claims
        else float(not predicted_claims)
    )
    return {
        "answer_token_f1": token_f1(
            _value(example, "answer", ""), _value(prediction, "answer", "")
        ),
        "citation_coverage": _bounded(citation_coverage),
        "evidence_recall": _bounded(evidence_recall),
        "claim_alignment": _bounded(claim_alignment),
        "invalid_reference_rate": _bounded(invalid_reference_rate),
        "abstain_accuracy": float(
            bool(_value(example, "abstain", False)) == bool(_value(prediction, "abstain", False))
        ),
    }


def grounded_answer_metric(example: object, prediction: object, trace: object = None) -> float:
    del trace
    metrics = grounding_metrics(example, prediction)
    if bool(_value(example, "abstain", False)):
        no_claims = float(not _claims(_value(prediction, "claim_evidence", [])))
        return _bounded(
            0.70 * metrics["abstain_accuracy"]
            + 0.20 * no_claims
            + 0.10 * (1.0 - metrics["invalid_reference_rate"])
        )
    score = (
        0.25 * metrics["answer_token_f1"]
        + 0.25 * metrics["citation_coverage"]
        + 0.20 * metrics["evidence_recall"]
        + 0.15 * metrics["claim_alignment"]
        + 0.15 * metrics["abstain_accuracy"]
        - 0.35 * metrics["invalid_reference_rate"]
    )
    return _bounded(score)


def learning_candidate_metric(example: object, prediction: object, trace: object = None) -> float:
    del trace
    expected_action = str(_value(example, "action", ""))
    predicted_action = str(_value(prediction, "action", ""))
    action_score = float(expected_action == predicted_action)
    target_score = float(
        normalize_text(_value(example, "target_page", ""))
        == normalize_text(_value(prediction, "target_page", ""))
    )
    expected_claims = _claims(_value(example, "claims", []))
    predicted_claims = _claims(_value(prediction, "claims", []))
    claim_score = (
        sum(
            max(
                (token_f1(item["claim"], candidate["claim"]) for candidate in predicted_claims),
                default=0.0,
            )
            for item in expected_claims
        )
        / len(expected_claims)
        if expected_claims
        else float(not predicted_claims)
    )
    conflict_score = set_f1(
        _value(example, "conflicts", []), _value(prediction, "conflicts", [])
    )
    expected_ids = {
        evidence_id for item in expected_claims for evidence_id in item["evidence_ids"]
    }
    predicted_ids = {
        evidence_id for item in predicted_claims for evidence_id in item["evidence_ids"]
    }
    reference_score = set_f1(expected_ids, predicted_ids)
    return _bounded(
        0.40 * action_score
        + 0.15 * target_score
        + 0.20 * claim_score
        + 0.10 * conflict_score
        + 0.15 * reference_score
    )


METRICS: dict[str, Callable[[object, object, object], float]] = {
    "query_plan": query_plan_metric,
    "rank_evidence": rank_evidence_metric,
    "grounded_answer": grounded_answer_metric,
    "extract_learning_candidate": learning_candidate_metric,
}


def feedback_metric(task: str) -> Callable[..., dspy.Prediction]:
    """Wrap a numeric metric with deterministic textual feedback for GEPA."""

    metric = METRICS[task]

    def evaluate(
        example: object,
        prediction: object,
        trace: object = None,
        pred_name: str | None = None,
        pred_trace: object = None,
    ) -> dspy.Prediction:
        # DSPy 3.2.1 calls GEPA feedback metrics with five positional
        # arguments for predictor-level reflection.  TrainWiki's score and
        # feedback are intentionally program-level and deterministic.
        del pred_name, pred_trace
        score = metric(example, prediction, trace)
        if score >= 0.95:
            feedback = "All deterministic quality gates passed."
        elif task == "grounded_answer":
            details = grounding_metrics(example, prediction)
            feedback = (
                "Improve evidence grounding. "
                f"citation_coverage={details['citation_coverage']:.3f}, "
                f"evidence_recall={details['evidence_recall']:.3f}, "
                f"invalid_reference_rate={details['invalid_reference_rate']:.3f}."
            )
        elif task == "rank_evidence":
            details = retrieval_metrics(
                _value(example, "ranked_evidence_ids", []),
                _value(prediction, "ranked_evidence_ids", []),
            )
            feedback = (
                "Improve evidence ordering without inventing IDs. "
                f"recall_at_k={details['recall_at_k']:.3f}, "
                f"ndcg_at_k={details['ndcg_at_k']:.3f}."
            )
        else:
            feedback = f"Improve exact structured-field agreement for {task}; score={score:.3f}."
        return dspy.Prediction(score=score, feedback=feedback)

    return evaluate
