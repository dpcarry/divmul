# L0 Original x59 Gate Audit

Scope: the original fixed L0 shared DIV/MUL control from the completed
reciprocal_shiftadd campaign. No synthesis, production RTL, or old result edits.

## Identified Hardware

- Netlist: `../dc/oadm_fixed_l0_divmul_root_opt/oadm_fixed_l0_divmul_root_opt.nl.v`.
- Parent instance `implementation/mult_113`, lines 301-303.
- Mapped module `oadm_fixed_divmul_root_opt_0_18_16_18_7_3b_DW_mult_uns_0`,
  lines 184-223. Input `a` is `plane_value[24:18]`, seven unsigned bits.
- `b` retains a six-bit port declaration, but no cell reads it. The parent
  supplies 59; DC also reports all six b bits unused (LINT-28).
- Output is a thirteen-bit product. This is not a general variable multiplier.

The complete local module has 30 standard cells:

| Type | Count |
|---|---:|
| FA1D0 full adder | 9 |
| HA1D0 half adder | 4 |
| INVD1 inverter | 7 |
| XNR2D0 XNOR | 5 |
| CKND2D0 NAND | 3 |
| NR2D0 NOR | 1 |
| CKBD1 buffer | 1 |

DC hierarchical area, original `.dc.rpt` line 435: **136.8000 um2**.
This is the product submodule, not the whole 957.9600 um2 shared FP32 unit.

## Connectivity, Not Just a Module Name

- U35-U39 and U41-U42 generate the seven complemented input bits.
- U20 is a full adder and U21-U23 are half adders that combine selected
  input/complement bits into sum and carry signals.
- U14 followed by U13, U12, U11, U10, U9, U8, U7, U6 forms the explicit
  final carry chain from product bit 1 through bit 9.
- U46, U44, U43, U45, U47 implement the upper product-bit logic.
- Product bit 0 is a buffered copy of input bit 0.

Thus the observable implementation is a constant-specialized bit-level
adder/complement network, with local sum/carry compression and a final carry
chain. It is not five separately materialized wide additions, nor two cleanly
separated full-width subtractors. The numerical identity
`59*a = (a<<6) - (a<<2) - a` describes the function, but does not alone identify
the exact synthesis recoding algorithm. Do not claim Booth or a particular
CSD synthesis pass solely from this mapped netlist.

## Functional and Timing Evidence

`audit.py` strictly extracts this simple mapped module and evaluates its cell
connections with the Boolean functions checked against the TSMC65 Verilog
library. It rejects unrecognized statements/cells and unresolved connections.
All 128 possible a values match `59*a`, with zero mismatches. The b port has
no cell connections. `audit.json` contains the source hash, counts and vectors.
This is exhaustive two-state Boolean evaluation, not a new ModelSim/SDF run.

The first path in the original PT `.pt.max_delay.rpt`, lines 42-51, traverses:

```
a[6] -> U41 inverter -> U20/S
     -> U9/CO -> U8/CO -> U7/CO -> U6/CO
     -> U46 NOR -> U44 NAND -> U43 XNOR -> product[12]
```

Arrival before this module is 1.12375 ns; after it, 1.65702 ns. Its segment
on this particular global critical path contributes **0.53327 ns**, including
the reported cell/net increments. This is not an independently constrained
standalone multiplier delay. The complete path arrival is 2.49427 ns.

This audit confirms that the original `*59` already specializes to small
arithmetic logic. It does not by itself assign every area/delay difference
between the original and hand-written CSD design to a specific changed gate.
