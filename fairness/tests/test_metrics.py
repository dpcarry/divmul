import importlib.util
from pathlib import Path

import numpy as np


MODULE_PATH = Path(__file__).parents[1] / "src" / "adult_baseline.py"
SPEC = importlib.util.spec_from_file_location("adult_baseline", MODULE_PATH)
ADULT_BASELINE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(ADULT_BASELINE)


def test_evaluate_reports_expected_group_gaps():
    target = np.array([1, 1, 0, 0, 1, 1, 0, 0])
    probability = np.array([0.9, 0.8, 0.7, 0.1, 0.9, 0.4, 0.2, 0.1])
    sensitive = np.array(["Male"] * 4 + ["Female"] * 4)
    config = {
        "decision_threshold": 0.5,
        "privileged_group": "Male",
        "unprivileged_group": "Female",
    }

    metrics = ADULT_BASELINE.evaluate(target, probability, sensitive, config)

    assert metrics["overall_accuracy"] == 0.75
    assert metrics["groups"]["Male"]["accuracy"] == 0.75
    assert metrics["groups"]["Female"]["accuracy"] == 0.75
    assert metrics["equal_opportunity_difference"] == 0.5
    assert metrics["demographic_parity_difference"] == 0.5
