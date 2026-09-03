`timescale 1ns / 1ps


module FP_Div_L2(
    input wire [31 : 0] X_Input,
    input wire [31 : 0] Y_Input,
    output wire [31 : 0] Result
    );
    //rename wires
    wire [22 : 0] mantissa_x;
    wire [22 : 0] mantissa_y;
    
    wire [22 : 0] mantissa_out;
    wire shift;
    wire sign_x, sign_y;
    wire [7 : 0] exp_out;
    wire [7 : 0] exp_x;
    wire [7 : 0] exp_y;

    assign mantissa_x[22 : 0] = X_Input[22 : 0];
    assign mantissa_y[22 : 0] = Y_Input[22 : 0];
    assign exp_x[7 : 0] = X_Input[30 : 23];
    assign exp_y[7 : 0] = Y_Input[30 : 23];
    assign sign_x = X_Input[31];
    assign sign_y = Y_Input[31];
    // ctrl <= ACC_Ctrl;
    assign Result = {sign_x ^ sign_y, exp_out, mantissa_out};

    assign exp_out = exp_x - exp_y + {6'b0111_11, 1'b1, shift}; 
    Mantissa_Div_L2 #(
        .MANTISSA_WIDTH(23),
        .Level(2)
    )Apprx_Mantissa_Div_L2(
        .Mantissa_X(mantissa_x),
        .Mantissa_Y(mantissa_y),
        .Mantissa_Out(mantissa_out),
        .Shift(shift)
    );

endmodule

