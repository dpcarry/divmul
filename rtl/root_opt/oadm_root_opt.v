module oadm_runtime_plane_pruned #(
    parameter integer RESIDUAL_DROP = 10
) (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output wire signed [28:0] plane_exact
);
    reg [2:0] x_index;
    reg [2:0] y_index;
    reg [5:0] x_midpoint;
    reg [5:0] y_midpoint;
    reg signed [22:0] x_residual;
    reg signed [22:0] y_residual;

    always @* begin
        case (level)
            2'd0: begin
                x_index = 3'd0;
                y_index = 3'd0;
                x_midpoint = 6'd24;
                y_midpoint = 6'd24;
                x_residual = {~x_mantissa[22], x_mantissa[21:0]};
                y_residual = {~y_mantissa[22], y_mantissa[21:0]};
            end
            2'd1: begin
                x_index = {2'b00, x_mantissa[22]};
                y_index = {2'b00, y_mantissa[22]};
                x_midpoint = 6'd20 + ({5'b0, x_mantissa[22]} << 3);
                y_midpoint = 6'd20 + ({5'b0, y_mantissa[22]} << 3);
                x_residual = {{2{~x_mantissa[21]}}, x_mantissa[20:0]};
                y_residual = {{2{~y_mantissa[21]}}, y_mantissa[20:0]};
            end
            2'd2: begin
                x_index = {1'b0, x_mantissa[22:21]};
                y_index = {1'b0, y_mantissa[22:21]};
                x_midpoint = 6'd18 + ({4'b0, x_mantissa[22:21]} << 2);
                y_midpoint = 6'd18 + ({4'b0, y_mantissa[22:21]} << 2);
                x_residual = {{3{~x_mantissa[20]}}, x_mantissa[19:0]};
                y_residual = {{3{~y_mantissa[20]}}, y_mantissa[19:0]};
            end
            default: begin
                x_index = x_mantissa[22:20];
                y_index = y_mantissa[22:20];
                x_midpoint = 6'd17 + ({3'b0, x_mantissa[22:20]} << 1);
                y_midpoint = 6'd17 + ({3'b0, y_mantissa[22:20]} << 1);
                x_residual = {{4{~x_mantissa[19]}}, x_mantissa[18:0]};
                y_residual = {{4{~y_mantissa[19]}}, y_mantissa[18:0]};
            end
        endcase
    end

    wire signed [22-RESIDUAL_DROP:0] x_residual_hi =
        x_residual[22:RESIDUAL_DROP];
    wire signed [22-RESIDUAL_DROP:0] y_residual_hi =
        y_residual[22:RESIDUAL_DROP];
    wire signed [28-RESIDUAL_DROP:0] x_product =
        x_residual_hi * $signed(y_midpoint);
    wire signed [28-RESIDUAL_DROP:0] y_product =
        y_residual_hi * $signed(x_midpoint);
    wire signed [28:0] x_product_extended =
        {{RESIDUAL_DROP{x_product[28-RESIDUAL_DROP]}}, x_product};
    wire signed [28:0] y_product_extended =
        {{RESIDUAL_DROP{y_product[28-RESIDUAL_DROP]}}, y_product};
    wire signed [28:0] x_term = x_product_extended <<< (RESIDUAL_DROP - 4);
    wire signed [28:0] y_term = y_product_extended <<< (RESIDUAL_DROP - 4);

    wire [9:0] midpoint_product = x_midpoint * y_midpoint;
    wire signed [28:0] constant_term =
        $signed({4'b0, midpoint_product, 15'b0});

    wire signed [28:0] centered_plane = divide_mode
        ? constant_term + x_term - y_term
        : constant_term + x_term + y_term;
    assign plane_exact = centered_plane;
endmodule


module oadm_runtime_root_opt (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output wire [31:0] result
);
    wire [22:0] x_fraction;
    wire [22:0] y_fraction;
    wire [23:0] x_mantissa = {1'b1, x_fraction};
    wire [23:0] y_mantissa = {1'b1, y_fraction};

    wire signed [28:0] plane_full;
    oadm_runtime_plane_pruned plane (
        .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .level(level), .divide_mode(divide_mode), .plane_exact(plane_full)
    );
    wire [24:0] shared_value = plane_full[24:0];

    reg [6:0] coefficient;
    always @* begin
        case (level)
            2'd0: coefficient = 7'h39;
            2'd1: coefficient = y_mantissa[22] ? 7'h2a : 7'h52;
            2'd2: begin
                case (y_mantissa[22:21])
                    2'b00: coefficient = 7'h65;
                    2'b01: coefficient = 7'h44;
                    2'b10: coefficient = 7'h30;
                    default: coefficient = 7'h24;
                endcase
            end
            default: begin
                case (y_mantissa[22:20])
                    3'b000: coefficient = 7'h71;
                    3'b001: coefficient = 7'h5b;
                    3'b010: coefficient = 7'h4a;
                    3'b011: coefficient = 7'h3e;
                    3'b100: coefficient = 7'h34;
                    3'b101: coefficient = 7'h2d;
                    3'b110: coefficient = 7'h27;
                    default: coefficient = 7'h22;
                endcase
            end
        endcase
    end

    // Q0.7 scaling after discarding 14 statistically insignificant plane LSBs.
    wire [17:0] reduced_scale_product = shared_value[24:14] * coefficient;
    wire signed [28:0] divided_value =
        $signed({4'b0000, reduced_scale_product, 7'b0000000});
    wire signed [28:0] core_value = divide_mode ? divided_value : plane_full;

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


module oadm_fixed_div_root_opt #(
    parameter integer LEVEL = 2,
    parameter integer RESIDUAL_DROP = 10,
    parameter integer SCALE_DROP = 14,
    parameter integer COEFFICIENT_BITS = 8,
    parameter [7:0] C0 = 8'd203,
    parameter [7:0] C1 = 8'd136,
    parameter [7:0] C2 = 8'd97,
    parameter [7:0] C3 = 8'd73,
    parameter [7:0] C4 = 8'd0,
    parameter [7:0] C5 = 8'd0,
    parameter [7:0] C6 = 8'd0,
    parameter [7:0] C7 = 8'd0
) (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    wire [22:0] x_fraction;
    wire [22:0] y_fraction;
    wire [23:0] x_mantissa = {1'b1, x_fraction};
    wire [23:0] y_mantissa = {1'b1, y_fraction};
    wire signed [28:0] plane_full;
    oadm_runtime_plane_pruned #(
        .RESIDUAL_DROP(RESIDUAL_DROP)
    ) plane (
        .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .level(LEVEL[1:0]), .divide_mode(1'b1), .plane_exact(plane_full)
    );

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
        plane_full[24:SCALE_DROP] * coefficient;
    wire signed [28:0] core_value =
        $signed({4'b0000, reduced_scale_product,
                 {(SCALE_DROP-COEFFICIENT_BITS){1'b0}}});

    reg [22:0] normalized_fraction;
    reg signed [2:0] exponent_adjust;
    always @* begin
        normalized_fraction = core_value[22:0];
        exponent_adjust = 3'sd0;
        if (core_value[23]) begin
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
        .x(x), .y(y), .divide_mode(1'b1),
        .fraction_x(x_fraction), .fraction_y(y_fraction),
        .result_fraction(normalized_fraction),
        .exponent_adjust(exponent_adjust), .result(result)
    );
endmodule


module oadm_fixed_l0_div_root_opt (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_div_root_opt #(
        .LEVEL(0), .RESIDUAL_DROP(18), .SCALE_DROP(18),
        .COEFFICIENT_BITS(7), .C0(8'd59)
    ) implementation (.x(x), .y(y), .result(result));
endmodule


module oadm_fixed_l1_div_root_opt (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_div_root_opt #(
        .LEVEL(1), .RESIDUAL_DROP(16), .SCALE_DROP(16),
        .COEFFICIENT_BITS(7), .C0(8'd83), .C1(8'd42)
    ) implementation (.x(x), .y(y), .result(result));
endmodule


module oadm_fixed_l2_div_root_opt (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_div_root_opt #(
        .LEVEL(2), .RESIDUAL_DROP(16), .SCALE_DROP(16),
        .COEFFICIENT_BITS(8),
        .C0(8'd203), .C1(8'd136), .C2(8'd97), .C3(8'd73)
    ) implementation (.x(x), .y(y), .result(result));
endmodule


module oadm_fixed_l3_div_root_opt (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_div_root_opt #(
        .LEVEL(3), .RESIDUAL_DROP(16), .SCALE_DROP(16),
        .COEFFICIENT_BITS(8),
        .C0(8'd227), .C1(8'd182), .C2(8'd149), .C3(8'd124),
        .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)
    ) implementation (.x(x), .y(y), .result(result));
endmodule
