module stdm_input_mask6_narrow_core_plane #(
    parameter integer LEVEL = 0,
    parameter integer X_DROP = 18,
    parameter integer Y_DROP = 18
) (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    output wire signed [28:0] plane_exact
);
    reg [5:0] x_midpoint;
    reg [5:0] y_midpoint;
    reg signed [22:0] x_residual;
    reg signed [22:0] y_residual;

    always @* begin
        if (LEVEL == 0) begin
            x_midpoint = 6'd24;
            y_midpoint = 6'd24;
            x_residual = {~x_mantissa[22], x_mantissa[21:0]};
            y_residual = {~y_mantissa[22], y_mantissa[21:0]};
        end else if (LEVEL == 1) begin
            x_midpoint = 6'd20 + ({5'b0, x_mantissa[22]} << 3);
            y_midpoint = 6'd20 + ({5'b0, y_mantissa[22]} << 3);
            x_residual = {{2{~x_mantissa[21]}}, x_mantissa[20:0]};
            y_residual = {{2{~y_mantissa[21]}}, y_mantissa[20:0]};
        end else if (LEVEL == 2) begin
            x_midpoint = 6'd18 + ({4'b0, x_mantissa[22:21]} << 2);
            y_midpoint = 6'd18 + ({4'b0, y_mantissa[22:21]} << 2);
            x_residual = {{3{~x_mantissa[20]}}, x_mantissa[19:0]};
            y_residual = {{3{~y_mantissa[20]}}, y_mantissa[19:0]};
        end else begin
            x_midpoint = 6'd17 + ({3'b0, x_mantissa[22:20]} << 1);
            y_midpoint = 6'd17 + ({3'b0, y_mantissa[22:20]} << 1);
            x_residual = {{4{~x_mantissa[19]}}, x_mantissa[18:0]};
            y_residual = {{4{~y_mantissa[19]}}, y_mantissa[18:0]};
        end
    end

    wire signed [19-X_DROP:0] x_residual_hi = x_residual[19:X_DROP];
    wire signed [25-X_DROP:0] x_product = x_residual_hi * $signed(y_midpoint);
    wire signed [28:0] x_product_extended = x_product;
    wire signed [28:0] x_term = x_product_extended <<< (X_DROP-4);
    wire signed [19-Y_DROP:0] y_residual_hi = y_residual[19:Y_DROP];
    wire signed [25-Y_DROP:0] y_product = y_residual_hi * $signed(x_midpoint);
    wire signed [28:0] y_product_extended = y_product;
    wire signed [28:0] y_term = y_product_extended <<< (Y_DROP-4);
    wire [9:0] midpoint_product = x_midpoint * y_midpoint;
    wire signed [13:0] compact_x = x_product;
    wire signed [13:0] compact_y = y_product;
    wire [13:0] compact_k = midpoint_product;
    wire [13:0] compact_sum = (compact_k << 4)
        + (compact_x <<< 0) - (compact_y <<< 1);
    assign plane_exact = {4'b0,compact_sum,11'b0};

endmodule


module stdm_input_mask6_narrow_core #(
    parameter integer LEVEL = 0,
    parameter integer X_DROP = 18,
    parameter integer Y_DROP = 18,
    parameter integer WN_DROP = 18,
    parameter integer COEFFICIENT_BITS = 7,
    parameter [COEFFICIENT_BITS-1:0] C0 = 8'd59,
    parameter [COEFFICIENT_BITS-1:0] C1 = 8'd0,
    parameter [COEFFICIENT_BITS-1:0] C2 = 8'd0,
    parameter [COEFFICIENT_BITS-1:0] C3 = 8'd0,
    parameter [COEFFICIENT_BITS-1:0] C4 = 8'd0,
    parameter [COEFFICIENT_BITS-1:0] C5 = 8'd0,
    parameter [COEFFICIENT_BITS-1:0] C6 = 8'd0,
    parameter [COEFFICIENT_BITS-1:0] C7 = 8'd0
) (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    wire [22:0] x_fraction;
    wire [22:0] y_fraction;
    wire [23:0] x_mantissa = {1'b1, x_fraction[22:17], 17'b0};
    wire [23:0] y_mantissa = {1'b1, y_fraction[22:17], 17'b0};
    wire signed [28:0] plane_full;

    stdm_input_mask6_narrow_core_plane #(
        .LEVEL(LEVEL), .X_DROP(X_DROP), .Y_DROP(Y_DROP)
    ) plane (
        .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .plane_exact(plane_full)
    );

    reg [COEFFICIENT_BITS-1:0] coefficient;
    always @* begin
        if (LEVEL == 0)
            coefficient = C0[COEFFICIENT_BITS-1:0];
        else if (LEVEL == 1)
            coefficient = y_mantissa[22]
                ? C1[COEFFICIENT_BITS-1:0] : C0[COEFFICIENT_BITS-1:0];
        else if (LEVEL == 2) begin
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

    wire [24-WN_DROP+COEFFICIENT_BITS:0] reduced_scale_product =
        plane_full[24:WN_DROP] * coefficient;
    wire signed [28:0] core_value =
        $signed({4'b0000, reduced_scale_product,
                 {(WN_DROP-COEFFICIENT_BITS){1'b0}}});

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


module stdm_input_mask6_narrow(input [31:0] x,y, output [31:0] result);
stdm_input_mask6_narrow_core #(.LEVEL(3), .X_DROP(15), .Y_DROP(16), .WN_DROP(17), .COEFFICIENT_BITS(8), .C0(8'd228), .C1(8'd182), .C2(8'd149), .C3(8'd124), .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)) implementation(x,y,result);
endmodule
