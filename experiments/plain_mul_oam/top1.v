module plain_mul_l1(input wire [31:0] x,y, output wire [31:0] result);
plain_mul_plane #(.LEVEL(1)) core(x,y,result);
endmodule
