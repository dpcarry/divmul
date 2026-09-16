module unified_mul_drop_l3_div_reference(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy;
wire signed [9:0] rx={~fx[19],fx[18:10]}, ry={~fy[19],fy[18:10]};
reg signed [4:0] a;
reg signed [5:0] b;
reg signed [18:0] c;
always @* begin
case ({fy[22:20],fx[22:20]})
6'd0: begin a=5'sd15; b=6'sd15; c=19'sd131206; end
6'd1: begin a=5'sd15; b=6'sd17; c=19'sd146642; end
6'd2: begin a=5'sd15; b=6'sd19; c=19'sd162078; end
6'd3: begin a=5'sd15; b=6'sd20; c=19'sd177514; end
6'd4: begin a=5'sd15; b=6'sd22; c=19'sd192950; end
6'd5: begin a=5'sd15; b=6'sd24; c=19'sd208386; end
6'd6: begin a=5'sd15; b=6'sd26; c=19'sd223822; end
6'd7: begin a=5'sd15; b=6'sd27; c=19'sd239258; end
6'd8: begin a=5'sd14; b=6'sd12; c=19'sd117572; end
6'd9: begin a=5'sd14; b=6'sd14; c=19'sd131404; end
6'd10: begin a=5'sd14; b=6'sd15; c=19'sd145236; end
6'd11: begin a=5'sd14; b=6'sd16; c=19'sd159068; end
6'd12: begin a=5'sd14; b=6'sd18; c=19'sd172900; end
6'd13: begin a=5'sd14; b=6'sd19; c=19'sd186732; end
6'd14: begin a=5'sd14; b=6'sd21; c=19'sd200564; end
6'd15: begin a=5'sd14; b=6'sd22; c=19'sd214396; end
6'd16: begin a=5'sd12; b=6'sd10; c=19'sd106386; end
6'd17: begin a=5'sd12; b=6'sd11; c=19'sd118902; end
6'd18: begin a=5'sd12; b=6'sd12; c=19'sd131418; end
6'd19: begin a=5'sd12; b=6'sd13; c=19'sd143934; end
6'd20: begin a=5'sd12; b=6'sd15; c=19'sd156450; end
6'd21: begin a=5'sd12; b=6'sd16; c=19'sd168966; end
6'd22: begin a=5'sd12; b=6'sd17; c=19'sd181482; end
6'd23: begin a=5'sd12; b=6'sd18; c=19'sd193998; end
6'd24: begin a=5'sd11; b=6'sd8; c=19'sd96968; end
6'd25: begin a=5'sd11; b=6'sd9; c=19'sd108376; end
6'd26: begin a=5'sd11; b=6'sd10; c=19'sd119784; end
6'd27: begin a=5'sd11; b=6'sd11; c=19'sd131192; end
6'd28: begin a=5'sd11; b=6'sd12; c=19'sd142600; end
6'd29: begin a=5'sd11; b=6'sd13; c=19'sd154008; end
6'd30: begin a=5'sd11; b=6'sd14; c=19'sd165416; end
6'd31: begin a=5'sd11; b=6'sd15; c=19'sd176824; end
6'd32: begin a=5'sd10; b=6'sd7; c=19'sd89250; end
6'd33: begin a=5'sd10; b=6'sd8; c=19'sd99750; end
6'd34: begin a=5'sd10; b=6'sd9; c=19'sd110250; end
6'd35: begin a=5'sd10; b=6'sd9; c=19'sd120750; end
6'd36: begin a=5'sd10; b=6'sd10; c=19'sd131250; end
6'd37: begin a=5'sd10; b=6'sd11; c=19'sd141750; end
6'd38: begin a=5'sd10; b=6'sd12; c=19'sd152250; end
6'd39: begin a=5'sd10; b=6'sd13; c=19'sd162750; end
6'd40: begin a=5'sd9; b=6'sd6; c=19'sd82620; end
6'd41: begin a=5'sd9; b=6'sd7; c=19'sd92340; end
6'd42: begin a=5'sd9; b=6'sd7; c=19'sd102060; end
6'd43: begin a=5'sd9; b=6'sd8; c=19'sd111780; end
6'd44: begin a=5'sd9; b=6'sd9; c=19'sd121500; end
6'd45: begin a=5'sd9; b=6'sd9; c=19'sd131220; end
6'd46: begin a=5'sd9; b=6'sd10; c=19'sd140940; end
6'd47: begin a=5'sd9; b=6'sd11; c=19'sd150660; end
6'd48: begin a=5'sd9; b=6'sd5; c=19'sd76908; end
6'd49: begin a=5'sd9; b=6'sd6; c=19'sd85956; end
6'd50: begin a=5'sd9; b=6'sd6; c=19'sd95004; end
6'd51: begin a=5'sd9; b=6'sd7; c=19'sd104052; end
6'd52: begin a=5'sd9; b=6'sd8; c=19'sd113100; end
6'd53: begin a=5'sd9; b=6'sd8; c=19'sd122148; end
6'd54: begin a=5'sd9; b=6'sd9; c=19'sd131196; end
6'd55: begin a=5'sd9; b=6'sd9; c=19'sd140244; end
6'd56: begin a=5'sd8; b=6'sd5; c=19'sd71672; end
6'd57: begin a=5'sd8; b=6'sd5; c=19'sd80104; end
6'd58: begin a=5'sd8; b=6'sd6; c=19'sd88536; end
6'd59: begin a=5'sd8; b=6'sd6; c=19'sd96968; end
6'd60: begin a=5'sd8; b=6'sd7; c=19'sd105400; end
6'd61: begin a=5'sd8; b=6'sd7; c=19'sd113832; end
6'd62: begin a=5'sd8; b=6'sd8; c=19'sd122264; end
6'd63: begin a=5'sd8; b=6'sd8; c=19'sd130696; end
default: begin a=0; b=0; c=0; end
endcase
end
wire signed [15:0] px=rx*a, py=ry*b;
wire signed [20:0] ex=px, ey=py, ec=c;
wire signed [20:0] p=ec+(ex << 0)-(ey << 0);
wire signed [28:0] p_extended=p;
wire signed [28:0] value=p_extended <<< 6;
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
