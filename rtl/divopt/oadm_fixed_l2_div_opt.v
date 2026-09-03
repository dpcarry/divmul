module oadm_fixed_l2_div_specialized #(
    parameter integer TERM_STYLE = 0,
    parameter integer SCALE_STYLE = 0,
    parameter integer NORM_STYLE = 0
) (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    localparam integer CORE_WIDTH = 29;

    wire [23:0] x_mantissa = {1'b1, x[22:0]};
    wire [23:0] y_mantissa = {1'b1, y[22:0]};
    wire [1:0] x_index = x_mantissa[22:21];
    wire [1:0] y_index = y_mantissa[22:21];

    // L2 midpoint numerators: k=(9+2*i)/8.
    wire signed [4:0] x_midpoint = 5'sd9
        + $signed({2'b0, x_index, 1'b0});
    wire signed [4:0] y_midpoint = 5'sd9
        + $signed({2'b0, y_index, 1'b0});

    // Offset-binary midpoint subtraction is an MSB inversion within the cell.
    wire signed [20:0] x_residual = {
        ~x_mantissa[20], x_mantissa[19:0]
    };
    wire signed [20:0] y_residual = {
        ~y_mantissa[20], y_mantissa[19:0]
    };
    wire signed [25:0] x_residual_extended = {{5{x_residual[20]}}, x_residual};
    wire signed [25:0] y_residual_extended = {{5{y_residual[20]}}, y_residual};

    wire signed [25:0] x_product = x_residual * y_midpoint;
    wire signed [25:0] y_product = y_residual * x_midpoint;
    reg signed [25:0] x_product_shiftadd;
    reg signed [25:0] y_product_shiftadd;
    always @* begin
        case (y_index)
            2'd0: x_product_shiftadd = (x_residual_extended <<< 3)
                                           + x_residual_extended;
            2'd1: x_product_shiftadd = (x_residual_extended <<< 3)
                                           + (x_residual_extended <<< 1)
                                           + x_residual_extended;
            2'd2: x_product_shiftadd = (x_residual_extended <<< 4)
                                           - (x_residual_extended <<< 2)
                                           + x_residual_extended;
            default: x_product_shiftadd = (x_residual_extended <<< 4)
                                           - x_residual_extended;
        endcase
        case (x_index)
            2'd0: y_product_shiftadd = (y_residual_extended <<< 3)
                                           + y_residual_extended;
            2'd1: y_product_shiftadd = (y_residual_extended <<< 3)
                                           + (y_residual_extended <<< 1)
                                           + y_residual_extended;
            2'd2: y_product_shiftadd = (y_residual_extended <<< 4)
                                           - (y_residual_extended <<< 2)
                                           + y_residual_extended;
            default: y_product_shiftadd = (y_residual_extended <<< 4)
                                           - y_residual_extended;
        endcase
    end

    wire signed [25:0] selected_x_product = (TERM_STYLE == 1)
        ? x_product_shiftadd : x_product;
    wire signed [25:0] selected_y_product = (TERM_STYLE == 1)
        ? y_product_shiftadd : y_product;
    wire signed [28:0] x_product_extended =
        {{3{selected_x_product[25]}}, selected_x_product};
    wire signed [28:0] y_product_extended =
        {{3{selected_y_product[25]}}, selected_y_product};
    wire signed [28:0] x_term = x_product_extended >>> 3;
    wire signed [28:0] y_term = y_product_extended >>> 3;

    wire [2:0] midpoint_index_sum = {1'b0, x_index}
                                  + {1'b0, y_index};
    wire [3:0] midpoint_index_product = x_index * y_index;
    wire [7:0] midpoint_product = 8'd81
        + ({5'b0, midpoint_index_sum} << 4)
        + ({5'b0, midpoint_index_sum} << 1)
        + ({4'b0, midpoint_index_product} << 2);
    wire signed [28:0] constant_term =
        $signed({4'b0, midpoint_product, 17'b0});

    wire [1:0] x_rounding_error;
    wire [1:0] y_rounding_error;
    wire [1:0] unused_x_error;
    wire [1:0] unused_y_error;
    oadm_multilevel_rounding_lut x_rounding_lut (
        .level(2'd2), .index(y_mantissa[22:20]),
        .value_low(x_mantissa[3:0]),
        .x_error(x_rounding_error), .y_error(unused_y_error)
    );
    oadm_multilevel_rounding_lut y_rounding_lut (
        .level(2'd2), .index(x_mantissa[22:20]),
        .value_low(y_mantissa[3:0]),
        .x_error(unused_x_error), .y_error(y_rounding_error)
    );
    wire [2:0] rounding_correction = {1'b0, x_rounding_error}
                                           + {1'b0, y_rounding_error};
    wire signed [28:0] plane_uncorrected = constant_term + x_term - y_term;
    wire signed [28:0] plane_full = plane_uncorrected
                                  - $signed({26'b0, rounding_correction});
    wire signed [28:0] shared_value = {{2{plane_full[26]}}, plane_full[26:0]};

    reg [6:0] coefficient;
    always @* begin
        case (y_index)
            2'b00: coefficient = 7'h65;
            2'b01: coefficient = 7'h44;
            2'b10: coefficient = 7'h30;
            default: coefficient = 7'h24;
        endcase
    end

    wire signed [35:0] shared_extended = {{7{shared_value[28]}}, shared_value};
    wire signed [35:0] signed_product = shared_extended * coefficient;
    wire [33:0] unsigned_product = shared_value[26:0] * coefficient;
    // The L2 plane is nonnegative and below 4.0, so Q23 bits 26:25 are zero.
    wire [31:0] reduced_unsigned_product = shared_value[24:0] * coefficient;
    wire signed [25:0] reduced_plane_signed =
        $signed({1'b0, shared_value[24:0]});
    wire signed [7:0] reduced_coefficient_signed =
        $signed({1'b0, coefficient});
    wire signed [33:0] reduced_signed_product =
        reduced_plane_signed * reduced_coefficient_signed;
    wire [33:0] shared_unsigned_extended = {7'b0, shared_value[26:0]};
    reg [33:0] shiftadd_product;
    always @* begin
        case (y_index)
            2'b00: shiftadd_product = (shared_unsigned_extended << 6)
                                          + (shared_unsigned_extended << 5)
                                          + (shared_unsigned_extended << 2)
                                          + shared_unsigned_extended;
            2'b01: shiftadd_product = (shared_unsigned_extended << 6)
                                          + (shared_unsigned_extended << 2);
            2'b10: shiftadd_product = (shared_unsigned_extended << 5)
                                          + (shared_unsigned_extended << 4);
            default: shiftadd_product = (shared_unsigned_extended << 5)
                                          + (shared_unsigned_extended << 2);
        endcase
    end

    // Move the small correction after scaling while preserving floor division.
    wire signed [28:0] uncorrected_shared =
        {{2{plane_uncorrected[26]}}, plane_uncorrected[26:0]};
    wire signed [35:0] uncorrected_extended =
        {{7{uncorrected_shared[28]}}, uncorrected_shared};
    wire signed [35:0] uncorrected_product = uncorrected_extended * coefficient;
    wire [9:0] correction_product = rounding_correction * coefficient;
    wire correction_borrow = uncorrected_product[6:0]
                           < correction_product[6:0];
    wire signed [28:0] postcorrected_value =
        $signed(uncorrected_product[35:7])
        - $signed({26'b0, correction_product[9:7]})
        - correction_borrow;

    wire signed [28:0] core_value = (SCALE_STYLE == 1)
        ? $signed({2'b00, unsigned_product[33:7]})
        : ((SCALE_STYLE == 2)
           ? $signed({2'b00, shiftadd_product[33:7]})
           : ((SCALE_STYLE == 3) ? postcorrected_value
              : ((SCALE_STYLE == 4)
                 ? $signed({4'b0000, reduced_unsigned_product[31:7]})
                 : ((SCALE_STYLE == 5)
                    ? $signed({2'b00, reduced_signed_product[33:7]})
                    : signed_product[35:7]))));

    wire sign_input = x[31] ^ y[31];
    wire signed [9:0] exponent_input = $signed({2'b0, x[30:23]})
                                    - $signed({2'b0, y[30:23]}) + 10'sd127;
    reg [22:0] normalized_fraction;
    reg signed [9:0] result_exponent;
    always @* begin
        normalized_fraction = core_value[22:0];
        result_exponent = exponent_input;
        if (NORM_STYLE == 1) begin
            // L2 range proof excludes values below 0.25 and at or above 2.
            if (core_value[23]) begin
                normalized_fraction = core_value[22:0];
            end else if (core_value[22]) begin
                normalized_fraction = {core_value[21:0], 1'b0};
                result_exponent = exponent_input - 1;
            end else begin
                normalized_fraction = {core_value[20:0], 2'b0};
                result_exponent = exponent_input - 2;
            end
        end else if (core_value[24]) begin
            normalized_fraction = core_value[23:1];
            result_exponent = exponent_input + 1;
        end else if (core_value[23]) begin
            normalized_fraction = core_value[22:0];
        end else if (core_value[22]) begin
            normalized_fraction = {core_value[21:0], 1'b0};
            result_exponent = exponent_input - 1;
        end else begin
            normalized_fraction = {core_value[20:0], 2'b0};
            result_exponent = exponent_input - 2;
        end
    end

    assign result = {sign_input, result_exponent[7:0], normalized_fraction};
endmodule

module oadm_fixed_l2_div_specialized_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_fixed_l2_div_specialized #(.NORM_STYLE(1)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l2_div_specialized_unsigned_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_fixed_l2_div_specialized #(.SCALE_STYLE(1), .NORM_STYLE(1)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l2_div_specialized_shiftadd_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_fixed_l2_div_specialized #(.TERM_STYLE(1), .NORM_STYLE(1)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l2_div_specialized_scale_shiftadd_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_fixed_l2_div_specialized #(.SCALE_STYLE(2), .NORM_STYLE(1)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l2_div_specialized_postcorr_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_fixed_l2_div_specialized #(.SCALE_STYLE(3), .NORM_STYLE(1)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l2_div_specialized_shiftadd_postcorr_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_fixed_l2_div_specialized #(
        .TERM_STYLE(1), .SCALE_STYLE(3), .NORM_STYLE(1)
    ) impl (.x(x), .y(y), .result(result));
endmodule

module oadm_fixed_l2_div_specialized_reduced_scale_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_fixed_l2_div_specialized #(.SCALE_STYLE(4), .NORM_STYLE(1)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule

module oadm_fixed_l2_div_specialized_reduced_signed_scale_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_fixed_l2_div_specialized #(.SCALE_STYLE(5), .NORM_STYLE(1)) impl (
        .x(x), .y(y), .result(result)
    );
endmodule
