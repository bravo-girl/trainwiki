"""Budgeted command line entry point for TrainWiki DSPy workflows."""

from __future__ import annotations

import argparse
import json
import os
import sys
import threading
from pathlib import Path
from typing import Any

import dspy

from .artifact import (
    DEFAULT_ARTIFACT_PATH,
    build_artifact,
    load_portable_artifact,
    programs_from_artifact,
    serialize_artifact,
    write_artifact,
)
from .dataset import DEFAULT_DATASET_DIR, load_split
from .metrics import METRICS, feedback_metric
from .programs import build_program
from .signatures import SIGNATURES


GROQ_DSPY_MODEL = "groq/openai/gpt-oss-20b"
MAX_ALLOWED_CALLS = 200
MAX_ALLOWED_EXAMPLES_PER_TASK = 16
MAX_ALLOWED_OUTPUT_TOKENS = 4096
EVALUATION_CALLS_PER_EXAMPLE = 2


class CallBudgetExceeded(RuntimeError):
    pass


class CallBudget:
    """Thread-safe provider-request budget claimed at the LM forward boundary."""

    def __init__(self, maximum: int) -> None:
        self.maximum = maximum
        self.used = 0
        self._lock = threading.Lock()

    def claim(self) -> None:
        with self._lock:
            if self.used >= self.maximum:
                raise CallBudgetExceeded(f"Groq call budget of {self.maximum} exhausted")
            self.used += 1


class BudgetedGroqLM(dspy.LM):
    """DSPy LM that enforces a hard cap before LiteLLM can issue a request."""

    def __init__(self, *args: Any, call_budget: CallBudget, **kwargs: Any) -> None:
        self.call_budget = call_budget
        super().__init__(*args, **kwargs)

    def forward(
        self,
        prompt: str | None = None,
        messages: list[dict[str, Any]] | None = None,
        **kwargs: Any,
    ) -> Any:
        self.call_budget.claim()
        return super().forward(prompt=prompt, messages=messages, **kwargs)


def _bounded_int(value: str, *, minimum: int, maximum: int, name: str) -> int:
    parsed = int(value)
    if not minimum <= parsed <= maximum:
        raise argparse.ArgumentTypeError(f"{name} must be between {minimum} and {maximum}")
    return parsed


def _call_count(value: str) -> int:
    return _bounded_int(value, minimum=1, maximum=MAX_ALLOWED_CALLS, name="max-calls")


def _example_count(value: str) -> int:
    return _bounded_int(
        value,
        minimum=1,
        maximum=MAX_ALLOWED_EXAMPLES_PER_TASK,
        name="max-examples-per-task",
    )


def _token_count(value: str) -> int:
    return _bounded_int(
        value, minimum=128, maximum=MAX_ALLOWED_OUTPUT_TOKENS, name="max-output-tokens"
    )


def _tasks(value: str) -> list[str]:
    if value == "all":
        return list(SIGNATURES)
    tasks = [item.strip() for item in value.split(",") if item.strip()]
    unknown = set(tasks) - set(SIGNATURES)
    if not tasks or unknown:
        raise argparse.ArgumentTypeError(
            "tasks must be 'all' or a comma-separated subset of " + ", ".join(SIGNATURES)
        )
    return tasks


def _require_network_opt_in(args: argparse.Namespace) -> str:
    if not args.allow_network:
        raise SystemExit("Refusing Groq access without the explicit --allow-network flag")
    api_key = os.environ.get("GROQ_API_KEY", "")
    if not api_key:
        raise SystemExit("GROQ_API_KEY is required for this explicitly networked command")
    return api_key


def _make_lm(args: argparse.Namespace, budget: CallBudget) -> dspy.LM:
    api_key = _require_network_opt_in(args)
    return BudgetedGroqLM(
        GROQ_DSPY_MODEL,
        call_budget=budget,
        api_key=api_key,
        temperature=0.0,
        max_tokens=args.max_output_tokens,
        cache=True,
        num_retries=0,
    )


def command_build(args: argparse.Namespace) -> int:
    artifact = build_artifact(dataset_dir=args.dataset_dir)
    if args.stdout:
        sys.stdout.write(serialize_artifact(artifact))
    else:
        write_artifact(artifact, args.output)
        print(args.output)
    return 0


def command_validate(args: argparse.Namespace) -> int:
    artifact = load_portable_artifact(args.artifact, dataset_dir=args.dataset_dir)
    expected = build_artifact(dataset_dir=args.dataset_dir)
    if args.require_baseline_match and artifact != expected:
        raise SystemExit("Artifact does not match the deterministic baseline")
    print(json.dumps({"valid": True, "artifactId": artifact.get("artifactId")}, sort_keys=True))
    return 0


def command_evaluate(args: argparse.Namespace) -> int:
    artifact = (
        load_portable_artifact(args.artifact, dataset_dir=args.dataset_dir)
        if args.artifact is not None
        else None
    )
    split = args.split or ("test" if artifact is not None else "dev")
    artifact_programs = (
        programs_from_artifact(artifact, args.tasks) if artifact is not None else {}
    )
    budget = CallBudget(args.max_calls)
    lm = _make_lm(args, budget)
    results: dict[str, Any] = {}
    selected = {
        task: load_split(
            split, args.dataset_dir, task=task, limit=args.max_examples_per_task
        )
        for task in args.tasks
    }
    total_examples = sum(len(records) for records in selected.values())
    maximum_requests = total_examples * EVALUATION_CALLS_PER_EXAMPLE
    if maximum_requests > args.max_calls:
        raise SystemExit(
            f"Evaluation selects {total_examples} examples and reserves up to "
            f"{maximum_requests} requests including structured-output fallback, "
            f"but max-calls is {args.max_calls}"
        )
    with dspy.context(lm=lm):
        for task, records in selected.items():
            if not records:
                results[task] = {"score": None, "examples": 0}
                continue
            evaluator = dspy.Evaluate(
                devset=[record.to_dspy_example() for record in records],
                metric=METRICS[task],
                num_threads=1,
                display_progress=False,
                display_table=False,
                max_errors=1,
            )
            outcome = evaluator(artifact_programs.get(task) or build_program(task))
            results[task] = {"score": float(outcome.score), "examples": len(records)}
    summary: dict[str, Any] = {
        "model": GROQ_DSPY_MODEL,
        "split": split,
        "callsUsed": budget.used,
        "results": results,
    }
    if artifact is not None:
        summary["artifact"] = {
            "artifactId": artifact["artifactId"],
            "artifactVersion": artifact["artifactVersion"],
            "programVersion": artifact["programVersion"],
            "programDigest": artifact["build"]["programDigest"],
        }
    print(json.dumps(summary, sort_keys=True))
    return 0


def _compile_task(
    task: str,
    args: argparse.Namespace,
    lm: dspy.LM,
) -> object:
    trainset = [
        record.to_dspy_example()
        for record in load_split(
            "train", args.dataset_dir, task=task, limit=args.max_examples_per_task
        )
    ]
    if not trainset:
        raise SystemExit(f"No training examples for {task}")
    student = build_program(task)
    if args.optimizer == "bootstrap":
        optimizer = dspy.BootstrapFewShot(
            metric=METRICS[task],
            max_bootstrapped_demos=min(2, len(trainset)),
            max_labeled_demos=min(2, len(trainset)),
            max_rounds=1,
            max_errors=1,
        )
        return optimizer.compile(student, trainset=trainset)

    valset = [
        record.to_dspy_example()
        for record in load_split(
            "dev", args.dataset_dir, task=task, limit=args.max_examples_per_task
        )
    ]
    optimizer = dspy.GEPA(
        metric=feedback_metric(task),
        max_metric_calls=args.max_calls,
        reflection_minibatch_size=min(3, len(trainset)),
        reflection_lm=lm,
        num_threads=1,
        max_merge_invocations=1,
        seed=0,
        track_stats=False,
    )
    return optimizer.compile(student, trainset=trainset, valset=valset or None)


def command_optimize(args: argparse.Namespace) -> int:
    if args.output.resolve() == DEFAULT_ARTIFACT_PATH.resolve():
        raise SystemExit("Optimization must not overwrite the checked-in deterministic baseline")
    budget = CallBudget(args.max_calls)
    lm = _make_lm(args, budget)
    compiled: dict[str, object] = {}
    with dspy.context(lm=lm):
        for task in args.tasks:
            compiled[task] = _compile_task(task, args, lm)
    artifact = build_artifact(
        dataset_dir=args.dataset_dir,
        optimized_programs=compiled,
        optimizer_name=args.optimizer,
        artifact_version=args.artifact_version,
    )
    write_artifact(artifact, args.output)
    print(
        json.dumps(
            {
                "artifact": str(args.output),
                "callsUsed": budget.used,
                "model": GROQ_DSPY_MODEL,
                "optimizer": args.optimizer,
                "tasks": args.tasks,
            },
            sort_keys=True,
        )
    )
    return 0


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    subparsers = parser.add_subparsers(dest="command", required=True)

    build = subparsers.add_parser("build", help="build the deterministic baseline; no network")
    build.add_argument("--dataset-dir", type=Path, default=DEFAULT_DATASET_DIR)
    build.add_argument("--output", type=Path, default=DEFAULT_ARTIFACT_PATH)
    build.add_argument("--stdout", action="store_true")
    build.set_defaults(handler=command_build)

    validate = subparsers.add_parser("validate", help="validate a JSON artifact offline")
    validate.add_argument("artifact", type=Path, nargs="?", default=DEFAULT_ARTIFACT_PATH)
    validate.add_argument("--dataset-dir", type=Path, default=DEFAULT_DATASET_DIR)
    validate.add_argument("--require-baseline-match", action="store_true")
    validate.set_defaults(handler=command_validate)

    for name in ("evaluate", "optimize"):
        command = subparsers.add_parser(name, help=f"explicitly run {name} against Groq")
        command.add_argument("--allow-network", action="store_true")
        command.add_argument("--dataset-dir", type=Path, default=DEFAULT_DATASET_DIR)
        command.add_argument("--tasks", type=_tasks, default=list(SIGNATURES))
        command.add_argument("--max-calls", type=_call_count, default=40)
        command.add_argument(
            "--max-examples-per-task", type=_example_count, default=4
        )
        command.add_argument("--max-output-tokens", type=_token_count, default=1400)

    evaluate = subparsers.choices["evaluate"]
    evaluate.add_argument(
        "--artifact",
        type=Path,
        help="strict portable artifact to evaluate; defaults to held-out test",
    )
    evaluate.add_argument("--split", choices=("dev", "test"), default=None)
    evaluate.set_defaults(handler=command_evaluate)

    optimize = subparsers.choices["optimize"]
    optimize.add_argument("--optimizer", choices=("bootstrap", "gepa"), required=True)
    optimize.add_argument("--output", type=Path, required=True)
    optimize.add_argument("--artifact-version", default="1.0.0-local")
    optimize.set_defaults(handler=command_optimize)
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    try:
        return int(args.handler(args))
    except CallBudgetExceeded as exc:
        print(f"{args.command} stopped: {exc}", file=sys.stderr)
        return 2
    except Exception as exc:
        print(
            f"{args.command} failed safely ({type(exc).__name__}); no artifact was written.",
            file=sys.stderr,
        )
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
