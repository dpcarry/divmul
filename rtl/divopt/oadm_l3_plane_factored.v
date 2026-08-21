module oadm_l3_plane_factored (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    output wire signed [28:0] plane_exact
);
    wire [2:0] x_index = x_mantissa[22:20];
    wire [2:0] y_index = y_mantissa[22:20];
    wire [5:0] x_midpoint = 6'd17 + {2'b0, x_index, 1'b0};
    wire [5:0] y_midpoint = 6'd17 + {2'b0, y_index, 1'b0};

    // floor(coefficient*mantissa/16) is split exactly at bit 4.  Factoring
    // the common 17 term leaves two 20-by-3 products instead of two
    // independent 24-by-6 products.
    wire [19:0] x_high = x_mantissa[23:4];
    wire [19:0] y_high = y_mantissa[23:4];
    wire signed [20:0] high_delta = $signed({1'b0, x_high})
                                          - $signed({1'b0, y_high});
    wire signed [25:0] high_delta_ext = {{5{high_delta[20]}}, high_delta};
    wire signed [25:0] common_17 = (high_delta_ext <<< 4) + high_delta_ext;

    wire [22:0] x_index_product = x_high * y_index;
    wire [22:0] y_index_product = y_high * x_index;
    wire signed [23:0] index_delta = $signed({1'b0, x_index_product})
                                           - $signed({1'b0, y_index_product});
    wire signed [25:0] index_delta_ext = {{2{index_delta[23]}}, index_delta};
    wire signed [26:0] high_scaled = $signed({common_17[25], common_17})
                                          + (index_delta_ext <<< 1);

    wire [9:0] x_low_product = x_mantissa[3:0] * y_midpoint;
    wire [9:0] y_low_product = y_mantissa[3:0] * x_midpoint;
    wire signed [6:0] low_delta = $signed({1'b0, x_low_product[9:4]})
                                       - $signed({1'b0, y_low_product[9:4]});

    wire [11:0] midpoint_product = x_midpoint * y_midpoint;
    wire signed [28:0] constant_term = $signed({2'b0, midpoint_product, 15'b0});
    wire signed [28:0] direct_plane = constant_term
        + {{2{high_scaled[26]}}, high_scaled}
        + {{22{low_delta[6]}}, low_delta};

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

    assign plane_exact = direct_plane
                       - ({1'b0, x_rounding_error}
                        + {1'b0, y_rounding_error});
endmodule
