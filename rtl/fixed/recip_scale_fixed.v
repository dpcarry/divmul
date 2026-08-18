module recip_scale_fixed #(
    parameter APPROX_LEVEL = 0,
    parameter VALUE_WIDTH = 29
) (
    input  wire                          clk,
    input  wire signed [VALUE_WIDTH-1:0] value,
    input  wire        [3:0]             y_fraction_msb,
    output wire signed [VALUE_WIDTH-1:0] scaled_value
);
    localparam COEFF_WIDTH = 8;
    localparam PRODUCT_WIDTH = VALUE_WIDTH + COEFF_WIDTH + 1;

    wire signed [PRODUCT_WIDTH-1:0] extended_value;
    reg  signed [PRODUCT_WIDTH-1:0] product_comb;
    reg  signed [PRODUCT_WIDTH-1:0] product_stage;

    assign extended_value =
        {{(PRODUCT_WIDTH-VALUE_WIDTH){value[VALUE_WIDTH-1]}}, value};

    // Each branch is the exact Q0.8 LUT coefficient multiplied at full width.
    always @* begin
        product_comb = {PRODUCT_WIDTH{1'b0}};
        if (APPROX_LEVEL == 0) begin
            product_comb = extended_value * 8'h72;
        end else if (APPROX_LEVEL == 1) begin
            case (y_fraction_msb[3])
                1'b0: product_comb = extended_value * 8'ha4;
                1'b1: product_comb = extended_value * 8'h54;
            endcase
        end else if (APPROX_LEVEL == 2) begin
            case (y_fraction_msb[3:2])
                2'b00: product_comb = extended_value * 8'hca;
                2'b01: product_comb = extended_value * 8'h87;
                2'b10: product_comb = extended_value * 8'h61;
                2'b11: product_comb = extended_value * 8'h49;
            endcase
        end else if (APPROX_LEVEL == 3) begin
            case (y_fraction_msb[3:1])
                3'b000: product_comb = extended_value * 8'he3;
                3'b001: product_comb = extended_value * 8'hb6;
                3'b010: product_comb = extended_value * 8'h95;
                3'b011: product_comb = extended_value * 8'h7c;
                3'b100: product_comb = extended_value * 8'h69;
                3'b101: product_comb = extended_value * 8'h5a;
                3'b110: product_comb = extended_value * 8'h4e;
                3'b111: product_comb = extended_value * 8'h44;
            endcase
        end else begin
            case (y_fraction_msb)
                4'h0: product_comb = extended_value * 8'hf1;
                4'h1: product_comb = extended_value * 8'hd6;
                4'h2: product_comb = extended_value * 8'hbf;
                4'h3: product_comb = extended_value * 8'hac;
                4'h4: product_comb = extended_value * 8'h9c;
                4'h5: product_comb = extended_value * 8'h8e;
                4'h6: product_comb = extended_value * 8'h81;
                4'h7: product_comb = extended_value * 8'h77;
                4'h8: product_comb = extended_value * 8'h6d;
                4'h9: product_comb = extended_value * 8'h65;
                4'ha: product_comb = extended_value * 8'h5d;
                4'hb: product_comb = extended_value * 8'h57;
                4'hc: product_comb = extended_value * 8'h51;
                4'hd: product_comb = extended_value * 8'h4b;
                4'he: product_comb = extended_value * 8'h46;
                4'hf: product_comb = extended_value * 8'h42;
            endcase
        end
    end

    always @(posedge clk) begin
        product_stage <= product_comb;
    end

    assign scaled_value = product_stage >>> COEFF_WIDTH;
endmodule
