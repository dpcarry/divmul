module SHIFTER//barrel shifter, loop shifter
#(
	parameter width=23,
	parameter log_width=$clog2(width)
)
`define w(x) [(x)-1:0]
(
	input `w(width) x,
	input `w(log_width) shift,
	input left,
	output reg `w(width) out
);
	wire `w(2*width) x_copy_shift= left?({2{x}} << shift):({2{x}} >> shift);
	always @(*) begin
		if (left) begin
			out = x_copy_shift[2*width-1 -: width];
		end else begin
			out = x_copy_shift[width-1   -: width];
		end
	end
endmodule
