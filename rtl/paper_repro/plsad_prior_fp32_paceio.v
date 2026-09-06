// Paper-derived reconstruction of Wu et al., TCAS-I 2024, Eq. (14).
// The FP32 configuration keeps the ten most-significant fraction bits and
// evaluates one of eight shift-add planes selected by the divisor fraction.

module plsad_loa4 #(
    parameter integer EXACT_MSB_BITS = 8
) (
    input  wire [14:0] x0,
    input  wire [14:0] x1,
    input  wire [14:0] x2,
    input  wire [14:0] x3,
    output wire [14:0] sum
);
    generate
        if (EXACT_MSB_BITS == 15) begin : exact_addition
            wire [16:0] exact_sum =
                {2'b0, x0} + {2'b0, x1} +
                {2'b0, x2} + {2'b0, x3};
            assign sum = exact_sum[14:0];
        end else begin : loa_addition
            localparam integer LOWER_BITS = 15 - EXACT_MSB_BITS;
            wire [LOWER_BITS-1:0] lower_or =
                x0[LOWER_BITS-1:0] | x1[LOWER_BITS-1:0] |
                x2[LOWER_BITS-1:0] | x3[LOWER_BITS-1:0];
            wire [2:0] boundary_ones =
                {2'b0, x0[LOWER_BITS-1]} + {2'b0, x1[LOWER_BITS-1]} +
                {2'b0, x2[LOWER_BITS-1]} + {2'b0, x3[LOWER_BITS-1]};
            wire [1:0] boundary_carry = boundary_ones[2:1];
            wire [EXACT_MSB_BITS+1:0] upper_sum =
                {2'b0, x0[14:LOWER_BITS]} +
                {2'b0, x1[14:LOWER_BITS]} +
                {2'b0, x2[14:LOWER_BITS]} +
                {2'b0, x3[14:LOWER_BITS]} +
                {{EXACT_MSB_BITS{1'b0}}, boundary_carry};
            assign sum = {upper_sum[EXACT_MSB_BITS-1:0], lower_or};
        end
    endgenerate
endmodule


module plsad_mantissa_div #(
    parameter integer EXACT_MSB_BITS = 8
) (
    input  wire [9:0] fraction_x,
    input  wire [9:0] fraction_y,
    output wire [9:0] fraction_out,
    output wire       shift
);
    // Q1.14 operands. FP32 PLSAD truncates each 23-bit fraction to 10 bits.
    wire [14:0] fx = {1'b0, fraction_x, 4'b0};
    wire [14:0] fy = {1'b0, fraction_y, 4'b0};
    reg  [14:0] x0;
    reg  [14:0] x1;
    reg  [14:0] x2;
    reg  [14:0] x3;

    // Negative shift terms use one's complement as described with Fig. 4.
    // The resulting one-LSB offsets are part of the finite-width datapath.
    always @* begin
        case (fraction_y[9:7])
            3'd0: begin
                x0 = fx;
                x1 = ~fy;
                x2 = ~(fy >> 2);
                x3 = 15'd16384;  // 1
            end
            3'd1: begin
                x0 = fx;
                x1 = ~(fx >> 3);
                x2 = ~fy;
                x3 = 15'd16640;  // 65/64
            end
            3'd2: begin
                x0 = fx;
                x1 = ~(fx >> 2);
                x2 = ~fy;
                x3 = 15'd17664;  // 69/64
            end
            3'd3: begin
                x0 = fx;
                x1 = ~(fx >> 2);
                x2 = ~(fy >> 1);
                x3 = 15'd14592;  // 57/64
            end
            3'd4: begin
                x0 = fx >> 1;
                x1 = fx >> 3;
                x2 = ~(fy >> 1);
                x3 = 15'd15232;  // 119/128
            end
            3'd5: begin
                x0 = fx >> 1;
                x1 = fx >> 3;
                x2 = ~(fy >> 1);
                x3 = 15'd15104;  // 59/64
            end
            3'd6: begin
                x0 = fx >> 1;
                x1 = fx >> 4;
                x2 = ~(fy >> 1);
                x3 = 15'd15616;  // 61/64
            end
            default: begin
                x0 = fx >> 1;
                x1 = fy >> 3;
                x2 = ~(fy >> 1);
                x3 = 15'd14336;  // 7/8
            end
        endcase
    end

    wire [14:0] quotient;
    plsad_loa4 #(.EXACT_MSB_BITS(EXACT_MSB_BITS)) approximate_sum (
        .x0(x0), .x1(x1), .x2(x2), .x3(x3), .sum(quotient)
    );

    assign shift = ~quotient[14];
    wire [14:0] normalized = shift ? (quotient << 1) : quotient;
    assign fraction_out = normalized[13:4];
endmodule


module plsad_fp32_paceio #(
    parameter integer EXACT_MSB_BITS = 8
) (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] out
);
    wire [9:0] fraction_x;
    wire [9:0] fraction_y;
    wire [9:0] fraction_out;
    wire shift;

    FP_DIV_WRAPPER_32 #(
        .width_trunc(13), .width_mantissa(10), .width_shift(1)
    ) wrapper (
        .x(x), .y(y), .out(out),
        .mantissa_x(fraction_x), .mantissa_y(fraction_y),
        .mantissa_out(fraction_out), .shift(shift)
    );

    plsad_mantissa_div #(.EXACT_MSB_BITS(EXACT_MSB_BITS)) core (
        .fraction_x(fraction_x), .fraction_y(fraction_y),
        .fraction_out(fraction_out), .shift(shift)
    );
endmodule


module plsad_m4_fp32_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] out
);
    plsad_fp32_paceio #(.EXACT_MSB_BITS(4)) impl (.x(x), .y(y), .out(out));
endmodule

module plsad_m6_fp32_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] out
);
    plsad_fp32_paceio #(.EXACT_MSB_BITS(6)) impl (.x(x), .y(y), .out(out));
endmodule

module plsad_m8_fp32_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] out
);
    plsad_fp32_paceio #(.EXACT_MSB_BITS(8)) impl (.x(x), .y(y), .out(out));
endmodule
