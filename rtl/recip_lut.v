module recip_lut (
    input  wire [1:0]  level,
    input  wire [2:0]  y_fraction_msb,
    output reg  [23:0] reciprocal_square
);
    // Q0.24 representations of 1/(y midpoint squared), rounded to nearest.
    always @* begin
        case (level)
            2'd0: begin
                reciprocal_square = 24'b011100011100011100011100;
            end
            2'd1: begin
                case (y_fraction_msb[2])
                    1'b0: reciprocal_square = 24'b101000111101011100001010;
                    1'b1: reciprocal_square = 24'b010100111001011110000011;
                endcase
            end
            2'd2: begin
                case (y_fraction_msb[2:1])
                    2'b00: reciprocal_square = 24'b110010100100010110001000;
                    2'b01: reciprocal_square = 24'b100001110110011110101011;
                    2'b10: reciprocal_square = 24'b011000001111001001011110;
                    2'b11: reciprocal_square = 24'b010010001101000101011010;
                endcase
            end
            default: begin
                case (y_fraction_msb)
                    3'b000: reciprocal_square = 24'b111000101100010010100111;
                    3'b001: reciprocal_square = 24'b101101011000101001001000;
                    3'b010: reciprocal_square = 24'b100101001001101110010011;
                    3'b011: reciprocal_square = 24'b011110111110001011110111;
                    3'b100: reciprocal_square = 24'b011010001101101110001100;
                    3'b101: reciprocal_square = 24'b010110011110011000000100;
                    3'b110: reciprocal_square = 24'b010011011110110100100001;
                    3'b111: reciprocal_square = 24'b010001000011001000010101;
                endcase
            end
        endcase
    end
endmodule
