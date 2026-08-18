#!/usr/bin/env python3
"""
  * Multiplier-2023, Eq. (15): z_n = b_n*x + a_n*y - a_n*b_n
  * Divider-multiplier draft, Eq. (5):
        q_n = (a_n*b_n + b_n*x - a_n*y) / (b_n*b_n)
  * Divider-multiplier draft, Eq. (10) and Eq. (11):
        delta_w_n = -delta_z_n + 2*x*sign(y[n]) / 2**(n+1)
        w_0 = -z_0 + 3*x

For ideal div_mul, run python3 oadm_divmul_sim.py

For rtl div_mul, run:

python3 oadm_divmul_sim.py \
  --coefficient-bits 8 \
  --out-dir results_rtl
"""

import argparse
import csv
import math
import random
import shutil
import struct
import subprocess
import sys
from pathlib import Path


LEVEL_COUNT = 5
MAX_FP32_MANTISSA = struct.unpack("!f", bytes.fromhex("3fffffff"))[0]


def to_fp32(value):
    """Round a Python float to IEEE-754 binary32."""
    return struct.unpack("!f", struct.pack("!f", value))[0]


def interval_midpoint(value, level):
    """Return the midpoint of the level-n interval containing value."""
    if not 1.0 <= value < 2.0:
        raise ValueError("normalized mantissa must be in [1, 2)")
    partitions = 1 << level
    index = min(int((value - 1.0) * partitions), partitions - 1)
    return 1.0 + (index + 0.5) / partitions


def direction_bit(value, stage):
    """Map the stage-th fractional bit to the paper's +1/-1 direction."""
    scaled_fraction = (value - 1.0) * (1 << stage)
    bit = int(scaled_fraction) & 1
    return 1.0 if bit else -1.0


def multiplier_plane(x_mantissa, y_mantissa, level):
    """Multiplier-2023 Eq. (15)."""
    midpoint_x = interval_midpoint(x_mantissa, level)
    midpoint_y = interval_midpoint(y_mantissa, level)
    return (
        midpoint_y * x_mantissa
        + midpoint_x * y_mantissa
        - midpoint_x * midpoint_y
    )


def divider_numerator_direct(x_mantissa, y_mantissa, level):
    """Divider-multiplier Eq. (5), before reciprocal-square scaling."""
    midpoint_x = interval_midpoint(x_mantissa, level)
    midpoint_y = interval_midpoint(y_mantissa, level)
    return (
        midpoint_x * midpoint_y
        + midpoint_y * x_mantissa
        - midpoint_x * y_mantissa
    )


def divider_numerator_shared(x_mantissa, y_mantissa, level):
    """Reconstruct w_n from multiplier corrections using Eq. (10)/(11)."""
    z_previous = multiplier_plane(x_mantissa, y_mantissa, 0)
    w_value = -z_previous + 3.0 * x_mantissa

    for stage in range(1, level + 1):
        z_current = multiplier_plane(x_mantissa, y_mantissa, stage)
        delta_z = z_current - z_previous
        y_direction = direction_bit(y_mantissa, stage)
        correction = math.ldexp(2.0 * x_mantissa * y_direction, -(stage + 1))
        w_value += -delta_z + correction
        z_previous = z_current

    return w_value


def quantize_unsigned_fraction(value, bits):
    """Round a positive fractional coefficient to Q0.bits."""
    if bits <= 0:
        return value
    scale = 1 << bits
    return math.floor(value * scale + 0.5) / scale


#this is where the div and mul approximation is carried out
def approximate_mantissa(x_mantissa, y_mantissa, level, divide_mode,
                         coefficient_bits=0):
    if not 0 <= level < LEVEL_COUNT:
        raise ValueError("level must be in [0, 4]")

    if not divide_mode:
        return multiplier_plane(x_mantissa, y_mantissa, level)

    numerator = divider_numerator_shared(x_mantissa, y_mantissa, level)
    midpoint_y = interval_midpoint(y_mantissa, level)
    reciprocal_square = 1.0 / (midpoint_y * midpoint_y)
    reciprocal_square = quantize_unsigned_fraction(
        reciprocal_square, coefficient_bits
    )
    return numerator * reciprocal_square


#Return sign, normalized mantissa in [1,2), and unbiased exponent.
def normalized_components(value):
    if not math.isfinite(value) or value == 0.0:
        raise ValueError("software wrapper accepts finite nonzero values only")
    sign = -1.0 if value < 0.0 else 1.0
    fraction, exponent = math.frexp(abs(value))
    return sign, fraction * 2.0, exponent - 1


#Apply the paper model to arbitrary finite, nonzero FP values.
def approximate_float(x_value, y_value, level, divide_mode,
                      coefficient_bits=0):
    x_sign, x_mantissa, x_exponent = normalized_components(x_value)
    y_sign, y_mantissa, y_exponent = normalized_components(y_value)
    mantissa_result = approximate_mantissa(
        x_mantissa,
        y_mantissa,
        level,
        divide_mode,
        coefficient_bits,
    )
    result_exponent = (
        x_exponent - y_exponent
        if divide_mode
        else x_exponent + y_exponent
    )
    return x_sign * y_sign * math.ldexp(mantissa_result, result_exponent)


class ErrorStats:
    def __init__(self):
        self.count = 0
        self.sum_signed = 0.0
        self.sum_abs = 0.0
        self.sum_sq = 0.0
        self.sum_signed_rel = 0.0
        self.sum_abs_rel = 0.0
        self.sum_sq_rel = 0.0
        self.max_abs_rel = -1.0
        self.worst = None

    def add(self, x_value, y_value, expected, actual):
        signed_error = actual - expected
        abs_error = abs(signed_error)
        signed_rel = signed_error / abs(expected)
        abs_rel = abs(signed_rel)

        self.count += 1
        self.sum_signed += signed_error
        self.sum_abs += abs_error
        self.sum_sq += signed_error * signed_error
        self.sum_signed_rel += signed_rel
        self.sum_abs_rel += abs_rel
        self.sum_sq_rel += signed_rel * signed_rel

        if abs_rel > self.max_abs_rel:
            self.max_abs_rel = abs_rel
            self.worst = (x_value, y_value, expected, actual)

    def row(self, mode_name, level):
        count = float(self.count)
        worst_x, worst_y, worst_expected, worst_actual = self.worst
        return {
            "mode": mode_name,
            "level": level,
            "cases": self.count,
            "mean_signed_error": self.sum_signed / count,
            "mean_abs_error": self.sum_abs / count,
            "rmse_abs_error": math.sqrt(self.sum_sq / count),
            "mean_signed_rel_pct": 100.0 * self.sum_signed_rel / count,
            "mred_pct": 100.0 * self.sum_abs_rel / count,
            "rmse_rel_pct": 100.0 * math.sqrt(self.sum_sq_rel / count),
            "max_rel_pct": 100.0 * self.max_abs_rel,
            "worst_x": worst_x,
            "worst_y": worst_y,
            "worst_expected": worst_expected,
            "worst_actual": worst_actual,
        }


SUMMARY_FIELDS = [
    "mode",
    "level",
    "cases",
    "mean_signed_error",
    "mean_abs_error",
    "rmse_abs_error",
    "mean_signed_rel_pct",
    "mred_pct",
    "rmse_rel_pct",
    "max_rel_pct",
    "worst_x",
    "worst_y",
    "worst_expected",
    "worst_actual",
]


def generate_operands(sample_count, seed):
    directed = [
        (1.0, 1.0),
        (MAX_FP32_MANTISSA, MAX_FP32_MANTISSA),
        (1.25, 1.75),
        (1.125, 1.875),
        (1.9375, 1.0625),
        (1.0, MAX_FP32_MANTISSA),
        (MAX_FP32_MANTISSA, 1.0),
    ]
    rng = random.Random(seed)
    random_cases = []
    for _ in range(sample_count):
        x_value = min(to_fp32(rng.uniform(1.0, 2.0)), MAX_FP32_MANTISSA)
        y_value = min(to_fp32(rng.uniform(1.0, 2.0)), MAX_FP32_MANTISSA)
        random_cases.append((x_value, y_value))
    return directed + random_cases


def verify_eq10_eq11(operands):
    max_difference = 0.0
    for x_value, y_value in operands:
        for level in range(LEVEL_COUNT):
            direct = divider_numerator_direct(x_value, y_value, level)
            shared = divider_numerator_shared(x_value, y_value, level)
            difference = abs(direct - shared)
            max_difference = max(max_difference, difference)
            if difference > 2.0e-15:
                raise AssertionError(
                    "Eq. (10)/(11) mismatch at level=%d x=%.9g y=%.9g: "
                    "direct=%.17g shared=%.17g" %
                    (level, x_value, y_value, direct, shared)
                )
    return max_difference


def run_accuracy(operands, coefficient_bits, samples_path):
    stats = {}
    with samples_path.open("w", newline="") as sample_file:
        writer = csv.writer(sample_file, lineterminator="\n")
        writer.writerow([
            "case",
            "mode",
            "level",
            "x_mantissa",
            "y_mantissa",
            "expected",
            "actual",
            "signed_error",
            "abs_error",
            "relative_error_pct",
        ])

        for divide_mode, mode_name in ((False, "MUL"), (True, "DIV")):
            for level in range(LEVEL_COUNT):
                key = (mode_name, level)
                stats[key] = ErrorStats()
                for case_index, (x_value, y_value) in enumerate(operands):
                    expected = (
                        x_value / y_value
                        if divide_mode
                        else x_value * y_value
                    )
                    actual = approximate_mantissa(
                        x_value,
                        y_value,
                        level,
                        divide_mode,
                        coefficient_bits,
                    )
                    stats[key].add(
                        x_value, y_value, expected, actual
                    )
                    signed_error = actual - expected
                    writer.writerow([
                        case_index,
                        mode_name,
                        level,
                        "%.10g" % x_value,
                        "%.10g" % y_value,
                        "%.12g" % expected,
                        "%.12g" % actual,
                        "%.12g" % signed_error,
                        "%.12g" % abs(signed_error),
                        "%.9g" % (100.0 * abs(signed_error) / abs(expected)),
                    ])
    return stats


def write_summary(stats, csv_path, text_path, coefficient_bits,
                  eq_identity_difference):
    rows = [
        stats[(mode_name, level)].row(mode_name, level)
        for mode_name in ("MUL", "DIV")
        for level in range(LEVEL_COUNT)
    ]

    with csv_path.open("w", newline="") as csv_file:
        writer = csv.DictWriter(
            csv_file, fieldnames=SUMMARY_FIELDS, lineterminator="\n"
        )
        writer.writeheader()
        for row in rows:
            writer.writerow(row)

    with text_path.open("w") as text_file:
        coefficient_label = (
            "ideal paper reciprocal"
            if coefficient_bits == 0
            else "Q0.%d reciprocal coefficient" % coefficient_bits
        )
        text_file.write("OADM divider-multiplier software simulation\n")
        text_file.write("Coefficient model: %s\n" % coefficient_label)
        text_file.write(
            "Maximum Eq. (10)/(11) identity difference: %.3e\n\n" %
            eq_identity_difference
        )
        text_file.write(
            "mode level cases MRED_pct RMSE_rel_pct MaxRE_pct "
            "mean_signed_rel_pct mean_signed_error mean_abs_error "
            "rmse_abs_error\n"
        )
        for row in rows:
            text_file.write(
                "{mode:3s} {level:d} {cases:d} {mred_pct:.6f} "
                "{rmse_rel_pct:.6f} {max_rel_pct:.6f} "
                "{mean_signed_rel_pct:+.6f} {mean_signed_error:+.9f} "
                "{mean_abs_error:.9f} {rmse_abs_error:.9f}\n".format(**row)
            )

        text_file.write("\nMultiplier-2023 theoretical absolute-error values\n")
        text_file.write("level sampled_MAE theory_MAE sampled_MSE theory_MSE\n")
        for level in range(LEVEL_COUNT):
            row = stats[("MUL", level)].row("MUL", level)
            sampled_mse = row["rmse_abs_error"] ** 2
            theory_mae = 1.0 / (4.0 ** (level + 2))
            theory_mse = 1.0 / (9.0 * (16.0 ** (level + 1)))
            text_file.write(
                "%d %.9f %.9f %.9f %.9f\n" %
                (
                    level,
                    row["mean_abs_error"],
                    theory_mae,
                    sampled_mse,
                    theory_mse,
                )
            )
    return rows


def write_plot_data(rows, stats_path, sweep_path, coefficient_bits, sweep_y):
    with stats_path.open("w") as stats_file:
        for row in rows:
            mode_index = 0 if row["mode"] == "MUL" else 1
            stats_file.write(
                "%d %d %.10f %.10f %.10f %.10f\n" %
                (
                    mode_index,
                    row["level"],
                    row["mred_pct"],
                    row["rmse_rel_pct"],
                    row["max_rel_pct"],
                    row["mean_signed_rel_pct"],
                )
            )

    with sweep_path.open("w") as sweep_file:
        points = 512
        for index in range(points):
            x_value = 1.0 + index / float(points)
            mul_exact = x_value * sweep_y
            div_exact = x_value / sweep_y
            mul_values = [
                approximate_mantissa(
                    x_value, sweep_y, level, False, coefficient_bits
                )
                for level in range(LEVEL_COUNT)
            ]
            div_values = [
                approximate_mantissa(
                    x_value, sweep_y, level, True, coefficient_bits
                )
                for level in range(LEVEL_COUNT)
            ]
            values = [x_value, mul_exact] + mul_values + [div_exact] + div_values
            sweep_file.write(" ".join("%.10f" % value for value in values) + "\n")


def write_gnuplot_script(path, out_dir, stats_data, sweep_data, sweep_y):
    accuracy_png = out_dir / "accuracy_by_level.png"
    function_png = out_dir / "function_sweep.png"
    mul_last_column = 2 + LEVEL_COUNT
    div_exact_column = 3 + LEVEL_COUNT
    div_first_column = 4 + LEVEL_COUNT
    div_last_column = 3 + 2 * LEVEL_COUNT
    with path.open("w") as script:
        script.write("set terminal png size 1280,900\n")
        script.write("set grid\n")
        script.write("set key outside\n")
        script.write("set output '%s'\n" % accuracy_png)
        script.write(
            "set multiplot layout 2,1 title "
            "'OADM software-model relative error by level'\n"
        )
        script.write("set xlabel 'Approximation level'\n")
        script.write("set ylabel 'Relative error [%]'\n")
        script.write(
            "plot '%s' using 2:($1==0?$3:1/0) with linespoints lw 2 "
            "title 'MUL MRED', '' using 2:($1==0?$4:1/0) "
            "with linespoints lw 2 title 'MUL relative RMSE', "
            "'' using 2:($1==0?$5:1/0) with linespoints lw 2 "
            "title 'MUL MaxRE'\n" % stats_data
        )
        script.write(
            "plot '%s' using 2:($1==1?$3:1/0) with linespoints lw 2 "
            "title 'DIV MRED', '' using 2:($1==1?$4:1/0) "
            "with linespoints lw 2 title 'DIV relative RMSE', "
            "'' using 2:($1==1?$5:1/0) with linespoints lw 2 "
            "title 'DIV MaxRE'\n" % stats_data
        )
        script.write("unset multiplot\n")

        script.write("set output '%s'\n" % function_png)
        script.write(
            "set multiplot layout 2,1 title "
            "'Paper function sweep at y = %.5f'\n" % sweep_y
        )
        script.write("set xlabel 'Normalized x mantissa'\n")
        script.write("set ylabel 'x*y approximation'\n")
        script.write(
            "plot '%s' using 1:2 with lines lw 3 title 'exact', "
            "for [column=3:%d] '' using 1:column with lines "
            "title sprintf('level %%d', column-3)\n" %
            (sweep_data, mul_last_column)
        )
        script.write("set ylabel 'x/y approximation'\n")
        script.write(
            "plot '%s' using 1:%d with lines lw 3 title 'exact', "
            "for [column=%d:%d] '' using 1:column with lines "
            "title sprintf('level %%d', column-%d)\n" %
            (sweep_data, div_exact_column, div_first_column,
             div_last_column, div_first_column)
        )
        script.write("unset multiplot\n")
    return accuracy_png, function_png


def parse_args():
    parser = argparse.ArgumentParser(
        description="Simulate the paper-level OADM multiplier/divider functions."
    )
    parser.add_argument(
        "--samples",
        type=int,
        default=10000,
        help="Number of random mantissa pairs in addition to directed cases.",
    )
    parser.add_argument("--seed", type=int, default=6321)
    parser.add_argument(
        "--coefficient-bits",
        type=int,
        default=0,
        help="0 uses ideal paper constants; 8 models the RTL Q0.8 LUT.",
    )
    parser.add_argument(
        "--out-dir",
        default="results_ideal",
        help="Output directory.",
    )
    parser.add_argument("--sweep-y", type=float, default=1.375)
    parser.add_argument(
        "--no-plots",
        action="store_true",
        help="Do not invoke gnuplot.",
    )
    args = parser.parse_args()
    if args.samples < 1:
        parser.error("--samples must be positive")
    if args.coefficient_bits < 0:
        parser.error("--coefficient-bits cannot be negative")
    if not 1.0 <= args.sweep_y < 2.0:
        parser.error("--sweep-y must be in [1, 2)")
    return args


def main():
    args = parse_args()
    out_dir = Path(args.out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    operands = generate_operands(args.samples, args.seed)
    identity_difference = verify_eq10_eq11(operands)

    samples_path = out_dir / "divmul_samples.csv"
    summary_csv = out_dir / "divmul_accuracy_summary.csv"
    summary_text = out_dir / "divmul_accuracy_summary.txt"
    stats_data = out_dir / "accuracy_by_level.dat"
    sweep_data = out_dir / "function_sweep.dat"
    gnuplot_script = out_dir / "plot_divmul.gnuplot"

    stats = run_accuracy(operands, args.coefficient_bits, samples_path)
    rows = write_summary(
        stats,
        summary_csv,
        summary_text,
        args.coefficient_bits,
        identity_difference,
    )
    write_plot_data(
        rows,
        stats_data,
        sweep_data,
        args.coefficient_bits,
        args.sweep_y,
    )
    accuracy_png, function_png = write_gnuplot_script(
        gnuplot_script,
        out_dir,
        stats_data,
        sweep_data,
        args.sweep_y,
    )

    print(summary_text.read_text(), end="")
    print("\nWrote %s" % summary_csv)
    print("Wrote %s" % samples_path)

    if args.no_plots:
        print("Plot generation disabled; gnuplot script: %s" % gnuplot_script)
    elif shutil.which("gnuplot") is None:
        print("gnuplot not found; run the generated script elsewhere: %s" %
              gnuplot_script)
    else:
        subprocess.run(["gnuplot", str(gnuplot_script)], check=True)
        print("Wrote %s" % accuracy_png)
        print("Wrote %s" % function_png)


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        print("ERROR: %s" % error, file=sys.stderr)
        sys.exit(1)
