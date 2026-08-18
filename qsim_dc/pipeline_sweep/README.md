# Post-synthesis pipeline regression

`make run` independently compiles each runtime NP/P2--P7 DC netlist, annotates
its generated SDF, and compares 1000 transactions against the matching RTL
pipeline mask. Inputs change level and MUL/DIV mode every cycle and include
random normalized FP32 values plus zero, infinity, and NaN cases.

Separate ModelSim libraries are required because each synthesized netlist uses
different parameter-specialized internal module definitions. Run DC first if
the ignored, regenerable `*.syn.sdf` files are not present.
