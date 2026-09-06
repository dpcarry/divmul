"""Check formula experiment invariants and export a readable evidence table."""
import csv
import math
from pathlib import Path

HERE = Path(__file__).resolve().parent
rows = list(csv.DictReader((HERE / "formula_accuracy.csv").open()))
index = {(r["dataset"], r["design"], r["mode"]): r for r in rows}
assert len(rows) == len(index) == 235
for row in rows:
    assert all(math.isfinite(float(row[k])) for k in
               ("mred_pct", "rmse", "signed_mean", "max_re_pct", "p99_re_pct"))
    assert float(row["max_re_pct"]) >= float(row["p99_re_pct"]) >= 0
    assert abs(float(row["signed_mean"])) <= float(row["rmse"]) + 1e-14
for bits in (3, 5, 7, 9):
    h = 2.0**-bits
    expected = math.sqrt(7*h*h/18 - h**4/144)
    observed = float(index["uniform", f"input_mul_b{bits}_half1", "MUL"]["rmse"])
    assert abs(observed/expected - 1) < .02
    for suffix in ("realquot", "shortquot"):
        assert float(index["diagonal", f"input_div_{suffix}_b{bits}_half1", "DIV"]["rmse"]) == 0
for level in range(4):
    expected = 2.0**(-2*level)/12
    observed = float(index["uniform", f"OAM_ideal_L{level}", "MUL"]["rmse"])
    assert abs(observed/expected - 1) < .02
assert .80 < float(index["uniform", "PLSAD_ideal_8planes", "DIV"]["mred_pct"]) < .84

lines = ["# Formula Results", "", "Not RTL or PPA results. Maxima are sampled, not proven bounds.", ""]
for dataset in ("uniform", "grid8", "diagonal", "near_diagonal", "log_uniform"):
    lines += [f"## {dataset}", "", "| Design | Mode | MRED (%) | RMSE | Sample max RE (%) |",
              "| --- | --- | ---: | ---: | ---: |"]
    for r in rows:
        if r["dataset"] == dataset:
            lines.append(f'| {r["design"]} | {r["mode"]} | {float(r["mred_pct"]):.6f} | '
                         f'{float(r["rmse"]):.8f} | {float(r["max_re_pct"]):.6f} |')
    lines.append("")
(HERE / "FORMULA_RESULTS.md").write_text("\n".join(lines))
print("PASS: 235 unique rows; finite metrics; analytic MUL RMSE; diagonal DIV; PLSAD sanity check.")
