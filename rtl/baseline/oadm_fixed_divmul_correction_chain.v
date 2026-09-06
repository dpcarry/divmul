// Diagnostic fixed-level model of this project's legacy OADM recurrence.
// It is not a port of the AM-Lib OAM partial-product/CSA implementation and
// must not be used as the paper's OAM PPA baseline.
module oadm_fixed_divmul_correction_chain #(
    parameter integer LEVEL = 0
) (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire        divide_mode,
    output wire [31:0] result
);
    localparam signed [28:0] ONE_Q = 29'sd8388608;
    localparam signed [28:0] MIDPOINT_Q = 29'sd12582912;
    localparam signed [28:0] L0_PRODUCT_Q = 29'sd18874368;

    wire [22:0] x_fraction;
    wire [22:0] y_fraction;
    wire [23:0] x_mantissa = {1'b1, x_fraction};
    wire [23:0] y_mantissa = {1'b1, y_fraction};
    wire signed [28:0] x_q = $signed({5'b0, x_mantissa});
    wire signed [28:0] y_q = $signed({5'b0, y_mantissa});

    reg signed [28:0] base_plane;
    reg signed [28:0] delta_1;
    reg signed [28:0] delta_2;
    reg signed [28:0] delta_3;
    reg signed [28:0] midpoint_x_1;
    reg signed [28:0] midpoint_y_1;
    reg signed [28:0] midpoint_x_2;
    reg signed [28:0] midpoint_y_2;
    reg signed [28:0] raw_1;
    reg signed [28:0] raw_2;
    reg signed [28:0] term_1;
    reg signed [28:0] term_2;
    reg signed [28:0] term_3;

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

    wire signed [28:0] selected_plane;
    generate
        if (LEVEL == 0) begin : level_0_accumulator
            assign selected_plane = base_plane;
        end else if (LEVEL == 1) begin : level_1_accumulator
            assign selected_plane = base_plane + delta_1;
        end else if (LEVEL == 2) begin : level_2_accumulator
            wire signed [28:0] sum;
            wire signed [28:0] carry;
            csa3 #(.WIDTH(29)) correction_csa (
                .input_a(base_plane), .input_b(delta_1), .input_c(delta_2),
                .sum(sum), .carry(carry)
            );
            assign selected_plane = sum + carry;
        end else begin : level_3_accumulator
            wire signed [28:0] sum_0;
            wire signed [28:0] carry_0;
            wire signed [28:0] sum_1;
            wire signed [28:0] carry_1;
            csa3 #(.WIDTH(29)) correction_csa_0 (
                .input_a(base_plane), .input_b(delta_1), .input_c(delta_2),
                .sum(sum_0), .carry(carry_0)
            );
            csa3 #(.WIDTH(29)) correction_csa_1 (
                .input_a(sum_0), .input_b(carry_0), .input_c(delta_3),
                .sum(sum_1), .carry(carry_1)
            );
            assign selected_plane = sum_1 + carry_1;
        end
    endgenerate

    reg [6:0] coefficient;
    always @* begin
        if (LEVEL == 0) begin
            coefficient = 7'h39;
        end else if (LEVEL == 1) begin
            coefficient = y_mantissa[22] ? 7'h2a : 7'h52;
        end else if (LEVEL == 2) begin
            case (y_mantissa[22:21])
                2'b00: coefficient = 7'h65;
                2'b01: coefficient = 7'h44;
                2'b10: coefficient = 7'h30;
                default: coefficient = 7'h24;
            endcase
        end else begin
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
    end

    wire signed [35:0] scaled_product = selected_plane * coefficient;
    wire signed [28:0] core_value = divide_mode
        ? scaled_product[35:7] : selected_plane;

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

module oadm_fixed_l0_divmul_correction_chain(
    input wire [31:0] x, input wire [31:0] y, input wire divide_mode,
    output wire [31:0] result);
    oadm_fixed_divmul_correction_chain #(.LEVEL(0)) impl (x, y, divide_mode, result);
endmodule

module oadm_fixed_l1_divmul_correction_chain(
    input wire [31:0] x, input wire [31:0] y, input wire divide_mode,
    output wire [31:0] result);
    oadm_fixed_divmul_correction_chain #(.LEVEL(1)) impl (x, y, divide_mode, result);
endmodule

module oadm_fixed_l2_divmul_correction_chain(
    input wire [31:0] x, input wire [31:0] y, input wire divide_mode,
    output wire [31:0] result);
    oadm_fixed_divmul_correction_chain #(.LEVEL(2)) impl (x, y, divide_mode, result);
endmodule

module oadm_fixed_l3_divmul_correction_chain(
    input wire [31:0] x, input wire [31:0] y, input wire divide_mode,
    output wire [31:0] result);
    oadm_fixed_divmul_correction_chain #(.LEVEL(3)) impl (x, y, divide_mode, result);
endmodule
