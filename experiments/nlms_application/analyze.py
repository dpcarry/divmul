#!/usr/bin/env python3
import csv
from pathlib import Path
import sys

import matplotlib.pyplot as plt


def read_rows(path):
    with path.open(newline="") as handle:
        return list(csv.DictReader(handle))


def main():
    result_dir = Path(sys.argv[1] if len(sys.argv) > 1 else "results")
    summary = read_rows(result_dir / "summary.csv")
    curve = read_rows(result_dir / "learning_curve.csv")

    plt.figure(figsize=(7.0, 4.1))
    for row in summary:
        design = row["design"]
        plt.plot(
            [int(point["iteration"]) for point in curve],
            [float(point[design]) for point in curve],
            label=design,
            linewidth=1.5,
        )
    plt.axhline(-20.0, color="0.45", linestyle="--", linewidth=0.9)
    plt.xlabel("Iteration")
    plt.ylabel("Mean NMSD (dB)")
    plt.grid(True, alpha=0.25)
    plt.legend(ncol=2, frameon=False)
    plt.tight_layout()
    plt.savefig(result_dir / "learning_curve.pdf")
    plt.close()

    lines = [
        "# NLMS application results",
        "",
        "| Design | Steady output NMSE (dB) | Steady NMSD (dB) | Final NMSD (dB) | Convergence iteration | Diverged seeds | RTL fallback rate |",
        "|---|---:|---:|---:|---:|---:|---:|",
    ]
    for row in summary:
        calls = int(row["mul_calls"]) + int(row["div_calls"])
        fallbacks = (
            int(row["zero_operand_fallbacks"])
            + int(row["other_operand_fallbacks"])
            + int(row["result_fallbacks"])
        )
        rate = 100.0 * fallbacks / calls if calls else 0.0
        convergence = float(row["convergence_mean_iter"])
        convergence_text = "not reached" if convergence < 0 else f"{convergence:.1f}"
        lines.append(
            f"| {row['design']} | {float(row['steady_output_nmse_mean_db']):.3f} +/- {float(row['steady_output_nmse_std_db']):.3f} "
            f"| {float(row['steady_nmsd_mean_db']):.3f} +/- {float(row['steady_nmsd_std_db']):.3f} "
            f"| {float(row['final_nmsd_mean_db']):.3f} | {convergence_text} "
            f"| {row['diverged_seeds']} | {rate:.6f}% |"
        )
    lines.extend(
        [
            "",
            "Convergence is the first iteration at which the 100-sample moving-average NMSD is below -20 dB.",
            "Steady NMSD is averaged over the final 20% of each run.",
            "RTL fallback means that an operation outside the normal-finite input/output scope was evaluated with exact FP32 arithmetic and counted.",
            f"The measured workload ratio is {int(summary[0]['mul_calls']) // int(summary[0]['div_calls'])} MUL operations per DIV operation.",
        ]
    )
    if all(
        int(row["other_operand_fallbacks"]) == 0 and int(row["result_fallbacks"]) == 0
        for row in summary
    ):
        lines.append(
            "All recorded fallbacks had an exact-zero operand; no nonzero unsupported operand or nonnormal result was encountered."
        )
    (result_dir / "RESULTS.md").write_text("\n".join(lines) + "\n")


if __name__ == "__main__":
    main()
