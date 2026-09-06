# SIMDive-Derived SISD32 FP32 Wrapper

The current valid PPA experiment source-specializes the author-provided
`SIMD_32_16_8` RTL to its fixed `mode=01` single-32-bit path. The author source
directory remains unchanged. This is not a native FP32 implementation from the
SIMDive paper.

The shared `fp32_normal_finite_wrapper` handles sign and exponent repacking.
In the original core, single-lane DIV produces an integer quotient. The adapter
shifts the 24-bit dividend mantissa left by eight bits before the core, yielding
a Q8 divider result. Thus DIV has at most eight fractional quotient bits before
FP32 repacking. Exceptional values and subnormals remain outside the common
comparison scope.

## RTL Accuracy

Verilator executed the specialized and original RTL together on the same
10,000 deterministic positive normalized FP32 pairs used for OADM L0-L3.

| Mode | MAE | MRED | RMSE |
| --- | ---: | ---: | ---: |
| MUL | 0.018707268 | 0.008792073 | 0.024883815 |
| DIV | 0.008573437 | 0.008273827 | 0.018849373 |

The DIV row includes both the authors' approximation and the Q8 adapter
quantization. It must be described as an `SIMDive-derived FP32 wrapper`, not
as a native FP32 reproduction of SIMDive.

## PPA Status

The current flow uses hierarchy-preserving ordinary `compile`, no flattening,
and no `compile_ultra`, with the same TSMC65 10-ns no-pipeline boundary used for
the current OADM results.

| Area (um^2) | DC delay (ns) | PT delay (ns) | PT power (mW) | ADP (um^2 ns) |
| ---: | ---: | ---: | ---: | ---: |
| 3729.240087 | 7.67000 | 7.64970 | 0.1099120 | 28527.567894 |

The netlist has zero sequential cells and zero black boxes. PrimeTime passed
`check_timing`, with 2.33030 ns setup slack and 0.09 ns minimum-delay slack. A
20,000-vector check generated expected outputs from the original author RTL and
matched every output from the specialized gate netlist.

### Source Specialization

Ordinary hierarchy-preserving synthesis of the complete SIMD core retains 23
latches in unreachable 16/8-bit lane branches and is preserved as a negative
audit row. `rtl/simdive_original_compat/simdive_sisd32_specialized.v` retains
the mode=01 coefficient table, segmented adders, shifts, and output slicing,
while removing only those unreachable lane modes. It matched the original
two-state RTL for 20,000 unique MUL/DIV mode-vector pairs.

A direct four-state miter is not meaningful because the as-received inactive
lane assignments propagate simulator-dependent unknowns. The two-state
original reference preserves the semantics used for accuracy. OADM and
SIMDive now use identical vectors, but DIV still includes the local Q8 adapter.
