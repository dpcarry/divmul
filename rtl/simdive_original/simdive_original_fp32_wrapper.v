// FP32 normal-finite adapter around the authors' unmodified SIMDive 32-bit core.
// SIMDive's single-lane DIV result is integer-valued, so the dividend is shifted
// by eight bits to retain a Q8 quotient without overflowing its 32-bit input.
module simdive_original_fp32_wrapper (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire        divide_mode,
    output reg  [31:0] result
);
    wire x_normal = (x[30:23] != 8'd0) && (x[30:23] != 8'hff);
    wire y_normal = (y[30:23] != 8'd0) && (y[30:23] != 8'hff);
    wire [23:0] mantissa_x = {1'b1, x[22:0]};
    wire [23:0] mantissa_y = {1'b1, y[22:0]};

    // mode=01 selects one 32-bit lane; func=0 selects MUL and func=1 selects DIV.
    wire [31:0] core_x = divide_mode ? {mantissa_x, 8'd0} : {8'd0, mantissa_x};
    wire [31:0] core_y = {8'd0, mantissa_y};
    wire [63:0] core_result;
    reg [63:0] magnitude;
    reg [22:0] fraction;
    integer exponent;

    top_module #(.N(32), .lgN(5)) simdive_original_core (
        .input1_i(core_x),
        .input2_i(core_y),
        .mode(2'b01),
        .func(divide_mode ? 4'd1 : 4'd0),
        .result_o_hybrid(core_result)
    );

    always @* begin
        result = 32'd0;
        magnitude = core_result;
        fraction = 23'd0;
        exponent = 0;

        if (x_normal && y_normal) begin
            if (!divide_mode) begin
                // core_result represents an approximate product of two Q23 mantissas.
                if (magnitude >= 64'h0000800000000000) begin
                    fraction = magnitude >> 24;
                    exponent = x[30:23] + y[30:23] - 126;
                end else begin
                    fraction = magnitude >> 23;
                    exponent = x[30:23] + y[30:23] - 127;
                end
            end else begin
                // core_result is an approximate Q8 quotient of (mantissa_x << 8)/mantissa_y.
                if (magnitude >= 64'd512) begin
                    fraction = (magnitude >> 1) - 64'd256;
                    exponent = x[30:23] - y[30:23] + 128;
                end else if (magnitude >= 64'd256) begin
                    fraction = (magnitude - 64'd256) << 15;
                    exponent = x[30:23] - y[30:23] + 127;
                end else if (magnitude >= 64'd128) begin
                    fraction = (magnitude - 64'd128) << 16;
                    exponent = x[30:23] - y[30:23] + 126;
                end
            end

            if (exponent <= 0)
                result = 32'd0;
            else if (exponent >= 255)
                result = {x[31] ^ y[31], 8'hff, 23'd0};
            else
                result = {x[31] ^ y[31], exponent[7:0], fraction};
        end else if ((x == 32'd0) || (y == 32'd0)) begin
            result = 32'd0;
        end else begin
            result = 32'h7fc00000;
        end
    end
endmodule
