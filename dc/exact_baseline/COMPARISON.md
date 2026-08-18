# Exact FP32 baseline comparison

## Method

The exact baselines use Synopsys DesignWare `DW_lp_piped_fp_mult` and
`DW_lp_piped_fp_div`. Each unit has seven pipeline register levels and accepts
one operation per cycle. The combined baseline instantiates both exact units
and delays `divide_mode` by seven cycles before selecting the result.

All designs were synthesized with Design Compiler U-2022.12-SP7 using the same
TSMC 65 nm typical CCS library and 1.5 ns synthesis constraint as the fixed
OADM designs. PrimeTime U-2022.12-SP5 evaluated timing at 2 ns. Vectorless power
uses the same 0.5 input static probability and 0.1 transitions/ns toggle rate.
Energy per cycle is `PT power * 2 ns` and is also energy per accepted operation
when the pipeline receives one operation every cycle.

## Results

| Design | Area (um2) | Setup/Hold (ns) | Power (mW) | Energy/cycle (pJ) |
|---|---:|---:|---:|---:|
| Exact MUL | 7,615.40 | +0.51/+0.01 | 3.3840 | 6.7680 |
| Exact DIV | 29,729.14 | +0.50/+0.01 | 10.9570 | 21.9140 |
| Exact DivMul | 37,400.08 | +0.50/+0.01 | 14.3340 | 28.6680 |
| OADM L0 | 5,275.08 | +0.51/+0.04 | 2.5623 | 5.1246 |
| OADM L1 | 8,494.92 | +0.51/+0.04 | 3.8883 | 7.7766 |
| OADM L2 | 11,567.88 | +0.51/+0.04 | 4.8426 | 9.6852 |
| OADM L3 | 13,439.16 | +0.50/+0.01 | 5.5509 | 11.1018 |
| OADM L4 | 14,887.44 | +0.50/+0.01 | 5.9134 | 11.8268 |

| OADM level | Area saving vs exact DivMul | Power saving vs exact DivMul |
|---|---:|---:|
| L0 | 85.90% | 82.12% |
| L1 | 77.29% | 72.87% |
| L2 | 69.07% | 66.22% |
| L3 | 64.07% | 61.27% |
| L4 | 60.19% | 58.75% |

## Interpretation and scope

The combined comparison is latency- and throughput-aligned: every design has a
seven-cycle latency and can accept one operation each cycle. It supports the
claim that the approximate shared DivMul uses substantially less cell area and
estimated power than implementing exact multiplication and exact division in
parallel.

The reported power is vectorless rather than workload-derived. Both exact
units are active inside the combined exact baseline; no mode-dependent clock or
operand gating is applied. OADM also receives continuously active inputs under
the same assumptions.

`ieee_compliance=0` flushes denormals in the DesignWare blocks, matching OADM's
subnormal scope, and `rnd=3'b001` selects round toward zero, matching OADM's
truncation direction. DesignWare treats NaN as infinity in this mode, whereas
OADM explicitly emits a quiet NaN. Therefore, the comparison is aligned for
finite normalized arithmetic but is not a claim of identical special-value
semantics.
