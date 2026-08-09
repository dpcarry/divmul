#!/usr/bin/env python3
"""Select Adult OADM assignments on validation and report locked test metrics."""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

import yaml

sys.path.insert(0, str(Path(__file__).resolve().parent))
from adult_oadm_workflow import choose_assignments, load_assignment_rows  # noqa: E402


def parse_args():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--config", type=Path, default=Path("fairness/configs/adult_mlp.yaml")
    )
    parser.add_argument("--validation-csv", type=Path, required=True)
    parser.add_argument("--test-csv", type=Path, required=True)
    parser.add_argument(
        "--output",
        type=Path,
        default=Path("fairness/summaries/adult_oadm_seed42.json"),
    )
    return parser.parse_args()


def assignment_key(row):
    return tuple(row[name] for name in ("layer_1", "layer_2", "layer_3"))


def main():
    args = parse_args()
    config = yaml.safe_load(args.config.read_text(encoding="utf-8"))
    validation_rows = load_assignment_rows(args.validation_csv)
    test_rows = load_assignment_rows(args.test_csv)
    validation_selection = choose_assignments(validation_rows, config)
    test_by_assignment = {assignment_key(row): row for row in test_rows}

    selected_names = (
        "exact",
        "accuracy_only_assignment",
        "fairness_aware_assignment",
    )
    selected = {}
    for name in selected_names:
        validation_row = validation_selection[name]
        selected[name] = {
            "assignment": list(assignment_key(validation_row)),
            "validation": validation_row,
            "test": test_by_assignment[assignment_key(validation_row)],
        }

    uniforms = {}
    for level_name, validation_row in validation_selection["uniform"].items():
        uniforms[level_name] = {
            "validation": validation_row,
            "test": test_by_assignment[assignment_key(validation_row)],
        }

    output = {
        "selection_split": "validation",
        "report_split": "test",
        "constraints": validation_selection["constraints"],
        "selected": selected,
        "uniform": uniforms,
        "notes": {
            "selection": "Assignments are selected without test metrics.",
            "approximation_strength": (
                "Operation-weighted ordering proxy, not measured PPA."
            ),
            "arithmetic": "OADM products with exact FP32 accumulation and bias.",
        },
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(output, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    print(json.dumps(selected, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
