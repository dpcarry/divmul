module sa_scale #(
    parameter VALUE_WIDTH = 29,
    parameter COEFF_WIDTH = 8
) (
    input  wire signed [VALUE_WIDTH-1:0] value,
    input  wire        [COEFF_WIDTH-1:0] coefficient,
    output wire signed [VALUE_WIDTH-1:0] scaled_value
);
    localparam PRODUCT_WIDTH = VALUE_WIDTH + COEFF_WIDTH + 1;

    wire signed [PRODUCT_WIDTH-1:0] extended_value;
    wire signed [PRODUCT_WIDTH-1:0] partial_0 [0:7];
    wire signed [PRODUCT_WIDTH-1:0] partial_1 [0:3];
    wire signed [PRODUCT_WIDTH-1:0] partial_2 [0:1];
    wire signed [PRODUCT_WIDTH-1:0] product;

    genvar coeff_bit;
    genvar pair_index;

    assign extended_value =
        {{(PRODUCT_WIDTH-VALUE_WIDTH){value[VALUE_WIDTH-1]}}, value};

    generate
        for (coeff_bit = 0; coeff_bit < 8; coeff_bit = coeff_bit + 1) begin : gen_partial
            assign partial_0[coeff_bit] = coefficient[coeff_bit]
                ? (extended_value <<< coeff_bit) : {PRODUCT_WIDTH{1'b0}};
        end
        for (pair_index = 0; pair_index < 4; pair_index = pair_index + 1) begin : gen_level_1
            assign partial_1[pair_index] =
                partial_0[2*pair_index] + partial_0[2*pair_index+1];
        end
        for (pair_index = 0; pair_index < 2; pair_index = pair_index + 1) begin : gen_level_2
            assign partial_2[pair_index] =
                partial_1[2*pair_index] + partial_1[2*pair_index+1];
        end
    endgenerate

    assign product = partial_2[0] + partial_2[1];
    assign scaled_value = product >>> COEFF_WIDTH;
endmodule
