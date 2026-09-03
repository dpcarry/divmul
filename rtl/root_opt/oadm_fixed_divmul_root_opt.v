module oadm_fixed_divmul_root_opt #(
    parameter integer LEVEL = 0,
    parameter integer DIV_RESIDUAL_DROP = 18,
    parameter integer MUL_RESIDUAL_DROP = 16,
    parameter integer SCALE_DROP = 18,
    parameter integer COEFFICIENT_BITS = 7,
    parameter [7:0] C0 = 8'd59,
    parameter [7:0] C1 = 8'd0,
    parameter [7:0] C2 = 8'd0,
    parameter [7:0] C3 = 8'd0,
    parameter [7:0] C4 = 8'd0,
    parameter [7:0] C5 = 8'd0,
    parameter [7:0] C6 = 8'd0,
    parameter [7:0] C7 = 8'd0
) (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire        divide_mode,
    output wire [31:0] result
);
    localparam integer RESIDUAL_WIDTH = 23 - LEVEL;
    localparam integer RETAINED_WIDTH =
        RESIDUAL_WIDTH - MUL_RESIDUAL_DROP;
    localparam integer DIV_ZERO_BITS =
        DIV_RESIDUAL_DROP - MUL_RESIDUAL_DROP;
    localparam integer PRODUCT_WIDTH = RETAINED_WIDTH + 6;
    localparam integer BASE = (LEVEL == 0) ? 24
                              : (LEVEL == 1) ? 20
                              : (LEVEL == 2) ? 18 : 17;
    localparam integer STEP_SHIFT = (LEVEL == 0) ? 0 : 4 - LEVEL;

    wire [22:0] x_fraction;
    wire [22:0] y_fraction;
    wire [23:0] x_mantissa = {1'b1, x_fraction};
    wire [23:0] y_mantissa = {1'b1, y_fraction};

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

    wire signed [RETAINED_WIDTH-1:0] x_mul_residual =
        x_residual[RESIDUAL_WIDTH-1:MUL_RESIDUAL_DROP];
    wire signed [RETAINED_WIDTH-1:0] y_mul_residual =
        y_residual[RESIDUAL_WIDTH-1:MUL_RESIDUAL_DROP];
    wire signed [RETAINED_WIDTH-1:0] x_shared_residual = divide_mode
        ? {x_residual[RESIDUAL_WIDTH-1:DIV_RESIDUAL_DROP],
           {DIV_ZERO_BITS{1'b0}}}
        : x_mul_residual;
    wire signed [RETAINED_WIDTH-1:0] y_shared_residual = divide_mode
        ? {y_residual[RESIDUAL_WIDTH-1:DIV_RESIDUAL_DROP],
           {DIV_ZERO_BITS{1'b0}}}
        : y_mul_residual;

    wire signed [PRODUCT_WIDTH-1:0] x_product =
        x_shared_residual * $signed({1'b0, y_midpoint});
    wire signed [PRODUCT_WIDTH-1:0] y_product =
        y_shared_residual * $signed({1'b0, x_midpoint});
    wire signed [28:0] x_product_extended =
        {{(29-PRODUCT_WIDTH){x_product[PRODUCT_WIDTH-1]}}, x_product};
    wire signed [28:0] y_product_extended =
        {{(29-PRODUCT_WIDTH){y_product[PRODUCT_WIDTH-1]}}, y_product};
    wire signed [28:0] x_term =
        x_product_extended <<< (MUL_RESIDUAL_DROP - 4);
    wire signed [28:0] y_term =
        y_product_extended <<< (MUL_RESIDUAL_DROP - 4);

    wire [9:0] midpoint_product = x_midpoint * y_midpoint;
    wire signed [28:0] constant_term =
        $signed({4'b0, midpoint_product, 15'b0});
    wire [5:0] midpoint_sum = {1'b0, x_midpoint} + {1'b0, y_midpoint};
    wire signed [28:0] truncation_bias =
        $signed({23'b0, midpoint_sum}) <<< (MUL_RESIDUAL_DROP - 5);
    wire signed [28:0] plane_value = constant_term + x_term
        + (divide_mode ? -y_term : y_term)
        + (divide_mode ? 29'sd0 : truncation_bias);

    reg [COEFFICIENT_BITS-1:0] coefficient;
    always @* begin
        if (LEVEL == 0) begin
            coefficient = C0[COEFFICIENT_BITS-1:0];
        end else if (LEVEL == 1) begin
            coefficient = y_mantissa[22]
                ? C1[COEFFICIENT_BITS-1:0]
                : C0[COEFFICIENT_BITS-1:0];
        end else if (LEVEL == 2) begin
            case (y_mantissa[22:21])
                2'b00: coefficient = C0[COEFFICIENT_BITS-1:0];
                2'b01: coefficient = C1[COEFFICIENT_BITS-1:0];
                2'b10: coefficient = C2[COEFFICIENT_BITS-1:0];
                default: coefficient = C3[COEFFICIENT_BITS-1:0];
            endcase
        end else begin
            case (y_mantissa[22:20])
                3'b000: coefficient = C0[COEFFICIENT_BITS-1:0];
                3'b001: coefficient = C1[COEFFICIENT_BITS-1:0];
                3'b010: coefficient = C2[COEFFICIENT_BITS-1:0];
                3'b011: coefficient = C3[COEFFICIENT_BITS-1:0];
                3'b100: coefficient = C4[COEFFICIENT_BITS-1:0];
                3'b101: coefficient = C5[COEFFICIENT_BITS-1:0];
                3'b110: coefficient = C6[COEFFICIENT_BITS-1:0];
                default: coefficient = C7[COEFFICIENT_BITS-1:0];
            endcase
        end
    end

    wire [24-SCALE_DROP+COEFFICIENT_BITS:0] reduced_scale_product =
        plane_value[24:SCALE_DROP] * coefficient;
    wire signed [28:0] divided_value =
        $signed({4'b0000, reduced_scale_product,
                 {(SCALE_DROP-COEFFICIENT_BITS){1'b0}}});
    wire signed [28:0] core_value = divide_mode
        ? divided_value : plane_value;

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
        .x(x), .y(y), .divide_mode(divide_mode),
        .fraction_x(x_fraction), .fraction_y(y_fraction),
        .result_fraction(normalized_fraction),
        .exponent_adjust(exponent_adjust), .result(result)
    );
endmodule

module oadm_fixed_l0_divmul_root_opt (
    input wire [31:0] x, input wire [31:0] y, input wire divide_mode,
    output wire [31:0] result
);
    oadm_fixed_divmul_root_opt #(
        .LEVEL(0), .DIV_RESIDUAL_DROP(18), .MUL_RESIDUAL_DROP(16),
        .SCALE_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)
    ) implementation (x, y, divide_mode, result);
endmodule

module oadm_fixed_l1_divmul_root_opt (
    input wire [31:0] x, input wire [31:0] y, input wire divide_mode,
    output wire [31:0] result
);
    oadm_fixed_divmul_root_opt #(
        .LEVEL(1), .DIV_RESIDUAL_DROP(16), .MUL_RESIDUAL_DROP(14),
        .SCALE_DROP(16), .COEFFICIENT_BITS(7),
        .C0(8'd83), .C1(8'd42)
    ) implementation (x, y, divide_mode, result);
endmodule

module oadm_fixed_l2_divmul_root_opt (
    input wire [31:0] x, input wire [31:0] y, input wire divide_mode,
    output wire [31:0] result
);
    oadm_fixed_divmul_root_opt #(
        .LEVEL(2), .DIV_RESIDUAL_DROP(16), .MUL_RESIDUAL_DROP(12),
        .SCALE_DROP(16), .COEFFICIENT_BITS(8),
        .C0(8'd203), .C1(8'd136), .C2(8'd97), .C3(8'd73)
    ) implementation (x, y, divide_mode, result);
endmodule

module oadm_fixed_l3_divmul_root_opt (
    input wire [31:0] x, input wire [31:0] y, input wire divide_mode,
    output wire [31:0] result
);
    oadm_fixed_divmul_root_opt #(
        .LEVEL(3), .DIV_RESIDUAL_DROP(16), .MUL_RESIDUAL_DROP(10),
        .SCALE_DROP(16), .COEFFICIENT_BITS(8),
        .C0(8'd227), .C1(8'd182), .C2(8'd149), .C3(8'd124),
        .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)
    ) implementation (x, y, divide_mode, result);
endmodule
