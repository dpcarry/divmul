module core_fused_ablation #(
    parameter APPROX_LEVEL = 0
) (
    input  wire        clk,
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire        divide_mode,
    output wire signed [28:0] mantissa_value
);
    oadm_core_fixed #(.APPROX_LEVEL(APPROX_LEVEL)) core (
        .clk(clk), .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .divide_mode(divide_mode), .mantissa_value(mantissa_value)
    );
endmodule

module core_mul_ablation #(
    parameter APPROX_LEVEL = 0
) (
    input  wire        clk,
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    output wire signed [28:0] mantissa_value
);
    oadm_core_fixed #(.APPROX_LEVEL(APPROX_LEVEL)) core (
        .clk(clk), .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .divide_mode(1'b0), .mantissa_value(mantissa_value)
    );
endmodule

module core_div_ablation #(
    parameter APPROX_LEVEL = 0
) (
    input  wire        clk,
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    output wire signed [28:0] mantissa_value
);
    oadm_core_fixed #(.APPROX_LEVEL(APPROX_LEVEL)) core (
        .clk(clk), .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .divide_mode(1'b1), .mantissa_value(mantissa_value)
    );
endmodule
