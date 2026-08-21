module oadm_l0_plane_direct (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire        divide_mode,
    output wire signed [28:0] plane_exact
);
    wire [24:0] x_scaled = {1'b0, x_mantissa}
                           + {2'b0, x_mantissa[23:1]};
    wire [24:0] y_scaled = {1'b0, y_mantissa}
                           + {2'b0, y_mantissa[23:1]};
    wire signed [28:0] x_term = $signed({4'b0, x_scaled});
    wire signed [28:0] y_term = $signed({4'b0, y_scaled});
    wire signed [28:0] constant_term = 29'sd18874368;

    assign plane_exact = divide_mode
        ? constant_term + x_term - y_term
        : x_term + y_term - constant_term;
endmodule

module oadm_l1_plane_direct (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire        divide_mode,
    output wire signed [28:0] plane_exact
);
    wire [25:0] x_triple = {2'b0, x_mantissa}
                           + {1'b0, x_mantissa, 1'b0};
    wire [25:0] y_triple = {2'b0, y_mantissa}
                           + {1'b0, y_mantissa, 1'b0};
    wire [25:0] x_scaled_low = {2'b0, x_mantissa}
                               + {4'b0, x_mantissa[23:2]};
    wire [25:0] y_scaled_low = {2'b0, y_mantissa}
                               + {4'b0, y_mantissa[23:2]};
    wire [25:0] x_scaled_high = {2'b0, x_mantissa}
                                + {2'b0, x_triple[25:2]};
    wire [25:0] y_scaled_high = {2'b0, y_mantissa}
                                + {2'b0, y_triple[25:2]};
    wire [25:0] x_scaled = y_mantissa[22]
                         ? x_scaled_high : x_scaled_low;
    wire [25:0] y_scaled = x_mantissa[22]
                         ? y_scaled_high : y_scaled_low;
    wire signed [28:0] x_term = $signed({3'b0, x_scaled});
    wire signed [28:0] y_term = $signed({3'b0, y_scaled});

    reg signed [28:0] constant_term;
    always @* begin
        case ({x_mantissa[22], y_mantissa[22]})
            2'b00: constant_term = 29'sd13107200;
            2'b11: constant_term = 29'sd25690112;
            default: constant_term = 29'sd18350080;
        endcase
    end

    wire [1:0] x_rounding_error;
    wire [1:0] y_rounding_error;
    wire [1:0] y_side_x_error;
    wire [1:0] unused_y_error;
    oadm_multilevel_rounding_lut x_rounding_lut (
        .level(2'd1), .index({y_mantissa[22], 2'b00}),
        .value_low(x_mantissa[3:0]),
        .x_error(x_rounding_error), .y_error(unused_y_error)
    );
    oadm_multilevel_rounding_lut y_rounding_lut (
        .level(2'd1), .index({x_mantissa[22], 2'b00}),
        .value_low(y_mantissa[3:0]),
        .x_error(y_side_x_error), .y_error(y_rounding_error)
    );
    wire [2:0] correction = {1'b0, x_rounding_error}
        + {1'b0, divide_mode ? y_rounding_error : y_side_x_error};
    wire signed [28:0] direct_plane = divide_mode
        ? constant_term + x_term - y_term
        : x_term + y_term - constant_term;

    assign plane_exact = direct_plane - $signed({26'b0, correction});
endmodule
