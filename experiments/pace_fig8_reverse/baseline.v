module fig8_dw #(parameter B=5, parameter RND=1)
    (input [31:0] x,y, output [31:0] result);
    wire [B+8:0] a={x[31:23],x[22 -: B]};
    wire [B+8:0] b={y[31:23],y[22 -: B]};
    wire [B+8:0] z;
    wire [7:0] status;
    DW_fp_div #(.sig_width(B),.exp_width(8),.ieee_compliance(0),.faithful_round(0))
        core(.a(a),.b(b),.rnd(RND[2:0]),.z(z),.status(status));
    assign result={z,{(23-B){1'b0}}};
endmodule
