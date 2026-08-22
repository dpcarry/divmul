module oadm_multilevel_opt #(
    parameter integer FIXED_LEVEL = -1,
    parameter integer FP_STYLE = 0
) (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output wire [31:0] result
);
    localparam CORE_WIDTH = 29;
    localparam signed [CORE_WIDTH-1:0] ONE_Q = 29'sd8388608;
    localparam signed [CORE_WIDTH-1:0] TWO_Q = 29'sd16777216;
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

    localparam [1:0] FIXED_LEVEL_VALUE = FIXED_LEVEL;
    wire [1:0] active_level = (FIXED_LEVEL >= 0)
        ? FIXED_LEVEL_VALUE : level;
    wire signed [CORE_WIDTH-1:0] plane_full;
    generate
        if (FIXED_LEVEL >= 0) begin : fixed_centered_plane
            oadm_fixed_plane_centered #(.LEVEL(FIXED_LEVEL)) plane (
                .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
                .divide_mode(divide_mode), .plane_exact(plane_full)
            );
        end else begin : multilevel_plane
            oadm_multilevel_plane_direct plane (
                .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
                .level(active_level), .divide_mode(divide_mode),
                .plane_exact(plane_full)
            );
        end
    endgenerate
    wire signed [CORE_WIDTH-1:0] shared_value =
        {{2{plane_full[26]}}, plane_full[26:0]};

    reg [6:0] coefficient;
    always @* begin
        case (active_level)
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
        // Every L0-L3 MUL/DIV core is in [0.25, 4), so the Q23 integer
        // bits select all reachable normalization cases directly.
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

module oadm_runtime_opt (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_multilevel_opt impl (
        .x(x), .y(y), .level(level), .divide_mode(divide_mode),
        .result(result)
    );
endmodule

module oadm_runtime_div_opt (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, output wire [31:0] result
);
    oadm_multilevel_opt impl (
        .x(x), .y(y), .level(level), .divide_mode(1'b1),
        .result(result)
    );
endmodule

module oadm_fixed_l0_opt (
    input wire [31:0] x, input wire [31:0] y,
    input wire divide_mode, output wire [31:0] result
);
    oadm_multilevel_opt #(.FIXED_LEVEL(0)) impl (
        .x(x), .y(y), .level(2'd0), .divide_mode(divide_mode),
        .result(result)
    );
endmodule

module oadm_fixed_l1_opt (
    input wire [31:0] x, input wire [31:0] y,
    input wire divide_mode, output wire [31:0] result
);
    oadm_multilevel_opt #(.FIXED_LEVEL(1)) impl (
        .x(x), .y(y), .level(2'd1), .divide_mode(divide_mode),
        .result(result)
    );
endmodule

module oadm_fixed_l2_opt (
    input wire [31:0] x, input wire [31:0] y,
    input wire divide_mode, output wire [31:0] result
);
    oadm_multilevel_opt #(.FIXED_LEVEL(2)) impl (
        .x(x), .y(y), .level(2'd2), .divide_mode(divide_mode),
        .result(result)
    );
endmodule

module oadm_fixed_l3_opt (
    input wire [31:0] x, input wire [31:0] y,
    input wire divide_mode, output wire [31:0] result
);
    oadm_multilevel_opt #(.FIXED_LEVEL(3)) impl (
        .x(x), .y(y), .level(2'd3), .divide_mode(divide_mode),
        .result(result)
    );
endmodule

module oadm_fixed_l0_div_opt (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_multilevel_opt #(.FIXED_LEVEL(0)) impl (
        .x(x), .y(y), .level(2'd0), .divide_mode(1'b1), .result(result)
    );
endmodule

module oadm_fixed_l1_div_opt (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_multilevel_opt #(.FIXED_LEVEL(1)) impl (
        .x(x), .y(y), .level(2'd1), .divide_mode(1'b1), .result(result)
    );
endmodule

module oadm_fixed_l2_div_opt (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_multilevel_opt #(.FIXED_LEVEL(2)) impl (
        .x(x), .y(y), .level(2'd2), .divide_mode(1'b1), .result(result)
    );
endmodule

module oadm_fixed_l3_div_opt (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_multilevel_opt #(.FIXED_LEVEL(3)) impl (
        .x(x), .y(y), .level(2'd3), .divide_mode(1'b1), .result(result)
    );
endmodule

module oadm_fixed_l0_div_paceio_opt (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_multilevel_opt #(.FIXED_LEVEL(0), .FP_STYLE(1)) impl (
        .x(x), .y(y), .level(2'd0), .divide_mode(1'b1), .result(result)
    );
endmodule

module oadm_fixed_l1_div_paceio_opt (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_multilevel_opt #(.FIXED_LEVEL(1), .FP_STYLE(1)) impl (
        .x(x), .y(y), .level(2'd1), .divide_mode(1'b1), .result(result)
    );
endmodule

module oadm_fixed_l2_div_paceio_opt (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_multilevel_opt #(.FIXED_LEVEL(2), .FP_STYLE(1)) impl (
        .x(x), .y(y), .level(2'd2), .divide_mode(1'b1), .result(result)
    );
endmodule

module oadm_fixed_l3_div_paceio_opt (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_multilevel_opt #(.FIXED_LEVEL(3), .FP_STYLE(1)) impl (
        .x(x), .y(y), .level(2'd3), .divide_mode(1'b1), .result(result)
    );
endmodule
