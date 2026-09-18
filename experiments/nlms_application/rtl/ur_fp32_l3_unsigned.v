module ur_fp32_l3_unsigned_core(input [22:0] fx,fy, input divide_mode, output signed [28:0] value);
wire [3:0] rx=fx[19:16], ry=fy[19:16] ^ {4{divide_mode}};
reg [5:0] a;
reg [5:0] b;
reg [13:0] t;
always @* begin
case ({divide_mode,fy[22:20],fx[22:20]})
7'd0: begin a=6'd17; b=6'd17; t=14'd2057; end
7'd1: begin a=6'd17; b=6'd19; t=14'd2314; end
7'd2: begin a=6'd17; b=6'd21; t=14'd2571; end
7'd3: begin a=6'd17; b=6'd23; t=14'd2828; end
7'd4: begin a=6'd17; b=6'd25; t=14'd3085; end
7'd5: begin a=6'd17; b=6'd27; t=14'd3342; end
7'd6: begin a=6'd17; b=6'd29; t=14'd3599; end
7'd7: begin a=6'd17; b=6'd31; t=14'd3856; end
7'd8: begin a=6'd19; b=6'd17; t=14'd2314; end
7'd9: begin a=6'd19; b=6'd19; t=14'd2603; end
7'd10: begin a=6'd19; b=6'd21; t=14'd2892; end
7'd11: begin a=6'd19; b=6'd23; t=14'd3181; end
7'd12: begin a=6'd19; b=6'd25; t=14'd3470; end
7'd13: begin a=6'd19; b=6'd27; t=14'd3759; end
7'd14: begin a=6'd19; b=6'd29; t=14'd4048; end
7'd15: begin a=6'd19; b=6'd31; t=14'd4337; end
7'd16: begin a=6'd21; b=6'd17; t=14'd2571; end
7'd17: begin a=6'd21; b=6'd19; t=14'd2892; end
7'd18: begin a=6'd21; b=6'd21; t=14'd3213; end
7'd19: begin a=6'd21; b=6'd23; t=14'd3534; end
7'd20: begin a=6'd21; b=6'd25; t=14'd3855; end
7'd21: begin a=6'd21; b=6'd27; t=14'd4176; end
7'd22: begin a=6'd21; b=6'd29; t=14'd4497; end
7'd23: begin a=6'd21; b=6'd31; t=14'd4818; end
7'd24: begin a=6'd23; b=6'd17; t=14'd2828; end
7'd25: begin a=6'd23; b=6'd19; t=14'd3181; end
7'd26: begin a=6'd23; b=6'd21; t=14'd3534; end
7'd27: begin a=6'd23; b=6'd23; t=14'd3887; end
7'd28: begin a=6'd23; b=6'd25; t=14'd4240; end
7'd29: begin a=6'd23; b=6'd27; t=14'd4593; end
7'd30: begin a=6'd23; b=6'd29; t=14'd4946; end
7'd31: begin a=6'd23; b=6'd31; t=14'd5299; end
7'd32: begin a=6'd25; b=6'd17; t=14'd3085; end
7'd33: begin a=6'd25; b=6'd19; t=14'd3470; end
7'd34: begin a=6'd25; b=6'd21; t=14'd3855; end
7'd35: begin a=6'd25; b=6'd23; t=14'd4240; end
7'd36: begin a=6'd25; b=6'd25; t=14'd4625; end
7'd37: begin a=6'd25; b=6'd27; t=14'd5010; end
7'd38: begin a=6'd25; b=6'd29; t=14'd5395; end
7'd39: begin a=6'd25; b=6'd31; t=14'd5780; end
7'd40: begin a=6'd27; b=6'd17; t=14'd3342; end
7'd41: begin a=6'd27; b=6'd19; t=14'd3759; end
7'd42: begin a=6'd27; b=6'd21; t=14'd4176; end
7'd43: begin a=6'd27; b=6'd23; t=14'd4593; end
7'd44: begin a=6'd27; b=6'd25; t=14'd5010; end
7'd45: begin a=6'd27; b=6'd27; t=14'd5427; end
7'd46: begin a=6'd27; b=6'd29; t=14'd5844; end
7'd47: begin a=6'd27; b=6'd31; t=14'd6261; end
7'd48: begin a=6'd29; b=6'd17; t=14'd3599; end
7'd49: begin a=6'd29; b=6'd19; t=14'd4048; end
7'd50: begin a=6'd29; b=6'd21; t=14'd4497; end
7'd51: begin a=6'd29; b=6'd23; t=14'd4946; end
7'd52: begin a=6'd29; b=6'd25; t=14'd5395; end
7'd53: begin a=6'd29; b=6'd27; t=14'd5844; end
7'd54: begin a=6'd29; b=6'd29; t=14'd6293; end
7'd55: begin a=6'd29; b=6'd31; t=14'd6742; end
7'd56: begin a=6'd31; b=6'd17; t=14'd3856; end
7'd57: begin a=6'd31; b=6'd19; t=14'd4337; end
7'd58: begin a=6'd31; b=6'd21; t=14'd4818; end
7'd59: begin a=6'd31; b=6'd23; t=14'd5299; end
7'd60: begin a=6'd31; b=6'd25; t=14'd5780; end
7'd61: begin a=6'd31; b=6'd27; t=14'd6261; end
7'd62: begin a=6'd31; b=6'd29; t=14'd6742; end
7'd63: begin a=6'd31; b=6'd31; t=14'd7223; end
7'd64: begin a=6'd15; b=6'd15; t=14'd1825; end
7'd65: begin a=6'd15; b=6'd17; t=14'd2052; end
7'd66: begin a=6'd15; b=6'd19; t=14'd2279; end
7'd67: begin a=6'd15; b=6'd20; t=14'd2514; end
7'd68: begin a=6'd15; b=6'd22; t=14'd2741; end
7'd69: begin a=6'd15; b=6'd24; t=14'd2968; end
7'd70: begin a=6'd15; b=6'd26; t=14'd3195; end
7'd71: begin a=6'd15; b=6'd27; t=14'd3429; end
7'd72: begin a=6'd14; b=6'd12; t=14'd1641; end
7'd73: begin a=6'd14; b=6'd14; t=14'd1843; end
7'd74: begin a=6'd14; b=6'd15; t=14'd2052; end
7'd75: begin a=6'd14; b=6'd16; t=14'd2261; end
7'd76: begin a=6'd14; b=6'd18; t=14'd2464; end
7'd77: begin a=6'd14; b=6'd19; t=14'd2673; end
7'd78: begin a=6'd14; b=6'd21; t=14'd2875; end
7'd79: begin a=6'd14; b=6'd22; t=14'd3084; end
7'd80: begin a=6'd12; b=6'd10; t=14'd1496; end
7'd81: begin a=6'd12; b=6'd11; t=14'd1685; end
7'd82: begin a=6'd12; b=6'd12; t=14'd1873; end
7'd83: begin a=6'd12; b=6'd13; t=14'd2062; end
7'd84: begin a=6'd12; b=6'd15; t=14'd2244; end
7'd85: begin a=6'd12; b=6'd16; t=14'd2432; end
7'd86: begin a=6'd12; b=6'd17; t=14'd2621; end
7'd87: begin a=6'd12; b=6'd18; t=14'd2809; end
7'd88: begin a=6'd11; b=6'd8; t=14'd1371; end
7'd89: begin a=6'd11; b=6'd9; t=14'd1542; end
7'd90: begin a=6'd11; b=6'd10; t=14'd1714; end
7'd91: begin a=6'd11; b=6'd11; t=14'd1885; end
7'd92: begin a=6'd11; b=6'd12; t=14'd2056; end
7'd93: begin a=6'd11; b=6'd13; t=14'd2227; end
7'd94: begin a=6'd11; b=6'd14; t=14'd2399; end
7'd95: begin a=6'd11; b=6'd15; t=14'd2570; end
7'd96: begin a=6'd10; b=6'd7; t=14'd1266; end
7'd97: begin a=6'd10; b=6'd8; t=14'd1423; end
7'd98: begin a=6'd10; b=6'd9; t=14'd1580; end
7'd99: begin a=6'd10; b=6'd9; t=14'd1744; end
7'd100: begin a=6'd10; b=6'd10; t=14'd1901; end
7'd101: begin a=6'd10; b=6'd11; t=14'd2058; end
7'd102: begin a=6'd10; b=6'd12; t=14'd2215; end
7'd103: begin a=6'd10; b=6'd13; t=14'd2372; end
7'd104: begin a=6'd9; b=6'd6; t=14'd1177; end
7'd105: begin a=6'd9; b=6'd7; t=14'd1322; end
7'd106: begin a=6'd9; b=6'd7; t=14'd1474; end
7'd107: begin a=6'd9; b=6'd8; t=14'd1619; end
7'd108: begin a=6'd9; b=6'd9; t=14'd1763; end
7'd109: begin a=6'd9; b=6'd9; t=14'd1915; end
7'd110: begin a=6'd9; b=6'd10; t=14'd2060; end
7'd111: begin a=6'd9; b=6'd11; t=14'd2205; end
7'd112: begin a=6'd9; b=6'd5; t=14'd1095; end
7'd113: begin a=6'd9; b=6'd6; t=14'd1229; end
7'd114: begin a=6'd9; b=6'd6; t=14'd1370; end
7'd115: begin a=6'd9; b=6'd7; t=14'd1505; end
7'd116: begin a=6'd9; b=6'd8; t=14'd1639; end
7'd117: begin a=6'd9; b=6'd8; t=14'd1781; end
7'd118: begin a=6'd9; b=6'd9; t=14'd1915; end
7'd119: begin a=6'd9; b=6'd9; t=14'd2056; end
7'd120: begin a=6'd8; b=6'd5; t=14'd1021; end
7'd121: begin a=6'd8; b=6'd5; t=14'd1153; end
7'd122: begin a=6'd8; b=6'd6; t=14'd1277; end
7'd123: begin a=6'd8; b=6'd6; t=14'd1409; end
7'd124: begin a=6'd8; b=6'd7; t=14'd1534; end
7'd125: begin a=6'd8; b=6'd7; t=14'd1666; end
7'd126: begin a=6'd8; b=6'd8; t=14'd1790; end
7'd127: begin a=6'd8; b=6'd8; t=14'd1922; end
default: begin a=0; b=0; t=0; end
endcase
end

wire [9:0] px=rx*a, py=ry*b;
wire [15:0] ex=px,ey=py,ec=t;
wire [15:0] p=ec+ex+ey;
wire signed [28:0] extended=p;
assign value=extended <<< 12;
endmodule
module ur_fp32_l3_unsigned(input [31:0] x,y,input divide_mode,output [31:0] result);
wire [22:0] fx,fy;
wire signed [28:0] core_value;
ur_fp32_l3_unsigned_core shared_core(fx,fy,divide_mode,core_value);
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
