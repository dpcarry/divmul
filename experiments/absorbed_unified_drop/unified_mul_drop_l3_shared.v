module unified_mul_drop_l3_shared_core(input [22:0] fx,fy, input divide_mode, output signed [28:0] value);
wire signed [9:0] rx={~fx[19],fx[18:10]}, ry={~fy[19],fy[18:10]};
reg signed [5:0] a;
reg signed [5:0] b;
reg signed [19:0] t;
always @* begin
case ({divide_mode,fy[22:20],fx[22:20]})
7'd0: begin a=6'sd17; b=6'sd17; t=20'sd147985; end
7'd1: begin a=6'sd17; b=6'sd19; t=20'sd165394; end
7'd2: begin a=6'sd17; b=6'sd21; t=20'sd182803; end
7'd3: begin a=6'sd17; b=6'sd23; t=20'sd200212; end
7'd4: begin a=6'sd17; b=6'sd25; t=20'sd217621; end
7'd5: begin a=6'sd17; b=6'sd27; t=20'sd235030; end
7'd6: begin a=6'sd17; b=6'sd29; t=20'sd252439; end
7'd7: begin a=6'sd17; b=6'sd31; t=20'sd269848; end
7'd8: begin a=6'sd19; b=6'sd17; t=20'sd165394; end
7'd9: begin a=6'sd19; b=6'sd19; t=20'sd184851; end
7'd10: begin a=6'sd19; b=6'sd21; t=20'sd204308; end
7'd11: begin a=6'sd19; b=6'sd23; t=20'sd223765; end
7'd12: begin a=6'sd19; b=6'sd25; t=20'sd243222; end
7'd13: begin a=6'sd19; b=6'sd27; t=20'sd262679; end
7'd14: begin a=6'sd19; b=6'sd29; t=20'sd282136; end
7'd15: begin a=6'sd19; b=6'sd31; t=20'sd301593; end
7'd16: begin a=6'sd21; b=6'sd17; t=20'sd182803; end
7'd17: begin a=6'sd21; b=6'sd19; t=20'sd204308; end
7'd18: begin a=6'sd21; b=6'sd21; t=20'sd225813; end
7'd19: begin a=6'sd21; b=6'sd23; t=20'sd247318; end
7'd20: begin a=6'sd21; b=6'sd25; t=20'sd268823; end
7'd21: begin a=6'sd21; b=6'sd27; t=20'sd290328; end
7'd22: begin a=6'sd21; b=6'sd29; t=20'sd311833; end
7'd23: begin a=6'sd21; b=6'sd31; t=20'sd333338; end
7'd24: begin a=6'sd23; b=6'sd17; t=20'sd200212; end
7'd25: begin a=6'sd23; b=6'sd19; t=20'sd223765; end
7'd26: begin a=6'sd23; b=6'sd21; t=20'sd247318; end
7'd27: begin a=6'sd23; b=6'sd23; t=20'sd270871; end
7'd28: begin a=6'sd23; b=6'sd25; t=20'sd294424; end
7'd29: begin a=6'sd23; b=6'sd27; t=20'sd317977; end
7'd30: begin a=6'sd23; b=6'sd29; t=20'sd341530; end
7'd31: begin a=6'sd23; b=6'sd31; t=20'sd365083; end
7'd32: begin a=6'sd25; b=6'sd17; t=20'sd217621; end
7'd33: begin a=6'sd25; b=6'sd19; t=20'sd243222; end
7'd34: begin a=6'sd25; b=6'sd21; t=20'sd268823; end
7'd35: begin a=6'sd25; b=6'sd23; t=20'sd294424; end
7'd36: begin a=6'sd25; b=6'sd25; t=20'sd320025; end
7'd37: begin a=6'sd25; b=6'sd27; t=20'sd345626; end
7'd38: begin a=6'sd25; b=6'sd29; t=20'sd371227; end
7'd39: begin a=6'sd25; b=6'sd31; t=20'sd396828; end
7'd40: begin a=6'sd27; b=6'sd17; t=20'sd235030; end
7'd41: begin a=6'sd27; b=6'sd19; t=20'sd262679; end
7'd42: begin a=6'sd27; b=6'sd21; t=20'sd290328; end
7'd43: begin a=6'sd27; b=6'sd23; t=20'sd317977; end
7'd44: begin a=6'sd27; b=6'sd25; t=20'sd345626; end
7'd45: begin a=6'sd27; b=6'sd27; t=20'sd373275; end
7'd46: begin a=6'sd27; b=6'sd29; t=20'sd400924; end
7'd47: begin a=6'sd27; b=6'sd31; t=20'sd428573; end
7'd48: begin a=6'sd29; b=6'sd17; t=20'sd252439; end
7'd49: begin a=6'sd29; b=6'sd19; t=20'sd282136; end
7'd50: begin a=6'sd29; b=6'sd21; t=20'sd311833; end
7'd51: begin a=6'sd29; b=6'sd23; t=20'sd341530; end
7'd52: begin a=6'sd29; b=6'sd25; t=20'sd371227; end
7'd53: begin a=6'sd29; b=6'sd27; t=20'sd400924; end
7'd54: begin a=6'sd29; b=6'sd29; t=20'sd430621; end
7'd55: begin a=6'sd29; b=6'sd31; t=20'sd460318; end
7'd56: begin a=6'sd31; b=6'sd17; t=20'sd269848; end
7'd57: begin a=6'sd31; b=6'sd19; t=20'sd301593; end
7'd58: begin a=6'sd31; b=6'sd21; t=20'sd333338; end
7'd59: begin a=6'sd31; b=6'sd23; t=20'sd365083; end
7'd60: begin a=6'sd31; b=6'sd25; t=20'sd396828; end
7'd61: begin a=6'sd31; b=6'sd27; t=20'sd428573; end
7'd62: begin a=6'sd31; b=6'sd29; t=20'sd460318; end
7'd63: begin a=6'sd31; b=6'sd31; t=20'sd492063; end
7'd64: begin a=6'sd15; b=6'sd15; t=20'sd131206; end
7'd65: begin a=6'sd15; b=6'sd17; t=20'sd146642; end
7'd66: begin a=6'sd15; b=6'sd19; t=20'sd162078; end
7'd67: begin a=6'sd15; b=6'sd20; t=20'sd177514; end
7'd68: begin a=6'sd15; b=6'sd22; t=20'sd192950; end
7'd69: begin a=6'sd15; b=6'sd24; t=20'sd208386; end
7'd70: begin a=6'sd15; b=6'sd26; t=20'sd223822; end
7'd71: begin a=6'sd15; b=6'sd27; t=20'sd239258; end
7'd72: begin a=6'sd14; b=6'sd12; t=20'sd117572; end
7'd73: begin a=6'sd14; b=6'sd14; t=20'sd131404; end
7'd74: begin a=6'sd14; b=6'sd15; t=20'sd145236; end
7'd75: begin a=6'sd14; b=6'sd16; t=20'sd159068; end
7'd76: begin a=6'sd14; b=6'sd18; t=20'sd172900; end
7'd77: begin a=6'sd14; b=6'sd19; t=20'sd186732; end
7'd78: begin a=6'sd14; b=6'sd21; t=20'sd200564; end
7'd79: begin a=6'sd14; b=6'sd22; t=20'sd214396; end
7'd80: begin a=6'sd12; b=6'sd10; t=20'sd106386; end
7'd81: begin a=6'sd12; b=6'sd11; t=20'sd118902; end
7'd82: begin a=6'sd12; b=6'sd12; t=20'sd131418; end
7'd83: begin a=6'sd12; b=6'sd13; t=20'sd143934; end
7'd84: begin a=6'sd12; b=6'sd15; t=20'sd156450; end
7'd85: begin a=6'sd12; b=6'sd16; t=20'sd168966; end
7'd86: begin a=6'sd12; b=6'sd17; t=20'sd181482; end
7'd87: begin a=6'sd12; b=6'sd18; t=20'sd193998; end
7'd88: begin a=6'sd11; b=6'sd8; t=20'sd96968; end
7'd89: begin a=6'sd11; b=6'sd9; t=20'sd108376; end
7'd90: begin a=6'sd11; b=6'sd10; t=20'sd119784; end
7'd91: begin a=6'sd11; b=6'sd11; t=20'sd131192; end
7'd92: begin a=6'sd11; b=6'sd12; t=20'sd142600; end
7'd93: begin a=6'sd11; b=6'sd13; t=20'sd154008; end
7'd94: begin a=6'sd11; b=6'sd14; t=20'sd165416; end
7'd95: begin a=6'sd11; b=6'sd15; t=20'sd176824; end
7'd96: begin a=6'sd10; b=6'sd7; t=20'sd89250; end
7'd97: begin a=6'sd10; b=6'sd8; t=20'sd99750; end
7'd98: begin a=6'sd10; b=6'sd9; t=20'sd110250; end
7'd99: begin a=6'sd10; b=6'sd9; t=20'sd120750; end
7'd100: begin a=6'sd10; b=6'sd10; t=20'sd131250; end
7'd101: begin a=6'sd10; b=6'sd11; t=20'sd141750; end
7'd102: begin a=6'sd10; b=6'sd12; t=20'sd152250; end
7'd103: begin a=6'sd10; b=6'sd13; t=20'sd162750; end
7'd104: begin a=6'sd9; b=6'sd6; t=20'sd82620; end
7'd105: begin a=6'sd9; b=6'sd7; t=20'sd92340; end
7'd106: begin a=6'sd9; b=6'sd7; t=20'sd102060; end
7'd107: begin a=6'sd9; b=6'sd8; t=20'sd111780; end
7'd108: begin a=6'sd9; b=6'sd9; t=20'sd121500; end
7'd109: begin a=6'sd9; b=6'sd9; t=20'sd131220; end
7'd110: begin a=6'sd9; b=6'sd10; t=20'sd140940; end
7'd111: begin a=6'sd9; b=6'sd11; t=20'sd150660; end
7'd112: begin a=6'sd9; b=6'sd5; t=20'sd76908; end
7'd113: begin a=6'sd9; b=6'sd6; t=20'sd85956; end
7'd114: begin a=6'sd9; b=6'sd6; t=20'sd95004; end
7'd115: begin a=6'sd9; b=6'sd7; t=20'sd104052; end
7'd116: begin a=6'sd9; b=6'sd8; t=20'sd113100; end
7'd117: begin a=6'sd9; b=6'sd8; t=20'sd122148; end
7'd118: begin a=6'sd9; b=6'sd9; t=20'sd131196; end
7'd119: begin a=6'sd9; b=6'sd9; t=20'sd140244; end
7'd120: begin a=6'sd8; b=6'sd5; t=20'sd71672; end
7'd121: begin a=6'sd8; b=6'sd5; t=20'sd80104; end
7'd122: begin a=6'sd8; b=6'sd6; t=20'sd88536; end
7'd123: begin a=6'sd8; b=6'sd6; t=20'sd96968; end
7'd124: begin a=6'sd8; b=6'sd7; t=20'sd105400; end
7'd125: begin a=6'sd8; b=6'sd7; t=20'sd113832; end
7'd126: begin a=6'sd8; b=6'sd8; t=20'sd122264; end
7'd127: begin a=6'sd8; b=6'sd8; t=20'sd130696; end
default: begin a=0; b=0; t=0; end
endcase
end

wire signed [15:0] px=rx*a, py=ry*b;
wire signed [21:0] ex=px,ey=py,ec=t;
wire signed [21:0] signed_y=divide_mode ? -ey : ey;
wire signed [21:0] p=ec+ex+signed_y;
wire signed [28:0] extended=p;
assign value=extended <<< 6;
endmodule
module unified_mul_drop_l3_shared(input [31:0] x,y,input divide_mode,output [31:0] result);
wire [22:0] fx,fy;
wire signed [28:0] core_value;
unified_mul_drop_l3_shared_core shared_core(fx,fy,divide_mode,core_value);
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
