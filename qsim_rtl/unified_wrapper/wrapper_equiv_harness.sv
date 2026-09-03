module wrapper_equiv_harness (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [22:0] mantissa_out,
    input  wire        shift,
    input  wire        divide_mode,
    input  wire signed [2:0] exponent_adjust,
    output wire [22:0] mantissa_x,
    output wire [22:0] mantissa_y,
    output wire [31:0] pace_result,
    output wire [31:0] shared_result
);
    wire [22:0] unused_x;
    wire [22:0] unused_y;

    FP_DIV_WRAPPER_32 pace_wrapper (
        .x(x), .y(y), .out(pace_result),
        .mantissa_x(mantissa_x), .mantissa_y(mantissa_y),
        .mantissa_out(mantissa_out), .shift(shift)
    );
    fp32_normal_finite_wrapper shared_wrapper (
        .x(x), .y(y), .divide_mode(divide_mode),
        .fraction_x(unused_x), .fraction_y(unused_y),
        .result_fraction(mantissa_out),
        .exponent_adjust(exponent_adjust), .result(shared_result)
    );
endmodule
