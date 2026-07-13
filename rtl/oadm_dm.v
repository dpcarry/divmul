module oadm_dm (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output reg  [31:0] result
);
    localparam [31:0] QUIET_NAN = 32'h7fc00000;
    localparam signed [28:0] ONE_Q = 29'sd8388608;
    localparam signed [28:0] TWO_Q = 29'sd16777216;

    wire sign_out;
    wire [7:0] x_exponent;
    wire [7:0] y_exponent;
    wire [22:0] x_fraction;
    wire [22:0] y_fraction;
    wire x_nan;
    wire y_nan;
    wire x_inf;
    wire y_inf;
    wire x_zero;
    wire y_zero;
    wire [23:0] x_mantissa;
    wire [23:0] y_mantissa;
    wire signed [28:0] core_value;

    reg invalid_operation;
    reg infinity_result;
    reg zero_result;
    reg signed [28:0] normalized_value;
    reg signed [11:0] result_exponent;
    reg [31:0] finite_result;

    assign sign_out = x[31] ^ y[31];
    assign x_exponent = x[30:23];
    assign y_exponent = y[30:23];
    assign x_fraction = x[22:0];
    assign y_fraction = y[22:0];

    assign x_nan = (x_exponent == 8'hff) && (x_fraction != 23'b0);
    assign y_nan = (y_exponent == 8'hff) && (y_fraction != 23'b0);
    assign x_inf = (x_exponent == 8'hff) && (x_fraction == 23'b0);
    assign y_inf = (y_exponent == 8'hff) && (y_fraction == 23'b0);

    // All exponent-zero operands, including subnormals, are flushed to zero.
    assign x_zero = (x_exponent == 8'h00);
    assign y_zero = (y_exponent == 8'h00);
    assign x_mantissa = {1'b1, x_fraction};
    assign y_mantissa = {1'b1, y_fraction};

    oadm_core mantissa_core (
        .x_mantissa(x_mantissa),
        .y_mantissa(y_mantissa),
        .level(level),
        .divide_mode(divide_mode),
        .mantissa_value(core_value)
    );

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

    // Normalize the Q5.23 signed core result and form a truncated single-precision result.
    always @* begin
        normalized_value = core_value;
        if (divide_mode) begin
            result_exponent = $signed({1'b0, x_exponent})
                            - $signed({1'b0, y_exponent}) + 12'sd127;
        end else begin
            result_exponent = $signed({1'b0, x_exponent})
                            + $signed({1'b0, y_exponent}) - 12'sd127;
        end

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
            finite_result = {sign_out, 31'b0};
        end else if (result_exponent >= 255) begin
            finite_result = {sign_out, 8'hff, 23'b0};
        end else begin
            finite_result = {sign_out, result_exponent[7:0],
                             normalized_value[22:0]};
        end
    end

    always @* begin
        if (invalid_operation) begin
            result = QUIET_NAN;
        end else if (infinity_result) begin
            result = {sign_out, 8'hff, 23'b0};
        end else if (zero_result) begin
            result = {sign_out, 31'b0};
        end else begin
            result = finite_result;
        end
    end
endmodule
