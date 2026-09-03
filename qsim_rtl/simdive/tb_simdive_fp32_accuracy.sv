`timescale 1ns/1ps
module tb_simdive_fp32_accuracy;
 localparam N=10000; reg[31:0]x,y;reg mode;wire[31:0]out;integer i,m;real sa,sr,ss,ex,ac,er;
 simdive_fp32_recon dut(.x(x),.y(y),.divide_mode(mode),.result(out));
 function real f;input[31:0]v;integer e;real z;begin e=v[30:23]-127;z=1.0+v[22:0]/8388608.0;f=v[31]?-z*(2.0**e):z*(2.0**e);end endfunction
 initial begin for(m=0;m<2;m=m+1)begin mode=m;sa=0;sr=0;ss=0;for(i=0;i<N;i=i+1)begin x=32'h3f800000|($random&23'h7fffff);y=32'h3f800000|($random&23'h7fffff);#1;ex=mode?f(x)/f(y):f(x)*f(y);ac=f(out);er=ac>ex?ac-ex:ex-ac;sa=sa+er;sr=sr+er/ex;ss=ss+er*er;end $display("SIMDIVE_FP32 %s MAE=%f MRED=%f RMSE=%f",mode?"DIV":"MUL",sa/N,sr/N,$sqrt(ss/N));end $finish;end
endmodule
