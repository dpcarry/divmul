# Exact Reciprocal Shift-Add: Completed

Scope: fixed L0-L3 shared selectable DIV/MUL, not standalone DIV or runtime.
All 12 RTL/DC/PT/gate points passed. No production selection changed.
TSMC65 typical CCS, 10 ns, no pipeline, plain compile, no flatten/ultra.
Power is vectorless PT. No placed-and-routed or workload-energy claim.
208608 full-FP32 RTL cases and 10608 gate cases per design, both modes.
The coefficient stage was additionally exhaustively checked at RTL:
128/1024/2048/4096 retained-operand and legal-coefficient pairs at L0-L3.
All outputs match the original; no accuracy sacrifice or new calibration.

| Level | Method | Area um2 | Delay ns | Power uW | ADP | ADP change |
|---|---|---:|---:|---:|---:|---:|
| L0 | control | 957.96 | 2.49427 | 38.220 | 2389.41 | +0.00% |
| L0 | binary | 1080.72 | 2.60674 | 45.316 | 2817.16 | +17.90% |
| L0 | csd | 961.20 | 2.54576 | 38.004 | 2446.98 | +2.41% |
| L1 | control | 1696.68 | 2.89371 | 73.253 | 4909.70 | +0.00% |
| L1 | binary | 1729.80 | 2.85991 | 74.298 | 4947.07 | +0.76% |
| L1 | csd | 1841.04 | 2.99354 | 80.108 | 5511.23 | +12.25% |
| L2 | control | 2106.72 | 3.31142 | 91.174 | 6976.23 | +0.00% |
| L2 | binary | 2153.88 | 3.32111 | 93.362 | 7153.27 | +2.54% |
| L2 | csd | 2618.28 | 3.44559 | 107.577 | 9021.52 | +29.32% |
| L3 | control | 2663.64 | 3.68527 | 111.693 | 9816.23 | +0.00% |
| L3 | binary | 2730.96 | 3.57535 | 113.975 | 9764.14 | -0.53% |
| L3 | csd | 3515.04 | 3.72841 | 134.826 | 13105.51 | +33.51% |

Changes compare freshly synthesized controls in this experiment.
Control drift versus the previous sharing campaign is in control_drift.csv.
The binary variant gates shifted operands with the existing coefficient bits.
The CSD variant selects precomputed signed-digit masks directly by partition.
Thus CSD changes coefficient encoding/selection as part of the scale stage;
it does not insert a runtime coefficient-to-CSD converter or approximate it.
Intermediate sums use one guard bit; the final product is exactly the original width.
This evaluates these specific balanced trees, not every possible shift/add graph.
No pipeline, operand isolation, retiming, or change to residual/w_n truncation was added.
