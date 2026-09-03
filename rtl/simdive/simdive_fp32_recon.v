// FP32 adaptation of the published SIMDive/Mitchell mantissa algorithm.
// Sign and exponent are exact; the significand uses a 64-region Q0.3 LUT.
module simdive_fp32_recon(input wire [31:0] x,y,input wire divide_mode,output reg [31:0] result);
 reg [22:0] fx,fy,frac; reg sign; integer e; reg signed [25:0] d,c;
 function signed [25:0] corr; input m; input [2:0] a,b; begin corr=0;
  if(!m) case(a)
   1:if(b>=3&&b<=6)corr=1048576;2:if(b>=2&&b<=6)corr=1048576;3:if(b==3)corr=2097152;else if(b==1||b==2||b==4||b==5)corr=1048576;
   4:if(b>=1&&b<=5)corr=1048576;5:if(b>=1&&b<=4)corr=1048576;6:if(b==1||b==2)corr=1048576;endcase
  else case(a)
   0:if(b>=1&&b<=6)corr=-1048576;1:if(b>=2&&b<=6)corr=-1048576;2:if(b==4||b==5)corr=-1048576;
   5:if(b>=1&&b<=3)corr=-1048576;6:if(b>=1&&b<=4)corr=-1048576;7:if(b>=1&&b<=5)corr=-1048576;endcase end endfunction
 always @* begin
  result=0;
  if ((x[30:23]!=0)&&(x[30:23]!=8'hff)&&(y[30:23]!=0)&&(y[30:23]!=8'hff)) begin
   fx=x[22:0];fy=y[22:0];sign=x[31]^y[31];c=corr(divide_mode,fx[22:20],fy[22:20]);
   if(!divide_mode) begin d={1'b0,fx}+{1'b0,fy}; if(d<8388608)begin frac=d+c;e=x[30:23]+y[30:23]-127;end else begin frac=d+c-8388608;e=x[30:23]+y[30:23]-126;end end
   else begin d=$signed({1'b0,fx})-$signed({1'b0,fy});if(d>=0)begin frac=d+c;e=x[30:23]-y[30:23]+127;end else begin frac=8388608+d+c;e=x[30:23]-y[30:23]+126;end end
   if(frac>=8388608)begin frac=frac-8388608;e=e+1;end
   if(e<=0) result=0; else if(e>=255) result={sign,8'hff,23'd0}; else result={sign,e[7:0],frac};
  end else if (x==0 || y==0) result=0; else result=32'h7fc00000;
 end
endmodule
