`timescale 1ns/1ps
module tb_simdive_sisd16_recon #(parameter integer CASES = 100000);
 reg [15:0] x,y; reg divide_mode; wire [31:0] result; integer i,failures;
 simdive_sisd16_recon dut(.x(x),.y(y),.divide_mode(divide_mode),.result(result));
 function integer lod; input [15:0] v; integer n; begin lod=0; for(n=0;n<16;n=n+1) if(v[n]) lod=n; end endfunction
 function signed [17:0] c; input m; input [2:0] a,b; begin c=0;
  if(!m) case(a)
   1: if(b>=3&&b<=6)c=4096; 2:if(b>=2&&b<=6)c=4096; 3:if(b==3)c=8192;else if(b==1||b==2||b==4||b==5)c=4096;
   4:if(b>=1&&b<=5)c=4096;5:if(b>=1&&b<=4)c=4096;6:if(b==1||b==2)c=4096; endcase
  else case(a)
   0:if(b>=1&&b<=6)c=-4096;1:if(b>=2&&b<=6)c=-4096;2:if(b==4||b==5)c=-4096;
   5:if(b>=1&&b<=3)c=-4096;6:if(b>=1&&b<=4)c=-4096;7:if(b>=1&&b<=5)c=-4096; endcase end endfunction
 function [31:0] model; input [15:0] a,b; input m; integer ka,kb,e; reg [15:0] fa,fb; reg signed[17:0] d,mt,cc; begin model=0;if(a&&b)begin
  ka=lod(a);kb=lod(b);fa=(a-(1<<ka))<<(15-ka);fb=(b-(1<<kb))<<(15-kb);cc=c(m,fa[14:12],fb[14:12]);
  if(!m)begin d={1'b0,fa}+{1'b0,fb};if(d<32768)begin mt=32768+d+cc;e=ka+kb;end else begin mt=d+cc;e=ka+kb+1;end end
  else begin d=$signed({1'b0,fa})-$signed({1'b0,fb});if(d>=0)begin mt=32768+d+cc;e=ka-kb;end else begin mt=65536+d+cc;e=ka-kb-1;end end
  if(mt<0)mt=0;if(e>=15)model=mt<<(e-15);else model=mt>>(15-e);end end endfunction
 initial begin failures=0; x=1;y=1;divide_mode=0;#1;if(result!==model(x,y,divide_mode))failures=failures+1;
  for(i=0;i<CASES;i=i+1)begin x=$random;y=$random;divide_mode=i[0];#1;if(result!==model(x,y,divide_mode))begin failures=failures+1;if(failures<6)$display("FAIL x=%h y=%h m=%b got=%h exp=%h",x,y,divide_mode,result,model(x,y,divide_mode));end end
  if(failures)$fatal(1,"FAIL %0d",failures);$display("PASS SIMDive reconstruction RTL 100000 vectors");$finish;end
endmodule
