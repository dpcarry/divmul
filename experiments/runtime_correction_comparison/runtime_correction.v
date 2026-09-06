// Runtime correction-plane controls for a matched comparison with
// oadm_runtime_opt. No residual or plane LSB truncation is used.
module oadm_runtime_correction_terms (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire        divide_mode,
    output reg signed [28:0] base_plane,
    output reg signed [28:0] delta_1,
    output reg signed [28:0] delta_2,
    output reg signed [28:0] delta_3
);
    localparam signed [28:0] ONE_Q = 29'sd8388608;
    localparam signed [28:0] MIDPOINT_Q = 29'sd12582912;
    localparam signed [28:0] L0_PRODUCT_Q = 29'sd18874368;
    wire signed [28:0] x_q = $signed({5'b0, x_mantissa});
    wire signed [28:0] y_q = $signed({5'b0, y_mantissa});
    reg signed [28:0] midpoint_x_1, midpoint_y_1;
    reg signed [28:0] midpoint_x_2, midpoint_y_2;
    reg signed [28:0] raw_1, raw_2, term_1, term_2, term_3;

    always @* begin
        if (divide_mode) begin
            base_plane = L0_PRODUCT_Q + x_q + (x_q >>> 1)
                       - y_q - (y_q >>> 1);
            raw_1 = x_q + MIDPOINT_Q;
            raw_2 = MIDPOINT_Q - y_q;
            term_3 = (x_mantissa[22] == y_mantissa[22])
                   ? (ONE_Q >>> 4) : -(ONE_Q >>> 4);
        end else begin
            base_plane = -L0_PRODUCT_Q + x_q + (x_q >>> 1)
                       + y_q + (y_q >>> 1);
            raw_1 = x_q - MIDPOINT_Q;
            raw_2 = y_q - MIDPOINT_Q;
            term_3 = (x_mantissa[22] != y_mantissa[22])
                   ? (ONE_Q >>> 4) : -(ONE_Q >>> 4);
        end
        term_1 = (y_mantissa[22] ? raw_1 : -raw_1) >>> 2;
        term_2 = (x_mantissa[22] ? raw_2 : -raw_2) >>> 2;
        delta_1 = term_1 + term_2 + term_3;
        midpoint_x_1 = x_mantissa[22]
                     ? MIDPOINT_Q + (ONE_Q >>> 2)
                     : MIDPOINT_Q - (ONE_Q >>> 2);
        midpoint_y_1 = y_mantissa[22]
                     ? MIDPOINT_Q + (ONE_Q >>> 2)
                     : MIDPOINT_Q - (ONE_Q >>> 2);

        if (divide_mode) begin
            raw_1 = x_q + midpoint_x_1;
            raw_2 = midpoint_y_1 - y_q;
            term_3 = (x_mantissa[21] == y_mantissa[21])
                   ? (ONE_Q >>> 6) : -(ONE_Q >>> 6);
        end else begin
            raw_1 = x_q - midpoint_x_1;
            raw_2 = y_q - midpoint_y_1;
            term_3 = (x_mantissa[21] != y_mantissa[21])
                   ? (ONE_Q >>> 6) : -(ONE_Q >>> 6);
        end
        term_1 = (y_mantissa[21] ? raw_1 : -raw_1) >>> 3;
        term_2 = (x_mantissa[21] ? raw_2 : -raw_2) >>> 3;
        delta_2 = term_1 + term_2 + term_3;
        midpoint_x_2 = x_mantissa[21]
                     ? midpoint_x_1 + (ONE_Q >>> 3)
                     : midpoint_x_1 - (ONE_Q >>> 3);
        midpoint_y_2 = y_mantissa[21]
                     ? midpoint_y_1 + (ONE_Q >>> 3)
                     : midpoint_y_1 - (ONE_Q >>> 3);

        if (divide_mode) begin
            raw_1 = x_q + midpoint_x_2;
            raw_2 = midpoint_y_2 - y_q;
            term_3 = (x_mantissa[20] == y_mantissa[20])
                   ? (ONE_Q >>> 8) : -(ONE_Q >>> 8);
        end else begin
            raw_1 = x_q - midpoint_x_2;
            raw_2 = y_q - midpoint_y_2;
            term_3 = (x_mantissa[20] != y_mantissa[20])
                   ? (ONE_Q >>> 8) : -(ONE_Q >>> 8);
        end
        term_1 = (y_mantissa[20] ? raw_1 : -raw_1) >>> 4;
        term_2 = (x_mantissa[20] ? raw_2 : -raw_2) >>> 4;
        delta_3 = term_1 + term_2 + term_3;
    end
endmodule

module oadm_runtime_correction_shell #(
    parameter integer TAPPED = 0
) (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    wire [22:0] x_fraction, y_fraction;
    wire [23:0] x_mantissa = {1'b1, x_fraction};
    wire [23:0] y_mantissa = {1'b1, y_fraction};
    wire signed [28:0] base_plane, delta_1, delta_2, delta_3;
    oadm_runtime_correction_terms terms (
        x_mantissa, y_mantissa, divide_mode,
        base_plane, delta_1, delta_2, delta_3
    );

    wire signed [28:0] enabled_1 = level >= 1 ? delta_1 : 29'sd0;
    wire signed [28:0] enabled_2 = level >= 2 ? delta_2 : 29'sd0;
    wire signed [28:0] enabled_3 = level >= 3 ? delta_3 : 29'sd0;
    wire signed [28:0] common_sum_0, common_carry_0;
    wire signed [28:0] common_sum_1, common_carry_1;
    csa3 #(.WIDTH(29)) common_csa_0 (
        base_plane, enabled_1, enabled_2, common_sum_0, common_carry_0
    );
    csa3 #(.WIDTH(29)) common_csa_1 (
        common_sum_0, common_carry_0, enabled_3,
        common_sum_1, common_carry_1
    );
    wire signed [28:0] common_plane = common_sum_1 + common_carry_1;

    wire signed [28:0] tap_1 = base_plane + delta_1;
    wire signed [28:0] tap_sum_2, tap_carry_2;
    csa3 #(.WIDTH(29)) tap_csa_2 (
        base_plane, delta_1, delta_2, tap_sum_2, tap_carry_2
    );
    wire signed [28:0] tap_2 = tap_sum_2 + tap_carry_2;
    wire signed [28:0] tap_sum_30, tap_carry_30;
    wire signed [28:0] tap_sum_31, tap_carry_31;
    csa3 #(.WIDTH(29)) tap_csa_30 (
        base_plane, delta_1, delta_2, tap_sum_30, tap_carry_30
    );
    csa3 #(.WIDTH(29)) tap_csa_31 (
        tap_sum_30, tap_carry_30, delta_3, tap_sum_31, tap_carry_31
    );
    wire signed [28:0] tap_3 = tap_sum_31 + tap_carry_31;
    reg signed [28:0] tapped_plane;
    always @* begin
        case (level)
            0: tapped_plane = base_plane;
            1: tapped_plane = tap_1;
            2: tapped_plane = tap_2;
            default: tapped_plane = tap_3;
        endcase
    end
    wire signed [28:0] selected_plane = TAPPED ? tapped_plane : common_plane;

    reg [6:0] coefficient;
    always @* begin
        case (level)
            0: coefficient = 7'h39;
            1: coefficient = y_mantissa[22] ? 7'h2a : 7'h52;
            2: case (y_mantissa[22:21])
                0: coefficient = 7'h65; 1: coefficient = 7'h44;
                2: coefficient = 7'h30; default: coefficient = 7'h24;
            endcase
            default: case (y_mantissa[22:20])
                0: coefficient = 7'h71; 1: coefficient = 7'h5b;
                2: coefficient = 7'h4a; 3: coefficient = 7'h3e;
                4: coefficient = 7'h34; 5: coefficient = 7'h2d;
                6: coefficient = 7'h27; default: coefficient = 7'h22;
            endcase
        endcase
    end
    wire signed [35:0] scaled_product = selected_plane * coefficient;
    wire signed [28:0] core_value = divide_mode
        ? scaled_product[35:7] : selected_plane;
    reg [22:0] normalized_fraction;
    reg signed [2:0] exponent_adjust;
    always @* begin
        normalized_fraction = core_value[22:0];
        exponent_adjust = 0;
        if (core_value[24]) begin
            normalized_fraction = core_value[23:1]; exponent_adjust = 1;
        end else if (core_value[23]) begin
            normalized_fraction = core_value[22:0];
        end else if (core_value[22]) begin
            normalized_fraction = {core_value[21:0],1'b0}; exponent_adjust = -1;
        end else begin
            normalized_fraction = {core_value[20:0],2'b0}; exponent_adjust = -2;
        end
    end
    fp32_normal_finite_wrapper fp_wrapper (
        .x(x), .y(y), .divide_mode(divide_mode),
        .fraction_x(x_fraction), .fraction_y(y_fraction),
        .result_fraction(normalized_fraction),
        .exponent_adjust(exponent_adjust), .result(result)
    );
endmodule

module oadm_runtime_correction_common (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_correction_shell #(.TAPPED(0)) impl(x,y,level,divide_mode,result);
endmodule

module oadm_runtime_correction_tapped (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_correction_shell #(.TAPPED(1)) impl(x,y,level,divide_mode,result);
endmodule
