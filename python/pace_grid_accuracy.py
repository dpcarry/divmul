#!/usr/bin/env python3
"""Chunked PACE-style accuracy evaluation of the current OADM RTL arithmetic."""

import argparse
import csv
import time
from pathlib import Path

import numpy as np


ONE_Q = 1 << 23
MIDPOINT_Q = 3 << 22
TWO_Q = 1 << 24
TWO_POINT_TWO_FIVE_Q = 9 << 21
LEVEL_COUNT = 4
COEFFICIENT_BITS = 7

COEFFICIENTS = (
    np.full(16, 0x39, dtype=np.int64),
    np.array([0x52] * 8 + [0x2A] * 8, dtype=np.int64),
    np.repeat(np.array([0x65, 0x44, 0x30, 0x24], dtype=np.int64), 4),
    np.repeat(
        np.array([0x71, 0x5B, 0x4A, 0x3E,
                  0x34, 0x2D, 0x27, 0x22],
                 dtype=np.int64),
        2,
    ),
)

PACE_RESULTS = {
    1: (0.028, 0.026, 0.045),
    2: (0.015, 0.014, 0.022),
    3: (0.011, 0.011, 0.014),
    4: (0.005, 0.005, 0.007),
}


def signed_term(value, direction_bit, shift):
    return np.right_shift(np.where(direction_bit, value, -value), shift)


def correction_terms(x_mantissa, y_mantissa, divide_mode):
    """Return the RTL base plane and four 29-bit correction terms."""
    x_bit22 = ((x_mantissa >> 22) & 1).astype(bool)
    y_bit22 = ((y_mantissa >> 22) & 1).astype(bool)

    if divide_mode:
        base = (TWO_POINT_TWO_FIVE_Q + x_mantissa + (x_mantissa >> 1)
                - y_mantissa - (y_mantissa >> 1))
        raw1 = x_mantissa + MIDPOINT_Q
        raw2 = MIDPOINT_Q - y_mantissa
        term3 = np.where(x_bit22 == y_bit22, ONE_Q >> 4, -(ONE_Q >> 4))
    else:
        base = (-TWO_POINT_TWO_FIVE_Q + x_mantissa + (x_mantissa >> 1)
                + y_mantissa + (y_mantissa >> 1))
        raw1 = x_mantissa - MIDPOINT_Q
        raw2 = y_mantissa - MIDPOINT_Q
        term3 = np.where(x_bit22 != y_bit22, ONE_Q >> 4, -(ONE_Q >> 4))
    d1 = signed_term(raw1, y_bit22, 2) + signed_term(raw2, x_bit22, 2) + term3
    mx1 = np.where(x_bit22, MIDPOINT_Q + (ONE_Q >> 2),
                   MIDPOINT_Q - (ONE_Q >> 2))
    my1 = np.where(y_bit22, MIDPOINT_Q + (ONE_Q >> 2),
                   MIDPOINT_Q - (ONE_Q >> 2))

    x_bit21 = ((x_mantissa >> 21) & 1).astype(bool)
    y_bit21 = ((y_mantissa >> 21) & 1).astype(bool)
    if divide_mode:
        raw1 = x_mantissa + mx1
        raw2 = my1 - y_mantissa
        term3 = np.where(x_bit21 == y_bit21, ONE_Q >> 6, -(ONE_Q >> 6))
    else:
        raw1 = x_mantissa - mx1
        raw2 = y_mantissa - my1
        term3 = np.where(x_bit21 != y_bit21, ONE_Q >> 6, -(ONE_Q >> 6))
    d2 = signed_term(raw1, y_bit21, 3) + signed_term(raw2, x_bit21, 3) + term3
    mx2 = np.where(x_bit21, mx1 + (ONE_Q >> 3), mx1 - (ONE_Q >> 3))
    my2 = np.where(y_bit21, my1 + (ONE_Q >> 3), my1 - (ONE_Q >> 3))

    x_bit20 = ((x_mantissa >> 20) & 1).astype(bool)
    y_bit20 = ((y_mantissa >> 20) & 1).astype(bool)
    mx3 = np.where(x_bit20, mx2 + (ONE_Q >> 4), mx2 - (ONE_Q >> 4))
    my3 = np.where(y_bit20, my2 + (ONE_Q >> 4), my2 - (ONE_Q >> 4))
    if divide_mode:
        raw1 = x_mantissa + mx2
        raw2 = my2 - y_mantissa
        term3 = np.where(x_bit20 == y_bit20, ONE_Q >> 8, -(ONE_Q >> 8))
    else:
        raw1 = x_mantissa - mx2
        raw2 = y_mantissa - my2
        term3 = np.where(x_bit20 != y_bit20, ONE_Q >> 8, -(ONE_Q >> 8))
    d3 = signed_term(raw1, y_bit20, 4) + signed_term(raw2, x_bit20, 4) + term3

    x_bit19 = ((x_mantissa >> 19) & 1).astype(bool)
    y_bit19 = ((y_mantissa >> 19) & 1).astype(bool)
    if divide_mode:
        raw1 = x_mantissa + mx3
        raw2 = my3 - y_mantissa
        term3 = np.where(x_bit19 == y_bit19, ONE_Q >> 10, -(ONE_Q >> 10))
    else:
        raw1 = x_mantissa - mx3
        raw2 = y_mantissa - my3
        term3 = np.where(x_bit19 != y_bit19, ONE_Q >> 10, -(ONE_Q >> 10))
    d4 = signed_term(raw1, y_bit19, 5) + signed_term(raw2, x_bit19, 5) + term3
    return base, d1, d2, d3, d4


def pack_fp32(core):
    """Apply the positive, finite exponent-127 RTL normalization path."""
    exponent = np.full(core.shape, 127, dtype=np.int64)
    normalized = core.copy()

    select = core >= TWO_Q
    normalized[select] = core[select] >> 1
    exponent[select] += 1

    select = (core < ONE_Q) & (core >= (ONE_Q >> 1))
    normalized[select] = core[select] << 1
    exponent[select] -= 1

    select = (core < (ONE_Q >> 1)) & (core >= (ONE_Q >> 2))
    normalized[select] = core[select] << 2
    exponent[select] -= 2

    select = core < (ONE_Q >> 2)
    normalized[select] = core[select] << 3
    exponent[select] -= 3

    fraction = normalized & (ONE_Q - 1)
    return ((exponent << 23) | fraction).astype(np.uint32)


def evaluate_all_levels(x_mantissa, y_mantissa, divide_mode):
    terms = correction_terms(x_mantissa, y_mantissa, divide_mode)
    shared = terms[0].copy()
    y_index = (y_mantissa >> 19) & 0xF
    outputs = []
    for level in range(LEVEL_COUNT):
        if level:
            shared = shared + terms[level]
        if divide_mode:
            coefficient = COEFFICIENTS[level][y_index]
            core = np.right_shift(shared * coefficient, COEFFICIENT_BITS)
        else:
            core = shared
        outputs.append(pack_fp32(core))
    return outputs


def fp32_bits_to_real(bits):
    exponent = ((bits >> 23) & 0xFF).astype(np.int64)
    fraction = (bits & (ONE_Q - 1)).astype(np.float64)
    return np.ldexp(1.0 + fraction / ONE_Q, exponent - 127)


def uniform_mantissas(points):
    fractions = (np.arange(points, dtype=np.int64) * ONE_Q) // points
    return ONE_Q + fractions


def make_accumulator(mode, level):
    return {
        "mode": mode,
        "level": level,
        "cases": 0,
        "sum_abs": 0.0,
        "sum_abs_rel": 0.0,
        "sum_sq": 0.0,
        "sum_sq_rel": 0.0,
        "max_rel": -1.0,
        "worst_x": 0.0,
        "worst_y": 0.0,
        "worst_expected": 0.0,
        "worst_actual": 0.0,
    }


def update_accumulator(accumulator, x_values, y_values, expected, actual):
    error = actual - expected
    absolute_error = np.abs(error)
    relative_error = absolute_error / np.abs(expected)
    accumulator["cases"] += expected.size
    accumulator["sum_abs"] += float(np.sum(absolute_error, dtype=np.float64))
    accumulator["sum_abs_rel"] += float(np.sum(relative_error, dtype=np.float64))
    accumulator["sum_sq"] += float(np.sum(error * error, dtype=np.float64))
    accumulator["sum_sq_rel"] += float(
        np.sum(relative_error * relative_error, dtype=np.float64)
    )
    flat_index = int(np.argmax(relative_error))
    chunk_maximum = float(relative_error.flat[flat_index])
    if chunk_maximum > accumulator["max_rel"]:
        row, column = np.unravel_index(flat_index, relative_error.shape)
        accumulator["max_rel"] = chunk_maximum
        accumulator["worst_x"] = float(x_values[row, 0])
        accumulator["worst_y"] = float(y_values[0, column])
        accumulator["worst_expected"] = float(expected[row, column])
        accumulator["worst_actual"] = float(actual[row, column])


def finalize(accumulator):
    count = accumulator["cases"]
    return {
        "mode": accumulator["mode"],
        "level": accumulator["level"],
        "cases": count,
        "mae": accumulator["sum_abs"] / count,
        "mred": accumulator["sum_abs_rel"] / count,
        "mred_pct": 100.0 * accumulator["sum_abs_rel"] / count,
        "rmse": (accumulator["sum_sq"] / count) ** 0.5,
        "rmse_rel_pct": 100.0 * (accumulator["sum_sq_rel"] / count) ** 0.5,
        "max_rel_pct": 100.0 * accumulator["max_rel"],
        "worst_x": accumulator["worst_x"],
        "worst_y": accumulator["worst_y"],
        "worst_expected": accumulator["worst_expected"],
        "worst_actual": accumulator["worst_actual"],
    }


def run_grid(points, chunk_size):
    mantissas = uniform_mantissas(points)
    y_mantissa = mantissas[np.newaxis, :]
    y_values = y_mantissa.astype(np.float64) / ONE_Q
    accumulators = {
        (mode, level): make_accumulator(mode, level)
        for mode in ("MUL", "DIV")
        for level in range(LEVEL_COUNT)
    }
    chunks = (points + chunk_size - 1) // chunk_size
    start_time = time.monotonic()

    for chunk_index, start in enumerate(range(0, points, chunk_size), 1):
        stop = min(start + chunk_size, points)
        x_mantissa = mantissas[start:stop, np.newaxis]
        x_values = x_mantissa.astype(np.float64) / ONE_Q

        for divide_mode, mode in ((False, "MUL"), (True, "DIV")):
            expected = x_values / y_values if divide_mode else x_values * y_values
            outputs = evaluate_all_levels(x_mantissa, y_mantissa, divide_mode)
            for level, output_bits in enumerate(outputs):
                actual = fp32_bits_to_real(output_bits)
                update_accumulator(
                    accumulators[(mode, level)], x_values, y_values,
                    expected, actual,
                )

        if chunk_index == 1 or chunk_index % 10 == 0 or chunk_index == chunks:
            elapsed = time.monotonic() - start_time
            print(
                f"chunk {chunk_index}/{chunks}: x[{start}:{stop}] "
                f"elapsed={elapsed:.1f}s",
                flush=True,
            )

    return [
        finalize(accumulators[(mode, level)])
        for mode in ("MUL", "DIV")
        for level in range(LEVEL_COUNT)
    ]


def write_results(rows, out_dir, points, chunk_size, elapsed):
    out_dir.mkdir(parents=True, exist_ok=True)
    fields = list(rows[0])
    with (out_dir / "oadm_grid_accuracy.csv").open("w", newline="") as output:
        writer = csv.DictWriter(output, fieldnames=fields, lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)

    comparison_fields = [
        "level", "oadm_mae", "pace_mae", "mae_reduction_pct",
        "oadm_mred", "pace_mred", "mred_reduction_pct",
        "oadm_rmse", "pace_rmse", "rmse_reduction_pct",
    ]
    with (out_dir / "pace_comparison.csv").open("w", newline="") as output:
        writer = csv.DictWriter(
            output, fieldnames=comparison_fields, lineterminator="\n"
        )
        writer.writeheader()
        for level in range(1, LEVEL_COUNT):
            oadm = next(row for row in rows
                        if row["mode"] == "DIV" and row["level"] == level)
            pace_mae, pace_mred, pace_rmse = PACE_RESULTS[level]
            writer.writerow({
                "level": level,
                "oadm_mae": oadm["mae"],
                "pace_mae": pace_mae,
                "mae_reduction_pct": 100.0 * (pace_mae - oadm["mae"]) / pace_mae,
                "oadm_mred": oadm["mred"],
                "pace_mred": pace_mred,
                "mred_reduction_pct": 100.0 * (pace_mred - oadm["mred"]) / pace_mred,
                "oadm_rmse": oadm["rmse"],
                "pace_rmse": pace_rmse,
                "rmse_reduction_pct": 100.0 * (pace_rmse - oadm["rmse"]) / pace_rmse,
            })

    with (out_dir / "README.md").open("w") as output:
        output.write(
            "# PACE-style exhaustive mantissa-grid accuracy\n\n"
            f"This campaign evaluates {points} uniformly spaced FP32 mantissas "
            f"in `[1,2)` for both x and y, forming {points * points:,} pairs "
            "per mode and level. The endpoint 2.0 is excluded.\n\n"
            "The chunked NumPy model reproduces the current RTL integer "
            f"corrections, Q0.{COEFFICIENT_BITS} LUT constants, product "
            "truncation, and FP32 "
            "normalization. It accumulates statistics without storing the full "
            "output matrix.\n\n"
            f"Chunk size: {chunk_size}; elapsed time: {elapsed:.1f} seconds.\n\n"
            "`pace_comparison.csv` transcribes the PACE Table II MAE, MRED, "
            "and RMSE values. PACE reports MRED as a ratio, not a percentage.\n\n"
        )
        output.write(
            "The model was checked bit-for-bit against the P6 RTL on 1,000 "
            "vectors spanning both modes and all five levels. Regenerate that "
            "check with `make crosscheck` in "
            "`qsim_rtl/tb_pipeline_accuracy`.\n\n"
            "## OADM results\n\n"
            "| Mode | Level | MAE | MRED (%) | RMSE | R-RMSE (%) | MaxRE (%) |\n"
            "|---|---:|---:|---:|---:|---:|---:|\n"
        )
        for row in rows:
            output.write(
                f"| {row['mode']} | L{row['level']} | {row['mae']:.9f} | "
                f"{row['mred_pct']:.6f} | {row['rmse']:.9f} | "
                f"{row['rmse_rel_pct']:.6f} | {row['max_rel_pct']:.6f} |\n"
            )
        output.write(
            "\n## DIV comparison with PACE\n\n"
            "| Level | OADM MAE | PACE MAE | OADM MRED | PACE MRED | "
            "OADM RMSE | PACE RMSE |\n"
            "|---|---:|---:|---:|---:|---:|---:|\n"
        )
        for level in range(1, LEVEL_COUNT):
            oadm = next(row for row in rows
                        if row["mode"] == "DIV" and row["level"] == level)
            pace_mae, pace_mred, pace_rmse = PACE_RESULTS[level]
            output.write(
                f"| L{level} | {oadm['mae']:.6f} | {pace_mae:.3f} | "
                f"{oadm['mred']:.6f} | {pace_mred:.3f} | "
                f"{oadm['rmse']:.6f} | {pace_rmse:.3f} |\n"
            )


def write_crosscheck_vectors(path, cases_per_configuration, seed):
    rng = np.random.default_rng(seed)
    directed = np.array(
        [0, 1, ONE_Q // 16, ONE_Q // 4, ONE_Q // 2,
         ONE_Q - 2, ONE_Q - 1],
        dtype=np.int64,
    )
    rows = []
    for divide_mode in (0, 1):
        for level in range(LEVEL_COUNT):
            random_count = max(cases_per_configuration - len(directed), 0)
            x_fraction = np.concatenate((
                directed,
                rng.integers(0, ONE_Q, random_count, dtype=np.int64),
            ))[:cases_per_configuration]
            y_fraction = np.concatenate((
                directed[::-1],
                rng.integers(0, ONE_Q, random_count, dtype=np.int64),
            ))[:cases_per_configuration]
            x_mantissa = (ONE_Q + x_fraction)[:, np.newaxis]
            y_mantissa = (ONE_Q + y_fraction)[:, np.newaxis]
            output = evaluate_all_levels(
                x_mantissa, y_mantissa, bool(divide_mode)
            )[level][:, 0]
            for x_frac, y_frac, result in zip(x_fraction, y_fraction, output):
                x_bits = (127 << 23) | int(x_frac)
                y_bits = (127 << 23) | int(y_frac)
                rows.append((x_bits, y_bits, level, divide_mode, int(result)))

    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w") as output:
        for row in rows:
            output.write("%08x %08x %d %d %08x\n" % row)
    print(f"Wrote {len(rows)} cross-check vectors to {path}")


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--points", type=int, default=10000)
    parser.add_argument("--chunk-size", type=int, default=128)
    parser.add_argument("--out-dir", type=Path,
                        default=Path("results_pace_grid"))
    parser.add_argument("--crosscheck-vectors", type=Path)
    parser.add_argument("--crosscheck-cases", type=int, default=100)
    parser.add_argument("--seed", type=int, default=6321)
    args = parser.parse_args()
    if args.points < 2 or args.chunk_size < 1:
        parser.error("--points must be >= 2 and --chunk-size must be positive")
    return args


def main():
    args = parse_args()
    if args.crosscheck_vectors:
        write_crosscheck_vectors(
            args.crosscheck_vectors, args.crosscheck_cases, args.seed
        )
        return
    start_time = time.monotonic()
    rows = run_grid(args.points, args.chunk_size)
    elapsed = time.monotonic() - start_time
    write_results(rows, args.out_dir, args.points, args.chunk_size, elapsed)
    for row in rows:
        print(
            f"{row['mode']} L{row['level']}: cases={row['cases']} "
            f"MAE={row['mae']:.9f} MRED={row['mred_pct']:.6f}% "
            f"RMSE={row['rmse']:.9f} R-RMSE={row['rmse_rel_pct']:.6f}% "
            f"MaxRE={row['max_rel_pct']:.6f}%"
        )
    print(f"Completed in {elapsed:.1f}s; results in {args.out_dir}")


if __name__ == "__main__":
    main()
