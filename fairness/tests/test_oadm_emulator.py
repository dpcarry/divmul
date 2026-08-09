import importlib.util
from pathlib import Path

import numpy as np
import pytest
import torch


MODULE_PATH = Path(__file__).parents[1] / "src" / "oadm_emulator.py"
SPEC = importlib.util.spec_from_file_location("oadm_emulator", MODULE_PATH)
OADM = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(OADM)


@pytest.mark.parametrize(
    ("level", "expected"),
    [(0, 0.75), (1, 0.9375), (2, 0.984375), (3, 0.99609375)],
)
def test_one_times_one_matches_rtl_planes(level, expected):
    actual = OADM.approx_mul(torch.tensor(1.0), torch.tensor(1.0), level)
    assert actual.item() == expected


def test_broadcasting_and_sign_handling():
    x = torch.tensor([[1.0], [-1.25]], dtype=torch.float32)
    y = torch.tensor([[1.0, -1.5]], dtype=torch.float32)
    result = OADM.approx_mul(x, y, 3)
    assert result.shape == (2, 2)
    assert torch.equal(torch.signbit(result), torch.signbit(x * y))


def test_special_values_and_flush_subnormal():
    tiny = torch.tensor(np.nextafter(np.float32(0), np.float32(1)))
    x = torch.tensor([0.0, float("inf"), tiny.item(), 1.0])
    y = torch.tensor([float("inf"), 0.0, 1.0, 0.0])
    mul = OADM.approx_mul(x, y, 3)
    div = OADM.approx_div(x, y, 3)
    assert torch.isnan(mul[0]) and torch.isnan(mul[1])
    assert mul[2].item() == 0.0
    assert not torch.isnan(div[3]).item()
    assert torch.isinf(div[3])


def test_approx_linear_exact_mode_matches_pytorch():
    torch.manual_seed(7)
    layer = torch.nn.Linear(5, 3)
    features = torch.randn(4, 5)
    actual = OADM.approximate_linear(features, layer.weight, layer.bias, None)
    assert torch.equal(actual, layer(features))
