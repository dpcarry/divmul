

module Mantissa_Div_L4_Kec #(
    parameter MANTISSA_WIDTH = 23
)
(
    input wire[MANTISSA_WIDTH-1 : 0] Mantissa_X,
    input wire[MANTISSA_WIDTH-1 : 0] Mantissa_Y,
    output wire[MANTISSA_WIDTH-1 : 0] Mantissa_Out,
    output wire Shift
);


// -------------------Pre_process----------------------
    wire [MANTISSA_WIDTH: 0]x_sub_y,y_sub_x;
    wire sign_xsuby,sign_ysubx;
    assign x_sub_y= Mantissa_X - Mantissa_Y;
    assign y_sub_x= Mantissa_Y - Mantissa_X;
    assign sign_xsuby=x_sub_y[MANTISSA_WIDTH];
    assign sign_ysubx=y_sub_x[MANTISSA_WIDTH];



//////////////////// PP Production ///////////////////////
// ------------------------L1--------------------------
    wire [MANTISSA_WIDTH+1 : 0] L1_p1, L1_p2, L1_c;

    assign L1_c= {2'b10, {(MANTISSA_WIDTH){1'b0}}};
    assign L1_p1 = {sign_xsuby,  x_sub_y[MANTISSA_WIDTH:0]};//(x-y)/2
    assign L1_p2 = Mantissa_Y[MANTISSA_WIDTH-1]?{(MANTISSA_WIDTH+2){1'b0}}: {{2{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:1]};//(x-y)/4

// ------------------------L2--------------------------
    reg [MANTISSA_WIDTH+1 : 0] L2_p;

    always @(*) begin
        case(Mantissa_Y[MANTISSA_WIDTH-1:MANTISSA_WIDTH-2])
            2'b00: L2_p={{3{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:2]};//(x-y)/2^3
            2'b01: L2_p={{4{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:3]};//-(x-y)/2^4
            2'b10: L2_p={{4{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:3]};//(x-y)/2^4
            2'b11: L2_p={(MANTISSA_WIDTH+2){1'b0}};
            default:L2_p={(MANTISSA_WIDTH+2){1'b0}};
        endcase
    end


//------------------------K_ec-------------------------
    wire [MANTISSA_WIDTH+1 : 0] K_ec;

    assign K_ec= (~(|Mantissa_Y[MANTISSA_WIDTH-1:MANTISSA_WIDTH-3]))|(&Mantissa_Y[MANTISSA_WIDTH-1:MANTISSA_WIDTH-3])?{(MANTISSA_WIDTH+2){1'b0}}:{{5{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:4]};

// ------------------------L3--------------------------
    reg [MANTISSA_WIDTH+1 : 0] L3_p1,L3_p2;


    always @(*) begin
        case(Mantissa_Y[MANTISSA_WIDTH-1:MANTISSA_WIDTH-3])
            3'b000: begin L3_p1={{4{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:3]}; //p1=(x-y)/2^4
                          L3_p2={{7{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:6]}; end //p2=(x-y)/2^7
            3'b001: begin L3_p1={{5{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:4]}; //p1=-(x-y)/2^5
                          L3_p2={{6{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:5]}; end //p2=(x-y)/2^6
            3'b010: begin L3_p1={{4{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:3]}; //p1=(x-y)/2^4
                          L3_p2={{6{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:5]}; end //p2=(x-y)/2^6
            3'b011: begin L3_p1={(MANTISSA_WIDTH+2){1'b0}}; //p1=0
                          L3_p2={(MANTISSA_WIDTH+2){1'b0}}; end 
            3'b100: begin L3_p1={{4{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:3]}; //p1=(x-y)/2^4
                          L3_p2={(MANTISSA_WIDTH+2){1'b0}}; end 
            3'b101: begin L3_p1={{5{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:4]}; //p1=(x-y)/2^5
                          L3_p2={{6{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:5]}; end //p2=-(x-y)/2^6
            3'b110: begin L3_p1={{5{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:4]}; //p1=(x-y)/2^5
                          L3_p2={{6{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:5]}; end //p2=(x-y)/2^6
            3'b111: begin L3_p1={{7{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:6]}; //p1=(x-y)/2^7
                          L3_p2={(MANTISSA_WIDTH+2){1'b0}}; end 
        endcase
    end


// ------------------------L4--------------------------
    reg [MANTISSA_WIDTH+1 : 0] L4_p1,L4_p2;

    always @(*) begin
        case(Mantissa_Y[MANTISSA_WIDTH-1:MANTISSA_WIDTH-4])
            4'b0000: begin L4_p1={{5{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:4]};      //p1=(x-y)/2^5
                           L4_p2={(MANTISSA_WIDTH+2){1'b0}}; end 
            4'b0001: begin L4_p1={{5{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:4]};      //p1=-(x-y)/2^5
                           L4_p2={{8{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:7]}; end  //p2=(x-y)/2^8
            4'b0010: begin L4_p1={{5{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:4]};      //p1=(x-y)/2^5
                           L4_p2={{8{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:7]}; end  //p2=-(x-y)/2^8
            4'b0011: begin L4_p1={{5{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:4]};      //p1=-(x-y)/2^5
                           L4_p2={{7{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:6]}; end  //p2=(x-y)/2^7
            4'b0100: begin L4_p1={{5{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:4]};      //p1=(x-y)/2^5
                           L4_p2={{7{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:6]}; end  //p2=-(x-y)/2^7
            4'b0101: begin L4_p1={{6{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:5]};      //p1=-(x-y)/2^6
                           L4_p2={{8{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:7]}; end  //p2=-(x-y)/2^8
            4'b0110: begin L4_p1={{6{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:5]};      //p1=(x-y)/2^6
                           L4_p2={{8{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:7]}; end  //p2=(x-y)/2^8
            4'b0111: begin L4_p1={{6{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:5]};      //p1=-(x-y)/2^6
                           L4_p2={(MANTISSA_WIDTH+2){1'b0}}; end 
            4'b1000: begin L4_p1={{6{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:5]};      //p1=(x-y)/2^6
                           L4_p2={(MANTISSA_WIDTH+2){1'b0}}; end 
            4'b1001: begin L4_p1={{7{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:6]};      //p1=-(x-y)/2^7
                           L4_p2={{8{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:7]}; end  //p2=-(x-y)/2^8
            4'b1010: begin L4_p1={{7{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:6]};      //p1=(x-y)/2^7
                           L4_p2={{8{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:7]}; end  //p2=(x-y)/2^8
            4'b1011: begin L4_p1={{7{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:6]};      //p1=-(x-y)/2^7
                           L4_p2={(MANTISSA_WIDTH+2){1'b0}}; end 
            4'b1100: begin L4_p1={{7{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:6]};      //p1=(x-y)/2^7
                           L4_p2={(MANTISSA_WIDTH+2){1'b0}}; end 
            4'b1101: begin L4_p1={{8{sign_ysubx}}, y_sub_x[MANTISSA_WIDTH:7]};      //p1=-(x-y)/2^8
                           L4_p2={(MANTISSA_WIDTH+2){1'b0}}; end 
            4'b1110: begin L4_p1={{8{sign_xsuby}}, x_sub_y[MANTISSA_WIDTH:7]};      //p1=(x-y)/2^8
                           L4_p2={(MANTISSA_WIDTH+2){1'b0}}; end 
            4'b1111: begin L4_p1={(MANTISSA_WIDTH+2){1'b0}}; 
                           L4_p2={(MANTISSA_WIDTH+2){1'b0}}; end 
        endcase
    end




//////////////////// Adder Tree ///////////////////////
// ------------------------S1--------------------------

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


    wire [MANTISSA_WIDTH+1 : 0] A12S, A12C;
    CSA3_2_Array #(
        .WIDTH(MANTISSA_WIDTH + 2)
    )Stage_1_2
    (
        .In_1(L2_p),
        .In_2(L3_p1),
        .In_3(L3_p2),
        .S(A12S),
        .C(A12C)
    );

// ------------------------S2--------------------------

    wire [MANTISSA_WIDTH+1 : 0] A21S, A21C;
    CSA3_2_Array #(
        .WIDTH(MANTISSA_WIDTH + 2)
    )Stage_2_1
    (
        .In_1(A11S),
        .In_2({A11C[MANTISSA_WIDTH : 0],1'b0}),
        .In_3(A12S),
        .S(A21S),
        .C(A21C)
    );

    wire [MANTISSA_WIDTH+1 : 0] A22S, A22C;
    CSA3_2_Array #(
        .WIDTH(MANTISSA_WIDTH + 2)
    )Stage_2_2
    (
        .In_1({A12C[MANTISSA_WIDTH : 0],1'b0}),
        .In_2(L4_p1),
        .In_3(L4_p2),
        .S(A22S),
        .C(A22C)
    );

// ------------------------S3--------------------------

    wire [MANTISSA_WIDTH+1 : 0] A31S, A31C;
    CSA3_2_Array #(
        .WIDTH(MANTISSA_WIDTH + 2)
    )Stage_3_1
    (
        .In_1(A21S),
        .In_2({A21C[MANTISSA_WIDTH : 0],1'b0}),
        .In_3(A22S),
        .S(A31S),
        .C(A31C)
    );

// ------------------------S4--------------------------

    wire [MANTISSA_WIDTH+1 : 0] A41S, A41C;
    CSA3_2_Array #(
        .WIDTH(MANTISSA_WIDTH + 2)
    )Stage_4_1
    (
        .In_1(A31S),
        .In_2({A31C[MANTISSA_WIDTH : 0],1'b0}),
        .In_3({A22C[MANTISSA_WIDTH : 0],1'b0}),
        .S(A41S),
        .C(A41C)
    );


// ------------------------FA--------------------------
    wire [MANTISSA_WIDTH+3 : 0] Res;
    assign Res={A41S[MANTISSA_WIDTH+1],A41S}+{A41C,1'b0};

// -------------------Normalization---------------------
    assign Mantissa_Out=Res[MANTISSA_WIDTH+1]? Res[MANTISSA_WIDTH:1]: (Res[MANTISSA_WIDTH]? Res[MANTISSA_WIDTH-1:0]: Res[MANTISSA_WIDTH+1:2]);
    assign Shift=Res[MANTISSA_WIDTH+1];


endmodule
