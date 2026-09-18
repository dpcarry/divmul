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
