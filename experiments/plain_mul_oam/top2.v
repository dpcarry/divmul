module plain_mul_l2(input wire [31:0] x,y, output wire [31:0] result);
plain_mul_plane #(.LEVEL(2)) core(x,y,result);
endmodule
