module input_div_b3_bias1(input wire [31:0] x, y, output wire [31:0] result);
    input_trunc_core #(.BITS(3), .BIAS(1), .DIVIDE(1)) dut(x,y,result);
endmodule

module input_div_b5_bias1(input wire [31:0] x, y, output wire [31:0] result);
    input_trunc_core #(.BITS(5), .BIAS(1), .DIVIDE(1)) dut(x,y,result);
endmodule

module input_div_b7_bias1(input wire [31:0] x, y, output wire [31:0] result);
    input_trunc_core #(.BITS(7), .BIAS(1), .DIVIDE(1)) dut(x,y,result);
endmodule

module input_mul_b3_bias1(input wire [31:0] x, y, output wire [31:0] result);
    input_trunc_core #(.BITS(3), .BIAS(1), .DIVIDE(0)) dut(x,y,result);
endmodule

module input_mul_b5_bias1(input wire [31:0] x, y, output wire [31:0] result);
    input_trunc_core #(.BITS(5), .BIAS(1), .DIVIDE(0)) dut(x,y,result);
endmodule

module input_mul_b7_bias1(input wire [31:0] x, y, output wire [31:0] result);
    input_trunc_core #(.BITS(7), .BIAS(1), .DIVIDE(0)) dut(x,y,result);
endmodule

module input_mul_b9_bias1(input wire [31:0] x, y, output wire [31:0] result);
    input_trunc_core #(.BITS(9), .BIAS(1), .DIVIDE(0)) dut(x,y,result);
endmodule
