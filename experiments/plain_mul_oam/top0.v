module plain_mul_l0(input wire [31:0] x,y, output wire [31:0] result);
plain_mul_plane #(.LEVEL(0)) core(x,y,result);
endmodule
