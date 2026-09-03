//QIAD
`include "../common/common.vh"
module top 
#(
	parameter width = 23,
	parameter log_width=$clog2(width)
)
`define w(x) [(x)-1:0]
(
	input `w(width) x, //dividend
	input `w(width) y, //divisor
	output `w(width+3*(width+3)) out //out=x/y
);
	//only normalize divisor y
	wire `w(log_width) num0;//num0 of divisor, num0=(width)-k
	wire `w(width) y_norm;
	NORMALIZE#(.width(width)) u_norm(.x(y),.out(y_norm),.num0(num0));
	//now y_norm∈[0.5,1), i.e. a hidden "0." added before the highest bit

	// add 3=bit integer part
	// fixed point mul format: (3+width)bits={3bits integer,(width) bits fraction}
	parameter mul_width = width+3;

	wire `w(mul_width) y_norm_mul;
	assign y_norm_mul={3'd0,y_norm};

	// perform quadratic approximation
	wire `w(2*mul_width) Ry;//exp base 2^2w
	QUAD_RECIPROCAL #(.width(mul_width)) u_quad(.y(y_norm_mul),.Ry(Ry));
	// perform mul with dividend
	wire `w(3*mul_width) out_norm;//exp base: 2^2w (x has no exp base)
	MUL#(.width(mul_width),.width2(2*mul_width)) mul_xRy(.x({3'd0,x}),.y(Ry),.xy(out_norm));
	//shift right back
	//current exp base: 2^2w
	//NOTE: 2^(ka-kb)= 2^-k= >>k <=> >>(width)-num0 <=> <<num0
	SHIFTER#(.width(width+3*mul_width)) res_shift(
		.x({{(width){1'b0}},out_norm}),
		.shift({{($clog2(width+3*mul_width)-log_width){1'b0}},num0}),//generate mul_width num0
		.left(1'b1),
		.out(out)
	);
	//final exp base: 2^2w
endmodule
