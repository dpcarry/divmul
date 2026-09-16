module absdm_l3_separate_native_mul_div(input [22:0] fx,fy, output signed [28:0] value);
wire signed [3:0] rx={~fx[19],fx[18:16]}, ry={~fy[19],fy[18:16]};
reg signed [4:0] a;
reg signed [5:0] b;
reg signed [12:0] c;
always @* begin
case ({fy[22:20],fx[22:20]})
6'd0: begin a=5'sd15; b=6'sd15; c=13'sd2050; end
6'd1: begin a=5'sd15; b=6'sd17; c=13'sd2291; end
6'd2: begin a=5'sd15; b=6'sd19; c=13'sd2532; end
6'd3: begin a=5'sd15; b=6'sd20; c=13'sd2774; end
6'd4: begin a=5'sd15; b=6'sd22; c=13'sd3015; end
6'd5: begin a=5'sd15; b=6'sd24; c=13'sd3256; end
6'd6: begin a=5'sd15; b=6'sd26; c=13'sd3497; end
6'd7: begin a=5'sd15; b=6'sd27; c=13'sd3738; end
6'd8: begin a=5'sd14; b=6'sd12; c=13'sd1837; end
6'd9: begin a=5'sd14; b=6'sd14; c=13'sd2053; end
6'd10: begin a=5'sd14; b=6'sd15; c=13'sd2269; end
6'd11: begin a=5'sd14; b=6'sd16; c=13'sd2485; end
6'd12: begin a=5'sd14; b=6'sd18; c=13'sd2702; end
6'd13: begin a=5'sd14; b=6'sd19; c=13'sd2918; end
6'd14: begin a=5'sd14; b=6'sd21; c=13'sd3134; end
6'd15: begin a=5'sd14; b=6'sd22; c=13'sd3350; end
6'd16: begin a=5'sd12; b=6'sd10; c=13'sd1662; end
6'd17: begin a=5'sd12; b=6'sd11; c=13'sd1858; end
6'd18: begin a=5'sd12; b=6'sd12; c=13'sd2053; end
6'd19: begin a=5'sd12; b=6'sd13; c=13'sd2249; end
6'd20: begin a=5'sd12; b=6'sd15; c=13'sd2445; end
6'd21: begin a=5'sd12; b=6'sd16; c=13'sd2640; end
6'd22: begin a=5'sd12; b=6'sd17; c=13'sd2836; end
6'd23: begin a=5'sd12; b=6'sd18; c=13'sd3031; end
6'd24: begin a=5'sd11; b=6'sd8; c=13'sd1515; end
6'd25: begin a=5'sd11; b=6'sd9; c=13'sd1693; end
6'd26: begin a=5'sd11; b=6'sd10; c=13'sd1872; end
6'd27: begin a=5'sd11; b=6'sd11; c=13'sd2050; end
6'd28: begin a=5'sd11; b=6'sd12; c=13'sd2228; end
6'd29: begin a=5'sd11; b=6'sd13; c=13'sd2406; end
6'd30: begin a=5'sd11; b=6'sd14; c=13'sd2585; end
6'd31: begin a=5'sd11; b=6'sd15; c=13'sd2763; end
6'd32: begin a=5'sd10; b=6'sd7; c=13'sd1395; end
6'd33: begin a=5'sd10; b=6'sd8; c=13'sd1559; end
6'd34: begin a=5'sd10; b=6'sd9; c=13'sd1723; end
6'd35: begin a=5'sd10; b=6'sd9; c=13'sd1887; end
6'd36: begin a=5'sd10; b=6'sd10; c=13'sd2051; end
6'd37: begin a=5'sd10; b=6'sd11; c=13'sd2215; end
6'd38: begin a=5'sd10; b=6'sd12; c=13'sd2379; end
6'd39: begin a=5'sd10; b=6'sd13; c=13'sd2543; end
6'd40: begin a=5'sd9; b=6'sd6; c=13'sd1291; end
6'd41: begin a=5'sd9; b=6'sd7; c=13'sd1443; end
6'd42: begin a=5'sd9; b=6'sd7; c=13'sd1595; end
6'd43: begin a=5'sd9; b=6'sd8; c=13'sd1747; end
6'd44: begin a=5'sd9; b=6'sd9; c=13'sd1898; end
6'd45: begin a=5'sd9; b=6'sd9; c=13'sd2050; end
6'd46: begin a=5'sd9; b=6'sd10; c=13'sd2202; end
6'd47: begin a=5'sd9; b=6'sd11; c=13'sd2354; end
6'd48: begin a=5'sd9; b=6'sd5; c=13'sd1202; end
6'd49: begin a=5'sd9; b=6'sd6; c=13'sd1343; end
6'd50: begin a=5'sd9; b=6'sd6; c=13'sd1484; end
6'd51: begin a=5'sd9; b=6'sd7; c=13'sd1626; end
6'd52: begin a=5'sd9; b=6'sd8; c=13'sd1767; end
6'd53: begin a=5'sd9; b=6'sd8; c=13'sd1909; end
6'd54: begin a=5'sd9; b=6'sd9; c=13'sd2050; end
6'd55: begin a=5'sd9; b=6'sd9; c=13'sd2191; end
6'd56: begin a=5'sd8; b=6'sd5; c=13'sd1120; end
6'd57: begin a=5'sd8; b=6'sd5; c=13'sd1252; end
6'd58: begin a=5'sd8; b=6'sd6; c=13'sd1383; end
6'd59: begin a=5'sd8; b=6'sd6; c=13'sd1515; end
6'd60: begin a=5'sd8; b=6'sd7; c=13'sd1647; end
6'd61: begin a=5'sd8; b=6'sd7; c=13'sd1779; end
6'd62: begin a=5'sd8; b=6'sd8; c=13'sd1910; end
6'd63: begin a=5'sd8; b=6'sd8; c=13'sd2042; end
default: begin a=0; b=0; c=0; end
endcase
end
wire signed [9:0] px=rx*a, py=ry*b;
wire signed [14:0] ex=px, ey=py, ec=c;
wire signed [14:0] p=ec+(ex << 0)-(ey << 0);
wire signed [28:0] p_extended=p;
assign value=p_extended <<< 12;
endmodule
module absdm_l3_separate_native_mul(input [31:0] x,y,input divide_mode,output [31:0] result);
wire [22:0] fx,fy;
wire signed [28:0] core_value;
wire signed [28:0] div_value,mul_value;
absdm_l3_separate_native_mul_div div_core(fx,fy,div_value);
oadm_fixed_mul_plane_root_opt #(.LEVEL(3),.RESIDUAL_DROP(10)) mul_core({1'b1,fx},{1'b1,fy},mul_value);
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
