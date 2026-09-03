//LEAD 
`include "../common/common.vh"
module top
#(
	parameter width=23,
	parameter log_width=$clog2(width)
)
`define w(x) [(x)-1:0]
(
	input `w(width) x,
	input `w(width) y,
	output `w(3*width+1) out,
	input cycle1
);
	//normalize
	wire `w(log_width) num0a,num0b;
	wire `w(width) a_norm,b_norm;
	NORMALIZE#(.width(width)) u_norm_a(.x(x),.num0(num0a),.out(a_norm));
	NORMALIZE#(.width(width)) u_norm_b(.x(y),.num0(num0b),.out(b_norm));
	// frac part, shift out the highest 1(integer part)
	wire `w(width) a_frac={a_norm[0 +:width-1],1'b0};
	wire `w(width) b_frac={b_norm[0 +:width-1],1'b0};
	// a-b
	wire borrow_a_sub_b = a_frac<b_frac;
	wire `w(width) a_sub_b_abs= borrow_a_sub_b? b_frac-a_frac : a_frac-b_frac;//exp base: 2^w

	//ln2 * (a-b), and ln2*(a-b)^2
	parameter ln2_bits = 53'b10110001011010000111001010110000001000001100010010011;
	wire `w(width) ln2 = width>53?{ln2_bits,{(width>53?width-53:0){1'b0}}}: ln2_bits[53-1 -:width];

	wire `w(2*width) mul_out;
	reg  `w(2*width) ln2_mul_a_sub_b;  //ln2(a-b)            exp base:2^2w
	always @(posedge cycle1) begin
		ln2_mul_a_sub_b<=mul_out;
	end
	wire `w(width) mul_in1= cycle1 ? a_sub_b_abs : ln2_mul_a_sub_b[2*width-1 -: width];//!extra trunc error
	wire `w(width) mul_in2= cycle1 ? ln2         : ln2_mul_a_sub_b[2*width-1 -: width];//!extra trunc error

	wire `w(2*width) ln2_mul_a_sub_b_2= cycle1 ? 0 : mul_out;//(ln2(a-b))^2        exp base:2^2w (input truncated)

	MUL#(.width(width)) u_mul(.x(mul_in1),.y(mul_in2),.xy(mul_out));

	// add 1 on the left integer part,1±ln2(a-b)
	wire `w(2*width+1) one={1'b1,{(2*width){1'b0}}};
	wire `w(2*width+1) ln2_mul_a_sub_b_plus_1=(borrow_a_sub_b? one-ln2_mul_a_sub_b : one+ln2_mul_a_sub_b);
	//sum up,+0.5*(ln2(a-b))^2
	wire `w(2*width+1) Qlog={1'b0,(ln2_mul_a_sub_b_2>>1)}+ln2_mul_a_sub_b_plus_1;//exp base 2^2w

	// final shift
	wire shift_left=~(num0a>num0b);// ea-eb=-(num0a-num0b)
	wire `w(log_width) shift=shift_left?(num0b-num0a):(num0a-num0b);
	SHIFTER#(.width(3*width+1)) u_shift(.x({{(width){1'b0}},Qlog}),.shift({{($clog2(3*width+1)-log_width){1'b0}},shift}),.left(shift_left),.out(out));
	//final exp base: 2^(2w)
endmodule
