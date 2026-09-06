"""Independent formula experiment; these results are not RTL/PPA reproductions."""
import csv
import json
from pathlib import Path
import numpy as np
from scipy.optimize import linprog
from scipy.sparse import csr_matrix, eye, hstack, vstack

HERE = Path(__file__).resolve().parent


def fit_tiles(nx, ny):
    # FPD2D Eq. 6, 11-16: unquantized MRED fit on 20x20 points per tile.
    table = np.empty((nx, ny, 3))
    gx, gy = np.meshgrid(np.arange(20) / (20 * nx),
                         np.arange(20) / (20 * ny), indexing="ij")
    u, v = gx.ravel(), gy.ravel()
    for i in range(nx):
        for j in range(ny):
            target = (1 + i / nx + u) / (1 + j / ny + v)
            mat = csr_matrix(np.column_stack([u, v, np.ones_like(u)]) / target[:, None])
            constraints = vstack([hstack([mat, -eye(400)]),
                                  hstack([-mat, -eye(400)])]).tocsr()
            result = linprog(np.r_[np.zeros(3), np.ones(400)],
                             A_ub=constraints, b_ub=np.r_[np.ones(400), -np.ones(400)],
                             bounds=[(None, None)] * 3 + [(0, None)] * 400,
                             method="highs")
            if not result.success:
                raise RuntimeError(result.message)
            table[i, j] = result.x[:3]
    return table


def metrics(exact, approx):
    err = approx - exact
    re = np.abs(err) / np.abs(exact)
    return dict(mred_pct=100 * float(re.mean()), rmse=float(np.sqrt(np.mean(err**2))),
                signed_mean=float(err.mean()), max_re_pct=100 * float(re.max()),
                p99_re_pct=100 * float(np.quantile(re, .99)),
                exact_fraction=float(np.mean(err == 0)))


def main():
    rng = np.random.default_rng(9052026)
    n = 200000
    x = rng.integers(2**23, 2**24, n) / 2**23
    y = rng.integers(2**23, 2**24, n) / 2**23
    grid = 1 + np.arange(256) / 256
    a, b = np.meshgrid(grid, grid)
    datasets = dict(uniform=(x, y), grid8=(a.ravel(), b.ravel()), diagonal=(x, x),
                    near_diagonal=(x, np.minimum(x + 2**-16, 2 - 2**-23)),
                    log_uniform=(2**rng.random(n), 2**rng.random(n)))
    tables = {(nx, ny): fit_tiles(nx, ny) for nx, ny in [(2, 4), (2, 8), (4, 8), (8, 8)]}
    rows = []
    for dataset, (x, y) in datasets.items():
        def add(name, mode, output):
            exact = x / y if mode == "DIV" else x * y
            rows.append(dict(dataset=dataset, design=name, mode=mode, count=len(x),
                             **metrics(exact, output)))
        for bits in [3, 5, 7, 9]:
            step = 2.0**-bits
            for bias in [0, 0.5]:
                ax = np.floor(x / step) * step + bias * step
                by = np.floor(y / step) * step + bias * step
                tag = f"b{bits}_half{int(2*bias)}"
                add("input_mul_" + tag, "MUL", ax * by)
                add("input_div_realquot_" + tag, "DIV", ax / by)
                f = bits + 2
                add("input_div_shortquot_" + tag, "DIV",
                    np.floor(ax / by * 2**f) / 2**f)
            ax = np.rint(x / step) * step
            by = np.rint(y / step) * step
            add(f"input_mul_b{bits}_nearest", "MUL", ax * by)
            add(f"input_div_b{bits}_nearest", "DIV", ax / by)
        for level in range(4):
            cells = 2**level
            kx = 1 + (np.floor((x - 1) * cells) + .5) / cells
            ky = 1 + (np.floor((y - 1) * cells) + .5) / cells
            plane = -kx * ky + ky * x + kx * y
            add(f"OAM_ideal_L{level}", "MUL", plane)
            add(f"OAD_ideal_L{level}", "DIV", (kx * ky + ky * x - kx * y) / ky**2)
        fx, fy = x - 1, y - 1
        # PLSAD Eq. (14), without its LOA or input/output truncation.
        region = np.minimum((fy * 8).astype(int), 7)
        pa = np.array([1, 7/8, 3/4, 3/4, 5/8, 5/8, 9/16, 1/2])
        pb = np.array([-5/4, -1, -1, -1/2, -1/2, -1/2, -1/2, -3/8])
        pc = np.array([1, 65/64, 69/64, 57/64, 119/128, 59/64, 61/64, 7/8])
        add("PLSAD_ideal_8planes", "DIV", pa[region]*fx + pb[region]*fy + pc[region])
        add("Mitchell_ideal", "MUL", np.where(fx + fy < 1, 1 + fx + fy, 2 * (fx + fy)))
        add("Mitchell_ideal", "DIV", np.where(fx >= fy, 1 + fx - fy, 1 + (fx - fy) / 2))
        for (nx, ny), table in tables.items():
            ix = np.minimum((fx * nx).astype(int), nx - 1)
            iy = np.minimum((fy * ny).astype(int), ny - 1)
            coeff = table[ix, iy]
            result = coeff[:, 0] * (fx - ix / nx) + coeff[:, 1] * (fy - iy / ny) + coeff[:, 2]
            add(f"FPD2D_unquantized_LP_{nx}x{ny}", "DIV", result)
    with (HERE / "formula_accuracy.csv").open("w", newline="") as stream:
        writer = csv.DictWriter(stream, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    (HERE / "fitted_coefficients.json").write_text(json.dumps(
        {f"{nx}x{ny}": tab.tolist() for (nx, ny), tab in tables.items()}, indent=2) + "\n")
    print("Completed", len(rows), "formula/distribution combinations.")
    for row in rows:
        if row["dataset"] == "uniform" and (
            "half1" in row["design"] or row["design"].startswith(("OAM", "OAD", "FPD2D", "Mitchell"))
        ):
            print(row["design"], row["mode"], round(row["mred_pct"], 6), round(row["rmse"], 8))


if __name__ == "__main__":
    main()
