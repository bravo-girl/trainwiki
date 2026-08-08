"""DSPy modules for the four independently optimizable TrainWiki tasks."""

from __future__ import annotations

from typing import Any

import dspy

from .signatures import SIGNATURES


class SignatureProgram(dspy.Module):
    """Minimal module wrapper that keeps exactly one predictor per task."""

    def __init__(self, task: str) -> None:
        super().__init__()
        if task not in SIGNATURES:
            raise ValueError(f"Unknown optimizer task: {task}")
        self.task = task
        self.predict = dspy.Predict(SIGNATURES[task])

    def forward(self, **kwargs: Any) -> dspy.Prediction:
        return self.predict(**kwargs)


def build_program(task: str) -> SignatureProgram:
    return SignatureProgram(task)
