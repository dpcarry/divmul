// quadratic approximate 1/x ,for reciprocal
`include "../common/common.vh"
module QUAD_RECIPROCAL 
#(
	parameter width = 23,
	parameter res_width =2*width  // {6bits integer+ (2*width) bits fraction}
)
`define w(x) [(x)-1:0]
(
	input `w(width) y,
	output `w(res_width) Ry
);
	parameter eff_frac_bits_uplimit = 2*width ;
	parameter eff_frac_bits=(eff_frac_bits_uplimit/20+1)*20;
	parameter eff_int_bits = 3;
	parameter a_int=3'd2,a_frac = {(eff_frac_bits_uplimit/20+1){20'b10100011110101110000}};//2.64 
	parameter b_int=3'd5,b_frac = {3'b111,{(eff_frac_bits-3){1'b0}}};//5.875
	parameter c_int=3'd4,c_frac = {3'b010,{(eff_frac_bits-3){1'b0}}};//4.25 
	wire `w(width) a,b;//concat int bits and `w(width) fraction
	assign a={a_int,a_frac[eff_frac_bits-1 -: (width-eff_int_bits)]};
	assign b={b_int,b_frac[eff_frac_bits-1 -: (width-eff_int_bits)]};

	//perform y^2=y*y, ay^2=a*y^2, by=b*y

	wire `w(res_width) y2, ay2, by;
	MUL#(.width(width)) mul_y2(.x(y),.y(y),.xy(y2));
	// cut to width for next multiplcation
	//! extra truncate error introduced
	wire `w(width) y2_trunc;
	assign y2_trunc=y2[res_width-3-1 -: width];//skip first 3bit, only use 3bit integer and as much fraction as possible
	MUL#(.width(width)) mul_ay2(.x(a),.y(y2_trunc),.xy(ay2));
	MUL#(.width(width)) mul_by(.x(b),.y(y),.xy(by));
	// sum up
	wire `w(res_width) sum,c;
	assign c={3'd0,c_int,c_frac[eff_frac_bits-1 -: (res_width-6)]};
	assign sum=ay2-by+c;//TODO: replace as customized adder, if needed

	assign Ry=sum;
endmodule

