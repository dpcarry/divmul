# Independent arithmetic and worst-case checks

`check_math.py` independently reconstructs the real-valued centered plane using
Python Fraction, rather than reusing the integer tables or shifts in the RTL
generator. It checks 1,024 additional random pairs per design.

`mantissa_worst_case.csv` enumerates every retained input bin and evaluates the
two extremal corners of each bin. The implemented output is constant within
each such bin, and for a positive output z, relative signed error z*y/x-1 is
monotone decreasing in x and increasing in y. Therefore, the maximum absolute
relative error is attained at one of those two corners. Endpoints use the
actual discrete FP32 mantissa grid, including 2^D-1 rather than the next bin's
first code. The reported maximum is numerically evaluated in double precision.

This establishes a mantissa-domain worst-case relative error for the specified
bit-accurate models over normalized x,y in [1,2). It is not a full IEEE-754
special-case, overflow, or underflow guarantee, and it is not an exhaustive
gate-level simulation of all FP32 words. The RTL regression covers all retained
code combinations; additional signed and exponent cases are sampled.

For the short-coefficient candidates selected in this experiment, the maxima
are approximately:

| Level | Original (%) | Absorbed short coefficients (%) |
|---|---:|---:|
| L0 | 31.2522 | 30.5997 |
| L1 | 9.2415 | 9.1963 |
| L2 | 3.0256 | 3.3453 |
| L3 | 1.7048 | 1.4523 |

In particular, improved MRED/RMSE at L2 does not imply improved worst-case
accuracy. The candidate must not be described as uniformly more accurate.
