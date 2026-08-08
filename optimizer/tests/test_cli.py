from __future__ import annotations

import io
import json
import os
import unittest
from contextlib import redirect_stderr, redirect_stdout
from unittest.mock import patch

import dspy

from optimizer.cli import (
    BudgetedGroqLM,
    CallBudget,
    CallBudgetExceeded,
    build_parser,
    main,
)


class CliTests(unittest.TestCase):
    def test_offline_build_writes_json_to_stdout(self) -> None:
        output = io.StringIO()
        with redirect_stdout(output):
            self.assertEqual(main(["build", "--stdout"]), 0)
        artifact = json.loads(output.getvalue())
        self.assertEqual(artifact["mode"], "deterministic-baseline")
        self.assertFalse(artifact["build"]["networkUsed"])

    def test_network_commands_require_explicit_flag(self) -> None:
        with patch.dict(os.environ, {}, clear=True):
            with self.assertRaisesRegex(SystemExit, "--allow-network"):
                main(["evaluate"])
            with self.assertRaisesRegex(SystemExit, "GROQ_API_KEY"):
                main(["evaluate", "--allow-network"])

    def test_budget_bounds_are_enforced_by_parser(self) -> None:
        parser = build_parser()
        with self.assertRaises(SystemExit):
            parser.parse_args(["evaluate", "--max-calls", "201"])
        with self.assertRaises(SystemExit):
            parser.parse_args(["optimize", "--optimizer", "gepa", "--output", "x.json", "--max-output-tokens", "5000"])

    def test_budget_is_enforced_before_a_second_lm_forward(self) -> None:
        budget = CallBudget(1)
        lm = BudgetedGroqLM(
            "groq/openai/gpt-oss-120b",
            call_budget=budget,
            api_key="test-only",
            num_retries=0,
        )
        with patch.object(dspy.LM, "forward", return_value=object()) as provider:
            lm.forward(prompt="first")
            with self.assertRaises(CallBudgetExceeded):
                lm.forward(prompt="second")
        self.assertEqual(provider.call_count, 1)
        self.assertEqual(budget.used, 1)

    def test_evaluation_reserves_structured_output_fallback_calls(self) -> None:
        with patch.dict(os.environ, {"GROQ_API_KEY": "test-only"}, clear=True):
            with self.assertRaisesRegex(SystemExit, "structured-output fallback"):
                main(
                    [
                        "evaluate",
                        "--allow-network",
                        "--tasks",
                        "grounded_answer",
                        "--max-calls",
                        "1",
                        "--max-examples-per-task",
                        "1",
                    ]
                )

    def test_provider_failures_are_concise_and_redacted(self) -> None:
        stderr = io.StringIO()
        with patch(
            "optimizer.cli.command_evaluate",
            side_effect=RuntimeError("gsk_super-secret traceback payload"),
        ):
            with redirect_stderr(stderr):
                result = main(["evaluate"])
        message = stderr.getvalue()
        self.assertEqual(result, 1)
        self.assertIn("failed safely (RuntimeError)", message)
        self.assertNotIn("gsk_", message)
        self.assertNotIn("traceback payload", message)

    def test_artifact_evaluation_defaults_to_held_out_test(self) -> None:
        args = build_parser().parse_args(
            [
                "evaluate",
                "--artifact",
                "optimizer/artifacts/trainwiki-taf-tap-baseline-v1.json",
            ]
        )
        self.assertIsNone(args.split)


if __name__ == "__main__":
    unittest.main()
