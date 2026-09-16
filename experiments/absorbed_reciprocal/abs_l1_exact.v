module abs_l1_exact(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy;
wire signed [5:0] rx={~fx[21],fx[20:16]}, ry={~fy[21],fy[20:16]};
reg signed [11:0] a;
reg signed [12:0] b;
reg signed [19:0] c;
always @* begin
case ({fy[22:22],fx[22:22]})
2'd0: begin a=12'sd1660; b=13'sd1660; c=20'sd265600; end
2'd1: begin a=12'sd1660; b=13'sd2324; c=20'sd371840; end
2'd2: begin a=12'sd1176; b=13'sd840; c=20'sd188160; end
2'd3: begin a=12'sd1176; b=13'sd1176; c=20'sd263424; end
default: begin a=0; b=0; c=0; end
endcase
end
wire signed [18:0] px=rx*a, py=ry*b;
wire signed [21:0] ex=px, ey=py, ec=c;
wire signed [21:0] p=ec+(ex << 0)-(ey << 0);
wire signed [28:0] p_extended=p;
wire signed [28:0] value=p_extended <<< 5;
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
