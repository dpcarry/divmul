#!/usr/bin/env python3
"""Screen precision-pruned OADM datapaths and low-cost L2 scale refinements."""

import argparse
import csv
from pathlib import Path

import numpy as np

from pace_grid_accuracy import (
    COEFFICIENTS,
    ONE_Q,
    correction_terms,
    finalize,
    fp32_bits_to_real,
    make_accumulator,
    pack_fp32,
    uniform_mantissas,
    update_accumulator,
)


def midpoint_numerators(mantissa, level):
    if level == 0:
        return np.full_like(mantissa, 24)
    index = (mantissa >> (23 - level)) & ((1 << level) - 1)
    base = (24, 20, 18, 17)[level]
    return base + (index << (4 - level))


def centered_plane(x_mantissa, y_mantissa, level, divide_mode, drop_bits):
    midpoint_x = midpoint_numerators(x_mantissa, level)
    midpoint_y = midpoint_numerators(y_mantissa, level)
    residual_x = x_mantissa - (midpoint_x << 19)
    residual_y = y_mantissa - (midpoint_y << 19)
    if drop_bits:
        residual_x = (residual_x >> drop_bits) << drop_bits
        residual_y = (residual_y >> drop_bits) << drop_bits
    x_term = (residual_x * midpoint_y) >> 4
    y_term = (residual_y * midpoint_x) >> 4
    constant = midpoint_x * midpoint_y << 15
    return constant + x_term + (-y_term if divide_mode else y_term)


def direct_plane(x_mantissa, y_mantissa, level, divide_mode):
    midpoint_x = midpoint_numerators(x_mantissa, level)
    midpoint_y = midpoint_numerators(y_mantissa, level)
    x_term = (x_mantissa * midpoint_y) >> 4
    y_term = (y_mantissa * midpoint_x) >> 4
    constant = midpoint_x * midpoint_y << 15
    return (constant + x_term - y_term if divide_mode
            else x_term + y_term - constant)


def metric_row(name, mode, level, expected, actual):
    error = actual - expected
    absolute_error = np.abs(error)
    return {
        "candidate": name,
        "mode": mode,
        "level": level,
        "cases": expected.size,
        "mae": float(np.mean(absolute_error)),
        "mred": float(np.mean(absolute_error / np.abs(expected))),
        "rmse": float(np.sqrt(np.mean(error * error))),
    }


def scale_plane(plane, coefficient, coefficient_bits, drop_bits):
    reduced = plane >> drop_bits
    product = reduced * coefficient
    shift = coefficient_bits - drop_bits
    return product >> shift if shift >= 0 else product << (-shift)


def best_l2_coefficients(
    plane, expected, y_mantissa, selector_bits, coefficient_bits
):
    segment = ((y_mantissa - ONE_Q) >> (23 - selector_bits)).astype(np.int64)
    coefficients = np.zeros(1 << selector_bits, dtype=np.int64)
    for index in range(1 << selector_bits):
        selected = segment == index
        selected_plane = plane[:, selected[0]]
        selected_plane_float = selected_plane.astype(np.float64)
        selected_expected = expected[:, selected[0]]
        continuous = float(1 << coefficient_bits) * ONE_Q * np.sum(
            selected_plane_float * selected_expected
        )
        continuous /= np.sum(selected_plane_float * selected_plane_float)
        center = int(round(continuous))
        maximum = (1 << coefficient_bits) - 1
        candidates = range(max(1, center - 3), min(maximum, center + 3) + 1)
        best = None
        for coefficient in candidates:
            actual = fp32_bits_to_real(pack_fp32(
                (selected_plane * coefficient) >> coefficient_bits
            ))
            error = actual - selected_expected
            score = float(np.mean(error * error))
            if best is None or score < best[0]:
                best = (score, coefficient)
        coefficients[index] = best[1]
    return coefficients, coefficients[segment]


def run(points):
    mantissas = uniform_mantissas(points)
    x_mantissa = mantissas[:, np.newaxis]
    y_mantissa = mantissas[np.newaxis, :]
    x_value = x_mantissa.astype(np.float64) / ONE_Q
    y_value = y_mantissa.astype(np.float64) / ONE_Q
    rows = []
    baseline_planes = {}

    for divide_mode, mode in ((False, "MUL"), (True, "DIV")):
        expected = x_value / y_value if divide_mode else x_value * y_value
        terms = correction_terms(x_mantissa, y_mantissa, divide_mode)
        plane = terms[0].copy()
        for level in range(4):
            if level:
                plane = plane + terms[level]
            baseline_planes[(mode, level)] = plane.copy()
            y_index = (y_mantissa >> 19) & 0xF
            coefficient = COEFFICIENTS[level][y_index]
            core = scale_plane(plane, coefficient, 7, 0) if divide_mode else plane
            actual = fp32_bits_to_real(pack_fp32(core))
            rows.append(metric_row("baseline", mode, level, expected, actual))

            for drop in (2, 4, 6, 8, 10, 12, 14, 16):
                if divide_mode:
                    core = scale_plane(plane, coefficient, 7, drop)
                    actual = fp32_bits_to_real(pack_fp32(core))
                    rows.append(metric_row(
                        f"scale_drop_{drop}", mode, level, expected, actual
                    ))

                unpruned = centered_plane(
                    x_mantissa, y_mantissa, level, divide_mode, 0
                )
                pruned = centered_plane(
                    x_mantissa, y_mantissa, level, divide_mode, drop
                )
                correction = plane - unpruned
                pruned_plane = pruned + correction
                core = (scale_plane(pruned_plane, coefficient, 7, 0)
                        if divide_mode else pruned_plane)
                actual = fp32_bits_to_real(pack_fp32(core))
                rows.append(metric_row(
                    f"residual_drop_{drop}", mode, level, expected, actual
                ))

                pruned_plane = pruned
                core = (scale_plane(pruned_plane, coefficient, 7, drop)
                        if divide_mode else pruned_plane)
                actual = fp32_bits_to_real(pack_fp32(core))
                rows.append(metric_row(
                    f"joint_drop_{drop}_no_round_lut", mode, level,
                    expected, actual
                ))

    expected = x_value / y_value

    # Final runtime RTL: direct selected-level centered plane, 10 residual
    # LSBs removed, and 14 plane LSBs removed before DIV scaling.  There is no
    # correction/rounding LUT in this implementation.
    for divide_mode, mode in ((False, "MUL"), (True, "DIV")):
        expected_mode = x_value / y_value if divide_mode else x_value * y_value
        for level in range(4):
            plane = centered_plane(
                x_mantissa, y_mantissa, level, divide_mode, 10
            )
            if divide_mode:
                y_index = (y_mantissa >> 19) & 0xF
                coefficient = COEFFICIENTS[level][y_index]
                core = scale_plane(plane, coefficient, 7, 14)
            else:
                core = plane
            actual = fp32_bits_to_real(pack_fp32(core))
            rows.append(metric_row(
                "runtime_root", mode, level, expected_mode, actual
            ))

    l2_plane = baseline_planes[("DIV", 2)]
    y_index = (y_mantissa >> 19) & 0xF
    q8_midpoints = 1.0 + (np.arange(4) + 0.5) / 4.0
    q8_table = np.rint(256.0 / (q8_midpoints * q8_midpoints)).astype(np.int64)
    q8_coefficient = q8_table[((y_mantissa - ONE_Q) >> 21).astype(np.int64)]
    actual = fp32_bits_to_real(pack_fp32((l2_plane * q8_coefficient) >> 8))
    rows.append(metric_row("l2_q08", "DIV", 2, expected, actual))

    # Final fixed-L2 RTL uses a quantization-aware four-entry Q0.8 table.
    l2_root_table = np.array((203, 136, 97, 73), dtype=np.int64)
    l2_root_coefficient = l2_root_table[
        ((y_mantissa - ONE_Q) >> 21).astype(np.int64)
    ]
    l2_root_plane = centered_plane(x_mantissa, y_mantissa, 2, True, 10)
    l2_root_core = scale_plane(
        l2_root_plane, l2_root_coefficient, 8, 14
    )
    rows.append(metric_row(
        "l2_root", "DIV", 2, expected,
        fp32_bits_to_real(pack_fp32(l2_root_core))
    ))

    coefficient_tables = {}
    for coefficient_bits in (7, 8):
        for selector_bits in (2, 3, 4):
            table, coefficient = best_l2_coefficients(
                l2_plane, expected, y_mantissa, selector_bits,
                coefficient_bits
            )
            name = f"l2_tuned_q0{coefficient_bits}_y{selector_bits}"
            coefficient_tables[name] = table.tolist()
            actual = fp32_bits_to_real(pack_fp32(
                (l2_plane * coefficient) >> coefficient_bits
            ))
            rows.append(metric_row(name, "DIV", 2, expected, actual))
            if coefficient_bits == 8 and selector_bits == 2:
                for drop in (8, 10, 12, 14, 16):
                    actual = fp32_bits_to_real(pack_fp32(scale_plane(
                        l2_plane, coefficient, coefficient_bits, drop
                    )))
                    rows.append(metric_row(
                        f"{name}_scale_drop_{drop}", "DIV", 2,
                        expected, actual
                    ))
                unpruned = centered_plane(
                    x_mantissa, y_mantissa, 2, True, 0
                )
                for residual_drop in (8, 10, 12):
                    pruned = centered_plane(
                        x_mantissa, y_mantissa, 2, True, residual_drop
                    )
                    pruned_plane = pruned + l2_plane - unpruned
                    actual = fp32_bits_to_real(pack_fp32(scale_plane(
                        pruned_plane, coefficient, coefficient_bits, 14
                    )))
                    rows.append(metric_row(
                        f"{name}_res{residual_drop}_scale14", "DIV", 2,
                        expected, actual
                    ))

    for residual_drop, scale_drop in ((8, 14), (10, 12), (10, 14)):
        for divide_mode, mode in ((False, "MUL"), (True, "DIV")):
            expected_mode = x_value / y_value if divide_mode else x_value * y_value
            for level in range(4):
                baseline_plane = baseline_planes[(mode, level)]
                unpruned = centered_plane(
                    x_mantissa, y_mantissa, level, divide_mode, 0
                )
                pruned = centered_plane(
                    x_mantissa, y_mantissa, level, divide_mode, residual_drop
                )
                pruned_plane = pruned + baseline_plane - unpruned
                if divide_mode:
                    y_index = (y_mantissa >> 19) & 0xF
                    coefficient = COEFFICIENTS[level][y_index]
                    core = scale_plane(pruned_plane, coefficient, 7, scale_drop)
                else:
                    core = pruned_plane
                actual = fp32_bits_to_real(pack_fp32(core))
                rows.append(metric_row(
                    f"combined_res{residual_drop}_scale{scale_drop}",
                    mode, level, expected_mode, actual
                ))

    return rows, coefficient_tables


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--points", type=int, default=1000)
    parser.add_argument(
        "--out-dir", type=Path, default=Path("python/results_root_opt")
    )
    args = parser.parse_args()
    rows, tables = run(args.points)
    args.out_dir.mkdir(parents=True, exist_ok=True)
    with (args.out_dir / "root_opt_screen.csv").open("w", newline="") as output:
        writer = csv.DictWriter(output, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    with (args.out_dir / "l2_coefficient_tables.csv").open("w", newline="") as output:
        writer = csv.writer(output)
        writer.writerow(("candidate", "coefficients"))
        for name, table in tables.items():
            writer.writerow((name, " ".join(str(value) for value in table)))
    for row in rows:
        if (row["candidate"] in ("baseline", "runtime_root", "l2_root")
                or row["candidate"].startswith("l2_tuned")):
            print(
                "{candidate:28s} {mode} L{level}: MAE={mae:.9f} "
                "MRED={mred:.9f} RMSE={rmse:.9f}".format(**row)
            )
    print(tables)


if __name__ == "__main__":
    main()
