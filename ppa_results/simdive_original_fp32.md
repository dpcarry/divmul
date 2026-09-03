# Original SIMDive-Derived FP32 Wrapper

This experiment instantiates the unmodified author-provided `SIMD_32_16_8`
single-32-bit core inside `rtl/simdive_original/simdive_original_fp32_wrapper.v`.
It is not a native FP32 implementation from the SIMDive paper.

The wrapper handles sign, exponent, normalization, and normal-finite FP32
mantissas. In the original core, single-lane DIV produces an integer quotient.
The wrapper shifts the 24-bit dividend mantissa left by eight bits before the
core, yielding a Q8 divider result. Thus the DIV wrapper has at most eight
fractional quotient bits before FP32 repacking. Zero is flushed to zero and
non-finite/subnormal operands produce a documented non-IEEE fallback; accuracy
results use normal finite operands only.

## RTL Accuracy

Verilator executed the original RTL plus wrapper on 10,000 deterministic
positive normalized FP32 mantissa pairs in `[1,2)`.

| Mode | MAE | MRED | RMSE |
| --- | ---: | ---: | ---: |
| MUL | 0.018707268 | 0.008792073 | 0.024883815 |
| DIV | 0.008370335 | 0.007972016 | 0.011515267 |

The DIV row includes both the authors' approximation and the Q8 adapter
quantization. It must be described as an `SIMDive-derived FP32 wrapper`, not
as a native FP32 reproduction of SIMDive.

## PPA Status

The canonical flow under `dc/canonical_refresh/` and
`pt_dc/canonical_refresh/` completed under the same explicitly flattened,
area-optimized TSMC65 10-ns no-pipeline boundary used for local OADM results.

| Area (um^2) | DC delay (ns) | PT delay (ns) | PT power (mW) | ADP (um^2 ns) |
| ---: | ---: | ---: | ---: | ---: |
| 2217.240035 | 5.11000 | 5.09242 | 0.0683891 | 11291.117499 |

The flattened netlist is combinational and contains no macros or black boxes;
PrimeTime passed its timing checks with no max-delay violation. A 20,000-vector
cross-simulator check generated expected outputs from two-state Verilator RTL
and reproduced them with the Questa gate netlist.

### Synthesis Compatibility Note

The author source connects a 32-bit concatenation to a 31-bit `shifter_out`
input. Event-driven simulators silently discard the leading bit, whereas DC
rejects the width mismatch. The fair synthesis file list therefore replaces
only that module with `rtl/simdive_original_compat/shifter_out_mul_div_compat.v`:
it declares the connection at 32 bits and explicitly uses the original
effective 31-bit slice internally. The authors' source directory is unchanged.
Re-running the deterministic 10,000-vector RTL harness with this replacement
produced the same displayed MUL and DIV MAE/MRED/RMSE values as the author
source under its simulator-defined implicit truncation.

A direct four-state RTL/gate miter is not meaningful for this author source:
incomplete assignments and width semantics produce simulator-dependent unknown
values. The two-state-reference gate check above preserves the semantics used
for the reported accuracy run. This is still not a native FP32 SIMDive result;
its accuracy remains qualitative context because OADM uses a different vector
sequence and DIV includes the Q8 adapter.
