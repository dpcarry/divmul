module input_div_b3_bias0(input wire [31:0] x,y, output wire [31:0] result);
input_trunc_core #(.BITS(3), .BIAS(0), .DIVIDE(1)) dut(x,y,result);
endmodule

module input_div_b5_bias0(input wire [31:0] x,y, output wire [31:0] result);
input_trunc_core #(.BITS(5), .BIAS(0), .DIVIDE(1)) dut(x,y,result);
endmodule

module input_div_b7_bias0(input wire [31:0] x,y, output wire [31:0] result);
input_trunc_core #(.BITS(7), .BIAS(0), .DIVIDE(1)) dut(x,y,result);
endmodule
