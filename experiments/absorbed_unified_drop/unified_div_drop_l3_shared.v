module unified_div_drop_l3_shared_core(input [22:0] fx,fy, input divide_mode, output signed [28:0] value);
wire signed [3:0] rx={~fx[19],fx[18:16]}, ry={~fy[19],fy[18:16]};
reg signed [5:0] a;
reg signed [5:0] b;
reg signed [13:0] t;
always @* begin
case ({divide_mode,fy[22:20],fx[22:20]})
7'd0: begin a=6'sd17; b=6'sd17; t=14'sd2329; end
7'd1: begin a=6'sd17; b=6'sd19; t=14'sd2602; end
7'd2: begin a=6'sd17; b=6'sd21; t=14'sd2875; end
7'd3: begin a=6'sd17; b=6'sd23; t=14'sd3148; end
7'd4: begin a=6'sd17; b=6'sd25; t=14'sd3421; end
7'd5: begin a=6'sd17; b=6'sd27; t=14'sd3694; end
7'd6: begin a=6'sd17; b=6'sd29; t=14'sd3967; end
7'd7: begin a=6'sd17; b=6'sd31; t=14'sd4240; end
7'd8: begin a=6'sd19; b=6'sd17; t=14'sd2602; end
7'd9: begin a=6'sd19; b=6'sd19; t=14'sd2907; end
7'd10: begin a=6'sd19; b=6'sd21; t=14'sd3212; end
7'd11: begin a=6'sd19; b=6'sd23; t=14'sd3517; end
7'd12: begin a=6'sd19; b=6'sd25; t=14'sd3822; end
7'd13: begin a=6'sd19; b=6'sd27; t=14'sd4127; end
7'd14: begin a=6'sd19; b=6'sd29; t=14'sd4432; end
7'd15: begin a=6'sd19; b=6'sd31; t=14'sd4737; end
7'd16: begin a=6'sd21; b=6'sd17; t=14'sd2875; end
7'd17: begin a=6'sd21; b=6'sd19; t=14'sd3212; end
7'd18: begin a=6'sd21; b=6'sd21; t=14'sd3549; end
7'd19: begin a=6'sd21; b=6'sd23; t=14'sd3886; end
7'd20: begin a=6'sd21; b=6'sd25; t=14'sd4223; end
7'd21: begin a=6'sd21; b=6'sd27; t=14'sd4560; end
7'd22: begin a=6'sd21; b=6'sd29; t=14'sd4897; end
7'd23: begin a=6'sd21; b=6'sd31; t=14'sd5234; end
7'd24: begin a=6'sd23; b=6'sd17; t=14'sd3148; end
7'd25: begin a=6'sd23; b=6'sd19; t=14'sd3517; end
7'd26: begin a=6'sd23; b=6'sd21; t=14'sd3886; end
7'd27: begin a=6'sd23; b=6'sd23; t=14'sd4255; end
7'd28: begin a=6'sd23; b=6'sd25; t=14'sd4624; end
7'd29: begin a=6'sd23; b=6'sd27; t=14'sd4993; end
7'd30: begin a=6'sd23; b=6'sd29; t=14'sd5362; end
7'd31: begin a=6'sd23; b=6'sd31; t=14'sd5731; end
7'd32: begin a=6'sd25; b=6'sd17; t=14'sd3421; end
7'd33: begin a=6'sd25; b=6'sd19; t=14'sd3822; end
7'd34: begin a=6'sd25; b=6'sd21; t=14'sd4223; end
7'd35: begin a=6'sd25; b=6'sd23; t=14'sd4624; end
7'd36: begin a=6'sd25; b=6'sd25; t=14'sd5025; end
7'd37: begin a=6'sd25; b=6'sd27; t=14'sd5426; end
7'd38: begin a=6'sd25; b=6'sd29; t=14'sd5827; end
7'd39: begin a=6'sd25; b=6'sd31; t=14'sd6228; end
7'd40: begin a=6'sd27; b=6'sd17; t=14'sd3694; end
7'd41: begin a=6'sd27; b=6'sd19; t=14'sd4127; end
7'd42: begin a=6'sd27; b=6'sd21; t=14'sd4560; end
7'd43: begin a=6'sd27; b=6'sd23; t=14'sd4993; end
7'd44: begin a=6'sd27; b=6'sd25; t=14'sd5426; end
7'd45: begin a=6'sd27; b=6'sd27; t=14'sd5859; end
7'd46: begin a=6'sd27; b=6'sd29; t=14'sd6292; end
7'd47: begin a=6'sd27; b=6'sd31; t=14'sd6725; end
7'd48: begin a=6'sd29; b=6'sd17; t=14'sd3967; end
7'd49: begin a=6'sd29; b=6'sd19; t=14'sd4432; end
7'd50: begin a=6'sd29; b=6'sd21; t=14'sd4897; end
7'd51: begin a=6'sd29; b=6'sd23; t=14'sd5362; end
7'd52: begin a=6'sd29; b=6'sd25; t=14'sd5827; end
7'd53: begin a=6'sd29; b=6'sd27; t=14'sd6292; end
7'd54: begin a=6'sd29; b=6'sd29; t=14'sd6757; end
7'd55: begin a=6'sd29; b=6'sd31; t=14'sd7222; end
7'd56: begin a=6'sd31; b=6'sd17; t=14'sd4240; end
7'd57: begin a=6'sd31; b=6'sd19; t=14'sd4737; end
7'd58: begin a=6'sd31; b=6'sd21; t=14'sd5234; end
7'd59: begin a=6'sd31; b=6'sd23; t=14'sd5731; end
7'd60: begin a=6'sd31; b=6'sd25; t=14'sd6228; end
7'd61: begin a=6'sd31; b=6'sd27; t=14'sd6725; end
7'd62: begin a=6'sd31; b=6'sd29; t=14'sd7222; end
7'd63: begin a=6'sd31; b=6'sd31; t=14'sd7719; end
7'd64: begin a=6'sd15; b=6'sd15; t=14'sd2050; end
7'd65: begin a=6'sd15; b=6'sd17; t=14'sd2291; end
7'd66: begin a=6'sd15; b=6'sd19; t=14'sd2532; end
7'd67: begin a=6'sd15; b=6'sd20; t=14'sd2774; end
7'd68: begin a=6'sd15; b=6'sd22; t=14'sd3015; end
7'd69: begin a=6'sd15; b=6'sd24; t=14'sd3256; end
7'd70: begin a=6'sd15; b=6'sd26; t=14'sd3497; end
7'd71: begin a=6'sd15; b=6'sd27; t=14'sd3738; end
7'd72: begin a=6'sd14; b=6'sd12; t=14'sd1837; end
7'd73: begin a=6'sd14; b=6'sd14; t=14'sd2053; end
7'd74: begin a=6'sd14; b=6'sd15; t=14'sd2269; end
7'd75: begin a=6'sd14; b=6'sd16; t=14'sd2485; end
7'd76: begin a=6'sd14; b=6'sd18; t=14'sd2702; end
7'd77: begin a=6'sd14; b=6'sd19; t=14'sd2918; end
7'd78: begin a=6'sd14; b=6'sd21; t=14'sd3134; end
7'd79: begin a=6'sd14; b=6'sd22; t=14'sd3350; end
7'd80: begin a=6'sd12; b=6'sd10; t=14'sd1662; end
7'd81: begin a=6'sd12; b=6'sd11; t=14'sd1858; end
7'd82: begin a=6'sd12; b=6'sd12; t=14'sd2053; end
7'd83: begin a=6'sd12; b=6'sd13; t=14'sd2249; end
7'd84: begin a=6'sd12; b=6'sd15; t=14'sd2445; end
7'd85: begin a=6'sd12; b=6'sd16; t=14'sd2640; end
7'd86: begin a=6'sd12; b=6'sd17; t=14'sd2836; end
7'd87: begin a=6'sd12; b=6'sd18; t=14'sd3031; end
7'd88: begin a=6'sd11; b=6'sd8; t=14'sd1515; end
7'd89: begin a=6'sd11; b=6'sd9; t=14'sd1693; end
7'd90: begin a=6'sd11; b=6'sd10; t=14'sd1872; end
7'd91: begin a=6'sd11; b=6'sd11; t=14'sd2050; end
7'd92: begin a=6'sd11; b=6'sd12; t=14'sd2228; end
7'd93: begin a=6'sd11; b=6'sd13; t=14'sd2406; end
7'd94: begin a=6'sd11; b=6'sd14; t=14'sd2585; end
7'd95: begin a=6'sd11; b=6'sd15; t=14'sd2763; end
7'd96: begin a=6'sd10; b=6'sd7; t=14'sd1395; end
7'd97: begin a=6'sd10; b=6'sd8; t=14'sd1559; end
7'd98: begin a=6'sd10; b=6'sd9; t=14'sd1723; end
7'd99: begin a=6'sd10; b=6'sd9; t=14'sd1887; end
7'd100: begin a=6'sd10; b=6'sd10; t=14'sd2051; end
7'd101: begin a=6'sd10; b=6'sd11; t=14'sd2215; end
7'd102: begin a=6'sd10; b=6'sd12; t=14'sd2379; end
7'd103: begin a=6'sd10; b=6'sd13; t=14'sd2543; end
7'd104: begin a=6'sd9; b=6'sd6; t=14'sd1291; end
7'd105: begin a=6'sd9; b=6'sd7; t=14'sd1443; end
7'd106: begin a=6'sd9; b=6'sd7; t=14'sd1595; end
7'd107: begin a=6'sd9; b=6'sd8; t=14'sd1747; end
7'd108: begin a=6'sd9; b=6'sd9; t=14'sd1898; end
7'd109: begin a=6'sd9; b=6'sd9; t=14'sd2050; end
7'd110: begin a=6'sd9; b=6'sd10; t=14'sd2202; end
7'd111: begin a=6'sd9; b=6'sd11; t=14'sd2354; end
7'd112: begin a=6'sd9; b=6'sd5; t=14'sd1202; end
7'd113: begin a=6'sd9; b=6'sd6; t=14'sd1343; end
7'd114: begin a=6'sd9; b=6'sd6; t=14'sd1484; end
7'd115: begin a=6'sd9; b=6'sd7; t=14'sd1626; end
7'd116: begin a=6'sd9; b=6'sd8; t=14'sd1767; end
7'd117: begin a=6'sd9; b=6'sd8; t=14'sd1909; end
7'd118: begin a=6'sd9; b=6'sd9; t=14'sd2050; end
7'd119: begin a=6'sd9; b=6'sd9; t=14'sd2191; end
7'd120: begin a=6'sd8; b=6'sd5; t=14'sd1120; end
7'd121: begin a=6'sd8; b=6'sd5; t=14'sd1252; end
7'd122: begin a=6'sd8; b=6'sd6; t=14'sd1383; end
7'd123: begin a=6'sd8; b=6'sd6; t=14'sd1515; end
7'd124: begin a=6'sd8; b=6'sd7; t=14'sd1647; end
7'd125: begin a=6'sd8; b=6'sd7; t=14'sd1779; end
7'd126: begin a=6'sd8; b=6'sd8; t=14'sd1910; end
7'd127: begin a=6'sd8; b=6'sd8; t=14'sd2042; end
default: begin a=0; b=0; t=0; end
endcase
end

wire signed [9:0] px=rx*a, py=ry*b;
wire signed [15:0] ex=px,ey=py,ec=t;
wire signed [15:0] signed_y=divide_mode ? -ey : ey;
wire signed [15:0] p=ec+ex+signed_y;
wire signed [28:0] extended=p;
assign value=extended <<< 12;
endmodule
module unified_div_drop_l3_shared(input [31:0] x,y,input divide_mode,output [31:0] result);
wire [22:0] fx,fy;
wire signed [28:0] core_value;
unified_div_drop_l3_shared_core shared_core(fx,fy,divide_mode,core_value);
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
