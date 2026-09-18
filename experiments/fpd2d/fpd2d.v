// Reconstructed from Di Meo et al., Fig. 5/6 and Eq. 18.
module fpd2d_2x4_t19_core(input [22:0] x, y, output [22:0] fraction, output shift);
reg [2:0] a, bmag; reg [7:0] c;
always @* begin
case ({y[22:21],x[22:22]})
3'd0: begin a=3'd4; bmag=3'd4; c=8'd127; end
3'd1: begin a=3'd4; bmag=3'd6; c=8'd191; end
3'd2: begin a=3'd3; bmag=3'd3; c=8'd104; end
3'd3: begin a=3'd3; bmag=3'd4; c=8'd155; end
3'd4: begin a=3'd2; bmag=3'd2; c=8'd90; end
3'd5: begin a=3'd2; bmag=3'd3; c=8'd134; end
3'd6: begin a=3'd2; bmag=3'd1; c=8'd73; end
3'd7: begin a=3'd2; bmag=3'd2; c=8'd112; end
default: begin a=0; bmag=0; c=0; end
endcase
end
wire [2:0] u=x[21:19];
wire [1:0] v=y[20:19];
wire [8:0] u0 = (a[0] ? ({{6{1'b0}},u} << 1) : 9'd0);
wire [8:0] u1 = (a[1] ? ({{6{1'b0}},u} << 2) : 9'd0);
wire [8:0] u2 = (a[2] ? ({{6{1'b0}},u} << 3) : 9'd0);
wire [8:0] v0 = ~(bmag[0] ? ({{7{1'b0}},v} << 1) : 9'd0);
wire [8:0] v1 = ~(bmag[1] ? ({{7{1'b0}},v} << 2) : 9'd0);
wire [8:0] v2 = ~(bmag[2] ? ({{7{1'b0}},v} << 3) : 9'd0);
wire [8:0] cterm = ({{1{1'b0}},c} << 0);
wire [8:0] correction = 9'd3;
wire [8:0] s0_0 = u0 ^ u1 ^ u2;
wire [8:0] c0_0 = ((u0&u1)|(u0&u2)|(u1&u2)) << 1;
wire [8:0] s0_3 = v0 ^ v1 ^ v2;
wire [8:0] c0_3 = ((v0&v1)|(v0&v2)|(v1&v2)) << 1;
wire [8:0] s1_0 = s0_0 ^ c0_0 ^ s0_3;
wire [8:0] c1_0 = ((s0_0&c0_0)|(s0_0&s0_3)|(c0_0&s0_3)) << 1;
wire [8:0] s1_3 = c0_3 ^ cterm ^ correction;
wire [8:0] c1_3 = ((c0_3&cterm)|(c0_3&correction)|(cterm&correction)) << 1;
wire [8:0] s2_0 = s1_0 ^ c1_0 ^ s1_3;
wire [8:0] c2_0 = ((s1_0&c1_0)|(s1_0&s1_3)|(c1_0&s1_3)) << 1;
wire [8:0] s3_0 = s2_0 ^ c2_0 ^ c1_3;
wire [8:0] c3_0 = ((s2_0&c2_0)|(s2_0&c1_3)|(c2_0&c1_3)) << 1;
wire [8:0] p = s3_0 + c3_0;
assign shift = ~p[7];
wire [6:0] frac_narrow = shift ? {p[5:0],1'b0} : p[6:0];
assign fraction = {frac_narrow, {16{1'b0}}};
endmodule
module fpd2d_2x4_t19(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy,fo; wire shift;
wire signed [2:0] adjust = shift ? -3'sd1 : 3'sd0;
fpd2d_2x4_t19_core core(.x(fx),.y(fy),.fraction(fo),.shift(shift));
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(1'b1),
.fraction_x(fx),.fraction_y(fy),.result_fraction(fo),.exponent_adjust(adjust),.result(result));
endmodule

module fpd2d_2x8_t18_core(input [22:0] x, y, output [22:0] fraction, output shift);
reg [2:0] a, bmag; reg [7:0] c;
always @* begin
case ({y[22:20],x[22:22]})
4'd0: begin a=3'd4; bmag=3'd4; c=8'd127; end
4'd1: begin a=3'd4; bmag=3'd6; c=8'd191; end
4'd2: begin a=3'd3; bmag=3'd3; c=8'd116; end
4'd3: begin a=3'd3; bmag=3'd5; c=8'd175; end
4'd4: begin a=3'd3; bmag=3'd3; c=8'd104; end
4'd5: begin a=3'd3; bmag=3'd4; c=8'd155; end
4'd6: begin a=3'd3; bmag=3'd2; c=8'd92; end
4'd7: begin a=3'd3; bmag=3'd3; c=8'd138; end
4'd8: begin a=3'd3; bmag=3'd2; c=8'd83; end
4'd9: begin a=3'd3; bmag=3'd3; c=8'd126; end
4'd10: begin a=3'd2; bmag=3'd2; c=8'd83; end
4'd11: begin a=3'd2; bmag=3'd2; c=8'd120; end
4'd12: begin a=3'd2; bmag=3'd1; c=8'd74; end
4'd13: begin a=3'd2; bmag=3'd2; c=8'd111; end
4'd14: begin a=3'd2; bmag=3'd1; c=8'd69; end
4'd15: begin a=3'd2; bmag=3'd2; c=8'd104; end
default: begin a=0; bmag=0; c=0; end
endcase
end
wire [3:0] u=x[21:18];
wire [1:0] v=y[19:18];
wire [8:0] u0 = (a[0] ? ({{5{1'b0}},u} << 0) : 9'd0);
wire [8:0] u1 = (a[1] ? ({{5{1'b0}},u} << 1) : 9'd0);
wire [8:0] u2 = (a[2] ? ({{5{1'b0}},u} << 2) : 9'd0);
wire [8:0] v0 = ~(bmag[0] ? ({{7{1'b0}},v} << 0) : 9'd0);
wire [8:0] v1 = ~(bmag[1] ? ({{7{1'b0}},v} << 1) : 9'd0);
wire [8:0] v2 = ~(bmag[2] ? ({{7{1'b0}},v} << 2) : 9'd0);
wire [8:0] cterm = ({{1{1'b0}},c} << 0);
wire [8:0] correction = 9'd3;
wire [8:0] s0_0 = u0 ^ u1 ^ u2;
wire [8:0] c0_0 = ((u0&u1)|(u0&u2)|(u1&u2)) << 1;
wire [8:0] s0_3 = v0 ^ v1 ^ v2;
wire [8:0] c0_3 = ((v0&v1)|(v0&v2)|(v1&v2)) << 1;
wire [8:0] s1_0 = s0_0 ^ c0_0 ^ s0_3;
wire [8:0] c1_0 = ((s0_0&c0_0)|(s0_0&s0_3)|(c0_0&s0_3)) << 1;
wire [8:0] s1_3 = c0_3 ^ cterm ^ correction;
wire [8:0] c1_3 = ((c0_3&cterm)|(c0_3&correction)|(cterm&correction)) << 1;
wire [8:0] s2_0 = s1_0 ^ c1_0 ^ s1_3;
wire [8:0] c2_0 = ((s1_0&c1_0)|(s1_0&s1_3)|(c1_0&s1_3)) << 1;
wire [8:0] s3_0 = s2_0 ^ c2_0 ^ c1_3;
wire [8:0] c3_0 = ((s2_0&c2_0)|(s2_0&c1_3)|(c2_0&c1_3)) << 1;
wire [8:0] p = s3_0 + c3_0;
assign shift = ~p[7];
wire [6:0] frac_narrow = shift ? {p[5:0],1'b0} : p[6:0];
assign fraction = {frac_narrow, {16{1'b0}}};
endmodule
module fpd2d_2x8_t18(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy,fo; wire shift;
wire signed [2:0] adjust = shift ? -3'sd1 : 3'sd0;
fpd2d_2x8_t18_core core(.x(fx),.y(fy),.fraction(fo),.shift(shift));
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(1'b1),
.fraction_x(fx),.fraction_y(fy),.result_fraction(fo),.exponent_adjust(adjust),.result(result));
endmodule

module fpd2d_2x8_t17_core(input [22:0] x, y, output [22:0] fraction, output shift);
reg [2:0] a, bmag; reg [7:0] c;
always @* begin
case ({y[22:20],x[22:22]})
4'd0: begin a=3'd4; bmag=3'd4; c=8'd127; end
4'd1: begin a=3'd4; bmag=3'd6; c=8'd191; end
4'd2: begin a=3'd3; bmag=3'd3; c=8'd116; end
4'd3: begin a=3'd3; bmag=3'd5; c=8'd175; end
4'd4: begin a=3'd3; bmag=3'd3; c=8'd104; end
4'd5: begin a=3'd3; bmag=3'd4; c=8'd155; end
4'd6: begin a=3'd3; bmag=3'd2; c=8'd92; end
4'd7: begin a=3'd3; bmag=3'd3; c=8'd138; end
4'd8: begin a=3'd3; bmag=3'd2; c=8'd83; end
4'd9: begin a=3'd3; bmag=3'd3; c=8'd126; end
4'd10: begin a=3'd2; bmag=3'd2; c=8'd83; end
4'd11: begin a=3'd2; bmag=3'd2; c=8'd120; end
4'd12: begin a=3'd2; bmag=3'd1; c=8'd74; end
4'd13: begin a=3'd2; bmag=3'd2; c=8'd111; end
4'd14: begin a=3'd2; bmag=3'd1; c=8'd69; end
4'd15: begin a=3'd2; bmag=3'd2; c=8'd104; end
default: begin a=0; bmag=0; c=0; end
endcase
end
wire [4:0] u=x[21:17];
wire [2:0] v=y[19:17];
wire [9:0] u0 = (a[0] ? ({{5{1'b0}},u} << 0) : 10'd0);
wire [9:0] u1 = (a[1] ? ({{5{1'b0}},u} << 1) : 10'd0);
wire [9:0] u2 = (a[2] ? ({{5{1'b0}},u} << 2) : 10'd0);
wire [9:0] v0 = ~(bmag[0] ? ({{7{1'b0}},v} << 0) : 10'd0);
wire [9:0] v1 = ~(bmag[1] ? ({{7{1'b0}},v} << 1) : 10'd0);
wire [9:0] v2 = ~(bmag[2] ? ({{7{1'b0}},v} << 2) : 10'd0);
wire [9:0] cterm = ({{2{1'b0}},c} << 1);
wire [9:0] correction = 10'd3;
wire [9:0] s0_0 = u0 ^ u1 ^ u2;
wire [9:0] c0_0 = ((u0&u1)|(u0&u2)|(u1&u2)) << 1;
wire [9:0] s0_3 = v0 ^ v1 ^ v2;
wire [9:0] c0_3 = ((v0&v1)|(v0&v2)|(v1&v2)) << 1;
wire [9:0] s1_0 = s0_0 ^ c0_0 ^ s0_3;
wire [9:0] c1_0 = ((s0_0&c0_0)|(s0_0&s0_3)|(c0_0&s0_3)) << 1;
wire [9:0] s1_3 = c0_3 ^ cterm ^ correction;
wire [9:0] c1_3 = ((c0_3&cterm)|(c0_3&correction)|(cterm&correction)) << 1;
wire [9:0] s2_0 = s1_0 ^ c1_0 ^ s1_3;
wire [9:0] c2_0 = ((s1_0&c1_0)|(s1_0&s1_3)|(c1_0&s1_3)) << 1;
wire [9:0] s3_0 = s2_0 ^ c2_0 ^ c1_3;
wire [9:0] c3_0 = ((s2_0&c2_0)|(s2_0&c1_3)|(c2_0&c1_3)) << 1;
wire [9:0] p = s3_0 + c3_0;
assign shift = ~p[8];
wire [7:0] frac_narrow = shift ? {p[6:0],1'b0} : p[7:0];
assign fraction = {frac_narrow, {15{1'b0}}};
endmodule
module fpd2d_2x8_t17(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy,fo; wire shift;
wire signed [2:0] adjust = shift ? -3'sd1 : 3'sd0;
fpd2d_2x8_t17_core core(.x(fx),.y(fy),.fraction(fo),.shift(shift));
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(1'b1),
.fraction_x(fx),.fraction_y(fy),.result_fraction(fo),.exponent_adjust(adjust),.result(result));
endmodule

module fpd2d_4x8_t17_core(input [22:0] x, y, output [22:0] fraction, output shift);
reg [2:0] a, bmag; reg [7:0] c;
always @* begin
case ({y[22:20],x[22:21]})
5'd0: begin a=3'd4; bmag=3'd4; c=8'd128; end
5'd1: begin a=3'd4; bmag=3'd5; c=8'd160; end
5'd2: begin a=3'd4; bmag=3'd6; c=8'd192; end
5'd3: begin a=3'd4; bmag=3'd6; c=8'd222; end
5'd4: begin a=3'd3; bmag=3'd3; c=8'd115; end
5'd5: begin a=3'd3; bmag=3'd4; c=8'd144; end
5'd6: begin a=3'd3; bmag=3'd5; c=8'd173; end
5'd7: begin a=3'd3; bmag=3'd5; c=8'd200; end
5'd8: begin a=3'd3; bmag=3'd3; c=8'd104; end
5'd9: begin a=3'd3; bmag=3'd3; c=8'd128; end
5'd10: begin a=3'd3; bmag=3'd4; c=8'd155; end
5'd11: begin a=3'd3; bmag=3'd4; c=8'd179; end
5'd12: begin a=3'd3; bmag=3'd2; c=8'd92; end
5'd13: begin a=3'd3; bmag=3'd3; c=8'd116; end
5'd14: begin a=3'd3; bmag=3'd3; c=8'd139; end
5'd15: begin a=3'd3; bmag=3'd4; c=8'd163; end
5'd16: begin a=3'd3; bmag=3'd2; c=8'd84; end
5'd17: begin a=3'd3; bmag=3'd2; c=8'd105; end
5'd18: begin a=3'd3; bmag=3'd3; c=8'd127; end
5'd19: begin a=3'd3; bmag=3'd3; c=8'd148; end
5'd20: begin a=3'd2; bmag=3'd2; c=8'd81; end
5'd21: begin a=3'd2; bmag=3'd2; c=8'd100; end
5'd22: begin a=3'd2; bmag=3'd2; c=8'd119; end
5'd23: begin a=3'd2; bmag=3'd3; c=8'd140; end
5'd24: begin a=3'd2; bmag=3'd1; c=8'd73; end
5'd25: begin a=3'd2; bmag=3'd2; c=8'd93; end
5'd26: begin a=3'd2; bmag=3'd2; c=8'd111; end
5'd27: begin a=3'd2; bmag=3'd2; c=8'd128; end
5'd28: begin a=3'd2; bmag=3'd1; c=8'd69; end
5'd29: begin a=3'd2; bmag=3'd1; c=8'd85; end
5'd30: begin a=3'd2; bmag=3'd2; c=8'd103; end
5'd31: begin a=3'd2; bmag=3'd2; c=8'd120; end
default: begin a=0; bmag=0; c=0; end
endcase
end
wire [3:0] u=x[20:17];
wire [2:0] v=y[19:17];
wire [9:0] u0 = (a[0] ? ({{6{1'b0}},u} << 0) : 10'd0);
wire [9:0] u1 = (a[1] ? ({{6{1'b0}},u} << 1) : 10'd0);
wire [9:0] u2 = (a[2] ? ({{6{1'b0}},u} << 2) : 10'd0);
wire [9:0] v0 = ~(bmag[0] ? ({{7{1'b0}},v} << 0) : 10'd0);
wire [9:0] v1 = ~(bmag[1] ? ({{7{1'b0}},v} << 1) : 10'd0);
wire [9:0] v2 = ~(bmag[2] ? ({{7{1'b0}},v} << 2) : 10'd0);
wire [9:0] cterm = ({{2{1'b0}},c} << 1);
wire [9:0] correction = 10'd3;
wire [9:0] s0_0 = u0 ^ u1 ^ u2;
wire [9:0] c0_0 = ((u0&u1)|(u0&u2)|(u1&u2)) << 1;
wire [9:0] s0_3 = v0 ^ v1 ^ v2;
wire [9:0] c0_3 = ((v0&v1)|(v0&v2)|(v1&v2)) << 1;
wire [9:0] s1_0 = s0_0 ^ c0_0 ^ s0_3;
wire [9:0] c1_0 = ((s0_0&c0_0)|(s0_0&s0_3)|(c0_0&s0_3)) << 1;
wire [9:0] s1_3 = c0_3 ^ cterm ^ correction;
wire [9:0] c1_3 = ((c0_3&cterm)|(c0_3&correction)|(cterm&correction)) << 1;
wire [9:0] s2_0 = s1_0 ^ c1_0 ^ s1_3;
wire [9:0] c2_0 = ((s1_0&c1_0)|(s1_0&s1_3)|(c1_0&s1_3)) << 1;
wire [9:0] s3_0 = s2_0 ^ c2_0 ^ c1_3;
wire [9:0] c3_0 = ((s2_0&c2_0)|(s2_0&c1_3)|(c2_0&c1_3)) << 1;
wire [9:0] p = s3_0 + c3_0;
assign shift = ~p[8];
wire [7:0] frac_narrow = shift ? {p[6:0],1'b0} : p[7:0];
assign fraction = {frac_narrow, {15{1'b0}}};
endmodule
module fpd2d_4x8_t17(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy,fo; wire shift;
wire signed [2:0] adjust = shift ? -3'sd1 : 3'sd0;
fpd2d_4x8_t17_core core(.x(fx),.y(fy),.fraction(fo),.shift(shift));
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(1'b1),
.fraction_x(fx),.fraction_y(fy),.result_fraction(fo),.exponent_adjust(adjust),.result(result));
endmodule

module fpd2d_8x8_t17_core(input [22:0] x, y, output [22:0] fraction, output shift);
reg [2:0] a, bmag; reg [7:0] c;
always @* begin
case ({y[22:20],x[22:20]})
6'd0: begin a=3'd4; bmag=3'd4; c=8'd128; end
6'd1: begin a=3'd4; bmag=3'd4; c=8'd143; end
6'd2: begin a=3'd4; bmag=3'd5; c=8'd160; end
6'd3: begin a=3'd4; bmag=3'd5; c=8'd175; end
6'd4: begin a=3'd4; bmag=3'd6; c=8'd192; end
6'd5: begin a=3'd4; bmag=3'd6; c=8'd208; end
6'd6: begin a=3'd4; bmag=3'd6; c=8'd233; end
6'd7: begin a=3'd4; bmag=3'd7; c=8'd239; end
6'd8: begin a=3'd3; bmag=3'd3; c=8'd115; end
6'd9: begin a=3'd3; bmag=3'd3; c=8'd128; end
6'd10: begin a=3'd4; bmag=3'd4; c=8'd128; end
6'd11: begin a=3'd3; bmag=3'd4; c=8'd157; end
6'd12: begin a=3'd3; bmag=3'd4; c=8'd170; end
6'd13: begin a=3'd3; bmag=3'd5; c=8'd186; end
6'd14: begin a=3'd3; bmag=3'd5; c=8'd200; end
6'd15: begin a=3'd3; bmag=3'd5; c=8'd213; end
6'd16: begin a=3'd3; bmag=3'd2; c=8'd102; end
6'd17: begin a=3'd3; bmag=3'd3; c=8'd116; end
6'd18: begin a=3'd3; bmag=3'd3; c=8'd128; end
6'd19: begin a=3'd3; bmag=3'd3; c=8'd140; end
6'd20: begin a=3'd3; bmag=3'd4; c=8'd154; end
6'd21: begin a=3'd3; bmag=3'd4; c=8'd167; end
6'd22: begin a=3'd3; bmag=3'd4; c=8'd179; end
6'd23: begin a=3'd3; bmag=3'd4; c=8'd191; end
6'd24: begin a=3'd3; bmag=3'd2; c=8'd93; end
6'd25: begin a=3'd3; bmag=3'd2; c=8'd104; end
6'd26: begin a=3'd3; bmag=3'd3; c=8'd117; end
6'd27: begin a=3'd3; bmag=3'd3; c=8'd128; end
6'd28: begin a=3'd3; bmag=3'd3; c=8'd139; end
6'd29: begin a=3'd3; bmag=3'd4; c=8'd150; end
6'd30: begin a=3'd3; bmag=3'd4; c=8'd163; end
6'd31: begin a=3'd3; bmag=3'd4; c=8'd175; end
6'd32: begin a=3'd3; bmag=3'd2; c=8'd85; end
6'd33: begin a=3'd3; bmag=3'd2; c=8'd95; end
6'd34: begin a=3'd3; bmag=3'd2; c=8'd106; end
6'd35: begin a=3'd3; bmag=3'd2; c=8'd116; end
6'd36: begin a=3'd3; bmag=3'd3; c=8'd128; end
6'd37: begin a=3'd3; bmag=3'd3; c=8'd138; end
6'd38: begin a=3'd3; bmag=3'd3; c=8'd149; end
6'd39: begin a=3'd3; bmag=3'd3; c=8'd159; end
6'd40: begin a=3'd2; bmag=3'd2; c=8'd81; end
6'd41: begin a=3'd2; bmag=3'd2; c=8'd90; end
6'd42: begin a=3'd2; bmag=3'd2; c=8'd100; end
6'd43: begin a=3'd2; bmag=3'd2; c=8'd109; end
6'd44: begin a=3'd2; bmag=3'd2; c=8'd119; end
6'd45: begin a=3'd2; bmag=3'd2; c=8'd128; end
6'd46: begin a=3'd3; bmag=3'd3; c=8'd140; end
6'd47: begin a=3'd3; bmag=3'd3; c=8'd149; end
6'd48: begin a=3'd2; bmag=3'd1; c=8'd73; end
6'd49: begin a=3'd2; bmag=3'd1; c=8'd82; end
6'd50: begin a=3'd2; bmag=3'd2; c=8'd93; end
6'd51: begin a=3'd2; bmag=3'd2; c=8'd102; end
6'd52: begin a=3'd2; bmag=3'd2; c=8'd110; end
6'd53: begin a=3'd2; bmag=3'd2; c=8'd119; end
6'd54: begin a=3'd2; bmag=3'd2; c=8'd128; end
6'd55: begin a=3'd2; bmag=3'd2; c=8'd137; end
6'd56: begin a=3'd2; bmag=3'd1; c=8'd69; end
6'd57: begin a=3'd2; bmag=3'd1; c=8'd76; end
6'd58: begin a=3'd2; bmag=3'd1; c=8'd85; end
6'd59: begin a=3'd2; bmag=3'd2; c=8'd95; end
6'd60: begin a=3'd2; bmag=3'd2; c=8'd103; end
6'd61: begin a=3'd2; bmag=3'd2; c=8'd112; end
6'd62: begin a=3'd2; bmag=3'd2; c=8'd120; end
6'd63: begin a=3'd2; bmag=3'd2; c=8'd128; end
default: begin a=0; bmag=0; c=0; end
endcase
end
wire [2:0] u=x[19:17];
wire [2:0] v=y[19:17];
wire [9:0] u0 = (a[0] ? ({{7{1'b0}},u} << 0) : 10'd0);
wire [9:0] u1 = (a[1] ? ({{7{1'b0}},u} << 1) : 10'd0);
wire [9:0] u2 = (a[2] ? ({{7{1'b0}},u} << 2) : 10'd0);
wire [9:0] v0 = ~(bmag[0] ? ({{7{1'b0}},v} << 0) : 10'd0);
wire [9:0] v1 = ~(bmag[1] ? ({{7{1'b0}},v} << 1) : 10'd0);
wire [9:0] v2 = ~(bmag[2] ? ({{7{1'b0}},v} << 2) : 10'd0);
wire [9:0] cterm = ({{2{1'b0}},c} << 1);
wire [9:0] correction = 10'd3;
wire [9:0] s0_0 = u0 ^ u1 ^ u2;
wire [9:0] c0_0 = ((u0&u1)|(u0&u2)|(u1&u2)) << 1;
wire [9:0] s0_3 = v0 ^ v1 ^ v2;
wire [9:0] c0_3 = ((v0&v1)|(v0&v2)|(v1&v2)) << 1;
wire [9:0] s1_0 = s0_0 ^ c0_0 ^ s0_3;
wire [9:0] c1_0 = ((s0_0&c0_0)|(s0_0&s0_3)|(c0_0&s0_3)) << 1;
wire [9:0] s1_3 = c0_3 ^ cterm ^ correction;
wire [9:0] c1_3 = ((c0_3&cterm)|(c0_3&correction)|(cterm&correction)) << 1;
wire [9:0] s2_0 = s1_0 ^ c1_0 ^ s1_3;
wire [9:0] c2_0 = ((s1_0&c1_0)|(s1_0&s1_3)|(c1_0&s1_3)) << 1;
wire [9:0] s3_0 = s2_0 ^ c2_0 ^ c1_3;
wire [9:0] c3_0 = ((s2_0&c2_0)|(s2_0&c1_3)|(c2_0&c1_3)) << 1;
wire [9:0] p = s3_0 + c3_0;
assign shift = ~p[8];
wire [7:0] frac_narrow = shift ? {p[6:0],1'b0} : p[7:0];
assign fraction = {frac_narrow, {15{1'b0}}};
endmodule
module fpd2d_8x8_t17(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy,fo; wire shift;
wire signed [2:0] adjust = shift ? -3'sd1 : 3'sd0;
fpd2d_8x8_t17_core core(.x(fx),.y(fy),.fraction(fo),.shift(shift));
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(1'b1),
.fraction_x(fx),.fraction_y(fy),.result_fraction(fo),.exponent_adjust(adjust),.result(result));
endmodule

module fpd2d_8x8_t16_core(input [22:0] x, y, output [22:0] fraction, output shift);
reg [2:0] a, bmag; reg [7:0] c;
always @* begin
case ({y[22:20],x[22:20]})
6'd0: begin a=3'd4; bmag=3'd4; c=8'd128; end
6'd1: begin a=3'd4; bmag=3'd4; c=8'd143; end
6'd2: begin a=3'd4; bmag=3'd5; c=8'd160; end
6'd3: begin a=3'd4; bmag=3'd5; c=8'd175; end
6'd4: begin a=3'd4; bmag=3'd6; c=8'd192; end
6'd5: begin a=3'd4; bmag=3'd6; c=8'd208; end
6'd6: begin a=3'd4; bmag=3'd6; c=8'd233; end
6'd7: begin a=3'd4; bmag=3'd7; c=8'd239; end
6'd8: begin a=3'd3; bmag=3'd3; c=8'd115; end
6'd9: begin a=3'd3; bmag=3'd3; c=8'd128; end
6'd10: begin a=3'd4; bmag=3'd4; c=8'd128; end
6'd11: begin a=3'd3; bmag=3'd4; c=8'd157; end
6'd12: begin a=3'd3; bmag=3'd4; c=8'd170; end
6'd13: begin a=3'd3; bmag=3'd5; c=8'd186; end
6'd14: begin a=3'd3; bmag=3'd5; c=8'd200; end
6'd15: begin a=3'd3; bmag=3'd5; c=8'd213; end
6'd16: begin a=3'd3; bmag=3'd2; c=8'd102; end
6'd17: begin a=3'd3; bmag=3'd3; c=8'd116; end
6'd18: begin a=3'd3; bmag=3'd3; c=8'd128; end
6'd19: begin a=3'd3; bmag=3'd3; c=8'd140; end
6'd20: begin a=3'd3; bmag=3'd4; c=8'd154; end
6'd21: begin a=3'd3; bmag=3'd4; c=8'd167; end
6'd22: begin a=3'd3; bmag=3'd4; c=8'd179; end
6'd23: begin a=3'd3; bmag=3'd4; c=8'd191; end
6'd24: begin a=3'd3; bmag=3'd2; c=8'd93; end
6'd25: begin a=3'd3; bmag=3'd2; c=8'd104; end
6'd26: begin a=3'd3; bmag=3'd3; c=8'd117; end
6'd27: begin a=3'd3; bmag=3'd3; c=8'd128; end
6'd28: begin a=3'd3; bmag=3'd3; c=8'd139; end
6'd29: begin a=3'd3; bmag=3'd4; c=8'd150; end
6'd30: begin a=3'd3; bmag=3'd4; c=8'd163; end
6'd31: begin a=3'd3; bmag=3'd4; c=8'd175; end
6'd32: begin a=3'd3; bmag=3'd2; c=8'd85; end
6'd33: begin a=3'd3; bmag=3'd2; c=8'd95; end
6'd34: begin a=3'd3; bmag=3'd2; c=8'd106; end
6'd35: begin a=3'd3; bmag=3'd2; c=8'd116; end
6'd36: begin a=3'd3; bmag=3'd3; c=8'd128; end
6'd37: begin a=3'd3; bmag=3'd3; c=8'd138; end
6'd38: begin a=3'd3; bmag=3'd3; c=8'd149; end
6'd39: begin a=3'd3; bmag=3'd3; c=8'd159; end
6'd40: begin a=3'd2; bmag=3'd2; c=8'd81; end
6'd41: begin a=3'd2; bmag=3'd2; c=8'd90; end
6'd42: begin a=3'd2; bmag=3'd2; c=8'd100; end
6'd43: begin a=3'd2; bmag=3'd2; c=8'd109; end
6'd44: begin a=3'd2; bmag=3'd2; c=8'd119; end
6'd45: begin a=3'd2; bmag=3'd2; c=8'd128; end
6'd46: begin a=3'd3; bmag=3'd3; c=8'd140; end
6'd47: begin a=3'd3; bmag=3'd3; c=8'd149; end
6'd48: begin a=3'd2; bmag=3'd1; c=8'd73; end
6'd49: begin a=3'd2; bmag=3'd1; c=8'd82; end
6'd50: begin a=3'd2; bmag=3'd2; c=8'd93; end
6'd51: begin a=3'd2; bmag=3'd2; c=8'd102; end
6'd52: begin a=3'd2; bmag=3'd2; c=8'd110; end
6'd53: begin a=3'd2; bmag=3'd2; c=8'd119; end
6'd54: begin a=3'd2; bmag=3'd2; c=8'd128; end
6'd55: begin a=3'd2; bmag=3'd2; c=8'd137; end
6'd56: begin a=3'd2; bmag=3'd1; c=8'd69; end
6'd57: begin a=3'd2; bmag=3'd1; c=8'd76; end
6'd58: begin a=3'd2; bmag=3'd1; c=8'd85; end
6'd59: begin a=3'd2; bmag=3'd2; c=8'd95; end
6'd60: begin a=3'd2; bmag=3'd2; c=8'd103; end
6'd61: begin a=3'd2; bmag=3'd2; c=8'd112; end
6'd62: begin a=3'd2; bmag=3'd2; c=8'd120; end
6'd63: begin a=3'd2; bmag=3'd2; c=8'd128; end
default: begin a=0; bmag=0; c=0; end
endcase
end
wire [3:0] u=x[19:16];
wire [3:0] v=y[19:16];
wire [10:0] u0 = (a[0] ? ({{7{1'b0}},u} << 0) : 11'd0);
wire [10:0] u1 = (a[1] ? ({{7{1'b0}},u} << 1) : 11'd0);
wire [10:0] u2 = (a[2] ? ({{7{1'b0}},u} << 2) : 11'd0);
wire [10:0] v0 = ~(bmag[0] ? ({{7{1'b0}},v} << 0) : 11'd0);
wire [10:0] v1 = ~(bmag[1] ? ({{7{1'b0}},v} << 1) : 11'd0);
wire [10:0] v2 = ~(bmag[2] ? ({{7{1'b0}},v} << 2) : 11'd0);
wire [10:0] cterm = ({{3{1'b0}},c} << 2);
wire [10:0] correction = 11'd3;
wire [10:0] s0_0 = u0 ^ u1 ^ u2;
wire [10:0] c0_0 = ((u0&u1)|(u0&u2)|(u1&u2)) << 1;
wire [10:0] s0_3 = v0 ^ v1 ^ v2;
wire [10:0] c0_3 = ((v0&v1)|(v0&v2)|(v1&v2)) << 1;
wire [10:0] s1_0 = s0_0 ^ c0_0 ^ s0_3;
wire [10:0] c1_0 = ((s0_0&c0_0)|(s0_0&s0_3)|(c0_0&s0_3)) << 1;
wire [10:0] s1_3 = c0_3 ^ cterm ^ correction;
wire [10:0] c1_3 = ((c0_3&cterm)|(c0_3&correction)|(cterm&correction)) << 1;
wire [10:0] s2_0 = s1_0 ^ c1_0 ^ s1_3;
wire [10:0] c2_0 = ((s1_0&c1_0)|(s1_0&s1_3)|(c1_0&s1_3)) << 1;
wire [10:0] s3_0 = s2_0 ^ c2_0 ^ c1_3;
wire [10:0] c3_0 = ((s2_0&c2_0)|(s2_0&c1_3)|(c2_0&c1_3)) << 1;
wire [10:0] p = s3_0 + c3_0;
assign shift = ~p[9];
wire [8:0] frac_narrow = shift ? {p[7:0],1'b0} : p[8:0];
assign fraction = {frac_narrow, {14{1'b0}}};
endmodule
module fpd2d_8x8_t16(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy,fo; wire shift;
wire signed [2:0] adjust = shift ? -3'sd1 : 3'sd0;
fpd2d_8x8_t16_core core(.x(fx),.y(fy),.fraction(fo),.shift(shift));
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(1'b1),
.fraction_x(fx),.fraction_y(fy),.result_fraction(fo),.exponent_adjust(adjust),.result(result));
endmodule

module fpd2d_8x8_t15_core(input [22:0] x, y, output [22:0] fraction, output shift);
reg [2:0] a, bmag; reg [7:0] c;
always @* begin
case ({y[22:20],x[22:20]})
6'd0: begin a=3'd4; bmag=3'd4; c=8'd128; end
6'd1: begin a=3'd4; bmag=3'd4; c=8'd143; end
6'd2: begin a=3'd4; bmag=3'd5; c=8'd160; end
6'd3: begin a=3'd4; bmag=3'd5; c=8'd175; end
6'd4: begin a=3'd4; bmag=3'd6; c=8'd192; end
6'd5: begin a=3'd4; bmag=3'd6; c=8'd208; end
6'd6: begin a=3'd4; bmag=3'd6; c=8'd233; end
6'd7: begin a=3'd4; bmag=3'd7; c=8'd239; end
6'd8: begin a=3'd3; bmag=3'd3; c=8'd115; end
6'd9: begin a=3'd3; bmag=3'd3; c=8'd128; end
6'd10: begin a=3'd4; bmag=3'd4; c=8'd128; end
6'd11: begin a=3'd3; bmag=3'd4; c=8'd157; end
6'd12: begin a=3'd3; bmag=3'd4; c=8'd170; end
6'd13: begin a=3'd3; bmag=3'd5; c=8'd186; end
6'd14: begin a=3'd3; bmag=3'd5; c=8'd200; end
6'd15: begin a=3'd3; bmag=3'd5; c=8'd213; end
6'd16: begin a=3'd3; bmag=3'd2; c=8'd102; end
6'd17: begin a=3'd3; bmag=3'd3; c=8'd116; end
6'd18: begin a=3'd3; bmag=3'd3; c=8'd128; end
6'd19: begin a=3'd3; bmag=3'd3; c=8'd140; end
6'd20: begin a=3'd3; bmag=3'd4; c=8'd154; end
6'd21: begin a=3'd3; bmag=3'd4; c=8'd167; end
6'd22: begin a=3'd3; bmag=3'd4; c=8'd179; end
6'd23: begin a=3'd3; bmag=3'd4; c=8'd191; end
6'd24: begin a=3'd3; bmag=3'd2; c=8'd93; end
6'd25: begin a=3'd3; bmag=3'd2; c=8'd104; end
6'd26: begin a=3'd3; bmag=3'd3; c=8'd117; end
6'd27: begin a=3'd3; bmag=3'd3; c=8'd128; end
6'd28: begin a=3'd3; bmag=3'd3; c=8'd139; end
6'd29: begin a=3'd3; bmag=3'd4; c=8'd150; end
6'd30: begin a=3'd3; bmag=3'd4; c=8'd163; end
6'd31: begin a=3'd3; bmag=3'd4; c=8'd175; end
6'd32: begin a=3'd3; bmag=3'd2; c=8'd85; end
6'd33: begin a=3'd3; bmag=3'd2; c=8'd95; end
6'd34: begin a=3'd3; bmag=3'd2; c=8'd106; end
6'd35: begin a=3'd3; bmag=3'd2; c=8'd116; end
6'd36: begin a=3'd3; bmag=3'd3; c=8'd128; end
6'd37: begin a=3'd3; bmag=3'd3; c=8'd138; end
6'd38: begin a=3'd3; bmag=3'd3; c=8'd149; end
6'd39: begin a=3'd3; bmag=3'd3; c=8'd159; end
6'd40: begin a=3'd2; bmag=3'd2; c=8'd81; end
6'd41: begin a=3'd2; bmag=3'd2; c=8'd90; end
6'd42: begin a=3'd2; bmag=3'd2; c=8'd100; end
6'd43: begin a=3'd2; bmag=3'd2; c=8'd109; end
6'd44: begin a=3'd2; bmag=3'd2; c=8'd119; end
6'd45: begin a=3'd2; bmag=3'd2; c=8'd128; end
6'd46: begin a=3'd3; bmag=3'd3; c=8'd140; end
6'd47: begin a=3'd3; bmag=3'd3; c=8'd149; end
6'd48: begin a=3'd2; bmag=3'd1; c=8'd73; end
6'd49: begin a=3'd2; bmag=3'd1; c=8'd82; end
6'd50: begin a=3'd2; bmag=3'd2; c=8'd93; end
6'd51: begin a=3'd2; bmag=3'd2; c=8'd102; end
6'd52: begin a=3'd2; bmag=3'd2; c=8'd110; end
6'd53: begin a=3'd2; bmag=3'd2; c=8'd119; end
6'd54: begin a=3'd2; bmag=3'd2; c=8'd128; end
6'd55: begin a=3'd2; bmag=3'd2; c=8'd137; end
6'd56: begin a=3'd2; bmag=3'd1; c=8'd69; end
6'd57: begin a=3'd2; bmag=3'd1; c=8'd76; end
6'd58: begin a=3'd2; bmag=3'd1; c=8'd85; end
6'd59: begin a=3'd2; bmag=3'd2; c=8'd95; end
6'd60: begin a=3'd2; bmag=3'd2; c=8'd103; end
6'd61: begin a=3'd2; bmag=3'd2; c=8'd112; end
6'd62: begin a=3'd2; bmag=3'd2; c=8'd120; end
6'd63: begin a=3'd2; bmag=3'd2; c=8'd128; end
default: begin a=0; bmag=0; c=0; end
endcase
end
wire [4:0] u=x[19:15];
wire [4:0] v=y[19:15];
wire [11:0] u0 = (a[0] ? ({{7{1'b0}},u} << 0) : 12'd0);
wire [11:0] u1 = (a[1] ? ({{7{1'b0}},u} << 1) : 12'd0);
wire [11:0] u2 = (a[2] ? ({{7{1'b0}},u} << 2) : 12'd0);
wire [11:0] v0 = ~(bmag[0] ? ({{7{1'b0}},v} << 0) : 12'd0);
wire [11:0] v1 = ~(bmag[1] ? ({{7{1'b0}},v} << 1) : 12'd0);
wire [11:0] v2 = ~(bmag[2] ? ({{7{1'b0}},v} << 2) : 12'd0);
wire [11:0] cterm = ({{4{1'b0}},c} << 3);
wire [11:0] correction = 12'd3;
wire [11:0] s0_0 = u0 ^ u1 ^ u2;
wire [11:0] c0_0 = ((u0&u1)|(u0&u2)|(u1&u2)) << 1;
wire [11:0] s0_3 = v0 ^ v1 ^ v2;
wire [11:0] c0_3 = ((v0&v1)|(v0&v2)|(v1&v2)) << 1;
wire [11:0] s1_0 = s0_0 ^ c0_0 ^ s0_3;
wire [11:0] c1_0 = ((s0_0&c0_0)|(s0_0&s0_3)|(c0_0&s0_3)) << 1;
wire [11:0] s1_3 = c0_3 ^ cterm ^ correction;
wire [11:0] c1_3 = ((c0_3&cterm)|(c0_3&correction)|(cterm&correction)) << 1;
wire [11:0] s2_0 = s1_0 ^ c1_0 ^ s1_3;
wire [11:0] c2_0 = ((s1_0&c1_0)|(s1_0&s1_3)|(c1_0&s1_3)) << 1;
wire [11:0] s3_0 = s2_0 ^ c2_0 ^ c1_3;
wire [11:0] c3_0 = ((s2_0&c2_0)|(s2_0&c1_3)|(c2_0&c1_3)) << 1;
wire [11:0] p = s3_0 + c3_0;
assign shift = ~p[10];
wire [9:0] frac_narrow = shift ? {p[8:0],1'b0} : p[9:0];
assign fraction = {frac_narrow, {13{1'b0}}};
endmodule
module fpd2d_8x8_t15(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy,fo; wire shift;
wire signed [2:0] adjust = shift ? -3'sd1 : 3'sd0;
fpd2d_8x8_t15_core core(.x(fx),.y(fy),.fraction(fo),.shift(shift));
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(1'b1),
.fraction_x(fx),.fraction_y(fy),.result_fraction(fo),.exponent_adjust(adjust),.result(result));
endmodule
