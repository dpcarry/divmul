// Single-32-bit-lane specialization of the author-provided SIMDive core.
// It retains the mode=01 arithmetic, coefficient tables, segmented adders, and
// output slicing while removing unreachable 16-bit and 8-bit lane hardware.
module simdive_sisd32_coeff (
    input  wire       divide_mode,
    input  wire [2:0] frac_a,
    input  wire [2:0] frac_b,
    output reg  [31:0] error_coeff
);
    reg [15:0] mul_coeff;
    reg [15:0] div_coeff;

    always @* begin
        mul_coeff = 16'd0;
        div_coeff = 16'd0;
        case ({frac_a, frac_b})
            6'b000000: begin mul_coeff=16'b0000000000111101; div_coeff=16'b0000000000100001; end
            6'b000001: begin mul_coeff=16'b0000000100101101; div_coeff=16'b0000100111100011; end
            6'b000010: begin mul_coeff=16'b0000000111101000; div_coeff=16'b0001000001111110; end
            6'b000011: begin mul_coeff=16'b0000001001000000; div_coeff=16'b0001000101000111; end
            6'b000100: begin mul_coeff=16'b0000001011011010; div_coeff=16'b0001001000010010; end
            6'b000101: begin mul_coeff=16'b0000010001100000; div_coeff=16'b0001000000000000; end
            6'b000110: begin mul_coeff=16'b0000010011010010; div_coeff=16'b0000100111011000; end
            6'b000111: begin mul_coeff=16'b0000001001100111; div_coeff=16'b0000000100000000; end
            6'b001000: begin mul_coeff=16'b0000000100101101; div_coeff=16'b0000000010111011; end
            6'b001001: begin mul_coeff=16'b0000001110111010; div_coeff=16'b0000000100000001; end
            6'b001010: begin mul_coeff=16'b0000011000000010; div_coeff=16'b0000100011111001; end
            6'b001011: begin mul_coeff=16'b0000100100000100; div_coeff=16'b0000110001100111; end
            6'b001100: begin mul_coeff=16'b0000110000111000; div_coeff=16'b0000110101110101; end
            6'b001101: begin mul_coeff=16'b0000100000001100; div_coeff=16'b0000101111000101; end
            6'b001110: begin mul_coeff=16'b0000101000100100; div_coeff=16'b0000100000110101; end
            6'b001111: begin mul_coeff=16'b0000001111000000; div_coeff=16'b0000001100110110; end
            6'b010000: begin mul_coeff=16'b0000000111101000; div_coeff=16'b0000000111100001; end
            6'b010001: begin mul_coeff=16'b0000011000000010; div_coeff=16'b0000001010101010; end
            6'b010010: begin mul_coeff=16'b0000101010110100; div_coeff=16'b0000000101011011; end
            6'b010011: begin mul_coeff=16'b0000111111010000; div_coeff=16'b0000011001011111; end
            6'b010100: begin mul_coeff=16'b0001010000000000; div_coeff=16'b0000100011001100; end
            6'b010101: begin mul_coeff=16'b0000111000000000; div_coeff=16'b0000100001111100; end
            6'b010110: begin mul_coeff=16'b0000100100000000; div_coeff=16'b0000010110101000; end
            6'b010111: begin mul_coeff=16'b0000001100110011; div_coeff=16'b0000001011101000; end
            6'b011000: begin mul_coeff=16'b0000001001000000; div_coeff=16'b0000001100000011; end
            6'b011001: begin mul_coeff=16'b0000100100000100; div_coeff=16'b0000010011011110; end
            6'b011010: begin mul_coeff=16'b0000111111010000; div_coeff=16'b0000001111100000; end
            6'b011011: begin mul_coeff=16'b0001010000000000; div_coeff=16'b0000000110011001; end
            6'b011100: begin mul_coeff=16'b0001000010001000; div_coeff=16'b0000010001101110; end
            6'b011101: begin mul_coeff=16'b0000110000000000; div_coeff=16'b0000010111111001; end
            6'b011110: begin mul_coeff=16'b0000011100011000; div_coeff=16'b0000010010001010; end
            6'b011111: begin mul_coeff=16'b0000001010000000; div_coeff=16'b0000001000000011; end
            6'b100000: begin mul_coeff=16'b0000001011011010; div_coeff=16'b0000001001001111; end
            6'b100001: begin mul_coeff=16'b0000110000111000; div_coeff=16'b0000011111110101; end
            6'b100010: begin mul_coeff=16'b0001010000000000; div_coeff=16'b0000011111111011; end
            6'b100011: begin mul_coeff=16'b0001000010001000; div_coeff=16'b0000010000110010; end
            6'b100100: begin mul_coeff=16'b0000110100001100; div_coeff=16'b0000000110011110; end
            6'b100101: begin mul_coeff=16'b0000100100101000; div_coeff=16'b0000001010111111; end
            6'b100110: begin mul_coeff=16'b0000010100111010; div_coeff=16'b0000001101000100; end
            6'b100111: begin mul_coeff=16'b0000000110110011; div_coeff=16'b0000000101101011; end
            6'b101000: begin mul_coeff=16'b0000010001100000; div_coeff=16'b0000010000110001; end
            6'b101001: begin mul_coeff=16'b0000100000001100; div_coeff=16'b0000100111101001; end
            6'b101010: begin mul_coeff=16'b0000111000000000; div_coeff=16'b0000101111000001; end
            6'b101011: begin mul_coeff=16'b0000110000000000; div_coeff=16'b0000100111100011; end
            6'b101100: begin mul_coeff=16'b0000100100101000; div_coeff=16'b0000011000000101; end
            6'b101101: begin mul_coeff=16'b0000011011000000; div_coeff=16'b0000000110000111; end
            6'b101110: begin mul_coeff=16'b0000010000000000; div_coeff=16'b0000000110101100; end
            6'b101111: begin mul_coeff=16'b0000000110000000; div_coeff=16'b0000000100100101; end
            6'b110000: begin mul_coeff=16'b0000010011010010; div_coeff=16'b0000010100000110; end
            6'b110001: begin mul_coeff=16'b0000101000100100; div_coeff=16'b0000111000000000; end
            6'b110010: begin mul_coeff=16'b0000100100000000; div_coeff=16'b0000111000100001; end
            6'b110011: begin mul_coeff=16'b0000011100011000; div_coeff=16'b0000111100000000; end
            6'b110100: begin mul_coeff=16'b0000010100111010; div_coeff=16'b0000101111100110; end
            6'b110101: begin mul_coeff=16'b0000010000000000; div_coeff=16'b0000011000011001; end
            6'b110110: begin mul_coeff=16'b0000001010000010; div_coeff=16'b0000000101110011; end
            6'b110111: begin mul_coeff=16'b0000000011100000; div_coeff=16'b0000000001111010; end
            6'b111000: begin mul_coeff=16'b0000001001100111; div_coeff=16'b0000011001010000; end
            6'b111001: begin mul_coeff=16'b0000001111000000; div_coeff=16'b0000111100001101; end
            6'b111010: begin mul_coeff=16'b0000001100110011; div_coeff=16'b0001010010111010; end
            6'b111011: begin mul_coeff=16'b0000001010000000; div_coeff=16'b0001010001010101; end
            6'b111100: begin mul_coeff=16'b0000000110110011; div_coeff=16'b0001000100000000; end
            6'b111101: begin mul_coeff=16'b0000000110000000; div_coeff=16'b0000101101011010; end
            6'b111110: begin mul_coeff=16'b0000000011100000; div_coeff=16'b0000011011000100; end
            6'b111111: begin mul_coeff=16'b0000000000110001; div_coeff=16'b0000000101100011; end
        endcase
        error_coeff = {divide_mode ? div_coeff : mul_coeff, 16'd0};
    end
endmodule

module simdive_sisd32_lod (
    input  wire [31:0] a,
    output reg  [4:0]  pos
);
    integer i;
    reg found;
    always @* begin
        pos = 5'd0;
        found = 1'b0;
        for (i = 31; i >= 0; i = i - 1) begin
            if (!found && a[i]) begin
                pos = i[4:0];
                found = 1'b1;
            end
        end
    end
endmodule

module simdive_sisd32_set_frac (
    input  wire [31:0] a,
    input  wire [4:0]  lod_pos,
    output wire [31:0] out
);
    wire [63:0] temp = {1'b0, a, 31'd0};
    assign out = temp >> lod_pos;
endmodule

module simdive_sisd32_core (
    input  wire [31:0] input1_i,
    input  wire [31:0] input2_i,
    input  wire        divide_mode,
    output wire [63:0] result_o_hybrid
);
    wire [4:0] ka, kb;
    wire [31:0] fraction_a, fraction_b;
    wire [31:0] correction;
    wire [8:0] add_b [0:3];
    wire [8:0] add_a [0:3];
    wire [31:0] corrected_b = {add_b[3][7:0], add_b[2][7:0],
                               add_b[1][7:0], add_b[0][7:0]};
    wire [31:0] signed_correction = divide_mode ? (~corrected_b + 1'b1)
                                                : corrected_b;
    wire [6:0] log_result;
    wire [31:0] mantissa_result = {add_a[3][7:0], add_a[2][7:0],
                                   add_a[1][7:0], add_a[0][7:0]};
    wire [95:0] shift_seed = {64'd0, 1'b1, mantissa_result[30:0]};
    wire [95:0] shifted = shift_seed << log_result;

    simdive_sisd32_lod lod_a(.a(input1_i), .pos(ka));
    simdive_sisd32_lod lod_b(.a(input2_i), .pos(kb));
    simdive_sisd32_set_frac frac_a(.a(input1_i), .lod_pos(ka), .out(fraction_a));
    simdive_sisd32_set_frac frac_b(.a(input2_i), .lod_pos(kb), .out(fraction_b));
    simdive_sisd32_coeff coeff(
        .divide_mode(divide_mode), .frac_a(fraction_a[30:28]),
        .frac_b(fraction_b[30:28]), .error_coeff(correction));

    add_8_bit b0(.a(fraction_b[7:0]),   .b(correction[7:0]),   .cin(1'b0),      .result(add_b[0]));
    add_8_bit b1(.a(fraction_b[15:8]),  .b(correction[15:8]),  .cin(add_b[0][8]), .result(add_b[1]));
    add_8_bit b2(.a(fraction_b[23:16]), .b(correction[23:16]), .cin(add_b[1][8]), .result(add_b[2]));
    add_8_bit b3(.a(fraction_b[31:24]), .b(correction[31:24]), .cin(add_b[2][8]), .result(add_b[3]));

    add_8_bit a0(.a(fraction_a[7:0]),   .b(signed_correction[7:0]),   .cin(add_b[3][8]), .result(add_a[0]));
    add_8_bit a1(.a(fraction_a[15:8]),  .b(signed_correction[15:8]),  .cin(add_a[0][8]), .result(add_a[1]));
    add_8_bit a2(.a(fraction_a[23:16]), .b(signed_correction[23:16]), .cin(add_a[1][8]), .result(add_a[2]));
    add_8_bit a3(.a(fraction_a[31:24]), .b(signed_correction[31:24]), .cin(add_a[2][8]), .result(add_a[3]));

    add_4_bit #(.N(5)) exponent_add(
        .func_bit(!divide_mode), .a(ka), .b(kb), .c(add_a[3][7]),
        .result(log_result[6:0]));
    assign result_o_hybrid = shifted[94:31];
endmodule

module simdive_sisd32_fp32_wrapper (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire        divide_mode,
    output wire [31:0] result
);
    wire [22:0] fraction_x;
    wire [22:0] fraction_y;
    wire [23:0] mantissa_x = {1'b1, fraction_x};
    wire [23:0] mantissa_y = {1'b1, fraction_y};
    wire [31:0] core_x = divide_mode ? {mantissa_x, 8'd0} : {8'd0, mantissa_x};
    wire [31:0] core_y = {8'd0, mantissa_y};
    wire [63:0] core_result;
    reg [22:0] result_fraction;
    reg signed [2:0] exponent_adjust;

    simdive_sisd32_core core(
        .input1_i(core_x), .input2_i(core_y), .divide_mode(divide_mode),
        .result_o_hybrid(core_result));

    always @* begin
        result_fraction = 23'd0;
        exponent_adjust = 3'sd0;
        if (!divide_mode) begin
            if (core_result >= 64'h0000800000000000) begin
                result_fraction = core_result >> 24;
                exponent_adjust = 3'sd1;
            end else begin
                result_fraction = core_result >> 23;
            end
        end else begin
            if (core_result >= 64'd512) begin
                result_fraction = (core_result >> 1) - 64'd256;
                exponent_adjust = 3'sd1;
            end else if (core_result >= 64'd256) begin
                result_fraction = (core_result - 64'd256) << 15;
            end else begin
                result_fraction = (core_result - 64'd128) << 16;
                exponent_adjust = -3'sd1;
            end
        end
    end

    fp32_normal_finite_wrapper shared_wrapper(
        .x(x), .y(y), .divide_mode(divide_mode),
        .fraction_x(fraction_x), .fraction_y(fraction_y),
        .result_fraction(result_fraction),
        .exponent_adjust(exponent_adjust), .result(result));
endmodule
