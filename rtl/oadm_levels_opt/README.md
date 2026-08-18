# Eq. 10/11 RTL experiment

This directory is isolated from the baseline fixed-level RTL. The core first
computes the multiplier plane `zM0` and multiplier corrections `delta_z`, then
derives the divider plane using the paper's relationships:

```text
w0       = -zM0 + 3x
delta_wn = -delta_zn + 2x * sign(y[n]) >> (n + 1)
```

The one-bit `w0` correction and the signed `epsilon` terms preserve the exact
Q5.23 floor behavior of the baseline's independently written shift terms.
Without them, the equations are equivalent over real numbers but not always
equivalent after Verilog arithmetic right shifts.

The compensated implementation is bit-exact to the fixed baseline but costs
more area and vectorless power after DC mapping. It is retained as a documented
architecture experiment and should not replace `rtl/fixed`.
