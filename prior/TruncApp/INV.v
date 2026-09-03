//Inverse Unit
module INV
#(
	parameter width = 23
)
`define w(x) [(x)-1:0]
(
	input `w(width) x,
	output `w(width) x_inv
);
	//current scale:  { X[t-1] . X[t-2:0] } ∈[1,2), where X[t-1]===1
	// (x+1)/2 = (x+1)>>1 <=>  { 1 . 0 X[t-2:1] }
	//final bit inv:
	assign x_inv= ~ {1'b1,1'b0,x[width-2:1]};
endmodule
