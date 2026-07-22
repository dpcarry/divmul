module recip_lut (
    input  wire [1:0]  level,
    input  wire [2:0]  y_fraction_msb,
    output reg  [7:0] reciprocal_square
);
    // Q0.8 representations of 1/(y midpoint squared), rounded to nearest.
    always @* begin
        case (level)
            2'd0: begin
                reciprocal_square = 8'h72;
            end
            2'd1: begin
                case (y_fraction_msb[2])
                    1'b0: reciprocal_square = 8'ha4;
                    1'b1: reciprocal_square = 8'h54;
                endcase
            end
            2'd2: begin
                case (y_fraction_msb[2:1])
                    2'b00: reciprocal_square = 8'hca;
                    2'b01: reciprocal_square = 8'h87;
                    2'b10: reciprocal_square = 8'h61;
                    2'b11: reciprocal_square = 8'h49;
                endcase
            end
            default: begin
                case (y_fraction_msb)
                    3'b000: reciprocal_square = 8'he3;
                    3'b001: reciprocal_square = 8'hb6;
                    3'b010: reciprocal_square = 8'h95;
                    3'b011: reciprocal_square = 8'h7c;
                    3'b100: reciprocal_square = 8'h69;
                    3'b101: reciprocal_square = 8'h5a;
                    3'b110: reciprocal_square = 8'h4e;
                    3'b111: reciprocal_square = 8'h44;
                endcase
            end
        endcase
    end
endmodule
