module oadm_l0_centered_index_core #(
    parameter FP_STYLE = 0
) (
    input wire [31:0] x,
    input wire [31:0] y,
    input wire divide_mode,
    output wire [31:0] result
);
    localparam CORE_WIDTH = 29;
    localparam [31:0] QUIET_NAN = 32'h7fc00000;

    wire [7:0] x_exponent = x[30:23];
    wire [7:0] y_exponent = y[30:23];
    wire [22:0] x_fraction = x[22:0];
    wire [22:0] y_fraction = y[22:0];
    wire [23:0] x_mantissa = {1'b1, x_fraction};
    wire [23:0] y_mantissa = {1'b1, y_fraction};
    wire sign_input = x[31] ^ y[31];
    wire x_nan = (x_exponent == 8'hff) && (x_fraction != 0);
    wire y_nan = (y_exponent == 8'hff) && (y_fraction != 0);
    wire x_inf = (x_exponent == 8'hff) && (x_fraction == 0);
    wire y_inf = (y_exponent == 8'hff) && (y_fraction == 0);
    wire x_zero = (x_exponent == 8'h00);
    wire y_zero = (y_exponent == 8'h00);

    reg invalid_input;
    reg infinity_input;
    reg zero_input;
    reg signed [9:0] exponent_input;
    always @* begin
        invalid_input = x_nan || y_nan;
        infinity_input = 1'b0;
        zero_input = 1'b0;
        if (divide_mode) begin
            invalid_input = invalid_input || (x_zero && y_zero)
                          || (x_inf && y_inf);
            infinity_input = !invalid_input && (x_inf || y_zero);
            zero_input = !invalid_input && !infinity_input
                       && (x_zero || y_inf);
            exponent_input = $signed({2'b0, x_exponent})
                           - $signed({2'b0, y_exponent}) + 10'sd127;
        end else begin
            invalid_input = invalid_input || (x_zero && y_inf)
                          || (x_inf && y_zero);
            infinity_input = !invalid_input && (x_inf || y_inf);
            zero_input = !invalid_input && !infinity_input
                       && (x_zero || y_zero);
            exponent_input = $signed({2'b0, x_exponent})
                           + $signed({2'b0, y_exponent}) - 10'sd127;
        end
    end

    wire signed [CORE_WIDTH-1:0] plane_full;
    oadm_l0_plane_direct plane (
        .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .divide_mode(divide_mode), .plane_exact(plane_full)
    );
    wire signed [CORE_WIDTH-1:0] shared_value =
        {{2{plane_full[26]}}, plane_full[26:0]};

    wire signed [35:0] shared_extended = {{7{shared_value[28]}}, shared_value};
    wire signed [35:0] scaled_product = shared_extended * 7'h39;
    wire signed [CORE_WIDTH-1:0] divided_value = scaled_product[35:7];
    wire signed [CORE_WIDTH-1:0] core_value = divide_mode
        ? divided_value : shared_value;

    reg signed [CORE_WIDTH-1:0] normalized_value;
    reg signed [9:0] result_exponent;
    reg [31:0] finite_result;
    reg [31:0] result_comb;
    always @* begin
        normalized_value = core_value;
        result_exponent = exponent_input;
        if (core_value[24]) begin
            normalized_value = core_value >>> 1;
            result_exponent = result_exponent + 1;
        end else if (core_value[23]) begin
            normalized_value = core_value;
        end else if (core_value[22]) begin
            normalized_value = core_value <<< 1;
            result_exponent = result_exponent - 1;
        end else begin
            normalized_value = core_value <<< 2;
            result_exponent = result_exponent - 2;
        end

        if (result_exponent <= 0) begin
            finite_result = {sign_input, 31'b0};
        end else if (result_exponent >= 255) begin
            finite_result = {sign_input, 8'hff, 23'b0};
        end else begin
            finite_result = {sign_input, result_exponent[7:0],
                             normalized_value[22:0]};
        end

        if (FP_STYLE == 1) begin
            result_comb = {sign_input, result_exponent[7:0],
                           normalized_value[22:0]};
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

module oadm_l0_centered_index_opt (
    input wire [31:0] x,
    input wire [31:0] y,
    input wire divide_mode,
    output wire [31:0] result
);
    oadm_l0_centered_index_core impl (
        .x(x), .y(y), .divide_mode(divide_mode), .result(result)
    );
endmodule

module oadm_l0_centered_index_div_opt (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    oadm_l0_centered_index_core impl (
        .x(x), .y(y), .divide_mode(1'b1), .result(result)
    );
endmodule

module oadm_l0_centered_index_div_paceio_opt (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    oadm_l0_centered_index_core #(.FP_STYLE(1)) impl (
        .x(x), .y(y), .divide_mode(1'b1), .result(result)
    );
endmodule

module oadm_l0_centered_index_mul_opt (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    oadm_l0_centered_index_core impl (
        .x(x), .y(y), .divide_mode(1'b0), .result(result)
    );
endmodule

module oadm_runtime_plane_centered (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output wire signed [28:0] plane_exact
);
    reg [2:0] x_index;
    reg [2:0] y_index;
    reg [5:0] x_midpoint;
    reg [5:0] y_midpoint;
    reg signed [22:0] x_residual;
    reg signed [22:0] y_residual;

    always @* begin
        case (level)
            2'd0: begin
                x_index = 3'd0;
                y_index = 3'd0;
                x_midpoint = 6'd24;
                y_midpoint = 6'd24;
                x_residual = {~x_mantissa[22], x_mantissa[21:0]};
                y_residual = {~y_mantissa[22], y_mantissa[21:0]};
            end
            2'd1: begin
                x_index = {2'b00, x_mantissa[22]};
                y_index = {2'b00, y_mantissa[22]};
                x_midpoint = 6'd20 + ({5'b0, x_mantissa[22]} << 3);
                y_midpoint = 6'd20 + ({5'b0, y_mantissa[22]} << 3);
                x_residual = {{2{~x_mantissa[21]}},
                              x_mantissa[20:0]};
                y_residual = {{2{~y_mantissa[21]}},
                              y_mantissa[20:0]};
            end
            2'd2: begin
                x_index = {1'b0, x_mantissa[22:21]};
                y_index = {1'b0, y_mantissa[22:21]};
                x_midpoint = 6'd18 + ({4'b0, x_mantissa[22:21]} << 2);
                y_midpoint = 6'd18 + ({4'b0, y_mantissa[22:21]} << 2);
                x_residual = {{3{~x_mantissa[20]}},
                              x_mantissa[19:0]};
                y_residual = {{3{~y_mantissa[20]}},
                              y_mantissa[19:0]};
            end
            default: begin
                x_index = x_mantissa[22:20];
                y_index = y_mantissa[22:20];
                x_midpoint = 6'd17 + ({3'b0, x_mantissa[22:20]} << 1);
                y_midpoint = 6'd17 + ({3'b0, y_mantissa[22:20]} << 1);
                x_residual = {{4{~x_mantissa[19]}},
                              x_mantissa[18:0]};
                y_residual = {{4{~y_mantissa[19]}},
                              y_mantissa[18:0]};
            end
        endcase
    end

    wire [9:0] midpoint_product = x_midpoint * y_midpoint;
    wire signed [28:0] constant_term = $signed({4'b0, midpoint_product, 15'b0});
    wire signed [5:0] x_midpoint_signed = $signed(x_midpoint);
    wire signed [5:0] y_midpoint_signed = $signed(y_midpoint);
    wire signed [28:0] x_product = x_residual * y_midpoint_signed;
    wire signed [28:0] y_product = y_residual * x_midpoint_signed;
    wire signed [28:0] x_term = x_product >>> 4;
    wire signed [28:0] y_term = y_product >>> 4;

    wire [1:0] x_rounding_error;
    wire [1:0] y_rounding_error;
    wire [1:0] y_side_x_error;
    wire [1:0] unused_y_error;
    oadm_multilevel_rounding_lut x_rounding_lut (
        .level(level), .index(y_index),
        .value_low(x_mantissa[3:0]),
        .x_error(x_rounding_error), .y_error(unused_y_error)
    );
    oadm_multilevel_rounding_lut y_rounding_lut (
        .level(level), .index(x_index),
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

module oadm_runtime_centered_residual_opt (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output wire [31:0] result
);
    localparam CORE_WIDTH = 29;
    localparam [31:0] QUIET_NAN = 32'h7fc00000;

    wire [7:0] x_exponent = x[30:23];
    wire [7:0] y_exponent = y[30:23];
    wire [22:0] x_fraction = x[22:0];
    wire [22:0] y_fraction = y[22:0];
    wire [23:0] x_mantissa = {1'b1, x_fraction};
    wire [23:0] y_mantissa = {1'b1, y_fraction};
    wire sign_input = x[31] ^ y[31];
    wire x_nan = (x_exponent == 8'hff) && (x_fraction != 0);
    wire y_nan = (y_exponent == 8'hff) && (y_fraction != 0);
    wire x_inf = (x_exponent == 8'hff) && (x_fraction == 0);
    wire y_inf = (y_exponent == 8'hff) && (y_fraction == 0);
    wire x_zero = (x_exponent == 8'h00);
    wire y_zero = (y_exponent == 8'h00);

    reg invalid_input;
    reg infinity_input;
    reg zero_input;
    reg signed [9:0] exponent_input;
    always @* begin
        invalid_input = x_nan || y_nan;
        infinity_input = 1'b0;
        zero_input = 1'b0;
        if (divide_mode) begin
            invalid_input = invalid_input || (x_zero && y_zero)
                          || (x_inf && y_inf);
            infinity_input = !invalid_input && (x_inf || y_zero);
            zero_input = !invalid_input && !infinity_input
                       && (x_zero || y_inf);
            exponent_input = $signed({2'b0, x_exponent})
                           - $signed({2'b0, y_exponent}) + 10'sd127;
        end else begin
            invalid_input = invalid_input || (x_zero && y_inf)
                          || (x_inf && y_zero);
            infinity_input = !invalid_input && (x_inf || y_inf);
            zero_input = !invalid_input && !infinity_input
                       && (x_zero || y_zero);
            exponent_input = $signed({2'b0, x_exponent})
                           + $signed({2'b0, y_exponent}) - 10'sd127;
        end
    end

    wire signed [CORE_WIDTH-1:0] plane_full;
    oadm_runtime_plane_centered plane (
        .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .level(level), .divide_mode(divide_mode),
        .plane_exact(plane_full)
    );
    wire signed [CORE_WIDTH-1:0] shared_value =
        {{2{plane_full[26]}}, plane_full[26:0]};

    reg [6:0] coefficient;
    always @* begin
        case (level)
            2'd0: coefficient = 7'h39;
            2'd1: coefficient = y_mantissa[22] ? 7'h2a : 7'h52;
            2'd2: begin
                case (y_mantissa[22:21])
                    2'b00: coefficient = 7'h65;
                    2'b01: coefficient = 7'h44;
                    2'b10: coefficient = 7'h30;
                    default: coefficient = 7'h24;
                endcase
            end
            default: begin
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
        endcase
    end

    wire signed [35:0] shared_extended = {{7{shared_value[28]}}, shared_value};
    wire signed [35:0] scaled_product = shared_extended * coefficient;
    wire signed [CORE_WIDTH-1:0] divided_value = scaled_product[35:7];
    wire signed [CORE_WIDTH-1:0] core_value = divide_mode
        ? divided_value : shared_value;

    reg signed [CORE_WIDTH-1:0] normalized_value;
    reg signed [9:0] result_exponent;
    reg [31:0] finite_result;
    reg [31:0] result_comb;
    always @* begin
        normalized_value = core_value;
        result_exponent = exponent_input;
        if (core_value[24]) begin
            normalized_value = core_value >>> 1;
            result_exponent = result_exponent + 1;
        end else if (core_value[23]) begin
            normalized_value = core_value;
        end else if (core_value[22]) begin
            normalized_value = core_value <<< 1;
            result_exponent = result_exponent - 1;
        end else begin
            normalized_value = core_value <<< 2;
            result_exponent = result_exponent - 2;
        end

        if (result_exponent <= 0) begin
            finite_result = {sign_input, 31'b0};
        end else if (result_exponent >= 255) begin
            finite_result = {sign_input, 8'hff, 23'b0};
        end else begin
            finite_result = {sign_input, result_exponent[7:0],
                             normalized_value[22:0]};
        end

        if (invalid_input) begin
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
