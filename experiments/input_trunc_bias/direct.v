module input_trunc_core #(
    parameter integer BITS = 3,
    parameter integer BIAS = 1,
    parameter integer DIVIDE = 0
) (
    input wire [31:0] x, y,
    output wire [31:0] result
);
    wire [22:0] fx, fy;
    // Implicit one, retained fraction, and fixed half-bin compensation bit.
    wire [BITS+1:0] a = {1'b1, fx[22 -: BITS], (BIAS != 0)};
    wire [BITS+1:0] b = {1'b1, fy[22 -: BITS], (BIAS != 0)};
    wire [24:0] q23;
    generate
        if (DIVIDE) begin : division
            localparam integer F = BITS + 2;
            wire [2*BITS+3:0] numerator = {a, {F{1'b0}}};
            wire [2*BITS+3:0] quotient = numerator / b;
            assign q23 = {quotient[F:0], {(23-F){1'b0}}};
        end else begin : multiplication
            localparam integer F = 2 * (BITS + 1);
            wire [2*BITS+3:0] product = a * b;
            if (F <= 23)
                assign q23 = {product, {(23-F){1'b0}}};
            else
                assign q23 = product >> (F - 23);
        end
    endgenerate
    reg [22:0] fraction;
    reg signed [2:0] adjustment;
    always @* begin
        if (q23[24]) begin
            fraction = q23[23:1]; adjustment = 3'sd1;
        end else if (q23[23]) begin
            fraction = q23[22:0]; adjustment = 3'sd0;
        end else begin
            fraction = {q23[21:0], 1'b0}; adjustment = -3'sd1;
        end
    end
    fp32_normal_finite_wrapper wrapper (
        .x(x), .y(y), .divide_mode(DIVIDE != 0),
        .fraction_x(fx), .fraction_y(fy), .result_fraction(fraction),
        .exponent_adjust(adjustment), .result(result)
    );
endmodule
