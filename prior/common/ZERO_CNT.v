module ZERO_CNT
#(
	parameter width=23,
	parameter log_width=$clog2(width)
)
`define w(x) [(x)-1:0]
(
    input `w(width) x,
	output reg `w(log_width) num0 // number of leading zero
);
    wire `w(width) l_one; // only the leading one
    LOD#(.width(width)) u_lod(.in(x),.out(l_one));
    LOD_ENC#(.width(width)) u_enc(.l_one(l_one),.num0(num0));
endmodule
