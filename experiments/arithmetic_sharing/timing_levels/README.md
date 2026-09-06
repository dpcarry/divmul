# Fixed-Level Sharing Timing Diagnosis

2026-09-05. Re-read all eight existing L0-L3 B/C netlists with their original
SDCs and TSMC65 typical CCS library in PrimeTime. No resynthesis or RTL edits.
All eight unrestricted global arrival times reproduced the canonical reports
within 0.00002 ns. Source/report manifests passed SHA256 checks before analysis.
New evidence is confined to this directory; canonical CSVs and LaTeX unchanged.

Run from research: `.venv/bin/python experiments/arithmetic_sharing/timing_levels/run.py`.
License-server access is required. `paths.csv` contains 72 diagnostic rows.
Logs include the completion marker and were checked for Error/Fatal messages.
`netlist_sdc_sha256.json` identifies the actual mapped inputs.

## Global and Mode-Control Paths

Arrival times in ns include the original 0.020 ns input delay. All worst paths
in this table end at result[30], the highest exponent bit.

| Level | B global | C global | Increase | B mode path | C mode path | C critical start |
|---|---:|---:|---:|---:|---:|---|
| L0 | 1.96355 | 2.49427 | 27.03% | 1.05608 | 2.49427 | divide_mode |
| L1 | 2.88700 | 2.89371 | 0.23% | 1.11719 | 2.87000 | y[22] |
| L2 | 3.15696 | 3.31142 | 4.89% | 1.22046 | 3.31142 | divide_mode |
| L3 | 3.47887 | 3.68527 | 5.93% | 1.24819 | 3.61155 | y[20] |

Mode control becomes much slower at EVERY level. The global delay is the
maximum path delay, not a sum of the mode path and data path. L1 and L3 mode
paths remain below data paths. L2 mode control becomes critical, but exceeds
the previous worst data path by only 0.15446 ns. L0's previous independent
DIV datapath is unusually short because its midpoint and coefficient are
constants, and its DIV-only residual is narrower than the shared MUL container.
L1-L3 midpoint operands depend on partition bits; their existing data paths
already traverse variable-midpoint multiplication before sharing.

This is not just a percentage-denominator effect: absolute penalties also
differ. The following stage deltas explain the measured differences.

## Stage Durations on Each Global Critical Path

| Level/role | Input through plane | Reciprocal product | Select/normalize decode | Wrapper exponent/output |
|---|---:|---:|---:|---:|
| L0 B | 0.60260 | 0.52619 | 0.31926 | 0.51550 |
| L0 C | 1.12375 | 0.53327 | 0.32174 | 0.51551 |
| L1 B | 1.26621 | 0.69647 | 0.40879 | 0.51553 |
| L1 C | 1.27499 | 0.69450 | 0.40866 | 0.51556 |
| L2 B | 1.41332 | 0.74060 | 0.48630 | 0.51674 |
| L2 C | 1.44934 | 0.85426 | 0.49099 | 0.51683 |
| L3 B | 1.55090 | 0.92175 | 0.48940 | 0.51682 |
| L3 C | 1.75199 | 0.92176 | 0.49459 | 0.51693 |

Boundaries use the original pt.max_delay.rpt: last pin before mult_82 (B) or
mult_113 (C), last pin inside that multiplier, and last pin before fp_wrapper.
These are different critical paths, not isolated incremental gate costs.

### L1: Product Penalty Offset by Sum Mapping

Both critical paths start at y[22], selecting the midpoint used to multiply
the x residual. The arrival at the residual-product output changes from
0.81456 ns (B div_plane/mult_42/U3/S) to 0.90720 ns (C mult_61/U2/S):
+0.09264 ns, including input buffering. C's product has a longer carry chain.
The following plane-sum section takes 0.45165 ns in B but 0.36779 ns in C:
-0.08386 ns. B traverses U29/CO, U27/S, U14/CO, U11/Z, U5/ZN; C traverses
U99/CO, U34/CO, U9/ZN, U88/Z. Those mapped sum structures differ even though
outputs are equivalent. This nearly cancels the product penalty, leaving
0.00878 ns at the plane boundary and 0.00671 ns globally. It is a mapping
outcome, not a general proof that L1 sharing is delay-free.

### L2: Mode Path and a Different Multiplier Entry Bit

B starts at y[22]; C starts at divide_mode through residual masking and the
y residual product. Plane-boundary delay increases only 0.03602 ns. The
critical path then enters the reciprocal multiplication from different plane
bits: B plane_exact[24], C plane_value[22]. C traverses ten final carry cells
(mult_113/U11 through U2), B eight (mult_82/U9 through U2). Two extra carry
arcs account for about 0.11049 ns of the measured 0.11366 ns difference in
this segment. Both multipliers still have a 9-bit plane operand and an
8-bit coefficient: this is NOT a newly widened reciprocal multiplier.

### L3: Wider Shared Product Remains the Main Penalty

Both critical paths start at y[20], the low midpoint-select bit. Through
residual multiplication, arrival changes from 1.17657 ns (B mult_42/U2/S)
to 1.36082 ns (C mult_61/U144/ZN): +0.18425 ns. C has a longer product carry
chain; its input buffer is actually faster (0.11861 vs 0.17636 ns), partially
offsetting the arithmetic increase. Plane summation adds another 0.01684 ns.
Thus 0.20109 ns of the total 0.20640 ns difference occurs before reciprocal
multiplication. The remaining path is almost unchanged. Mode control is
3.61155 ns, below the 3.68527 ns data critical path.

## Stable-Mode Diagnostics

| Level | B MUL | C MUL | B DIV | C DIV |
|---|---:|---:|---:|---:|
| L0 | 1.56979 | 1.74213 | 1.95765 | 2.19522 |
| L1 | 2.24668 | 2.18985 | 2.88639 | 2.84776 |
| L2 | 2.51105 | 2.42600 | 3.15438 | 3.17841 |
| L3 | 2.80918 | 2.74858 | 3.47585 | 3.67915 |

set_case_analysis only propagates a stable mode on the same mapped netlist.
It does not resynthesize or remove cells, prove unrestricted paths false, or
justify replacing the selectable-unit timing constraint. No false paths were
added. Ordinary graph-based STA is not a full path-sensitization proof.
MUL can map faster after sharing; shared arithmetic need not add a positive
delay to every path. Vectorless power and canonical area were not remeasured.
