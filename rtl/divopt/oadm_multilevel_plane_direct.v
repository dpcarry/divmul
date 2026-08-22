module oadm_multilevel_plane_direct #(
    parameter integer FACTORED_MIDPOINT = 0
) (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output wire signed [28:0] plane_exact
);
    reg [4:0] x_midpoint;
    reg [4:0] y_midpoint;
    always @* begin
        case (level)
            2'd0: begin
                x_midpoint = 5'd24;
                y_midpoint = 5'd24;
            end
            2'd1: begin
                x_midpoint = 5'd20 + {x_mantissa[22], 3'b000};
                y_midpoint = 5'd20 + {y_mantissa[22], 3'b000};
            end
            2'd2: begin
                x_midpoint = 5'd18 + {x_mantissa[22:21], 2'b00};
                y_midpoint = 5'd18 + {y_mantissa[22:21], 2'b00};
            end
            default: begin
                x_midpoint = 5'd17 + {x_mantissa[22:20], 1'b0};
                y_midpoint = 5'd17 + {y_mantissa[22:20], 1'b0};
            end
        endcase
    end

    wire [28:0] x_product = x_mantissa * y_midpoint;
    wire [28:0] y_product = y_mantissa * x_midpoint;
    wire [2:0] x_index = x_mantissa[22:20] >> (3 - level);
    wire [2:0] y_index = y_mantissa[22:20] >> (3 - level);
    wire [3:0] midpoint_index_sum = {1'b0, x_index}
                                          + {1'b0, y_index};
    wire [5:0] midpoint_index_product = x_index * y_index;
    wire [9:0] midpoint_product;
    generate
        if (FACTORED_MIDPOINT != 0) begin : factored_midpoint
            reg [9:0] midpoint_product_factored;
            always @* begin
                case (level)
                    2'd0: midpoint_product_factored = 10'd576;
                    2'd1: midpoint_product_factored = 10'd400
                        + ({6'b0, midpoint_index_sum} << 7)
                        + ({6'b0, midpoint_index_sum} << 5)
                        + ({4'b0, midpoint_index_product} << 6);
                    2'd2: midpoint_product_factored = 10'd324
                        + ({6'b0, midpoint_index_sum} << 6)
                        + ({6'b0, midpoint_index_sum} << 3)
                        + ({4'b0, midpoint_index_product} << 4);
                    default: midpoint_product_factored = 10'd289
                        + ({6'b0, midpoint_index_sum} << 5)
                        + ({6'b0, midpoint_index_sum} << 1)
                        + ({4'b0, midpoint_index_product} << 2);
                endcase
            end
            assign midpoint_product = midpoint_product_factored;
        end else begin : direct_midpoint
            assign midpoint_product = x_midpoint * y_midpoint;
        end
    endgenerate
    wire signed [28:0] x_term = $signed({1'b0, x_product[28:4]});
    wire signed [28:0] y_term = $signed({1'b0, y_product[28:4]});
    wire signed [28:0] constant_term = $signed({4'b0, midpoint_product, 15'b0});
    wire signed [28:0] direct_plane = divide_mode
        ? constant_term + x_term - y_term
        : x_term + y_term - constant_term;

    wire [1:0] x_rounding_error;
    wire [1:0] y_rounding_error;
    wire [1:0] unused_x_error;
    wire [1:0] unused_y_error;
    oadm_multilevel_rounding_lut x_rounding_lut (
        .level(level), .index(y_mantissa[22:20]),
        .value_low(x_mantissa[3:0]),
        .x_error(x_rounding_error), .y_error(unused_y_error)
    );
    oadm_multilevel_rounding_lut y_rounding_lut (
        .level(level), .index(x_mantissa[22:20]),
        .value_low(y_mantissa[3:0]),
        .x_error(unused_x_error), .y_error(y_rounding_error)
    );
    wire [2:0] correction = {1'b0, x_rounding_error}
        + {1'b0, divide_mode ? y_rounding_error : unused_x_error};

    assign plane_exact = direct_plane - $signed({26'b0, correction});
endmodule
