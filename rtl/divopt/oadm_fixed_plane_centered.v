module oadm_fixed_plane_centered #(
    parameter integer LEVEL = 3
) (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire        divide_mode,
    output wire signed [28:0] plane_exact
);
    localparam integer RESIDUAL_WIDTH = 23 - LEVEL;
    localparam integer PRODUCT_WIDTH = RESIDUAL_WIDTH + 6;
    localparam integer BASE = (LEVEL == 0) ? 24
                                : (LEVEL == 1) ? 20
                                : (LEVEL == 2) ? 18 : 17;
    localparam integer STEP_SHIFT = (LEVEL == 0) ? 0 : 4 - LEVEL;
    localparam [1:0] LEVEL_VALUE = LEVEL;

    wire [2:0] x_index = x_mantissa[22:20] >> (3 - LEVEL);
    wire [2:0] y_index = y_mantissa[22:20] >> (3 - LEVEL);
    wire [4:0] x_midpoint = BASE + (x_index << STEP_SHIFT);
    wire [4:0] y_midpoint = BASE + (y_index << STEP_SHIFT);

    // Within each interval, subtracting its midpoint is exactly an
    // offset-binary-to-two's-complement conversion: invert the residual MSB.
    wire signed [RESIDUAL_WIDTH-1:0] x_residual = {
        ~x_mantissa[22-LEVEL], x_mantissa[21-LEVEL:0]
    };
    wire signed [RESIDUAL_WIDTH-1:0] y_residual = {
        ~y_mantissa[22-LEVEL], y_mantissa[21-LEVEL:0]
    };

    wire signed [PRODUCT_WIDTH-1:0] x_residual_product =
        x_residual * $signed({1'b0, y_midpoint});
    wire signed [PRODUCT_WIDTH-1:0] y_residual_product =
        y_residual * $signed({1'b0, x_midpoint});
    wire signed [28:0] x_product_extended =
        {{LEVEL{x_residual_product[PRODUCT_WIDTH-1]}}, x_residual_product};
    wire signed [28:0] y_product_extended =
        {{LEVEL{y_residual_product[PRODUCT_WIDTH-1]}}, y_residual_product};
    wire signed [28:0] x_term = x_product_extended >>> 4;
    wire signed [28:0] y_term = y_product_extended >>> 4;

    wire [3:0] midpoint_index_sum = {1'b0, x_index} + {1'b0, y_index};
    wire [5:0] midpoint_index_product = x_index * y_index;
    wire [9:0] midpoint_product = (BASE * BASE)
        + ((BASE * midpoint_index_sum) << STEP_SHIFT)
        + (midpoint_index_product << (2 * STEP_SHIFT));
    wire signed [28:0] constant_term =
        $signed({4'b0, midpoint_product, 15'b0});

    wire [1:0] x_rounding_error;
    wire [1:0] y_rounding_error;
    wire [1:0] y_side_x_error;
    wire [1:0] unused_y_error;
    oadm_multilevel_rounding_lut x_rounding_lut (
        .level(LEVEL_VALUE), .index(y_mantissa[22:20]),
        .value_low(x_mantissa[3:0]),
        .x_error(x_rounding_error), .y_error(unused_y_error)
    );
    oadm_multilevel_rounding_lut y_rounding_lut (
        .level(LEVEL_VALUE), .index(x_mantissa[22:20]),
        .value_low(y_mantissa[3:0]),
        .x_error(y_side_x_error), .y_error(y_rounding_error)
    );
    wire [2:0] correction = {1'b0, x_rounding_error}
        + {1'b0, divide_mode ? y_rounding_error : y_side_x_error};

    wire signed [28:0] centered_plane = divide_mode
        ? constant_term + x_term - y_term
        : constant_term + x_term + y_term;
    assign plane_exact = centered_plane - $signed({26'b0, correction});
endmodule
