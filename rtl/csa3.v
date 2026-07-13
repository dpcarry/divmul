module csa3 #(
    parameter WIDTH = 29
) (
    input  wire signed [WIDTH-1:0] input_a,
    input  wire signed [WIDTH-1:0] input_b,
    input  wire signed [WIDTH-1:0] input_c,
    output wire signed [WIDTH-1:0] sum,
    output wire signed [WIDTH-1:0] carry
);
    wire [WIDTH-1:0] carry_unshifted;

    assign sum = input_a ^ input_b ^ input_c;
    assign carry_unshifted = (input_a & input_b)
                           | (input_a & input_c)
                           | (input_b & input_c);
    assign carry = {carry_unshifted[WIDTH-2:0], 1'b0};
endmodule
