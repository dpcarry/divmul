"""Vectorized, inference-only emulator for the current FP32 OADM RTL.

The arithmetic mirrors rtl/oadm_core.v and rtl/oadm_dm.v: Q5.23 internal
values, levels 0-3, truncating normalization, and flush-to-zero subnormals.
Pipeline latency is intentionally omitted because it does not change values.
"""

from __future__ import annotations

import torch
from torch import Tensor, nn
from torch.nn import functional as F


ONE_Q = 1 << 23
MIDPOINT_Q = 3 << 22
TWO_POINT_TWO_FIVE_Q = 9 << 21
QUIET_NAN_BITS = 0x7FC00000

RECIP_LUT = (
    (0x72,) * 8,
    (0xA4,) * 4 + (0x54,) * 4,
    (0xCA,) * 2 + (0x87,) * 2 + (0x61,) * 2 + (0x49,) * 2,
    (0xE3, 0xB6, 0x95, 0x7C, 0x69, 0x5A, 0x4E, 0x44),
)


def _require_level(level: int) -> None:
    if level not in range(4):
        raise ValueError("the current OADM RTL supports levels 0 through 3")


def _fp32_bits(value: Tensor) -> Tensor:
    value = torch.as_tensor(value, dtype=torch.float32)
    return value.contiguous().view(torch.int32).to(torch.int64) & 0xFFFFFFFF


def _bits_to_fp32(bits: Tensor) -> Tensor:
    return (bits & 0xFFFFFFFF).to(torch.int32).contiguous().view(torch.float32)


def _delta(
    x_value: Tensor,
    y_value: Tensor,
    x_bit: Tensor,
    y_bit: Tensor,
    midpoint_x: Tensor | int,
    midpoint_y: Tensor | int,
    stage: int,
    divide: bool,
) -> Tensor:
    shift = stage + 1
    if divide:
        raw_x = x_value + midpoint_x
        raw_y = midpoint_y - y_value
        constant_positive = x_bit == y_bit
    else:
        raw_x = x_value - midpoint_x
        raw_y = y_value - midpoint_y
        constant_positive = x_bit != y_bit

    term_x = torch.where(y_bit, raw_x, -raw_x) >> shift
    term_y = torch.where(x_bit, raw_y, -raw_y) >> shift
    constant = ONE_Q >> (2 * stage + 2)
    term_constant = torch.where(
        constant_positive,
        torch.full_like(x_value, constant),
        torch.full_like(x_value, -constant),
    )
    return term_x + term_y + term_constant


def _mantissa_core(
    x_mantissa: Tensor,
    y_mantissa: Tensor,
    level: int,
    divide: bool,
) -> Tensor:
    if divide:
        value = (
            TWO_POINT_TWO_FIVE_Q
            + x_mantissa
            + (x_mantissa >> 1)
            - y_mantissa
            - (y_mantissa >> 1)
        )
    else:
        value = (
            -TWO_POINT_TWO_FIVE_Q
            + x_mantissa
            + (x_mantissa >> 1)
            + y_mantissa
            + (y_mantissa >> 1)
        )

    midpoint_x: Tensor | int = MIDPOINT_Q
    midpoint_y: Tensor | int = MIDPOINT_Q
    for stage, mantissa_bit in enumerate((22, 21, 20), start=1):
        x_bit = ((x_mantissa >> mantissa_bit) & 1).bool()
        y_bit = ((y_mantissa >> mantissa_bit) & 1).bool()
        correction = _delta(
            x_mantissa,
            y_mantissa,
            x_bit,
            y_bit,
            midpoint_x,
            midpoint_y,
            stage,
            divide,
        )
        if level >= stage:
            value = value + correction
        midpoint_step = ONE_Q >> (stage + 1)
        midpoint_x = torch.where(
            x_bit, midpoint_x + midpoint_step, midpoint_x - midpoint_step
        )
        midpoint_y = torch.where(
            y_bit, midpoint_y + midpoint_step, midpoint_y - midpoint_step
        )

    if divide:
        lut_index = ((y_mantissa >> 20) & 0x7).to(torch.long)
        lut = torch.tensor(RECIP_LUT[level], device=value.device, dtype=torch.int64)
        value = (value * lut[lut_index]) >> 8
    return value


def approximate(x: Tensor, y: Tensor, level: int, divide: bool = False) -> Tensor:
    """Apply the current OADM FP32 operation with PyTorch broadcasting."""
    _require_level(level)
    x, y = torch.broadcast_tensors(
        torch.as_tensor(x, dtype=torch.float32),
        torch.as_tensor(y, dtype=torch.float32),
    )
    x_bits = _fp32_bits(x)
    y_bits = _fp32_bits(y)
    x_exponent = (x_bits >> 23) & 0xFF
    y_exponent = (y_bits >> 23) & 0xFF
    x_fraction = x_bits & 0x7FFFFF
    y_fraction = y_bits & 0x7FFFFF
    sign = ((x_bits ^ y_bits) >> 31) & 1

    x_nan = (x_exponent == 0xFF) & (x_fraction != 0)
    y_nan = (y_exponent == 0xFF) & (y_fraction != 0)
    x_inf = (x_exponent == 0xFF) & (x_fraction == 0)
    y_inf = (y_exponent == 0xFF) & (y_fraction == 0)
    x_zero = x_exponent == 0
    y_zero = y_exponent == 0

    invalid = x_nan | y_nan
    if divide:
        invalid = invalid | (x_zero & y_zero) | (x_inf & y_inf)
        infinity = ~invalid & (x_inf | y_zero)
        zero = ~invalid & ~infinity & (x_zero | y_inf)
        result_exponent = x_exponent - y_exponent + 127
    else:
        invalid = invalid | (x_zero & y_inf) | (x_inf & y_zero)
        infinity = ~invalid & (x_inf | y_inf)
        zero = ~invalid & ~infinity & (x_zero | y_zero)
        result_exponent = x_exponent + y_exponent - 127

    x_mantissa = ONE_Q | x_fraction
    y_mantissa = ONE_Q | y_fraction
    core_value = _mantissa_core(x_mantissa, y_mantissa, level, divide)

    normalized = core_value
    exponent_adjustment = torch.zeros_like(core_value)
    high = core_value >= (2 * ONE_Q)
    below_one = core_value < ONE_Q
    below_half = core_value < (ONE_Q >> 1)
    below_quarter = core_value < (ONE_Q >> 2)
    normalized = torch.where(high, core_value >> 1, normalized)
    exponent_adjustment = torch.where(high, 1, exponent_adjustment)
    normalized = torch.where(below_one & ~below_half, core_value << 1, normalized)
    exponent_adjustment = torch.where(
        below_one & ~below_half, -1, exponent_adjustment
    )
    normalized = torch.where(
        below_half & ~below_quarter, core_value << 2, normalized
    )
    exponent_adjustment = torch.where(
        below_half & ~below_quarter, -2, exponent_adjustment
    )
    normalized = torch.where(below_quarter, core_value << 3, normalized)
    exponent_adjustment = torch.where(below_quarter, -3, exponent_adjustment)
    result_exponent = result_exponent + exponent_adjustment

    finite_zero = (core_value <= 0) | (result_exponent <= 0)
    finite_inf = result_exponent >= 255
    finite_bits = (
        (sign << 31)
        | ((result_exponent.clamp(0, 255) & 0xFF) << 23)
        | (normalized & 0x7FFFFF)
    )
    finite_bits = torch.where(finite_zero, sign << 31, finite_bits)
    finite_bits = torch.where(finite_inf, (sign << 31) | 0x7F800000, finite_bits)
    result_bits = torch.where(zero, sign << 31, finite_bits)
    result_bits = torch.where(infinity, (sign << 31) | 0x7F800000, result_bits)
    result_bits = torch.where(
        invalid, torch.full_like(result_bits, QUIET_NAN_BITS), result_bits
    )
    return _bits_to_fp32(result_bits)


def approx_mul(x: Tensor, y: Tensor, level: int) -> Tensor:
    return approximate(x, y, level, divide=False)


def approx_div(x: Tensor, y: Tensor, level: int) -> Tensor:
    return approximate(x, y, level, divide=True)


def approximate_linear(
    features: Tensor,
    weight: Tensor,
    bias: Tensor | None,
    level: int | None,
    output_chunk: int = 8,
) -> Tensor:
    """Linear layer with OADM products and standard FP32 accumulation.

    ``level=None`` is the exact PyTorch baseline. Output chunking bounds the
    temporary [batch, output, input] product tensor.
    """
    if level is None:
        return F.linear(features, weight, bias)
    _require_level(level)
    outputs = []
    for start in range(0, weight.shape[0], output_chunk):
        chunk_weight = weight[start : start + output_chunk]
        products = approx_mul(
            features.unsqueeze(-2), chunk_weight.unsqueeze(0), level
        )
        chunk_output = products.sum(dim=-1)
        if bias is not None:
            chunk_output = chunk_output + bias[start : start + output_chunk]
        outputs.append(chunk_output)
    return torch.cat(outputs, dim=-1)


class ApproxLinear(nn.Linear):
    """Drop-in inference Linear module using one fixed OADM level."""

    def __init__(self, source: nn.Linear, level: int | None, output_chunk: int = 8):
        super().__init__(source.in_features, source.out_features, source.bias is not None)
        self.load_state_dict(source.state_dict())
        self.level = level
        self.output_chunk = output_chunk
        for parameter in self.parameters():
            parameter.requires_grad_(False)

    def forward(self, features: Tensor) -> Tensor:
        return approximate_linear(
            features, self.weight, self.bias, self.level, self.output_chunk
        )
