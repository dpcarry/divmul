module unified_div_drop_l1_div_reference(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy;
wire signed [5:0] rx={~fx[21],fx[20:16]}, ry={~fy[21],fy[20:16]};
reg signed [6:0] a;
reg signed [7:0] b;
reg signed [14:0] c;
always @* begin
case ({fy[22:22],fx[22:22]})
2'd0: begin a=7'sd52; b=8'sd52; c=15'sd8300; end
2'd1: begin a=7'sd52; b=8'sd73; c=15'sd11620; end
2'd2: begin a=7'sd37; b=8'sd26; c=15'sd5880; end
2'd3: begin a=7'sd37; b=8'sd37; c=15'sd8232; end
default: begin a=0; b=0; c=0; end
endcase
end
wire signed [13:0] px=rx*a, py=ry*b;
wire signed [16:0] ex=px, ey=py, ec=c;
wire signed [16:0] p=ec+(ex << 0)-(ey << 0);
wire signed [28:0] p_extended=p;
wire signed [28:0] value=p_extended <<< 10;
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
