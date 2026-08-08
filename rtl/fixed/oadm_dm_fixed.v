module oadm_dm_fixed #(
    parameter APPROX_LEVEL = 0
) (
    input  wire        clk,
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire        divide_mode,
    output reg  [31:0] result
);
    localparam [31:0] QUIET_NAN = 32'h7fc00000;
    localparam signed [28:0] ONE_Q = 29'sd8388608;
    localparam signed [28:0] TWO_Q = 29'sd16777216;

    wire sign_out = x[31] ^ y[31];
    wire [7:0] x_exponent = x[30:23];
    wire [7:0] y_exponent = y[30:23];
    wire [22:0] x_fraction = x[22:0];
    wire [22:0] y_fraction = y[22:0];
    wire x_nan = (x_exponent == 8'hff) && (x_fraction != 0);
    wire y_nan = (y_exponent == 8'hff) && (y_fraction != 0);
    wire x_inf = (x_exponent == 8'hff) && (x_fraction == 0);
    wire y_inf = (y_exponent == 8'hff) && (y_fraction == 0);
    wire x_zero = (x_exponent == 8'h00);
    wire y_zero = (y_exponent == 8'h00);
    wire [23:0] x_mantissa = {1'b1, x_fraction};
    wire [23:0] y_mantissa = {1'b1, y_fraction};
    wire signed [28:0] core_value;

    oadm_core_fixed #(.APPROX_LEVEL(APPROX_LEVEL)) mantissa_core (
        .clk(clk),
        .x_mantissa(x_mantissa),
        .y_mantissa(y_mantissa),
        .divide_mode(divide_mode),
        .mantissa_value(core_value)
    );

    reg invalid_operation;
    reg infinity_result;
    reg zero_result;
    always @* begin
        invalid_operation = x_nan || y_nan;
        infinity_result = 1'b0;
        zero_result = 1'b0;
        if (divide_mode) begin
            invalid_operation = invalid_operation
                              || (x_zero && y_zero) || (x_inf && y_inf);
            infinity_result = !invalid_operation && (x_inf || y_zero);
            zero_result = !invalid_operation && !infinity_result
                        && (x_zero || y_inf);
        end else begin
            invalid_operation = invalid_operation
                              || (x_zero && y_inf) || (x_inf && y_zero);
            infinity_result = !invalid_operation && (x_inf || y_inf);
            zero_result = !invalid_operation && !infinity_result
                        && (x_zero || y_zero);
        end
    end

    reg sign_s1, sign_s2, sign_s3, sign_s4, sign_s5, sign_s6;
    reg invalid_s1, invalid_s2, invalid_s3, invalid_s4, invalid_s5, invalid_s6;
    reg infinity_s1, infinity_s2, infinity_s3, infinity_s4, infinity_s5, infinity_s6;
    reg zero_s1, zero_s2, zero_s3, zero_s4, zero_s5, zero_s6;
    reg signed [11:0] exponent_s1;
    reg signed [11:0] exponent_s2;
    reg signed [11:0] exponent_s3;
    reg signed [11:0] exponent_s4;
    reg signed [11:0] exponent_s5;
    reg signed [11:0] exponent_s6;

    always @(posedge clk) begin
        sign_s1 <= sign_out;
        invalid_s1 <= invalid_operation;
        infinity_s1 <= infinity_result;
        zero_s1 <= zero_result;
        if (divide_mode) begin
            exponent_s1 <= $signed({1'b0, x_exponent})
                         - $signed({1'b0, y_exponent}) + 12'sd127;
        end else begin
            exponent_s1 <= $signed({1'b0, x_exponent})
                         + $signed({1'b0, y_exponent}) - 12'sd127;
        end
        sign_s2 <= sign_s1;
        invalid_s2 <= invalid_s1;
        infinity_s2 <= infinity_s1;
        zero_s2 <= zero_s1;
        exponent_s2 <= exponent_s1;
        sign_s3 <= sign_s2;
        invalid_s3 <= invalid_s2;
        infinity_s3 <= infinity_s2;
        zero_s3 <= zero_s2;
        exponent_s3 <= exponent_s2;
        sign_s4 <= sign_s3;
        invalid_s4 <= invalid_s3;
        infinity_s4 <= infinity_s3;
        zero_s4 <= zero_s3;
        exponent_s4 <= exponent_s3;
        sign_s5 <= sign_s4;
        invalid_s5 <= invalid_s4;
        infinity_s5 <= infinity_s4;
        zero_s5 <= zero_s4;
        exponent_s5 <= exponent_s4;
        sign_s6 <= sign_s5;
        invalid_s6 <= invalid_s5;
        infinity_s6 <= infinity_s5;
        zero_s6 <= zero_s5;
        exponent_s6 <= exponent_s5;
    end

    reg signed [28:0] normalized_value;
    reg signed [11:0] result_exponent;
    reg [31:0] finite_result;
    always @* begin
        normalized_value = core_value;
        result_exponent = exponent_s6;
        if (core_value >= TWO_Q) begin
            normalized_value = core_value >>> 1;
            result_exponent = result_exponent + 1;
        end else if (core_value >= ONE_Q) begin
            normalized_value = core_value;
        end else if (core_value >= (ONE_Q >>> 1)) begin
            normalized_value = core_value <<< 1;
            result_exponent = result_exponent - 1;
        end else if (core_value >= (ONE_Q >>> 2)) begin
            normalized_value = core_value <<< 2;
            result_exponent = result_exponent - 2;
        end else begin
            normalized_value = core_value <<< 3;
            result_exponent = result_exponent - 3;
        end

        if ((core_value <= 0) || (result_exponent <= 0)) begin
            finite_result = {sign_s6, 31'b0};
        end else if (result_exponent >= 255) begin
            finite_result = {sign_s6, 8'hff, 23'b0};
        end else begin
            finite_result = {sign_s6, result_exponent[7:0],
                             normalized_value[22:0]};
        end
    end

    always @(posedge clk) begin
        if (invalid_s6) begin
            result <= QUIET_NAN;
        end else if (infinity_s6) begin
            result <= {sign_s6, 8'hff, 23'b0};
        end else if (zero_s6) begin
            result <= {sign_s6, 31'b0};
        end else begin
            result <= finite_result;
        end
    end
endmodule
