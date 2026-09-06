# Completed Three-Group Experiment

46 configurations; 101,833 RTL/reference vectors and 11,833 gate/RTL vectors per design passed.
All four controls match the previous 100,000-vector RTL capture exactly.
Accuracy below uses 100,000 common normalized pairs. Boundary and signed cases are separate in accuracy.csv.
Functional gate simulation has no SDF. Timing is separately checked in PT.
Common FP32 normal-finite wrapper, TSMC65, 10 ns, ordinary compile plus area optimization; no flatten/ungroup/compile_ultra.
Residual/w_n truncation and reciprocal coefficients are unchanged in every group.
Mask and narrow are bit-identical; narrow changes representation widths, not the arithmetic accuracy contract.

| Level | Input bits | RMSE | Control area | Mask area | Narrow area | Control ADP | Mask ADP | Narrow ADP |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| L0 | 3 | 0.06627446 | 516.96 | 443.16 | 449.64 | 908.71 | 722.93 | 757.07 |
| L0 | 4 | 0.05827690 | 516.96 | 492.84 | 505.08 | 908.71 | 840.17 | 893.79 |
| L0 | 5 | 0.05642904 | 516.96 | 516.96 | 538.20 | 908.71 | 908.71 | 975.80 |
| L0 | 6 | 0.05642904 | 516.96 | 516.96 | 538.20 | 908.71 | 908.71 | 975.80 |
| L0 | 7 | 0.05642904 | 516.96 | 516.96 | 538.20 | 908.71 | 908.71 | 975.80 |
| L0 | 8 | 0.05642904 | 516.96 | 516.96 | 538.20 | 908.71 | 908.71 | 975.80 |
| L1 | 4 | 0.02552201 | 1130.40 | 976.68 | 848.88 | 3055.91 | 2450.91 | 2004.15 |
| L1 | 5 | 0.01869274 | 1130.40 | 1043.64 | 979.92 | 3055.91 | 2666.94 | 2424.56 |
| L1 | 6 | 0.01661022 | 1130.40 | 1092.60 | 1067.40 | 3055.91 | 2886.90 | 2585.22 |
| L1 | 7 | 0.01610807 | 1130.40 | 1130.40 | 1108.44 | 3055.91 | 3055.91 | 2746.44 |
| L1 | 8 | 0.01610807 | 1130.40 | 1130.40 | 1108.44 | 3055.91 | 3055.91 | 2746.44 |
| L2 | 4 | 0.02112674 | 1484.64 | 1354.32 | 1024.92 | 4062.23 | 3652.87 | 2360.65 |
| L2 | 5 | 0.01110683 | 1484.64 | 1399.32 | 1120.68 | 4062.23 | 3798.87 | 2752.35 |
| L2 | 6 | 0.00677813 | 1484.64 | 1435.32 | 1211.76 | 4062.23 | 3992.27 | 3095.30 |
| L2 | 7 | 0.00528691 | 1484.64 | 1484.64 | 1329.84 | 4062.23 | 4062.23 | 3341.08 |
| L2 | 8 | 0.00528691 | 1484.64 | 1484.64 | 1329.84 | 4062.23 | 4062.23 | 3341.08 |
| L3 | 4 | 0.02097690 | 1865.52 | 1736.28 | 1306.08 | 5748.58 | 5351.16 | 3331.16 |
| L3 | 5 | 0.01056180 | 1865.52 | 1788.12 | 1356.12 | 5748.58 | 5517.74 | 3535.55 |
| L3 | 6 | 0.00559518 | 1865.52 | 1820.88 | 1460.88 | 5748.58 | 5617.47 | 3954.47 |
| L3 | 7 | 0.00346444 | 1865.52 | 1865.52 | 1571.04 | 5748.58 | 5748.58 | 4424.54 |
| L3 | 8 | 0.00346444 | 1865.52 | 1865.52 | 1571.04 | 5748.58 | 5748.58 | 4424.54 |

## Unchanged-Output Points

These are bit-identical to Control on all RTL vectors, not merely close in average RMSE.
Mask has the same area and delay as Control at these widths; vectorless power may differ slightly.

| Level | b | Control/Mask area | Narrow area | Control/Mask delay | Narrow delay | Narrow ADP change |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| L0 | 5 | 516.96 | 538.20 | 1.75780 | 1.81308 | +7.38% |
| L1 | 7 | 1130.40 | 1108.44 | 2.70339 | 2.47775 | -10.13% |
| L2 | 7 | 1484.64 | 1329.84 | 2.73617 | 2.51239 | -17.75% |
| L3 | 7 | 1865.52 | 1571.04 | 3.08149 | 2.81631 | -23.03% |

## Interpretation

Within this matrix, input masking is equivalent to raising the effective residual drop to max(R,23-b).
L0 b>=5 and L1-L3 b>=7 discard no information additionally consumed by the current core.
Explicit width reduction improves the unchanged-output L1-L3 mappings, but worsens L0.
This does not prove every narrow RTL formulation is inferior for L0 or globally optimal for L1-L3.
More aggressive input truncation increases RMSE: b4 L0 and b6 L1 are about +3.3% and +3.1%;
b6 L2 and L3 are about +28.2% and +61.5%. No reciprocal recalibration was performed.
These remain isolated candidate/negative results, not replacements for canonical production RTL or CSVs.
