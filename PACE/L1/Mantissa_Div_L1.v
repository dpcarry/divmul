

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

    assign L1_c= {2'b10, {(MANTISSA_WIDTH){1'b0}}};
    assign L1_p1 = {x_sub_y[MANTISSA_WIDTH],  x_sub_y[MANTISSA_WIDTH:0]};
    assign L1_p2 = Mantissa_Y[MANTISSA_WIDTH-1]?{(MANTISSA_WIDTH+2){1'b0}}: {x_sub_y[MANTISSA_WIDTH],x_sub_y[MANTISSA_WIDTH], x_sub_y[MANTISSA_WIDTH:1]};

    wire [MANTISSA_WIDTH+1 : 0] A11S, A11C;
    CSA3_2_Array #(
        .WIDTH(MANTISSA_WIDTH + 2)
    )Stage_0_0
    (
        .In_1(L1_c),
        .In_2(L1_p1),
        .In_3(L1_p2),
        .S(A11S),
        .C(A11C)
    );

    assign Res={A11S[MANTISSA_WIDTH+1],A11S}+{A11C,1'b0};
    //assign Res=L1_c+L1_p1+L1_p2;
    assign Mantissa_Out=Res[MANTISSA_WIDTH+1]? Res[MANTISSA_WIDTH:1]: (Res[MANTISSA_WIDTH]? Res[MANTISSA_WIDTH-1:0]: Res[MANTISSA_WIDTH+1:2]);
    assign Shift=Res[MANTISSA_WIDTH+1];


endmodule
