module fig8_pace_l1_d0(input [31:0] x,y, output [31:0] result);
wire [22:0] mx,my,mz; wire shift;
Mantissa_Div_L1 #(.MANTISSA_WIDTH(23)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(0)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l1_d4(input [31:0] x,y, output [31:0] result);
wire [18:0] mx,my,mz; wire shift;
Mantissa_Div_L1 #(.MANTISSA_WIDTH(19)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(4)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l1_d8(input [31:0] x,y, output [31:0] result);
wire [14:0] mx,my,mz; wire shift;
Mantissa_Div_L1 #(.MANTISSA_WIDTH(15)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(8)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l1_d12(input [31:0] x,y, output [31:0] result);
wire [10:0] mx,my,mz; wire shift;
Mantissa_Div_L1 #(.MANTISSA_WIDTH(11)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(12)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l1_d14(input [31:0] x,y, output [31:0] result);
wire [8:0] mx,my,mz; wire shift;
Mantissa_Div_L1 #(.MANTISSA_WIDTH(9)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(14)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l1_d15(input [31:0] x,y, output [31:0] result);
wire [7:0] mx,my,mz; wire shift;
Mantissa_Div_L1 #(.MANTISSA_WIDTH(8)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(15)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l1_d16(input [31:0] x,y, output [31:0] result);
wire [6:0] mx,my,mz; wire shift;
Mantissa_Div_L1 #(.MANTISSA_WIDTH(7)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(16)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l1_d17(input [31:0] x,y, output [31:0] result);
wire [5:0] mx,my,mz; wire shift;
Mantissa_Div_L1 #(.MANTISSA_WIDTH(6)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(17)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l1_d18(input [31:0] x,y, output [31:0] result);
wire [4:0] mx,my,mz; wire shift;
Mantissa_Div_L1 #(.MANTISSA_WIDTH(5)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(18)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l2_d0(input [31:0] x,y, output [31:0] result);
wire [22:0] mx,my,mz; wire shift;
Mantissa_Div_L2 #(.MANTISSA_WIDTH(23)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(0)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l2_d4(input [31:0] x,y, output [31:0] result);
wire [18:0] mx,my,mz; wire shift;
Mantissa_Div_L2 #(.MANTISSA_WIDTH(19)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(4)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l2_d8(input [31:0] x,y, output [31:0] result);
wire [14:0] mx,my,mz; wire shift;
Mantissa_Div_L2 #(.MANTISSA_WIDTH(15)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(8)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l2_d12(input [31:0] x,y, output [31:0] result);
wire [10:0] mx,my,mz; wire shift;
Mantissa_Div_L2 #(.MANTISSA_WIDTH(11)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(12)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l2_d14(input [31:0] x,y, output [31:0] result);
wire [8:0] mx,my,mz; wire shift;
Mantissa_Div_L2 #(.MANTISSA_WIDTH(9)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(14)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l2_d15(input [31:0] x,y, output [31:0] result);
wire [7:0] mx,my,mz; wire shift;
Mantissa_Div_L2 #(.MANTISSA_WIDTH(8)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(15)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l2_d16(input [31:0] x,y, output [31:0] result);
wire [6:0] mx,my,mz; wire shift;
Mantissa_Div_L2 #(.MANTISSA_WIDTH(7)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(16)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l2_d17(input [31:0] x,y, output [31:0] result);
wire [5:0] mx,my,mz; wire shift;
Mantissa_Div_L2 #(.MANTISSA_WIDTH(6)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(17)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l2_d18(input [31:0] x,y, output [31:0] result);
wire [4:0] mx,my,mz; wire shift;
Mantissa_Div_L2 #(.MANTISSA_WIDTH(5)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(18)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l3_d0(input [31:0] x,y, output [31:0] result);
wire [22:0] mx,my,mz; wire shift;
Mantissa_Div_L3 #(.MANTISSA_WIDTH(23)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(0)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l3_d4(input [31:0] x,y, output [31:0] result);
wire [18:0] mx,my,mz; wire shift;
Mantissa_Div_L3 #(.MANTISSA_WIDTH(19)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(4)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l3_d8(input [31:0] x,y, output [31:0] result);
wire [14:0] mx,my,mz; wire shift;
Mantissa_Div_L3 #(.MANTISSA_WIDTH(15)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(8)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l3_d12(input [31:0] x,y, output [31:0] result);
wire [10:0] mx,my,mz; wire shift;
Mantissa_Div_L3 #(.MANTISSA_WIDTH(11)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(12)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l3_d14(input [31:0] x,y, output [31:0] result);
wire [8:0] mx,my,mz; wire shift;
Mantissa_Div_L3 #(.MANTISSA_WIDTH(9)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(14)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l3_d15(input [31:0] x,y, output [31:0] result);
wire [7:0] mx,my,mz; wire shift;
Mantissa_Div_L3 #(.MANTISSA_WIDTH(8)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(15)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l3_d16(input [31:0] x,y, output [31:0] result);
wire [6:0] mx,my,mz; wire shift;
Mantissa_Div_L3 #(.MANTISSA_WIDTH(7)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(16)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l3_d17(input [31:0] x,y, output [31:0] result);
wire [5:0] mx,my,mz; wire shift;
Mantissa_Div_L3 #(.MANTISSA_WIDTH(6)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(17)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l4_d0(input [31:0] x,y, output [31:0] result);
wire [22:0] mx,my,mz; wire shift;
Mantissa_Div_L4_Kec #(.MANTISSA_WIDTH(23)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(0)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l4_d4(input [31:0] x,y, output [31:0] result);
wire [18:0] mx,my,mz; wire shift;
Mantissa_Div_L4_Kec #(.MANTISSA_WIDTH(19)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(4)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l4_d8(input [31:0] x,y, output [31:0] result);
wire [14:0] mx,my,mz; wire shift;
Mantissa_Div_L4_Kec #(.MANTISSA_WIDTH(15)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(8)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l4_d12(input [31:0] x,y, output [31:0] result);
wire [10:0] mx,my,mz; wire shift;
Mantissa_Div_L4_Kec #(.MANTISSA_WIDTH(11)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(12)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l4_d14(input [31:0] x,y, output [31:0] result);
wire [8:0] mx,my,mz; wire shift;
Mantissa_Div_L4_Kec #(.MANTISSA_WIDTH(9)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(14)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l4_d15(input [31:0] x,y, output [31:0] result);
wire [7:0] mx,my,mz; wire shift;
Mantissa_Div_L4_Kec #(.MANTISSA_WIDTH(8)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(15)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_pace_l4_d16(input [31:0] x,y, output [31:0] result);
wire [6:0] mx,my,mz; wire shift;
Mantissa_Div_L4_Kec #(.MANTISSA_WIDTH(7)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(16)) shell(x,y,result,mx,my,mz,~shift);
endmodule

module fig8_dw_d0(input [31:0] x,y, output [31:0] result);
fig8_dw #(.B(23)) core(x,y,result);
endmodule

module fig8_dw_d4(input [31:0] x,y, output [31:0] result);
fig8_dw #(.B(19)) core(x,y,result);
endmodule

module fig8_dw_d8(input [31:0] x,y, output [31:0] result);
fig8_dw #(.B(15)) core(x,y,result);
endmodule

module fig8_dw_d12(input [31:0] x,y, output [31:0] result);
fig8_dw #(.B(11)) core(x,y,result);
endmodule

module fig8_dw_d14(input [31:0] x,y, output [31:0] result);
fig8_dw #(.B(9)) core(x,y,result);
endmodule

module fig8_dw_d15(input [31:0] x,y, output [31:0] result);
fig8_dw #(.B(8)) core(x,y,result);
endmodule

module fig8_dw_d16(input [31:0] x,y, output [31:0] result);
fig8_dw #(.B(7)) core(x,y,result);
endmodule

module fig8_dw_d17(input [31:0] x,y, output [31:0] result);
fig8_dw #(.B(6)) core(x,y,result);
endmodule

module fig8_dw_d18(input [31:0] x,y, output [31:0] result);
fig8_dw #(.B(5)) core(x,y,result);
endmodule

module fig8_dw_d18_rne(input [31:0] x,y, output [31:0] result);
fig8_dw #(.B(5),.RND(0)) core(x,y,result);
endmodule
module fig8_dw_d18_common(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy; wire [13:0] z; wire [7:0] status;
DW_fp_div #(.sig_width(5),.exp_width(8),.ieee_compliance(0),.faithful_round(0))
core(.a({1'b0,8'd127,fx[22:18]}),.b({1'b0,8'd127,fy[22:18]}),
     .rnd(3'b001),.z(z),.status(status));
wire signed [2:0] adjust = z[7:5] - 3'd7;
fp32_normal_finite_wrapper shell(x,y,1'b1,fx,fy,{z[4:0],18'b0},adjust,result);
endmodule
module fig8_pace_l3_d17_historical(input [31:0] x,y, output [31:0] result);
wire [5:0] mx,my,mz; wire shift;
Mantissa_Div_L3 #(.MANTISSA_WIDTH(6)) core(mx,my,mz,shift);
fig8_historical_wrapper #(.width_trunc(17)) shell(x,y,result,mx,my,mz,~shift);
endmodule

`timescale 1ns / 1ps

module fig8_delivered_core_l1 #(
    parameter MANTISSA_WIDTH = 23,
    parameter Level = 1
)
(
    input wire[MANTISSA_WIDTH-1 : 0] Mantissa_X,
    input wire[MANTISSA_WIDTH-1 : 0] Mantissa_Y,
    output wire[MANTISSA_WIDTH-1 : 0] Mantissa_Out,
    output wire Shift
);

    wire [MANTISSA_WIDTH: 0]x_sub_y,y_sub_x;

    assign x_sub_y= Mantissa_X - Mantissa_Y;
    //assign y_sub_x= -x_sub_y;

    wire [MANTISSA_WIDTH+1 : 0] L1_p1, L1_p2, L1_c;
    wire [MANTISSA_WIDTH+3 : 0] Res;

    assign L1_c= {2'b10, {MANTISSA_WIDTH{1'b0}}};
    assign L1_p1 = {x_sub_y[MANTISSA_WIDTH],  x_sub_y[MANTISSA_WIDTH:0]};
    assign L1_p2 = Mantissa_Y[MANTISSA_WIDTH-1]?{{(MANTISSA_WIDTH+2){1'b0}}}: {x_sub_y[MANTISSA_WIDTH],x_sub_y[MANTISSA_WIDTH], x_sub_y[MANTISSA_WIDTH:1]};


    assign Res=L1_c+L1_p1+L1_p2;
    assign Mantissa_Out=Res[MANTISSA_WIDTH+1]? Res[MANTISSA_WIDTH:1]: (Res[MANTISSA_WIDTH]? Res[MANTISSA_WIDTH-1:0]: Res[MANTISSA_WIDTH+1:2]);
    assign Shift=Res[MANTISSA_WIDTH+1];


endmodule

module fig8_pace_l1_d18_delivered(input [31:0] x,y, output [31:0] result);
wire [4:0] mx,my,mz; wire shift;
fig8_delivered_core_l1 #(.MANTISSA_WIDTH(5)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(18)) shell(x,y,result,mx,my,mz,~shift);
endmodule

`timescale 1ns / 1ps

module fig8_delivered_core_l2 #(
    parameter MANTISSA_WIDTH = 23,
    parameter Level = 1
)
(
    input wire[MANTISSA_WIDTH-1 : 0] Mantissa_X,
    input wire[MANTISSA_WIDTH-1 : 0] Mantissa_Y,
    output wire[MANTISSA_WIDTH-1 : 0] Mantissa_Out,
    output wire Shift
);

    wire [MANTISSA_WIDTH: 0]x_sub_y,y_sub_x;
    wire sign_xsuby,sign_ysubx;
    assign x_sub_y= Mantissa_X - Mantissa_Y;
    assign y_sub_x= -x_sub_y;
    assign sign_xsuby=x_sub_y[MANTISSA_WIDTH];
    assign sign_ysubx=y_sub_x[MANTISSA_WIDTH];

    wire [MANTISSA_WIDTH+1 : 0] L1_p1, L1_p2, L1_c;
    wire [MANTISSA_WIDTH+3 : 0] L1_Res;

    assign L1_c= {2'b10, {MANTISSA_WIDTH{1'b0}}};
    assign L1_p1 = {sign_xsuby,  x_sub_y[MANTISSA_WIDTH:0]};
    assign L1_p2 = Mantissa_Y[MANTISSA_WIDTH-1]?{{(MANTISSA_WIDTH+2){1'b0}}}: {{2{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:1]};

    assign L1_Res=L1_c+L1_p1+L1_p2;


    reg [MANTISSA_WIDTH+1 : 0] L2_p;
    wire [MANTISSA_WIDTH+3 : 0] Res;

    always @(*) begin
        case(Mantissa_Y[MANTISSA_WIDTH-1:MANTISSA_WIDTH-2])
            2'b00: L2_p={{3{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:2]};
            2'b01: L2_p={{4{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:3]};
            2'b10: L2_p={{4{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:3]};
            2'b11: L2_p={(MANTISSA_WIDTH+2){1'b0}};
            default:L2_p={(MANTISSA_WIDTH+2){1'b0}};
        endcase
    end

    assign Res=L1_Res[MANTISSA_WIDTH+1 : 0]+L2_p;



    assign Mantissa_Out=Res[MANTISSA_WIDTH+1]? Res[MANTISSA_WIDTH:1]: (Res[MANTISSA_WIDTH]? Res[MANTISSA_WIDTH-1:0]: Res[MANTISSA_WIDTH+1:2]);
    assign Shift=Res[MANTISSA_WIDTH+1];


endmodule

module fig8_pace_l2_d18_delivered(input [31:0] x,y, output [31:0] result);
wire [4:0] mx,my,mz; wire shift;
fig8_delivered_core_l2 #(.MANTISSA_WIDTH(5)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(18)) shell(x,y,result,mx,my,mz,~shift);
endmodule
