# AM-Lib OAM RTL provenance

The `L0` through `L3` source directories are an unmodified snapshot of the
OAM RTL from <https://github.com/skycrapers/AM-Lib/tree/main/OAM> at commit
`cc3864baead2584a94f0e7111e8d73d923fa3b35`.

The canonical local PPA campaign keeps each upstream `Mantissa_OAUM` and its
partial-product/CSA hierarchy unchanged, but replaces the upstream FP shell
with the shared `fp32_normal_finite_wrapper`. Each L0--L3 point uses TSMC65,
10 ns, no pipeline, hierarchy-preserving ordinary `compile`, area optimization,
and the same vectorless PrimeTime policy as the local OADM MUL-only wrappers.
The common wrapper is bit-exact to the upstream `top` over 20,000 normalized
finite vectors per level.
