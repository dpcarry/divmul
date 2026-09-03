`timescale 1ns / 1ps

module Mantissa_Div_L1 #(
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

    assign L1_c= {2'b10, 23'b0};
    assign L1_p1 = {x_sub_y[MANTISSA_WIDTH],  x_sub_y[MANTISSA_WIDTH:0]};
    assign L1_p2 = Mantissa_Y[MANTISSA_WIDTH-1]?{25'b0}: {x_sub_y[MANTISSA_WIDTH],x_sub_y[MANTISSA_WIDTH], x_sub_y[MANTISSA_WIDTH:1]};


    assign Res=L1_c+L1_p1+L1_p2;
    assign Mantissa_Out=Res[MANTISSA_WIDTH+1]? Res[MANTISSA_WIDTH:1]: (Res[MANTISSA_WIDTH]? Res[MANTISSA_WIDTH-1:0]: Res[MANTISSA_WIDTH+1:2]);
    assign Shift=Res[MANTISSA_WIDTH+1];


endmodule
