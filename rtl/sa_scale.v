module sa_scale #(
    parameter VALUE_WIDTH = 29,
    parameter COEFF_WIDTH = 24
) (
    input  wire signed [VALUE_WIDTH-1:0] value,
    input  wire        [COEFF_WIDTH-1:0] coefficient,
    output reg  signed [VALUE_WIDTH-1:0] scaled_value
);
    localparam PRODUCT_WIDTH = VALUE_WIDTH + COEFF_WIDTH + 1;

    reg signed [PRODUCT_WIDTH-1:0] product;
    wire signed [COEFF_WIDTH:0] signed_coefficient;

    assign signed_coefficient = {1'b0, coefficient};

    // Let synthesis build an optimized multiplier instead of a long shift-add chain.
    always @* begin
        product = value * signed_coefficient;
        scaled_value = product >>> COEFF_WIDTH;
    end
endmodule
