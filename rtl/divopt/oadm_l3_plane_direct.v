module oadm_l3_plane_direct (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    output wire signed [28:0] plane_separate_shift,
    output wire signed [28:0] plane_combined_shift,
    output wire signed [28:0] plane_exact,
    output wire        [2:0] rounding_correction,
    output wire signed [28:0] plane_exact_reduced_midpoint,
    output wire signed [28:0] plane_exact_centered
);
    wire [2:0] x_index = x_mantissa[22:20];
    wire [2:0] y_index = y_mantissa[22:20];
    wire signed [5:0] x_midpoint = 6'sd17 + $signed({2'b0, x_index, 1'b0});
    wire signed [5:0] y_midpoint = 6'sd17 + $signed({2'b0, y_index, 1'b0});

    wire signed [29:0] x_term = $signed({1'b0, x_mantissa}) * y_midpoint;
    wire signed [29:0] y_term = $signed({1'b0, y_mantissa}) * x_midpoint;
    wire signed [11:0] midpoint_product = x_midpoint * y_midpoint;
    wire signed [28:0] constant_term = midpoint_product * 29'sd32768;

    assign plane_separate_shift = constant_term
                                + (x_term >>> 4) - (y_term >>> 4);
    assign plane_combined_shift = constant_term + ((x_term - y_term) >>> 4);

    wire [1:0] x_rounding_error;
    wire [1:0] y_rounding_error;
    wire [1:0] unused_x_error;
    wire [1:0] unused_y_error;
    oadm_rounding_error_lut x_rounding_lut (
        .index(y_index), .value_low(x_mantissa[3:0]),
        .x_error(x_rounding_error), .y_error(unused_y_error)
    );
    oadm_rounding_error_lut y_rounding_lut (
        .index(x_index), .value_low(y_mantissa[3:0]),
        .x_error(unused_x_error), .y_error(y_rounding_error)
    );
    assign rounding_correction = x_rounding_error + y_rounding_error;

    assign plane_exact = plane_separate_shift - rounding_correction;

    wire [3:0] midpoint_index_sum = {1'b0, x_index} + {1'b0, y_index};
    wire [5:0] midpoint_index_product = x_index * y_index;
    wire [10:0] midpoint_product_reduced = 11'd289
        + ({7'b0, midpoint_index_sum} << 5)
        + ({7'b0, midpoint_index_sum} << 1)
        + ({5'b0, midpoint_index_product} << 2);
    wire signed [28:0] constant_term_reduced =
        $signed({4'b0, midpoint_product_reduced[9:0], 15'b0});
    assign plane_exact_reduced_midpoint = constant_term_reduced
        + (x_term >>> 4) - (y_term >>> 4) - rounding_correction;

    // Center each mantissa on its interval midpoint before multiplication.
    // The midpoint products in the two linear terms cancel algebraically,
    // leaving two 20x5-bit residual products instead of two 24x5-bit products.
    wire signed [19:0] x_residual = $signed({1'b0, x_mantissa})
                                  - $signed({x_midpoint, 19'b0});
    wire signed [19:0] y_residual = $signed({1'b0, y_mantissa})
                                  - $signed({y_midpoint, 19'b0});
    wire signed [25:0] x_residual_term = x_residual * y_midpoint;
    wire signed [25:0] y_residual_term = y_residual * x_midpoint;
    wire signed [28:0] x_residual_scaled =
        $signed({{3{x_residual_term[25]}}, x_residual_term}) >>> 4;
    wire signed [28:0] y_residual_scaled =
        $signed({{3{y_residual_term[25]}}, y_residual_term}) >>> 4;
    assign plane_exact_centered = constant_term_reduced
        + x_residual_scaled - y_residual_scaled
        - rounding_correction;
endmodule
