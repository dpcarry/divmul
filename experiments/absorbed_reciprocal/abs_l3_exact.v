module abs_l3_exact(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy;
wire signed [3:0] rx={~fx[19],fx[18:16]}, ry={~fy[19],fy[18:16]};
reg signed [12:0] a;
reg signed [13:0] b;
reg signed [20:0] c;
always @* begin
case ({fy[22:20],fx[22:20]})
6'd0: begin a=13'sd3859; b=14'sd3859; c=21'sd524824; end
6'd1: begin a=13'sd3859; b=14'sd4313; c=21'sd586568; end
6'd2: begin a=13'sd3859; b=14'sd4767; c=21'sd648312; end
6'd3: begin a=13'sd3859; b=14'sd5221; c=21'sd710056; end
6'd4: begin a=13'sd3859; b=14'sd5675; c=21'sd771800; end
6'd5: begin a=13'sd3859; b=14'sd6129; c=21'sd833544; end
6'd6: begin a=13'sd3859; b=14'sd6583; c=21'sd895288; end
6'd7: begin a=13'sd3859; b=14'sd7037; c=21'sd957032; end
6'd8: begin a=13'sd3458; b=14'sd3094; c=21'sd470288; end
6'd9: begin a=13'sd3458; b=14'sd3458; c=21'sd525616; end
6'd10: begin a=13'sd3458; b=14'sd3822; c=21'sd580944; end
6'd11: begin a=13'sd3458; b=14'sd4186; c=21'sd636272; end
6'd12: begin a=13'sd3458; b=14'sd4550; c=21'sd691600; end
6'd13: begin a=13'sd3458; b=14'sd4914; c=21'sd746928; end
6'd14: begin a=13'sd3458; b=14'sd5278; c=21'sd802256; end
6'd15: begin a=13'sd3458; b=14'sd5642; c=21'sd857584; end
6'd16: begin a=13'sd3129; b=14'sd2533; c=21'sd425544; end
6'd17: begin a=13'sd3129; b=14'sd2831; c=21'sd475608; end
6'd18: begin a=13'sd3129; b=14'sd3129; c=21'sd525672; end
6'd19: begin a=13'sd3129; b=14'sd3427; c=21'sd575736; end
6'd20: begin a=13'sd3129; b=14'sd3725; c=21'sd625800; end
6'd21: begin a=13'sd3129; b=14'sd4023; c=21'sd675864; end
6'd22: begin a=13'sd3129; b=14'sd4321; c=21'sd725928; end
6'd23: begin a=13'sd3129; b=14'sd4619; c=21'sd775992; end
6'd24: begin a=13'sd2852; b=14'sd2108; c=21'sd387872; end
6'd25: begin a=13'sd2852; b=14'sd2356; c=21'sd433504; end
6'd26: begin a=13'sd2852; b=14'sd2604; c=21'sd479136; end
6'd27: begin a=13'sd2852; b=14'sd2852; c=21'sd524768; end
6'd28: begin a=13'sd2852; b=14'sd3100; c=21'sd570400; end
6'd29: begin a=13'sd2852; b=14'sd3348; c=21'sd616032; end
6'd30: begin a=13'sd2852; b=14'sd3596; c=21'sd661664; end
6'd31: begin a=13'sd2852; b=14'sd3844; c=21'sd707296; end
6'd32: begin a=13'sd2625; b=14'sd1785; c=21'sd357000; end
6'd33: begin a=13'sd2625; b=14'sd1995; c=21'sd399000; end
6'd34: begin a=13'sd2625; b=14'sd2205; c=21'sd441000; end
6'd35: begin a=13'sd2625; b=14'sd2415; c=21'sd483000; end
6'd36: begin a=13'sd2625; b=14'sd2625; c=21'sd525000; end
6'd37: begin a=13'sd2625; b=14'sd2835; c=21'sd567000; end
6'd38: begin a=13'sd2625; b=14'sd3045; c=21'sd609000; end
6'd39: begin a=13'sd2625; b=14'sd3255; c=21'sd651000; end
6'd40: begin a=13'sd2430; b=14'sd1530; c=21'sd330480; end
6'd41: begin a=13'sd2430; b=14'sd1710; c=21'sd369360; end
6'd42: begin a=13'sd2430; b=14'sd1890; c=21'sd408240; end
6'd43: begin a=13'sd2430; b=14'sd2070; c=21'sd447120; end
6'd44: begin a=13'sd2430; b=14'sd2250; c=21'sd486000; end
6'd45: begin a=13'sd2430; b=14'sd2430; c=21'sd524880; end
6'd46: begin a=13'sd2430; b=14'sd2610; c=21'sd563760; end
6'd47: begin a=13'sd2430; b=14'sd2790; c=21'sd602640; end
6'd48: begin a=13'sd2262; b=14'sd1326; c=21'sd307632; end
6'd49: begin a=13'sd2262; b=14'sd1482; c=21'sd343824; end
6'd50: begin a=13'sd2262; b=14'sd1638; c=21'sd380016; end
6'd51: begin a=13'sd2262; b=14'sd1794; c=21'sd416208; end
6'd52: begin a=13'sd2262; b=14'sd1950; c=21'sd452400; end
6'd53: begin a=13'sd2262; b=14'sd2106; c=21'sd488592; end
6'd54: begin a=13'sd2262; b=14'sd2262; c=21'sd524784; end
6'd55: begin a=13'sd2262; b=14'sd2418; c=21'sd560976; end
6'd56: begin a=13'sd2108; b=14'sd1156; c=21'sd286688; end
6'd57: begin a=13'sd2108; b=14'sd1292; c=21'sd320416; end
6'd58: begin a=13'sd2108; b=14'sd1428; c=21'sd354144; end
6'd59: begin a=13'sd2108; b=14'sd1564; c=21'sd387872; end
6'd60: begin a=13'sd2108; b=14'sd1700; c=21'sd421600; end
6'd61: begin a=13'sd2108; b=14'sd1836; c=21'sd455328; end
6'd62: begin a=13'sd2108; b=14'sd1972; c=21'sd489056; end
6'd63: begin a=13'sd2108; b=14'sd2108; c=21'sd522784; end
default: begin a=0; b=0; c=0; end
endcase
end
wire signed [17:0] px=rx*a, py=ry*b;
wire signed [22:0] ex=px, ey=py, ec=c;
wire signed [22:0] p=ec+(ex << 0)-(ey << 0);
wire signed [28:0] p_extended=p;
wire signed [28:0] value=p_extended <<< 4;
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
