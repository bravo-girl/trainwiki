"""Typed DSPy signatures used by the TrainWiki RAG pipeline.

The signatures deliberately separate planning, retrieval ordering, answer
grounding, and learning extraction.  That lets us evaluate and optimize each
decision independently instead of hiding all behavior in one large prompt.
"""

from __future__ import annotations

from typing import Literal

import dspy
from pydantic import BaseModel, ConfigDict, Field


class StrictModel(BaseModel):
    """Base type shared by structured DSPy fields."""

    model_config = ConfigDict(extra="forbid")


class Evidence(StrictModel):
    id: str = Field(description="Stable identifier of this evidence chunk.")
    source_path: str = Field(description="Repository-relative Markdown source path.")
    title: str = Field(description="Human-readable source or section title.")
    text: str = Field(description="Verbatim evidence text available to the model.")
    source_sha256: str = Field(
        default="", description="Content hash from the source front matter, if known."
    )
    source_version_id: str = Field(
        default="", description="Stable source version identifier used by provenance checks."
    )
    locator: str = Field(
        default="", description="Precise page, heading, or structural locator within the source."
    )


class GroundedClaim(StrictModel):
    claim: str = Field(description="One independently verifiable answer claim.")
    evidence_ids: list[str] = Field(
        description="Identifiers of evidence chunks that directly support the claim."
    )


class LearningClaim(StrictModel):
    claim: str = Field(description="Proposed durable wiki fact.")
    evidence_ids: list[str] = Field(
        description="Verified evidence identifiers supporting the proposed fact."
    )


class QueryPlan(dspy.Signature):
    """Plan retrieval for a German-language TrainWiki question.

    Preserve identifiers and domain abbreviations exactly. Produce a small set
    of complementary search queries, not an answer. Mark multi-hop only when
    evidence from more than one concept or source is needed.
    """

    question: str = dspy.InputField(desc="The user's current question.")
    conversation_context: str = dspy.InputField(
        desc="Relevant preceding turns; empty when the question is standalone."
    )
    known_exact_terms: list[str] = dspy.InputField(
        desc="Already detected identifiers or abbreviations that must be preserved."
    )
    exact_terms: list[str] = dspy.OutputField(
        desc="Deduplicated exact identifiers and domain terms for retrieval."
    )
    queries: list[str] = dspy.OutputField(
        desc="One to four concise retrieval queries ordered by usefulness."
    )
    needs_multihop: bool = dspy.OutputField(
        desc="Whether the question needs evidence across multiple concepts or sources."
    )


class RankEvidence(dspy.Signature):
    """Rank only the supplied evidence for answering the question.

    Prefer direct, current, specific passages. Never invent an identifier and
    never return an identifier that is absent from candidate_evidence.
    """

    question: str = dspy.InputField(desc="The user's question.")
    candidate_evidence: list[Evidence] = dspy.InputField(
        desc="Candidate chunks returned by deterministic retrieval."
    )
    ranked_evidence_ids: list[str] = dspy.OutputField(
        desc="Candidate identifiers in descending relevance; omit irrelevant chunks."
    )


class GroundedAnswer(dspy.Signature):
    """Answer in German using only the supplied evidence.

    Every factual claim must name at least one supporting evidence identifier.
    If the evidence is insufficient, abstain explicitly instead of filling gaps
    from model memory. Keep facts and recommendations clearly separated.
    """

    question: str = dspy.InputField(desc="The user's question.")
    evidence: list[Evidence] = dspy.InputField(
        desc="The complete and exclusive evidence set available for this answer."
    )
    answer: str = dspy.OutputField(
        desc="Concise German answer, or a clear statement that evidence is insufficient."
    )
    claim_evidence: list[GroundedClaim] = dspy.OutputField(
        desc="Atomic answer claims paired with direct supporting evidence identifiers."
    )
    abstain: bool = dspy.OutputField(
        desc="True exactly when the supplied evidence cannot support an answer."
    )


class ExtractLearningCandidate(dspy.Signature):
    """Extract a reviewable wiki learning candidate from verified evidence.

    Conversation text alone is never evidence. Choose noop for unsupported
    observations, conflict when verified evidence disagrees with current wiki
    text, and add or update only for durable supported facts. Do not publish.
    """

    current_wiki_context: str = dspy.InputField(
        desc="Relevant existing wiki text, possibly empty."
    )
    verified_evidence: list[Evidence] = dspy.InputField(
        desc="Evidence that passed ingestion and source validation."
    )
    conversation_observation: str = dspy.InputField(
        desc="Potential learning observed in the conversation; not trusted by itself."
    )
    action: Literal["add", "update", "conflict", "noop"] = dspy.OutputField(
        desc="Review workflow action; never an automatic publication decision."
    )
    target_page: str = dspy.OutputField(
        desc="Repository-relative target wiki page, or an empty string for noop."
    )
    claims: list[LearningClaim] = dspy.OutputField(
        desc="Supported durable facts proposed for human review."
    )
    conflicts: list[str] = dspy.OutputField(
        desc="Concrete disagreements with current wiki text that require review."
    )
    review_note: str = dspy.OutputField(
        desc="Short German explanation for a human reviewer."
    )


SIGNATURES: dict[str, type[dspy.Signature]] = {
    "query_plan": QueryPlan,
    "rank_evidence": RankEvidence,
    "grounded_answer": GroundedAnswer,
    "extract_learning_candidate": ExtractLearningCandidate,
}


def _portable_type(annotation: object) -> str:
    """Return a stable, implementation-neutral representation of a field type."""

    return str(annotation).replace("typing.", "").replace("<class '", "").replace("'>", "")


def _clean_json_schema(value: object) -> object:
    if isinstance(value, dict):
        return {
            key: _clean_json_schema(child)
            for key, child in value.items()
            if key not in {"__dspy_field_type", "desc", "prefix"}
        }
    if isinstance(value, list):
        return [_clean_json_schema(child) for child in value]
    return value


def portable_signature_spec(task: str) -> dict[str, object]:
    """Describe a DSPy signature without serializing executable Python objects."""

    signature = SIGNATURES[task]
    input_fields: list[dict[str, str]] = []
    output_fields: list[dict[str, str]] = []
    input_names: list[str] = []
    output_names: list[str] = []
    for name, field in signature.model_fields.items():
        extra = field.json_schema_extra or {}
        destination = input_fields if extra.get("__dspy_field_type") == "input" else output_fields
        names = input_names if extra.get("__dspy_field_type") == "input" else output_names
        names.append(name)
        destination.append(
            {
                "name": name,
                "type": _portable_type(field.annotation),
                "description": str(extra.get("desc", "")),
            }
        )
    complete_schema = signature.model_json_schema()
    properties = complete_schema.get("properties", {})
    definitions = complete_schema.get("$defs", {})

    def side_schema(names: list[str], title: str) -> dict[str, object]:
        return {
            "$schema": "https://json-schema.org/draft/2020-12/schema",
            "$defs": _clean_json_schema(definitions),
            "title": title,
            "type": "object",
            "additionalProperties": False,
            "properties": {
                name: _clean_json_schema(properties[name]) for name in names
            },
            "required": names,
        }

    return {
        "signatureName": signature.__name__,
        "instructions": signature.instructions,
        "inputFields": input_fields,
        "outputFields": output_fields,
        "inputSchema": side_schema(input_names, f"{signature.__name__}Input"),
        "outputSchema": side_schema(output_names, f"{signature.__name__}Output"),
    }
