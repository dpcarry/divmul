module recip_lut_fixed #(
    parameter APPROX_LEVEL = 0
) (
    input  wire [3:0] y_fraction_msb,
    output reg  [7:0] reciprocal_square
);
    // Q0.8 values of 1/(y interval midpoint)^2 for the fixed partition.
    always @* begin
        if (APPROX_LEVEL == 0) begin
            reciprocal_square = 8'h72;
        end else if (APPROX_LEVEL == 1) begin
            case (y_fraction_msb[3])
                1'b0: reciprocal_square = 8'ha4;
                1'b1: reciprocal_square = 8'h54;
            endcase
        end else if (APPROX_LEVEL == 2) begin
            case (y_fraction_msb[3:2])
                2'b00: reciprocal_square = 8'hca;
                2'b01: reciprocal_square = 8'h87;
                2'b10: reciprocal_square = 8'h61;
                2'b11: reciprocal_square = 8'h49;
            endcase
        end else if (APPROX_LEVEL == 3) begin
            case (y_fraction_msb[3:1])
                3'b000: reciprocal_square = 8'he3;
                3'b001: reciprocal_square = 8'hb6;
                3'b010: reciprocal_square = 8'h95;
                3'b011: reciprocal_square = 8'h7c;
                3'b100: reciprocal_square = 8'h69;
                3'b101: reciprocal_square = 8'h5a;
                3'b110: reciprocal_square = 8'h4e;
                3'b111: reciprocal_square = 8'h44;
            endcase
        end else begin
            case (y_fraction_msb)
                4'h0: reciprocal_square = 8'hf1;
                4'h1: reciprocal_square = 8'hd6;
                4'h2: reciprocal_square = 8'hbf;
                4'h3: reciprocal_square = 8'hac;
                4'h4: reciprocal_square = 8'h9c;
                4'h5: reciprocal_square = 8'h8e;
                4'h6: reciprocal_square = 8'h81;
                4'h7: reciprocal_square = 8'h77;
                4'h8: reciprocal_square = 8'h6d;
                4'h9: reciprocal_square = 8'h65;
                4'ha: reciprocal_square = 8'h5d;
                4'hb: reciprocal_square = 8'h57;
                4'hc: reciprocal_square = 8'h51;
                4'hd: reciprocal_square = 8'h4b;
                4'he: reciprocal_square = 8'h46;
                4'hf: reciprocal_square = 8'h42;
            endcase
        end
    end
endmodule
