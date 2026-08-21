module oadm_fixed_l3_div_opt #(
    parameter SCALE_STYLE = 0,
    parameter PLANE_STYLE = 0,
    parameter NORM_STYLE = 0,
    parameter FP_STYLE = 0
) (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    localparam CORE_WIDTH = 29;
    localparam PIPE_WIDTH = 27;
    localparam signed [CORE_WIDTH-1:0] ONE_Q = 29'sd8388608;
    localparam signed [CORE_WIDTH-1:0] MIDPOINT_Q = 29'sd12582912;
    localparam signed [CORE_WIDTH-1:0] TWO_Q = 29'sd16777216;
    localparam signed [CORE_WIDTH-1:0] TWO_POINT_TWO_FIVE_Q = 29'sd18874368;
    localparam [31:0] QUIET_NAN = 32'h7fc00000;

    wire [7:0] x_exponent = x[30:23];
    wire [7:0] y_exponent = y[30:23];
    wire [22:0] x_fraction = x[22:0];
    wire [22:0] y_fraction = y[22:0];
    wire [23:0] x_mantissa = {1'b1, x_fraction};
    wire [23:0] y_mantissa = {1'b1, y_fraction};
    wire signed [CORE_WIDTH-1:0] x_input = $signed({5'b0, x_mantissa});
    wire signed [CORE_WIDTH-1:0] y_input = $signed({5'b0, y_mantissa});

    wire x_nan = (x_exponent == 8'hff) && (x_fraction != 0);
    wire y_nan = (y_exponent == 8'hff) && (y_fraction != 0);
    wire x_inf = (x_exponent == 8'hff) && (x_fraction == 0);
    wire y_inf = (y_exponent == 8'hff) && (y_fraction == 0);
    wire x_zero = (x_exponent == 8'h00);
    wire y_zero = (y_exponent == 8'h00);
    wire invalid_input = x_nan || y_nan || (x_zero && y_zero)
                       || (x_inf && y_inf);
    wire infinity_input = !invalid_input && (x_inf || y_zero);
    wire zero_input = !invalid_input && !infinity_input
                    && (x_zero || y_inf);
    wire sign_input = x[31] ^ y[31];
    wire signed [9:0] exponent_input =
        $signed({2'b0, x_exponent}) - $signed({2'b0, y_exponent}) + 10'sd127;

    reg signed [CORE_WIDTH-1:0] base_c1;
    reg signed [CORE_WIDTH-1:0] d1_c1;
    reg signed [CORE_WIDTH-1:0] mx_c1;
    reg signed [CORE_WIDTH-1:0] my_c1;
    reg signed [CORE_WIDTH-1:0] raw1_c1;
    reg signed [CORE_WIDTH-1:0] raw2_c1;
    reg signed [CORE_WIDTH-1:0] term1_c1;
    reg signed [CORE_WIDTH-1:0] term2_c1;
    reg signed [CORE_WIDTH-1:0] term3_c1;
    always @* begin
        base_c1 = TWO_POINT_TWO_FIVE_Q + x_input + (x_input >>> 1)
                - y_input - (y_input >>> 1);
        raw1_c1 = x_input + MIDPOINT_Q;
        raw2_c1 = MIDPOINT_Q - y_input;
        term3_c1 = (x_mantissa[22] == y_mantissa[22])
                 ? (ONE_Q >>> 4) : -(ONE_Q >>> 4);
        term1_c1 = (y_mantissa[22] ? raw1_c1 : -raw1_c1) >>> 2;
        term2_c1 = (x_mantissa[22] ? raw2_c1 : -raw2_c1) >>> 2;
        d1_c1 = term1_c1 + term2_c1 + term3_c1;
        mx_c1 = x_mantissa[22]
              ? MIDPOINT_Q + (ONE_Q >>> 2) : MIDPOINT_Q - (ONE_Q >>> 2);
        my_c1 = y_mantissa[22]
              ? MIDPOINT_Q + (ONE_Q >>> 2) : MIDPOINT_Q - (ONE_Q >>> 2);
    end

    wire signed [CORE_WIDTH-1:0] base_1 =
        {{(CORE_WIDTH-PIPE_WIDTH){base_c1[PIPE_WIDTH-1]}}, base_c1[PIPE_WIDTH-1:0]};
    wire signed [CORE_WIDTH-1:0] d1_1 =
        {{(CORE_WIDTH-PIPE_WIDTH){d1_c1[PIPE_WIDTH-1]}}, d1_c1[PIPE_WIDTH-1:0]};
    wire signed [CORE_WIDTH-1:0] mx_1 = {5'b0, mx_c1[23:0]};
    wire signed [CORE_WIDTH-1:0] my_1 = {5'b0, my_c1[23:0]};
    wire signed [CORE_WIDTH-1:0] x_1 = {5'b0, x_input[23:0]};
    wire signed [CORE_WIDTH-1:0] y_1 = {5'b0, y_input[23:0]};

    reg signed [CORE_WIDTH-1:0] d2_c2;
    reg signed [CORE_WIDTH-1:0] mx_c2;
    reg signed [CORE_WIDTH-1:0] my_c2;
    reg signed [CORE_WIDTH-1:0] raw1_c2;
    reg signed [CORE_WIDTH-1:0] raw2_c2;
    reg signed [CORE_WIDTH-1:0] term1_c2;
    reg signed [CORE_WIDTH-1:0] term2_c2;
    reg signed [CORE_WIDTH-1:0] term3_c2;
    always @* begin
        raw1_c2 = x_1 + mx_1;
        raw2_c2 = my_1 - y_1;
        term3_c2 = (x_1[21] == y_1[21])
                 ? (ONE_Q >>> 6) : -(ONE_Q >>> 6);
        term1_c2 = (y_1[21] ? raw1_c2 : -raw1_c2) >>> 3;
        term2_c2 = (x_1[21] ? raw2_c2 : -raw2_c2) >>> 3;
        d2_c2 = term1_c2 + term2_c2 + term3_c2;
        mx_c2 = x_1[21] ? mx_1 + (ONE_Q >>> 3) : mx_1 - (ONE_Q >>> 3);
        my_c2 = y_1[21] ? my_1 + (ONE_Q >>> 3) : my_1 - (ONE_Q >>> 3);
    end

    wire signed [CORE_WIDTH-1:0] d2_2 =
        {{(CORE_WIDTH-PIPE_WIDTH){d2_c2[PIPE_WIDTH-1]}}, d2_c2[PIPE_WIDTH-1:0]};
    wire signed [CORE_WIDTH-1:0] mx_2 = {5'b0, mx_c2[23:0]};
    wire signed [CORE_WIDTH-1:0] my_2 = {5'b0, my_c2[23:0]};

    reg signed [CORE_WIDTH-1:0] d3_c3;
    reg signed [CORE_WIDTH-1:0] raw1_c3;
    reg signed [CORE_WIDTH-1:0] raw2_c3;
    reg signed [CORE_WIDTH-1:0] term1_c3;
    reg signed [CORE_WIDTH-1:0] term2_c3;
    reg signed [CORE_WIDTH-1:0] term3_c3;
    always @* begin
        raw1_c3 = x_1 + mx_2;
        raw2_c3 = my_2 - y_1;
        term3_c3 = (x_1[20] == y_1[20])
                 ? (ONE_Q >>> 8) : -(ONE_Q >>> 8);
        term1_c3 = (y_1[20] ? raw1_c3 : -raw1_c3) >>> 4;
        term2_c3 = (x_1[20] ? raw2_c3 : -raw2_c3) >>> 4;
        d3_c3 = term1_c3 + term2_c3 + term3_c3;
    end

    wire signed [CORE_WIDTH-1:0] d3_3 =
        {{(CORE_WIDTH-PIPE_WIDTH){d3_c3[PIPE_WIDTH-1]}}, d3_c3[PIPE_WIDTH-1:0]};
    wire signed [CORE_WIDTH-1:0] shared_full = base_1 + d1_1 + d2_2 + d3_3;
    wire signed [CORE_WIDTH-1:0] shared_recursive =
        {{(CORE_WIDTH-PIPE_WIDTH){shared_full[PIPE_WIDTH-1]}},
          shared_full[PIPE_WIDTH-1:0]};

    wire signed [CORE_WIDTH-1:0] direct_plane;
    wire signed [CORE_WIDTH-1:0] unused_combined_plane;
    wire signed [CORE_WIDTH-1:0] exact_direct_plane;
    wire signed [CORE_WIDTH-1:0] factored_exact_plane;
    wire [2:0] direct_rounding_correction;
    oadm_l3_plane_direct direct_plane_impl (
        .x_mantissa(x_mantissa),
        .y_mantissa(y_mantissa),
        .plane_separate_shift(direct_plane),
        .plane_combined_shift(unused_combined_plane),
        .plane_exact(exact_direct_plane),
        .rounding_correction(direct_rounding_correction)
    );
    oadm_l3_plane_factored factored_plane_impl (
        .x_mantissa(x_mantissa),
        .y_mantissa(y_mantissa),
        .plane_exact(factored_exact_plane)
    );
    wire signed [CORE_WIDTH-1:0] shared_value = (PLANE_STYLE == 1)
        ? direct_plane : ((PLANE_STYLE == 2) ? exact_direct_plane
                          : ((PLANE_STYLE == 3) ? factored_exact_plane
                                                : shared_recursive));

    reg [6:0] coefficient;
    always @* begin
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

    wire signed [35:0] shared_extended = {{7{shared_value[28]}}, shared_value};
    wire signed [35:0] product_mul = shared_extended * coefficient;
    wire [33:0] product_unsigned = shared_value[26:0] * coefficient;
    wire [26:0] product_high = shared_value[26:7] * coefficient;
    wire [13:0] product_low = shared_value[6:0] * coefficient;
    wire [27:0] product_truncated = {1'b0, product_high}
                                          + product_low[13:7];
    reg signed [35:0] product_csd;
    always @* begin
        case (y_mantissa[22:20])
            3'b000: product_csd = (shared_extended <<< 7)
                                   - (shared_extended <<< 4) + shared_extended;
            3'b001: product_csd = (shared_extended <<< 6)
                                   + (shared_extended <<< 5)
                                   - (shared_extended <<< 2) - shared_extended;
            3'b010: product_csd = (shared_extended <<< 6)
                                   + (shared_extended <<< 3)
                                   + (shared_extended <<< 1);
            3'b011: product_csd = (shared_extended <<< 6)
                                   - (shared_extended <<< 1);
            3'b100: product_csd = (shared_extended <<< 6)
                                   - (shared_extended <<< 3)
                                   - (shared_extended <<< 2);
            3'b101: product_csd = (shared_extended <<< 5)
                                   + (shared_extended <<< 4)
                                   - (shared_extended <<< 1) - shared_extended;
            3'b110: product_csd = (shared_extended <<< 5)
                                   + (shared_extended <<< 3) - shared_extended;
            default: product_csd = (shared_extended <<< 5)
                                   + (shared_extended <<< 1);
        endcase
    end

    // Move the small LUT correction after scaling.  Splitting the low seven
    // product bits into quotient and borrow preserves floor((w-c)*k/128)
    // exactly while removing the correction subtract from the multiplier input.
    wire signed [35:0] direct_extended = {{7{direct_plane[28]}}, direct_plane};
    wire signed [35:0] direct_product = direct_extended * coefficient;
    wire [9:0] correction_product = direct_rounding_correction * coefficient;
    wire correction_borrow = direct_product[6:0] < correction_product[6:0];
    wire signed [28:0] corrected_product_high =
        $signed(direct_product[35:7])
        - $signed({26'b0, correction_product[9:7]})
        - correction_borrow;

    wire signed [35:0] product = (SCALE_STYLE == 1)
                               ? product_csd : product_mul;
    wire signed [CORE_WIDTH-1:0] core_value = (SCALE_STYLE == 2)
        ? $signed({2'b00, product_unsigned[33:7]})
        : ((SCALE_STYLE == 3) ? $signed({1'b0, product_truncated})
          : ((SCALE_STYLE == 5) ? corrected_product_high : product[35:7]));

    reg signed [CORE_WIDTH-1:0] normalized_value;
    reg [22:0] normalized_fraction;
    reg signed [9:0] result_exponent;
    reg [31:0] finite_result;
    reg [31:0] result_comb;
    always @* begin
        normalized_value = core_value;
        normalized_fraction = core_value[22:0];
        result_exponent = exponent_input;
        if (NORM_STYLE == 2) begin
            // For fixed L3 DIV, exhaustive range analysis gives
            // 0.497009 <= core_value < 1.982880.  The top two Q23 bits
            // therefore select every reachable normalization case.
            if (core_value[23]) begin
                normalized_fraction = core_value[22:0];
            end else if (core_value[22]) begin
                normalized_fraction = {core_value[21:0], 1'b0};
                result_exponent = result_exponent - 1;
            end else begin
                normalized_fraction = {core_value[20:0], 2'b0};
                result_exponent = result_exponent - 2;
            end
        end else if (NORM_STYLE == 1) begin
            if (core_value >= ONE_Q) begin
                normalized_value = core_value;
            end else if (core_value >= (ONE_Q >>> 1)) begin
                normalized_value = core_value <<< 1;
                result_exponent = result_exponent - 1;
            end else begin
                normalized_value = core_value <<< 2;
                result_exponent = result_exponent - 2;
            end
        end else if (core_value >= (ONE_Q >>> 2)) begin
            if (core_value >= TWO_Q) begin
                normalized_value = core_value >>> 1;
                result_exponent = result_exponent + 1;
            end else if (core_value >= ONE_Q) begin
                normalized_value = core_value;
            end else if (core_value >= (ONE_Q >>> 1)) begin
                normalized_value = core_value <<< 1;
                result_exponent = result_exponent - 1;
            end else begin
                normalized_value = core_value <<< 2;
                result_exponent = result_exponent - 2;
            end
        end else begin
            normalized_value = core_value <<< 3;
            result_exponent = result_exponent - 3;
        end

        if (NORM_STYLE != 2) begin
            normalized_fraction = normalized_value[22:0];
        end

        if (((NORM_STYLE != 2) && (core_value <= 0))
                || (result_exponent <= 0)) begin
            finite_result = {sign_input, 31'b0};
        end else if (result_exponent >= 255) begin
            finite_result = {sign_input, 8'hff, 23'b0};
        end else begin
            finite_result = {sign_input, result_exponent[7:0],
                             normalized_fraction};
        end

        if (FP_STYLE == 1) begin
            // PACE's published FP32 wrapper uses modular exponent arithmetic
            // and does not implement IEEE-754 special-value handling.
            result_comb = {sign_input, result_exponent[7:0],
                           normalized_fraction};
        end else if (invalid_input) begin
            result_comb = QUIET_NAN;
        end else if (infinity_input) begin
            result_comb = {sign_input, 8'hff, 23'b0};
        end else if (zero_input) begin
            result_comb = {sign_input, 31'b0};
        end else begin
            result_comb = finite_result;
        end
    end

    assign result = result_comb;
endmodule

module oadm_fixed_l3_div_opt_csd (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_l3_div_opt #(.SCALE_STYLE(1)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l3_div_opt_unsigned (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_l3_div_opt #(.SCALE_STYLE(2)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l3_div_opt_direct_probe (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_l3_div_opt #(.PLANE_STYLE(1)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule


module oadm_fixed_l3_div_opt_direct_exact (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_l3_div_opt #(.PLANE_STYLE(2)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule


module oadm_fixed_l3_div_opt_best (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_l3_div_opt #(.PLANE_STYLE(2), .NORM_STYLE(1)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l3_div_opt_best2 (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_l3_div_opt #(.PLANE_STYLE(2), .NORM_STYLE(2)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l3_div_opt_best3 (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_l3_div_opt #(
        .SCALE_STYLE(2), .PLANE_STYLE(2), .NORM_STYLE(2)
    ) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l3_div_opt_best4 (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_l3_div_opt #(.PLANE_STYLE(3), .NORM_STYLE(2)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l3_div_opt_best5 (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_l3_div_opt #(
        .SCALE_STYLE(3), .PLANE_STYLE(2), .NORM_STYLE(2)
    ) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l3_div_opt_paceio (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_l3_div_opt #(
        .PLANE_STYLE(2), .NORM_STYLE(2), .FP_STYLE(1)
    ) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l3_div_opt_postcorr (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_l3_div_opt #(
        .SCALE_STYLE(5), .PLANE_STYLE(2), .NORM_STYLE(2)
    ) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l3_div_opt_postcorr_paceio (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_l3_div_opt #(
        .SCALE_STYLE(5), .PLANE_STYLE(2), .NORM_STYLE(2), .FP_STYLE(1)
    ) impl (
        .x(x), .y(y), .result(result)
    );
endmodule
