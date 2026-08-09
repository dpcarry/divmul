#!/usr/bin/env python3
"""Evaluate layer-level OADM assignments on the trained Adult MLP."""

from __future__ import annotations

import argparse
import csv
import json
import sys
import time
from collections import defaultdict
from pathlib import Path

import numpy as np
import torch
import yaml
from joblib import load
from torch.nn import functional as F

sys.path.insert(0, str(Path(__file__).resolve().parent))
from adult_baseline import (  # noqa: E402
    AdultMLP,
    evaluate,
    load_adult,
    set_deterministic,
    split_data,
)
from oadm_emulator import approximate_linear  # noqa: E402


LEVELS = (None, 0, 1, 2, 3)
LEVEL_NAME = {None: "exact", 0: "L0", 1: "L1", 2: "L2", 3: "L3"}
# This is an ordering proxy, not measured energy. Higher means more aggressive.
LEVEL_STRENGTH = {None: 0, 0: 4, 1: 3, 2: 2, 3: 1}


def parse_args():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--config", type=Path, default=Path("fairness/configs/adult_mlp.yaml")
    )
    parser.add_argument(
        "--baseline-dir",
        type=Path,
        default=Path("fairness/results/accurate_baseline"),
    )
    parser.add_argument(
        "--out-dir",
        type=Path,
        default=Path("fairness/results/oadm_layer_search"),
    )
    parser.add_argument(
        "--levels",
        default="exact,0,1,2,3",
        help="comma-separated candidate levels; use 'exact' for FP32",
    )
    parser.add_argument(
        "--split",
        choices=("validation", "test"),
        default="test",
        help="dataset split to evaluate; select assignments on validation only",
    )
    parser.add_argument(
        "--max-test-samples",
        type=int,
        default=None,
        help="optional deterministic prefix for quick smoke tests",
    )
    parser.add_argument(
        "--reuse-csv",
        type=Path,
        default=None,
        help="reselect summary from an existing assignments.csv without inference",
    )
    return parser.parse_args()


def parse_levels(value):
    levels = []
    for token in value.split(","):
        token = token.strip().lower()
        level = None if token == "exact" else int(token)
        if level not in LEVELS:
            raise ValueError(f"unsupported level {token!r}")
        if level not in levels:
            levels.append(level)
    return tuple(levels)


def layer_parameters(model):
    linear_layers = [layer for layer in model.network if isinstance(layer, torch.nn.Linear)]
    if len(linear_layers) != 3:
        raise ValueError(f"expected three Linear layers, found {len(linear_layers)}")
    return [(layer.weight.detach(), layer.bias.detach()) for layer in linear_layers]


def flatten_metrics(assignment, metrics, macs):
    names = [LEVEL_NAME[level] for level in assignment]
    total_macs = sum(macs)
    approximation_strength = sum(
        count * LEVEL_STRENGTH[level] for count, level in zip(macs, assignment)
    ) / (4.0 * total_macs)
    male = metrics["groups"]["Male"]
    female = metrics["groups"]["Female"]
    return {
        "layer_1": names[0],
        "layer_2": names[1],
        "layer_3": names[2],
        "approximation_strength": approximation_strength,
        "overall_accuracy": metrics["overall_accuracy"],
        "f1_score": metrics["f1_score"],
        "worst_group_accuracy": metrics["worst_group_accuracy"],
        "group_accuracy_gap": metrics["group_accuracy_gap"],
        "demographic_parity_difference": metrics["demographic_parity_difference"],
        "equal_opportunity_difference": metrics["equal_opportunity_difference"],
        "equalized_odds_difference": metrics["equalized_odds_difference"],
        "male_accuracy": male["accuracy"],
        "female_accuracy": female["accuracy"],
        "male_tpr": male["true_positive_rate"],
        "female_tpr": female["true_positive_rate"],
        "male_fpr": male["false_positive_rate"],
        "female_fpr": female["false_positive_rate"],
    }


def assignment_name(row):
    return "/".join(row[key] for key in ("layer_1", "layer_2", "layer_3"))


def load_assignment_rows(path):
    with path.open(newline="", encoding="utf-8") as source:
        rows = list(csv.DictReader(source))
    for row in rows:
        for key, value in row.items():
            if key not in ("layer_1", "layer_2", "layer_3"):
                row[key] = float(value)
    return rows


def write_summary(summary, out_dir):
    out_dir.mkdir(parents=True, exist_ok=True)
    (out_dir / "summary.json").write_text(
        json.dumps(summary, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    print("\nAdult OADM assignment summary")
    print(f"exact:          {assignment_name(summary['exact'])}")
    print(f"accuracy-only:  {assignment_name(summary['accuracy_only_assignment'])}")
    print(f"fairness-aware: {assignment_name(summary['fairness_aware_assignment'])}")
    print(json.dumps(summary["uniform"], indent=2, sort_keys=True))


def choose_assignments(rows, config):
    exact = next(
        row
        for row in rows
        if (row["layer_1"], row["layer_2"], row["layer_3"])
        == ("exact", "exact", "exact")
    )
    max_drop = config.get("max_accuracy_drop", 0.01)
    fairness_tolerance = config.get("max_equal_opportunity_increase", 0.005)
    accuracy_feasible = [
        row
        for row in rows
        if row["overall_accuracy"] >= exact["overall_accuracy"] - max_drop
    ]
    accuracy_only = max(
        accuracy_feasible,
        key=lambda row: (row["approximation_strength"], row["overall_accuracy"]),
    )
    fairness_feasible = [
        row
        for row in accuracy_feasible
        if row["equal_opportunity_difference"]
        <= exact["equal_opportunity_difference"] + fairness_tolerance
    ]
    fairness_aware = max(
        fairness_feasible,
        key=lambda row: (
            row["approximation_strength"],
            -row["equal_opportunity_difference"],
            row["worst_group_accuracy"],
        ),
    )
    uniforms = {
        row["layer_1"]: row
        for row in rows
        if row["layer_1"] == row["layer_2"] == row["layer_3"]
    }
    return {
        "constraints": {
            "max_accuracy_drop": max_drop,
            "max_equal_opportunity_increase": fairness_tolerance,
        },
        "exact": exact,
        "uniform": uniforms,
        "accuracy_only_assignment": accuracy_only,
        "fairness_aware_assignment": fairness_aware,
        "notes": {
            "approximation_strength": (
                "Operation-weighted level ordering proxy; not area, power, or energy."
            ),
            "accumulation": "Products use OADM RTL arithmetic; sums remain FP32.",
        },
    }


def main():
    args = parse_args()
    config = yaml.safe_load(args.config.read_text(encoding="utf-8"))
    candidates = parse_levels(args.levels)
    if None not in candidates:
        raise ValueError("candidate levels must include exact for baseline comparison")
    set_deterministic(config["seed"])

    if args.reuse_csv is not None:
        rows = load_assignment_rows(args.reuse_csv)
        summary = choose_assignments(rows, config)
        summary["candidate_assignments"] = len(rows)
        summary["source_assignments"] = str(args.reuse_csv)
        write_summary(summary, args.out_dir)
        return

    features, target, sensitive = load_adult(
        Path("fairness/data/openml"), config["sensitive_attribute"]
    )
    splits = split_data(features, target, sensitive, config)
    _, val_x, test_x, _, val_y, test_y, _, val_s, test_s = splits
    if args.split == "validation":
        evaluation_x, evaluation_y, evaluation_s = val_x, val_y, val_s
    else:
        evaluation_x, evaluation_y, evaluation_s = test_x, test_y, test_s
    preprocessor = load(args.baseline_dir / "preprocessor.joblib")
    evaluation_features = preprocessor.transform(evaluation_x).astype(np.float32)
    if args.max_test_samples is not None:
        count = min(args.max_test_samples, len(evaluation_features))
        evaluation_features = evaluation_features[:count]
        evaluation_y = evaluation_y.iloc[:count]
        evaluation_s = evaluation_s.iloc[:count]

    model = AdultMLP(
        evaluation_features.shape[1], config["hidden_sizes"], config["dropout"]
    )
    model.load_state_dict(
        torch.load(args.baseline_dir / "adult_mlp.pt", map_location="cpu", weights_only=True)
    )
    model.eval()
    layers = layer_parameters(model)
    macs = tuple(weight.numel() for weight, _ in layers)
    probabilities = defaultdict(list)
    batch_size = config.get("oadm_batch_size", 256)
    output_chunk = config.get("oadm_output_chunk", 8)

    start_time = time.monotonic()
    with torch.no_grad():
        for batch_start in range(0, len(evaluation_features), batch_size):
            batch = torch.from_numpy(
                evaluation_features[batch_start : batch_start + batch_size]
            )
            first = {}
            for level_1 in candidates:
                first[level_1] = F.relu(
                    approximate_linear(
                        batch, *layers[0], level_1, output_chunk=output_chunk
                    )
                )

            second = {}
            for level_1 in candidates:
                for level_2 in candidates:
                    second[(level_1, level_2)] = F.relu(
                        approximate_linear(
                            first[level_1],
                            *layers[1],
                            level_2,
                            output_chunk=output_chunk,
                        )
                    )

            for level_1 in candidates:
                for level_2 in candidates:
                    for level_3 in candidates:
                        logits = approximate_linear(
                            second[(level_1, level_2)],
                            *layers[2],
                            level_3,
                            output_chunk=output_chunk,
                        )
                        probabilities[(level_1, level_2, level_3)].append(
                            torch.sigmoid(logits).cpu().numpy()
                        )
            completed = min(batch_start + len(batch), len(evaluation_features))
            print(
                f"evaluated {completed}/{len(evaluation_features)} "
                f"{args.split} samples",
                flush=True,
            )

    rows = []
    for assignment, chunks in probabilities.items():
        metrics = evaluate(
            evaluation_y, np.concatenate(chunks), evaluation_s, config
        )
        rows.append(flatten_metrics(assignment, metrics, macs))
    rows.sort(key=lambda row: (row["layer_1"], row["layer_2"], row["layer_3"]))
    summary = choose_assignments(rows, config)
    summary["runtime_seconds"] = time.monotonic() - start_time
    summary["evaluation_split"] = args.split
    summary["evaluation_samples"] = len(evaluation_features)
    summary["candidate_assignments"] = len(rows)
    summary["layer_macs"] = list(macs)

    args.out_dir.mkdir(parents=True, exist_ok=True)
    with (args.out_dir / "assignments.csv").open("w", newline="", encoding="utf-8") as output:
        writer = csv.DictWriter(output, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    write_summary(summary, args.out_dir)


if __name__ == "__main__":
    main()
