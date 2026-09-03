//INZED
`include "../common/common.vh"
module top
#(
	parameter width = 23,
	parameter log_width=$clog2(width),
	parameter t = 0 // bits to truncate
)
`define w(x) [(x)-1:0]
(
	input `w(width) x, //dividend
	input `w(width) y, //divisor
	output `w(2*width) out
);
	//normalize (log)
	wire `w(log_width) num0x,num0y;//num0= width-k
	wire x_one,y_one;
	wire `w(width-1) x_frac,y_frac;// the first bit is 1, integer part
	NORMALIZE#(.width(width)) u_norm_x(.x(x),.out({x_one,x_frac}),.num0(num0x));
	NORMALIZE#(.width(width)) u_norm_y(.x(y),.out({y_one,y_frac}),.num0(num0y));
	parameter eps_width = 8;
	parameter eps = 8'b0000_1010; //2^-5+2^-7
	//TODO: Truncate N lsb
	//main subtractor
	//! Differ from paper, shift direction is determined directly by comparing num0x,num0y; no signed implement
	wire `w(width-1) frac_sub_res;
	assign frac_sub_res=x_frac - y_frac;
	wire borrow_frac;//TODO: replace with subtractor support borrow output
	assign borrow_frac= x_frac<y_frac;
	// eps subtractor
	wire `w(width-1) eps_sub_res,eps_shifted;
	assign  eps_shifted={borrow_frac?eps<<1:eps, {(width-1-eps_width){1'b0}}};
	assign eps_sub_res=frac_sub_res-eps_shifted;
	wire borrow_eps;//TODO: replace with subtractor support borrow output
	assign borrow_eps=frac_sub_res<eps_shifted;
	wire `w(width) frac_res;

	assign frac_res={ ~borrow_eps, eps_sub_res};
	//final shift
	// 2^(kx-ky(-1)) = <<(kx-ky(-1)) <=> <<((num0y-num0x)-1)  or >>((num0x-num0y)(+1))
	//TODO: decide using subtractor borrow
	reg shift_dir;
	reg `w(log_width) shift;
	wire `w(log_width) borrow_frac_lw;
	assign borrow_frac_lw={{(log_width-1){1'b0}},borrow_frac};
	always @(*) begin
		if(num0x>=num0y+borrow_frac_lw)begin
			shift_dir=1'b0;//right
			shift=num0x-num0y+borrow_frac_lw;
		end
		else begin
			shift_dir=1'b1;//left
			shift=num0y-num0x-borrow_frac_lw;
		end
	end
	SHIFTER#(.width(2*width)) u_shift(.x({{(width){1'b0}},frac_res}),.shift({{($clog2(2*width)-log_width){1'b0}},shift}),.left(shift_dir),.out(out));
	//final shift 2^(w-1)
endmodule
