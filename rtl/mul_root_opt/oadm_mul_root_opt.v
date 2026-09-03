module oadm_fixed_mul_plane_root_opt #(
    parameter integer LEVEL = 0,
    parameter integer RESIDUAL_DROP = 16
) (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    output wire signed [28:0] plane_value
);
    localparam integer RESIDUAL_WIDTH = 23 - LEVEL;
    localparam integer RETAINED_WIDTH = RESIDUAL_WIDTH - RESIDUAL_DROP;
    localparam integer PRODUCT_WIDTH = RETAINED_WIDTH + 6;
    localparam integer BASE = (LEVEL == 0) ? 24
                              : (LEVEL == 1) ? 20
                              : (LEVEL == 2) ? 18 : 17;
    localparam integer STEP_SHIFT = (LEVEL == 0) ? 0 : 4 - LEVEL;

    wire [2:0] x_index = x_mantissa[22:20] >> (3 - LEVEL);
    wire [2:0] y_index = y_mantissa[22:20] >> (3 - LEVEL);
    wire [4:0] x_midpoint = BASE + (x_index << STEP_SHIFT);
    wire [4:0] y_midpoint = BASE + (y_index << STEP_SHIFT);

    wire signed [RESIDUAL_WIDTH-1:0] x_residual = {
        ~x_mantissa[22-LEVEL], x_mantissa[21-LEVEL:0]
    };
    wire signed [RESIDUAL_WIDTH-1:0] y_residual = {
        ~y_mantissa[22-LEVEL], y_mantissa[21-LEVEL:0]
    };
    wire signed [RETAINED_WIDTH-1:0] x_residual_hi =
        x_residual[RESIDUAL_WIDTH-1:RESIDUAL_DROP];
    wire signed [RETAINED_WIDTH-1:0] y_residual_hi =
        y_residual[RESIDUAL_WIDTH-1:RESIDUAL_DROP];

    wire signed [PRODUCT_WIDTH-1:0] x_product =
        x_residual_hi * $signed({1'b0, y_midpoint});
    wire signed [PRODUCT_WIDTH-1:0] y_product =
        y_residual_hi * $signed({1'b0, x_midpoint});
    wire signed [28:0] x_product_extended =
        {{(29-PRODUCT_WIDTH){x_product[PRODUCT_WIDTH-1]}}, x_product};
    wire signed [28:0] y_product_extended =
        {{(29-PRODUCT_WIDTH){y_product[PRODUCT_WIDTH-1]}}, y_product};
    wire signed [28:0] x_term =
        x_product_extended <<< (RESIDUAL_DROP - 4);
    wire signed [28:0] y_term =
        y_product_extended <<< (RESIDUAL_DROP - 4);

    wire [9:0] midpoint_product = x_midpoint * y_midpoint;
    wire signed [28:0] constant_term =
        $signed({4'b0, midpoint_product, 15'b0});

    // Arithmetic residual truncation loses half a removed interval on
    // average. This midpoint-sum term restores that mean in the Q23 domain.
    wire [5:0] midpoint_sum = {1'b0, x_midpoint} + {1'b0, y_midpoint};
    wire signed [28:0] truncation_bias =
        $signed({23'b0, midpoint_sum}) <<< (RESIDUAL_DROP - 5);

    assign plane_value = constant_term + x_term + y_term + truncation_bias;
endmodule


module oadm_fixed_mul_root_opt #(
    parameter integer LEVEL = 0,
    parameter integer RESIDUAL_DROP = 16
) (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    wire [22:0] x_fraction;
    wire [22:0] y_fraction;
    wire [23:0] x_mantissa = {1'b1, x_fraction};
    wire [23:0] y_mantissa = {1'b1, y_fraction};

    wire signed [28:0] core_value;
    oadm_fixed_mul_plane_root_opt #(
        .LEVEL(LEVEL), .RESIDUAL_DROP(RESIDUAL_DROP)
    ) plane (
        .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .plane_value(core_value)
    );

    reg [22:0] normalized_fraction;
    reg signed [2:0] exponent_adjust;
    always @* begin
        normalized_fraction = core_value[22:0];
        exponent_adjust = 3'sd0;
        if (core_value[24]) begin
            normalized_fraction = core_value[23:1];
            exponent_adjust = 3'sd1;
        end else if (core_value[23]) begin
            normalized_fraction = core_value[22:0];
        end else if (core_value[22]) begin
            normalized_fraction = {core_value[21:0], 1'b0};
            exponent_adjust = -3'sd1;
        end else begin
            normalized_fraction = {core_value[20:0], 2'b0};
            exponent_adjust = -3'sd2;
        end
    end

    fp32_normal_finite_wrapper fp_wrapper (
        .x(x), .y(y), .divide_mode(1'b0),
        .fraction_x(x_fraction), .fraction_y(y_fraction),
        .result_fraction(normalized_fraction),
        .exponent_adjust(exponent_adjust), .result(result)
    );
endmodule


module oadm_fixed_l0_mul_root_opt(input wire [31:0] x, input wire [31:0] y,
                                  output wire [31:0] result);
    oadm_fixed_mul_root_opt #(.LEVEL(0), .RESIDUAL_DROP(16)) impl (x, y, result);
endmodule

module oadm_fixed_l1_mul_root_opt(input wire [31:0] x, input wire [31:0] y,
                                  output wire [31:0] result);
    oadm_fixed_mul_root_opt #(.LEVEL(1), .RESIDUAL_DROP(14)) impl (x, y, result);
endmodule

module oadm_fixed_l2_mul_root_opt(input wire [31:0] x, input wire [31:0] y,
                                  output wire [31:0] result);
    oadm_fixed_mul_root_opt #(.LEVEL(2), .RESIDUAL_DROP(12)) impl (x, y, result);
endmodule

module oadm_fixed_l3_mul_root_opt(input wire [31:0] x, input wire [31:0] y,
                                  output wire [31:0] result);
    oadm_fixed_mul_root_opt #(.LEVEL(3), .RESIDUAL_DROP(10)) impl (x, y, result);
endmodule

module oadm_fixed_l0_mul_root_opt_aggressive(
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result);
    oadm_fixed_mul_root_opt #(.LEVEL(0), .RESIDUAL_DROP(18)) impl (x, y, result);
endmodule

module oadm_fixed_l1_mul_root_opt_aggressive(
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result);
    oadm_fixed_mul_root_opt #(.LEVEL(1), .RESIDUAL_DROP(16)) impl (x, y, result);
endmodule

module oadm_fixed_l2_mul_root_opt_aggressive(
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result);
    oadm_fixed_mul_root_opt #(.LEVEL(2), .RESIDUAL_DROP(14)) impl (x, y, result);
endmodule

module oadm_fixed_l3_mul_root_opt_aggressive(
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result);
    oadm_fixed_mul_root_opt #(.LEVEL(3), .RESIDUAL_DROP(12)) impl (x, y, result);
endmodule

module oadm_fixed_l0_mul_root_opt_accuracy(
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result);
    oadm_fixed_mul_root_opt #(.LEVEL(0), .RESIDUAL_DROP(12)) impl (x, y, result);
endmodule

module oadm_fixed_l1_mul_root_opt_accuracy(
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result);
    oadm_fixed_mul_root_opt #(.LEVEL(1), .RESIDUAL_DROP(10)) impl (x, y, result);
endmodule

module oadm_fixed_l2_mul_root_opt_accuracy(
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result);
    oadm_fixed_mul_root_opt #(.LEVEL(2), .RESIDUAL_DROP(8)) impl (x, y, result);
endmodule

module oadm_fixed_l3_mul_root_opt_accuracy(
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result);
    oadm_fixed_mul_root_opt #(.LEVEL(3), .RESIDUAL_DROP(6)) impl (x, y, result);
endmodule
