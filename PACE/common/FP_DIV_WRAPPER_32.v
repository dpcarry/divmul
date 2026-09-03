// Shared FP32 boundary for normalized finite inputs and outputs.
// Exceptional values, subnormals, and exponent saturation are intentionally
// outside the comparison scope. Exponent arithmetic wraps modulo 256.
module fp32_normal_finite_wrapper (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire        divide_mode,
    output wire [22:0] fraction_x,
    output wire [22:0] fraction_y,
    input  wire [22:0] result_fraction,
    input  wire signed [2:0] exponent_adjust,
    output wire [31:0] result
);
    assign fraction_x = x[22:0];
    assign fraction_y = y[22:0];

    wire signed [7:0] exponent_adjust_extended =
        {{5{exponent_adjust[2]}}, exponent_adjust};
    reg [7:0] result_exponent;
    always @* begin
        if (divide_mode)
            result_exponent = x[30:23] - y[30:23] + 8'd127
                            + exponent_adjust_extended;
        else
            result_exponent = x[30:23] + y[30:23] - 8'd127
                            + exponent_adjust_extended;
    end

    assign result = {x[31] ^ y[31], result_exponent, result_fraction};
endmodule


// Compatibility adapter for the interface used by the PACE author RTL.
module FP_DIV_WRAPPER_32 #(
    parameter width = 32,
    parameter width_frac = 23,
    parameter width_exp = width-width_frac-1,
    parameter width_trunc = 0,
    parameter width_mantissa = width_frac-width_trunc,
    parameter exp_bias = (1<<(width_exp-1))-1,
    parameter width_shift = 1
) (
    input  wire [width-1:0] x,
    input  wire [width-1:0] y,
    output wire [width-1:0] out,
    output wire [width_mantissa-1:0] mantissa_x,
    output wire [width_mantissa-1:0] mantissa_y,
    input  wire [width_mantissa-1:0] mantissa_out,
    input  wire [width_shift-1:0] shift
);
    wire [22:0] fraction_x;
    wire [22:0] fraction_y;
    wire [22:0] result_fraction = {
        mantissa_out, {width_trunc{1'b0}}
    };
    wire [2:0] shift_unsigned = {{(3-width_shift){1'b0}}, shift};
    wire signed [2:0] exponent_adjust = -$signed(shift_unsigned);

    assign mantissa_x = fraction_x[22 -: width_mantissa];
    assign mantissa_y = fraction_y[22 -: width_mantissa];

    fp32_normal_finite_wrapper shared_wrapper (
        .x(x), .y(y), .divide_mode(1'b1),
        .fraction_x(fraction_x), .fraction_y(fraction_y),
        .result_fraction(result_fraction),
        .exponent_adjust(exponent_adjust), .result(out)
    );
endmodule
