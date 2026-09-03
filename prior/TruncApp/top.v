//TruncApp
// skip Approximate Absolute Unit
// width here is "n-1" in paper
`include "../common/common.vh"
module top 
#(
	parameter width = 23,
	parameter log_width=$clog2(width),
	parameter t = width// >=1
)
`define w(x) [(x)-1:0]
(
	input `w(width) x, //dividend
	input `w(width) y, //divisor
	output `w(2*(t+width-1)) out //out=x/y
);
	wire `w(width) Ka,Kb;//only leading one
	LOD #(.width(width)) lod_a(.in(x),.out(Ka));
	LOD #(.width(width)) lod_b(.in(y),.out(Kb));
	wire `w(log_width) num0a,num0b;//NOTE: ka=(width)-numa, kb=(width)-num0b
	LOD_ENC #(.width(width)) zero_a(.l_one(Ka),.num0(num0a));
	LOD_ENC #(.width(width)) zero_b(.l_one(Kb),.num0(num0b));
	//Truncate to t bits, also normalize
	wire `w(t) Xat,Xbt;
	TRUNC #(.width(width),.t(t)) u_trunc_a(.x(x),.Kx(Ka),.Xt(Xat));
	TRUNC #(.width(width),.t(t)) u_trunc_b(.x(y),.Kx(Kb),.Xt(Xbt));
	//NOTE: current scale: { Xt[t-1] . Xt[t-2:0] }  ∈[1,2), where Xt[t-1]===1
	//inverse
	wire `w(t) Xbt_inv;
	INV#(.width(t)) u_inv(.x(Xbt),.x_inv(Xbt_inv));
	//multiply, get x/y
	wire `w(2*t) xat_div_xbt;
	MUL#(.width(t)) u_mul(.x(Xat),.y(Xbt_inv),.xy(xat_div_xbt));//TODO: add approximate multiplier
	//shift, result width=2n+2t-4=2t+2(n-2)=2(t+width-1), note that width=n-1 here
	wire `w(2*(t+width-1)) out_norm;
	assign out_norm= {{(2*width-2){1'b0}},xat_div_xbt};
	// <<(ka-kb) <=> <<(num0b-num0a) <=> >>(num0a-num0b)
	wire shift_left;
	assign shift_left=~(num0a>num0b);
	wire `w(log_width) shift;
	assign shift=shift_left?(num0b-num0a):(num0a-num0b);
	SHIFTER#(.width(2*(t+width-1))) u_shift(.x(out_norm),.shift({{($clog2(2*(t+width-1))-log_width){1'b0}},shift}),.left(shift_left),.out(out));
	// assign out= num0a>num0b? out_norm>>(num0a-num0b) : out_norm<<(num0b-num0a);
	//final exp base: 2^(2w-2),
endmodule
