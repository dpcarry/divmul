# Hierarchy-Preserving 10 ns Rerun

This campaign changes exactly one synthesis-policy dimension from the previous
paper-facing rerun: it removes explicit flattening/ungrouping and replaces
`compile_ultra` with ordinary Design Compiler `compile`. Wrapper RTL, source
snapshots, top modules, TSMC65 typical CCS library, 10 ns no-pipeline boundary,
I/O constraints, and PrimeTime vectorless activity are unchanged.

## Coverage and Validity

- 38 DC/PT points are retained.
- 38 netlists and complete DC/PT report sets were generated.
- 37 points are combinational, retain hierarchy, contain no black boxes, pass
  PrimeTime `check_timing`, and have no setup or minimum-delay violations.
- SIMDive retains 23 inferred latches under ordinary `compile`; its timing
  check is therefore invalid for this combinational comparison. It remains in
  `hier_compile_master_10ns.csv` as a transparent negative datapoint.
- Root-opt DIV/runtime, all 12 root-opt MUL netlists, and all four integrated
  root-opt DIV+MUL netlists pass RTL-to-gate miters. PACE and prior-work gate
  logs are under `qsim_rtl/hier_compile_gate/logs/`.

## Interpretation Rules

`div_only_vs_pace_hier_compile_10ns.csv` and
`priorwork_hier_compile_10ns.csv` are the fair DIV comparisons: they use the
same normal-finite FP32 wrapper and the same hierarchy-preserving mapping
boundary. Accuracy is unchanged because no RTL or vector set changed.

`divmul_sharing_ablation_hier_compile_10ns.csv` is the current structural
ablation. Each fixed L0-L3 integrated top shares its midpoint/residual
multipliers between modes, matches the current root-opt DIV and balanced MUL
outputs bit for bit, and is compared against the sum of those exact standalone
views. The obsolete pre-pruning sharing CSV and raw evidence were removed.

The previous unsuffixed CSVs use explicit flattening and `compile_ultra`.
Retain them for provenance, but do not combine their PPA values with this
campaign.

## Selected Results

| Design | Area (um^2) | Delay (ns) | Power (mW) |
|---|---:|---:|---:|
| OADM DIV L0 | 764.280005 | 2.00953 | 0.0344208 |
| OADM DIV L1 | 1215.720003 | 2.60013 | 0.0679965 |
| OADM DIV L2 | 1560.240008 | 2.64331 | 0.0844278 |
| OADM DIV L3 | 1915.920006 | 2.97591 | 0.0902047 |
| OADM runtime DIV+MUL | 3174.120010 | 3.96574 | 0.1284270 |
| OADM integrated DIV+MUL L0 | 957.960008 | 2.49427 | 0.0382199 |
| OADM integrated DIV+MUL L1 | 1696.680006 | 2.89371 | 0.0732530 |
| OADM integrated DIV+MUL L2 | 2106.720010 | 3.31142 | 0.0911738 |
| OADM integrated DIV+MUL L3 | 2663.640009 | 3.68527 | 0.1116930 |
| Exact MUL | 4316.759975 | 3.79170 | 0.2396670 |
| Exact DIV | 19604.520074 | 9.75016 | 1.8950900 |
| Exact DIV+MUL | 24025.680052 | 9.85585 | 2.0842100 |

The exact DIV and DIV+MUL setup slacks are positive but narrow at 0.22984 ns
and 0.12415 ns, respectively. All valid points have empty maximum- and
minimum-delay violation reports.

The current fixed-level integrated sharing result is:

| Level | Separate area (um^2) | Integrated area (um^2) | Area saved | Power saved | Delay overhead |
|---|---:|---:|---:|---:|---:|
| L0 | 1280.880008 | 957.960008 | 25.21% | 31.58% | 24.12% |
| L1 | 2164.320006 | 1696.680006 | 21.61% | 31.45% | 11.29% |
| L2 | 2877.840012 | 2106.720010 | 26.80% | 35.63% | 25.28% |
| L3 | 3561.840010 | 2663.640009 | 25.22% | 32.96% | 23.84% |

Delay overhead is measured against the slower of the corresponding standalone
DIV-only and balanced MUL-only paths.
