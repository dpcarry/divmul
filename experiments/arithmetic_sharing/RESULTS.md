# Completed Matched-Shell Arithmetic Sharing

208608 RTL/model checks and 10608 gate checks per B/C design; all passed.
Both modes match their current standalone references bitwise on every RTL input.
Fresh B/C DC/PT: TSMC65, 10 ns, ordinary compile, no flatten/ultra, no pipeline.
All min/max constraint checks pass; no sequential cells or black boxes.
A is a reused raw-report sum of two standalone units, not a throughput-matched selectable top.

| Level | A sum area | B area | C area | B-to-C area saved | B delay | C delay | ADP saved |
|---|---:|---:|---:|---:|---:|---:|---:|
| L0 | 1033.56 | 1018.44 | 957.96 | 5.94% | 1.96355 | 2.49427 | -19.49% |
| L1 | 2079.00 | 2111.40 | 1696.68 | 19.64% | 2.88700 | 2.89371 | 19.46% |
| L2 | 2802.24 | 2751.84 | 2106.72 | 23.44% | 3.15696 | 3.31142 | 19.70% |
| L3 | 3511.44 | 3454.20 | 2663.64 | 22.89% | 3.47887 | 3.68527 | 18.31% |

Area units: um2; delay units: ns. Negative savings mean a regression.
B netlists retain separate div_plane and mul_plane instances; both B/C retain one fp_wrapper.
See hierarchy.csv for inclusive core and wrapper areas; do not add nested children twice.
B-to-C is net arithmetic-organization benefit, not exclusively multiplier area.
A-to-B includes extra mode-selection cost and is not pure wrapper savings.
Power in ppa.csv is vectorless; no matched-workload energy claim or operand-isolation study.
Current shared source is unchanged; c_area_change_from_previous_um2 records rerun drift.
Original canonical PPA and RTL remain untouched.
