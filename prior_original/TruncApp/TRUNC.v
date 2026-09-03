//Truncation unit
module TRUNC
#(
	parameter width = 23,
	parameter t = width
)
`define w(x) [(x)-1:0]
(
	input `w(width) x,
	input `w(width) Kx,

	output reg `w(t) Xt
);
	integer i,j;
	always @(*) begin
		for(i=0;i<t;i=i+1)begin
			Xt[i]=0;
			for(j=0;j<width;j=j+1)begin
				Xt[i]=Xt[i] | (Kx[j] & x[j+i-(t-1)]);
			end
		end
	end
endmodule
