module sa_scale #(
    parameter VALUE_WIDTH = 29,
    parameter COEFF_WIDTH = 24
) (
    input  wire signed [VALUE_WIDTH-1:0] value,
    input  wire        [COEFF_WIDTH-1:0] coefficient,
    output reg  signed [VALUE_WIDTH-1:0] scaled_value
);
    localparam PRODUCT_WIDTH = VALUE_WIDTH + COEFF_WIDTH + 1;
    localparam TRUNCATE_LSB = 8;
    localparam ACTIVE_PARTIALS = COEFF_WIDTH - TRUNCATE_LSB;
    localparam TREE_PARTIALS = 16;

    wire signed [PRODUCT_WIDTH-1:0] extended_value;
    wire signed [PRODUCT_WIDTH-1:0] partial_0  [0:TREE_PARTIALS-1];
    wire signed [PRODUCT_WIDTH-1:0] partial_1  [0:7];
    wire signed [PRODUCT_WIDTH-1:0] partial_2  [0:3];
    wire signed [PRODUCT_WIDTH-1:0] partial_3  [0:1];
    wire signed [PRODUCT_WIDTH-1:0] product;

    genvar coeff_bit;
    genvar pair_idx;

    assign extended_value = {{(PRODUCT_WIDTH-VALUE_WIDTH){value[VALUE_WIDTH-1]}}, value};

    generate
        for (coeff_bit = 0; coeff_bit < TREE_PARTIALS; coeff_bit = coeff_bit + 1) begin : gen_partial_products
            if (coeff_bit < ACTIVE_PARTIALS) begin : gen_active_partial
                assign partial_0[coeff_bit] = coefficient[coeff_bit+TRUNCATE_LSB] ?
                                              (extended_value <<< (coeff_bit+TRUNCATE_LSB)) :
                                              {PRODUCT_WIDTH{1'b0}};
            end else begin : gen_zero_partial
                assign partial_0[coeff_bit] = {PRODUCT_WIDTH{1'b0}};
            end
        end

        for (pair_idx = 0; pair_idx < 8; pair_idx = pair_idx + 1) begin : gen_tree_level_1
            assign partial_1[pair_idx] = partial_0[2*pair_idx] + partial_0[2*pair_idx+1];
        end

        for (pair_idx = 0; pair_idx < 4; pair_idx = pair_idx + 1) begin : gen_tree_level_2
            assign partial_2[pair_idx] = partial_1[2*pair_idx] + partial_1[2*pair_idx+1];
        end

        for (pair_idx = 0; pair_idx < 2; pair_idx = pair_idx + 1) begin : gen_tree_level_3
            assign partial_3[pair_idx] = partial_2[2*pair_idx] + partial_2[2*pair_idx+1];
        end
    endgenerate

    assign product = partial_3[0] + partial_3[1];

    // DIV-only approximate scale: drop tiny coefficient LSB partials, then use a balanced tree.
    always @* begin
        scaled_value = product >>> COEFF_WIDTH;
    end
endmodule
