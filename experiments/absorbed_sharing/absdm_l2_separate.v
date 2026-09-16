module absdm_l2_separate_div(input [22:0] fx,fy, output signed [28:0] value);
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
assign value=p_extended <<< 11;
endmodule
module absdm_l2_separate_mul(input [22:0] fx,fy, output signed [28:0] value);
wire signed [8:0] rx={~fx[20],fx[19:12]}, ry={~fy[20],fy[19:12]};
reg signed [5:0] a;
reg signed [5:0] b;
reg signed [17:0] t;
always @* begin
case ({fy[22:21],fx[22:21]})
4'd0: begin a=6'sd18; b=6'sd18; t=18'sd41490; end
4'd1: begin a=6'sd18; b=6'sd22; t=18'sd50708; end
4'd2: begin a=6'sd18; b=6'sd26; t=18'sd59926; end
4'd3: begin a=6'sd18; b=6'sd30; t=18'sd69144; end
4'd4: begin a=6'sd22; b=6'sd18; t=18'sd50708; end
4'd5: begin a=6'sd22; b=6'sd22; t=18'sd61974; end
4'd6: begin a=6'sd22; b=6'sd26; t=18'sd73240; end
4'd7: begin a=6'sd22; b=6'sd30; t=18'sd84506; end
4'd8: begin a=6'sd26; b=6'sd18; t=18'sd59926; end
4'd9: begin a=6'sd26; b=6'sd22; t=18'sd73240; end
4'd10: begin a=6'sd26; b=6'sd26; t=18'sd86554; end
4'd11: begin a=6'sd26; b=6'sd30; t=18'sd99868; end
4'd12: begin a=6'sd30; b=6'sd18; t=18'sd69144; end
4'd13: begin a=6'sd30; b=6'sd22; t=18'sd84506; end
4'd14: begin a=6'sd30; b=6'sd26; t=18'sd99868; end
4'd15: begin a=6'sd30; b=6'sd30; t=18'sd115230; end
default: begin a=0; b=0; t=0; end
endcase
end

wire signed [14:0] px=rx*a, py=ry*b;
wire signed [19:0] ex=px,ey=py,ec=t;
wire signed [19:0] p=ec+ex+ey;
wire signed [28:0] extended=p;
assign value=extended <<< 8;
endmodule
module absdm_l2_separate(input [31:0] x,y,input divide_mode,output [31:0] result);
wire [22:0] fx,fy;
wire signed [28:0] core_value;
wire signed [28:0] div_value,mul_value;
absdm_l2_separate_div div_core(fx,fy,div_value);
absdm_l2_separate_mul mul_core(fx,fy,mul_value);
assign core_value=divide_mode ? div_value : mul_value;
reg [22:0] normalized_fraction;
reg signed [2:0] exponent_adjust;
always @* begin
if (core_value[24]) begin normalized_fraction=core_value[23:1]; exponent_adjust=3'sd1; end
else if (core_value[23]) begin normalized_fraction=core_value[22:0]; exponent_adjust=3'sd0; end
else if (core_value[22]) begin normalized_fraction={core_value[21:0],1'b0}; exponent_adjust=-3'sd1; end
else begin normalized_fraction={core_value[20:0],2'b0}; exponent_adjust=-3'sd2; end
end
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(divide_mode),
.fraction_x(fx),.fraction_y(fy),.result_fraction(normalized_fraction),
.exponent_adjust(exponent_adjust),.result(result));
endmodule
