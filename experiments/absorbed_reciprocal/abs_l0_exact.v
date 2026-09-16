module abs_l0_exact(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy;
wire signed [4:0] rx={~fx[22],fx[21:18]}, ry={~fy[22],fy[21:18]};
wire signed [11:0] a=12'sd1416;
wire signed [11:0] b=12'sd1416;
wire signed [17:0] c=18'sd67968;
wire signed [16:0] px=rx*a, py=ry*b;
wire signed [19:0] ex=px, ey=py, ec=c;
wire signed [19:0] p=ec+(ex << 0)-(ey << 0);
wire signed [28:0] p_extended=p;
wire signed [28:0] value=p_extended <<< 7;
reg [22:0] frac;
reg signed [2:0] adjust;
always @* begin
if (value[23]) begin frac=value[22:0]; adjust=0; end
else if (value[22]) begin frac={value[21:0],1'b0}; adjust=-3'sd1; end
else begin frac={value[20:0],2'b0}; adjust=-3'sd2; end
end
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(1'b1),
.fraction_x(fx),.fraction_y(fy),.result_fraction(frac),.exponent_adjust(adjust),.result(result));
endmodule
