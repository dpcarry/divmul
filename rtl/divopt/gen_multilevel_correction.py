#!/usr/bin/env python3
"""Emit an Espresso PLA for exact OADM L0-L3 rounding corrections."""

ONE_Q = 1 << 23
MIDPOINT_Q = 3 << 22
TWO_POINT_TWO_FIVE_Q = 9 << 21
MASK_27 = (1 << 27) - 1


def trunc27(value):
    value &= MASK_27
    return value - (1 << 27) if value & (1 << 26) else value


def midpoint16(mantissa, level):
    index = (mantissa >> (23 - level)) & ((1 << level) - 1)
    return 16 + (1 << (3 - level)) + (index << (4 - level))


def direct_plane(x_mantissa, y_mantissa, level, divide_mode):
    x_midpoint = midpoint16(x_mantissa, level)
    y_midpoint = midpoint16(y_mantissa, level)
    x_term = (x_mantissa * y_midpoint) >> 4
    y_term = (y_mantissa * x_midpoint) >> 4
    constant = x_midpoint * y_midpoint * (1 << 15)
    if divide_mode:
        return constant + x_term - y_term
    return x_term + y_term - constant


def recursive_plane(x_mantissa, y_mantissa, level, divide_mode):
    x_value = x_mantissa
    y_value = y_mantissa
    if divide_mode:
        base = (TWO_POINT_TWO_FIVE_Q + x_value + (x_value >> 1)
                - y_value - (y_value >> 1))
        raw1 = x_value + MIDPOINT_Q
        raw2 = MIDPOINT_Q - y_value
        term3 = (ONE_Q >> 4) if x_value >> 22 == y_value >> 22 else -(ONE_Q >> 4)
    else:
        base = (-TWO_POINT_TWO_FIVE_Q + x_value + (x_value >> 1)
                + y_value + (y_value >> 1))
        raw1 = x_value - MIDPOINT_Q
        raw2 = y_value - MIDPOINT_Q
        term3 = (ONE_Q >> 4) if (x_value >> 22) != (y_value >> 22) else -(ONE_Q >> 4)

    term1 = (raw1 if y_value & (1 << 22) else -raw1) >> 2
    term2 = (raw2 if x_value & (1 << 22) else -raw2) >> 2
    corrections = [trunc27(term1 + term2 + term3)]
    base = trunc27(base)
    x_midpoint = MIDPOINT_Q + (ONE_Q >> 2) if x_value & (1 << 22) else MIDPOINT_Q - (ONE_Q >> 2)
    y_midpoint = MIDPOINT_Q + (ONE_Q >> 2) if y_value & (1 << 22) else MIDPOINT_Q - (ONE_Q >> 2)

    for stage in (2, 3):
        bit = 23 - stage
        shift = stage + 1
        if divide_mode:
            raw1 = x_value + x_midpoint
            raw2 = y_midpoint - y_value
            equal = bool(x_value & (1 << bit)) == bool(y_value & (1 << bit))
            term3 = (ONE_Q >> (2 * stage + 2)) if equal else -(ONE_Q >> (2 * stage + 2))
        else:
            raw1 = x_value - x_midpoint
            raw2 = y_value - y_midpoint
            different = bool(x_value & (1 << bit)) != bool(y_value & (1 << bit))
            term3 = (ONE_Q >> (2 * stage + 2)) if different else -(ONE_Q >> (2 * stage + 2))
        term1 = (raw1 if y_value & (1 << bit) else -raw1) >> shift
        term2 = (raw2 if x_value & (1 << bit) else -raw2) >> shift
        corrections.append(trunc27(term1 + term2 + term3))
        if stage == 2:
            delta = ONE_Q >> 3
            x_midpoint += delta if x_value & (1 << bit) else -delta
            y_midpoint += delta if y_value & (1 << bit) else -delta

    result = base
    for index in range(level):
        result += corrections[index]
    return trunc27(result)


def errors(level, index, value_low):
    x_value = ONE_Q + value_low
    y_region = ONE_Q + (index << 20)
    x_error = (direct_plane(x_value, y_region, level, True)
               - recursive_plane(x_value, y_region, level, True))

    x_region = ONE_Q + (index << 20)
    y_value = ONE_Q + value_low
    y_error = (direct_plane(x_region, y_value, level, True)
               - recursive_plane(x_region, y_value, level, True))
    return x_error, y_error


print(".i 9")
print(".o 4")
print(".type fr")
print(".ilb l1 l0 i2 i1 i0 v3 v2 v1 v0")
print(".ob xe1 xe0 ye1 ye0")
for level in range(4):
    for index in range(8):
        for value_low in range(16):
            x_error, y_error = errors(level, index, value_low)
            inputs = f"{level:02b}{index:03b}{value_low:04b}"
            outputs = f"{x_error:02b}{y_error:02b}"
            print(inputs, outputs)
print(".e")
