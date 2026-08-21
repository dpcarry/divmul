module oadm_l3_plane_direct (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    output wire signed [28:0] plane_separate_shift,
    output wire signed [28:0] plane_combined_shift,
    output wire signed [28:0] plane_exact,
    output wire        [2:0] rounding_correction
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
endmodule
