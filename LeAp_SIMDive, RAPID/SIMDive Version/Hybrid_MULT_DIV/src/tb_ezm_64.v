`timescale 1 ns/1 ps 

module tb_ezm_64();

`timescale 1ns / 1ps // time-unit = 1 ns, precision = 10 ps

parameter N = 16;
parameter lgN = 4;
  integer i,j, data_file, accurate , func_;
  real error, err_mitchel  ;
  

reg    [N-1:0]      x;
reg    [N-1:0]      y;
reg                 func;

wire   [2*N-1:0]    result_o_hybrid;



   hybrid #(.N(N), .lgN(lgN) )
   
          inst(.input1_i(x), 
			       .input2_i(y),
 
			       .func(func),
			       .result_o_hybrid(result_o_hybrid)
			        );
  
   initial
    begin

//        #5;
//       data_file = $fopen("/afs/pd.inf.tu-dresden.de/users/muza153a/Desktop/data.csv");
//       $fdisplay(data_file, "X, Y, Result, FUNC");	
      
//      for (func_ = 0; func_<=1; func_= func_ + 1) begin 
//        for (i=0; i<256; i=i+1)begin 
//           for(j=0; j<256; j=j+1) begin 
//            x = $unsigned(i); y=$unsigned(j);
//            func_ = func_; 
	    
////	    error = (accurate > (result))? (accurate - result) : (result-accurate);
////	    err_mitchel = (accurate > result_mitchel)? (accurate-result_mitchel): (result_mitchel-accurate);
////          $fmonitor(data_file, "%d,%d,%d,%d,%d, %f,%f", x, y, result_mitchel, result, accurate, (error/accurate)*100, (err_mitchel/accurate)*100);
//	   $fmonitor(data_file, "%d,%d,%d, %d", x, y, result, func_);
//	    #10;
//          end 
//        end 

//        end 
//    	$fclose(data_file);  

          #5  x=11;y=51; 	   func = 0;      accurate = x*y;
          #5  x=43;y=10; 	   func = 0;      accurate = x*y; 
	      #5  x=91;y=87; 	   func = 0;      accurate = x*y;
          #5  x=0;y=0; 	       func = 0;      accurate = x*y; 
	      #5  x=255;y=255; 	   func = 0;      accurate = x*y;  
	      
	      
	      
	      #5  x=51;y=11; 	   func = 1;      accurate = x/y;
          #5  x=43;y=10;       func = 1;      accurate = x/y; 
          #5  x=91;y=87;       func = 1;      accurate = x/y;
          #5  x=0;y=0;         func = 1;      accurate = x/y; 
          #5  x=255;y=255;     func = 1;      accurate = x/y;  
          


  
	  #5;
         
    end
endmodule
