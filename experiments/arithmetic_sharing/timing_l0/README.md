# L0 B/C Timing Audit

September 5: PrimeTime re-read the existing B/C netlists and their original
SDCs using the same TSMC65 typical CCS library. No resynthesis, RTL edits,
new exceptions, or canonical PPA replacement. paths.tcl reproduces the reports
with TOP_LEVEL set to either oadm_fixed_l0_divmul_unshared (B) or
oadm_fixed_l0_divmul_root_opt (C).

Each grouped report requests three distinct endpoints. The values below are
the worst arrival times, including the original 0.020 ns input delay.

| Input to output group | B ns | C ns |
|---|---:|---:|
| divide_mode to exponent | 1.05608 | 2.49427 |
| x to exponent | 1.96355 | 2.28428 |
| y to exponent | 1.93577 | 2.29687 |
| divide_mode to fraction | 0.54952 | 1.98776 |
| x to fraction | 1.45699 | 1.77776 |
| y to fraction | 1.42922 | 1.79036 |

Global B critical path starts at x[18]; C starts at divide_mode. Both end at
result[30]. Their arrival times differ by 0.53072 ns. Comparing the two
different critical paths is not an isolated incremental gate-cost experiment.

| Critical-path stage | B duration ns | C duration ns |
|---|---:|---:|
| Input through plane output (including input delay) | 0.60260 | 1.12375 |
| Reciprocal-coefficient product | 0.52619 | 0.53327 |
| Result selection and exponent-adjust decode | 0.31926 | 0.32174 |
| Wrapper exponent adjustment through output | 0.51550 | 0.51551 |

These stage boundaries come from the original pt.max_delay.rpt reports:
B div_plane/U6/Z and mult_82/U43/ZN; C U6/ZN and mult_113/U43/ZN;
B U3/ZN and C U8/ZN drive exponent_adjust[2].

C path: divide_mode -> U7 -> U50 -> U99 -> mult_63_U9 -> U73 -> U108 ->
U71 -> U70/U66/U63/U59/U56/U51/U53/U93 carry chain -> U6 -> mult_113 ->
U49/U10/U8 -> fp_wrapper exponent carry chain -> result[30].
U99 gates y residual bit 17; U98 gates bit 16. U100/U101 are the x-side
counterparts. C retains seven residual bits for MUL but zeros two for DIV.
The shared sum includes mode-selected sign and MUL compensation. The
additional delay cannot be attributed solely to the bias or solely to a mux.
L0 midpoints are constants: mapped residual products are shift/add logic,
not variable-midpoint multipliers. U7 and U50 drive 24 and 36 loads, with
0.08782 and 0.11943 ns increments on the original C critical path.

Case analysis is diagnostic only, on the same mapped netlists:

| Stable mode | B ns | C ns |
|---|---:|---:|
| MUL (0) | 1.56979 | 1.74213 |
| DIV (1) | 1.95765 | 2.19522 |

This removes mode-switch timing and propagates mode-dependent constants. It
does not prove unrestricted paths false and must not replace selectable-unit
PPA unless the interface protocol genuinely supplies the corresponding timing
constraint. Grouped x/y paths above do not imply mode-fixed operation.
No path-sensitization proof or SDF simulation was performed in this audit.
