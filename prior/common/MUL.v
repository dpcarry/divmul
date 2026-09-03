module MUL
#(
	parameter width=23,
	parameter width2 = width,
	parameter width_out = width+width2
)
`define w(x) [(x)-1:0]
(
	input `w(width) x,
	input `w(width2) y,
	output `w(width_out) xy
);
	assign xy=x*y;
endmodule
