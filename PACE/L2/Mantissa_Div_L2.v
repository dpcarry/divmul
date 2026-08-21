

module Mantissa_Div_L2 #(
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
    assign y_sub_x= Mantissa_Y - Mantissa_X;
    assign sign_xsuby=x_sub_y[MANTISSA_WIDTH];
    assign sign_ysubx=y_sub_x[MANTISSA_WIDTH];

    wire [MANTISSA_WIDTH+1 : 0] L1_p1, L1_p2, L1_c;
    //wire [MANTISSA_WIDTH+3 : 0] L1_Res;

    assign L1_c= {2'b10, {(MANTISSA_WIDTH){1'b0}}};
    assign L1_p1 = {sign_xsuby,  x_sub_y[MANTISSA_WIDTH:0]};
    assign L1_p2 = Mantissa_Y[MANTISSA_WIDTH-1]?{(MANTISSA_WIDTH+2){1'b0}}: {{2{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:1]};

    //assign L1_Res=L1_c+L1_p1+L1_p2;

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


    wire [MANTISSA_WIDTH+1 : 0] A11S, A11C;
    CSA3_2_Array #(
        .WIDTH(MANTISSA_WIDTH + 2)
    )Stage_1_1
    (
        .In_1(L1_c),
        .In_2(L1_p1),
        .In_3(L1_p2),
        .S(A11S),
        .C(A11C)
    );

    wire [MANTISSA_WIDTH+1 : 0] A21S, A21C;
    CSA3_2_Array #(
        .WIDTH(MANTISSA_WIDTH + 2)
    )Stage_2_1
    (
        .In_1(A11S),
        .In_2({A11C[MANTISSA_WIDTH : 0],1'b0}),
        .In_3(L2_p),
        .S(A21S),
        .C(A21C)
    );

    assign Res={A21S[MANTISSA_WIDTH+1],A21S}+{A21C,1'b0};

    //assign Res=L1_Res[MANTISSA_WIDTH+1 : 0]+L2_p;


    assign Mantissa_Out=Res[MANTISSA_WIDTH+1]? Res[MANTISSA_WIDTH:1]: (Res[MANTISSA_WIDTH]? Res[MANTISSA_WIDTH-1:0]: Res[MANTISSA_WIDTH+1:2]);
    assign Shift=Res[MANTISSA_WIDTH+1];


endmodule
