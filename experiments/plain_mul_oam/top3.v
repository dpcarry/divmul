module plain_mul_l3(input wire [31:0] x,y, output wire [31:0] result);
plain_mul_plane #(.LEVEL(3)) core(x,y,result);
endmodule
