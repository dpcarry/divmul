# Stored coefficients and binary-point alignment

This file describes the short-coefficient versions. The exact versions retain
enough coefficient bits that the absorption introduces no coefficient error.

The original real midpoint is k=K/16 and the original reciprocal coefficient is
c=C/2^B. Given the original residual drop D, retained signed residual codes u,v
represent real residuals u*2^(D-23), v*2^(D-23).

For slope fractional precision S, define F=S+23-D and calculate offline:

    A = round(c*ky*2^S)
    H = round(c*kx*2^S)
    T = round(c*kx*ky*2^F)

All quantities rounded here are positive; rounding is floor(value+0.5).
The hardware selects A,H,T using the cell indices and evaluates:

    p = T + A*u - H*v
    quotient mantissa = p/2^F
    Q23 integer passed to the existing normalizer = p*2^(23-F)

There is no separate reciprocal multiplier and no dynamic calculation of these
coefficients. The midpoint product is also absorbed into the selected constant.
The coefficient table may be synthesized as Boolean decode/mux logic; it is not
necessarily an instantiated memory macro. A Verilog reg in a complete
combinational case block does not imply a storage register.

## Example: L3, first cell, S=4

Kx=Ky=17, C=227, B=8, D=16, F=11.

    A = H = round((227/256)*(17/16)*16) = 15
    T = round((227/256)*(17/16)^2*2048) = 2050
    p = 2050 + 15*u - 15*v

Here u and v are 4-bit signed residual codes in units of 1/128, and p represents
the output mantissa in units of 1/2048. Across all L3 cells, the selected slopes
need 5 and 6 signed bits, including their zero sign bits, and the selected
constant needs 13 signed bits. This is not 64 separate arithmetic datapaths.

## Scope of equivalence

Without W truncation, distributing c over the three plane terms is exact.
With the original W truncation, c*truncate(W) generally differs from c*W.
Therefore the absorption ablation compares `no_w` against `exact`; their model,
RTL and gate outputs must agree. Comparing either against `control` also changes
the truncation behavior. Comparing `inherited` against `exact` additionally
changes coefficient precision. None of this changes the production shared RTL.
