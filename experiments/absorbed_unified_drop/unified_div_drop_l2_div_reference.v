module unified_div_drop_l2_div_reference(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy;
wire signed [4:0] rx={~fx[20],fx[19:16]}, ry={~fy[20],fy[19:16]};
reg signed [5:0] a;
reg signed [6:0] b;
reg signed [13:0] c;
always @* begin
case ({fy[22:21],fx[22:21]})
4'd0: begin a=6'sd29; b=7'sd29; c=14'sd4111; end
4'd1: begin a=6'sd29; b=7'sd35; c=14'sd5024; end
4'd2: begin a=6'sd29; b=7'sd41; c=14'sd5938; end
4'd3: begin a=6'sd29; b=7'sd48; c=14'sd6851; end
4'd4: begin a=6'sd23; b=7'sd19; c=14'sd3366; end
4'd5: begin a=6'sd23; b=7'sd23; c=14'sd4114; end
4'd6: begin a=6'sd23; b=7'sd28; c=14'sd4862; end
4'd7: begin a=6'sd23; b=7'sd32; c=14'sd5610; end
4'd8: begin a=6'sd20; b=7'sd14; c=14'sd2837; end
4'd9: begin a=6'sd20; b=7'sd17; c=14'sd3468; end
4'd10: begin a=6'sd20; b=7'sd20; c=14'sd4098; end
4'd11: begin a=6'sd20; b=7'sd23; c=14'sd4729; end
4'd12: begin a=6'sd17; b=7'sd10; c=14'sd2464; end
4'd13: begin a=6'sd17; b=7'sd13; c=14'sd3011; end
4'd14: begin a=6'sd17; b=7'sd15; c=14'sd3559; end
4'd15: begin a=6'sd17; b=7'sd17; c=14'sd4106; end
default: begin a=0; b=0; c=0; end
endcase
end
wire signed [11:0] px=rx*a, py=ry*b;
wire signed [15:0] ex=px, ey=py, ec=c;
wire signed [15:0] p=ec+(ex << 0)-(ey << 0);
wire signed [28:0] p_extended=p;
wire signed [28:0] value=p_extended <<< 11;
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
