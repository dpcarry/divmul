module tb_ezm_64();

`timescale 1ns / 1ps // time-unit = 1 ns, precision = 10 ps

parameter N = 8;
parameter lgN = 3;
integer i,j, data_file, accurate;
real error, err_mitchel  ;


integer    mcd1,mcd2,mcd3,mcd4,stat1,stat2;
reg       [15:0] mem_x[0:10000];
reg       [15:0] mem_y[0:10000];
  

reg    [N-1:0]      x;
reg    clk;
reg    [N-1:0]      y;
wire   [2*N-1:0]    result;
//wire   [2*N-1:0]    result_mitchel;
reg    mode;

   wrapper_file #(  .N(N), .lgN(lgN))
            inst(  .input1_i(x),
			       .input2_i(y),
			       .clk(clk),
			       .reset(1'b0),
			       .quotient_mitchel(result)
			        );

	always   begin
	  #1.25 clk = ~clk;
	end		        
		
       
    initial 
        begin
           clk = 0; 
           #1;
           mcd1 = $fopen("/afs/pd.inf.tu-dresden.de/users/muza153a/Desktop/approx_hdl/operand_x.txt","r");
           mcd2 = $fopen("/afs/pd.inf.tu-dresden.de/users/muza153a/Desktop/approx_hdl/operand_y.txt","r");
           
           i = 0;
           while(!$feof(mcd1))
            begin
               stat1 = $fscanf(mcd1,"%d\n",mem_x[i]);
               stat2 = $fscanf(mcd2,"%d\n",mem_y[i]);
               x = mem_x[i];
               y = mem_y[i];
               accurate = x*y;
               i = i + 1;
               #2.5;
               
            end
           $fclose(mcd1); 
           $fclose(mcd2);
           
           
           #5
           
    //       $fdisplay(data_file, "X, Y, Result_Mitchel, Result_SIMDive, Accurate, Error_SIMDive, Error_Mitchel");    
    //       for (i=1024; i<1024; i=i+1)begin 
    //           for(j=32; j<64; j=j+1) begin 
    //            x= $unsigned(i); y=$unsigned(j);
    //            if (y==0) begin
    //              accurate = out;
    //            end else begin
    //              accurate = x/y;
    //            end
    
    //        $fmonitor(data_file, "%d,%d,%d,%d", x, y,out_mitchel, accurate);
    
    //          #10;
    
    //          end 
    //        end 
    //        $fclose(data_file); 

    //        x = 4; y =2; 
    //        accurate = x/y;
    //        #10;
    //        x = 8; y =2; 
    //        accurate = x/y;
    //        #10;
    //        x = 1001; y =2;
    //        accurate = x/y; 
    //        #10;
    //        x = 115; y =2; 
    //        accurate = x/y;
    //        #10;
            
    //        x = 65535; y =4;
    //        accurate = x/y; 
    //        #10;
    //        x = 202; y =4; 
    //        accurate = x/y;
    //        #10;
    //        x = 409; y =4; 
    //        accurate = x/y;
    //        #10;
    //        x = 805; y =4; 
    //        accurate = x/y;
    //        #10;
            
    //        x = 607; y =63;
    //        accurate = x/y; 
    //        #10;
    //        x = 523; y =63;
    //        accurate = x/y; 
    //        #10;
    //        x = 65535; y =63;
    //        accurate = x/y; 
    //        #10;
    //        x = 7011; y =63; 
    //        accurate = x/y;
    //        #10;
            
    //        x = 1024; y =93;
    //        accurate = x/y; 
    //        #10;
    //        x = 3233; y =93; 
    //        accurate = x/y;
    //        #10;
    //        x = 6533; y =93;
    //        accurate = x/y; 
    //        #10;
    //        x = 1; y =93; 
    //        accurate = x/y;
    //        #10;
            
            
    //        x = 8911; y =137;
    //        accurate = x/y; 
    //        #10;
    //        x = 9313; y =137;
    //        accurate = x/y; 
    //        #10;
    //        x = 6513; y =137;
    //        accurate = x/y; 
    //        #10;                
    //        x = 137; y =137;
    //        accurate = x/y; 
    //        #10;
            
    
    
    $finish;
         
    end
endmodule
