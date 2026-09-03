`timescale 1 ns/1 ps 

module tb_top_module();

`timescale 1ns / 1ps // time-unit = 1 ns, precision = 10 ps

parameter N = 32;
parameter lgN = 5;
 

reg    [N-1:0]     x;
reg    [N-1:0]     y;
reg    [1:0]       mode;
reg    [3:0]       func;

wire   [2*N-1:0]    result_o_hybrid;
 


   top_module #(.N(N), .lgN(lgN) )
                                    inst(.input1_i(x), 
			                             .input2_i(y),
                                         .mode(mode),
                                         .func(func),
                                         .result_o_hybrid(result_o_hybrid)
			        );
  
   initial
    begin


 
//           #5  x=11;y=51; 	                      mode = 0;  func = 0; 
//           #5  x=32'h00001111; y= 32'h51515151;   mode = 0;  func = 0; 
//           #5  x=32'h11111111; y= 32'h51515151;   mode = 0;	 func = 0;       
           
           
//          #5  x=51;y=11; 	                     mode = 0;  func = 1; 
//          #5  x=32'h00001111; y= 32'h51515151;   mode = 0;  func = 1; 
//          #5  x=32'h51515151; y= 32'h11111111;   mode = 0;  func = 1;       



 

           
//           #5  x=11;y=51; 	                      mode = 3;  func = 2;    
//           #5  x=32'h00001111; y= 32'h51515151;   mode = 3;  func = 2;     
//           #5  x=32'h11111111; y= 32'h51515151;   mode = 3;  func = 2;           


           
//           #5  x=11;y=51; 	                      mode = 3;  func = 3;    
//           #5  x=32'h00001111; y= 32'h51515151;   mode = 3;  func = 3;     
//           #5  x=32'h11111111; y= 32'h51515151;   mode = 3;  func = 3;     
           
           

           
//           #5  x=11;y=51; 	                      mode = 3;  func = 4;    
//           #5  x=32'h00001111; y= 32'h51515151;   mode = 3;  func = 4;     
//           #5  x=32'h11111111; y= 32'h51515151;   mode = 3;  func = 4;     
           
           

           #5  x=11;y=51; 	                      mode = 1;  func = 5; 
//           #5  x=32'h00001111; y= 32'h51515151;   mode = 1;  func = 5; 
//           #5  x=32'h11111111; y= 32'h51515151;   mode = 1;	 func = 5;    
           
 
//           #5  x=11;y=51; 	                      mode = 1;  func = 6; 
//           #5  x=32'h00001111; y= 32'h51515151;   mode = 1;  func = 6; 
//           #5  x=32'h11111111; y= 32'h51515151;   mode = 1;  func = 6;    
           

 




//       data_file = $fopen("/afs/pd.inf.tu-dresden.de/users/muza153a/Desktop/data.csv");
//       $fdisplay(data_file, "X_Upper, Y_Upper, Result_Upper,  Accurate_Upper, X_Lower, Y_Lower, Result_lower, Accurate_Lower");	
      
//      mode = 0;
//      for (func_var = 0; func_var <1; func_var= func_var + 1) begin 
//                  func[2] = func_var;
//                  func[1:0] = 2'b00; 
//        for (i=0; i<65536; i=i+1)begin 
//           for(j=0; j<65536; j=j+1) begin 
//            x = $unsigned(i); y=$unsigned(j); 
            
//            if (func_var == 0) begin
//                accurate = x*y;
//              end  
//            else if (func_var ==1) begin
//                accurate = x/y;
//	           end
//                $fmonitor(data_file, "%d,%d,%d, %d", x, y, result_o_hybrid, accurate);
//                counter = counter + 1;
//            #5;
//          end 
//        end 
//       end 
       
       
       
       
//        #5;
//       mode = 1'b1;
//       func[2] = 1'b0;
//       for (func_var = 0; func_var <3; func_var= func_var + 1) begin 
//       func[1:0] = func_var;  
//         for (i=0; i<256; i=i+1)begin 
//            for(j=0; j<256; j=j+1) begin 
//               x[N-1:N/2] = $unsigned(i);  x[N/2-1:0] = $unsigned(i);  y [N-1:N/2]=$unsigned(j);   y [N/2-1:0]=$unsigned(j);     
//             if (func_var == 0) begin 
//                    accurate_upper = x[N-1:N/2] * y[N-1:N/2];
//                    accurate_lower = x[N/2-1:0] * y[N/2-1:0];
//                    accurate = { accurate_upper,accurate_lower};
//                 end
//             else if (func_var ==1) begin
                   
//                    accurate_upper = x[N-1:N/2] * y[N-1:N/2];
//                    accurate_lower = x[N/2-1:0] / y[N/2-1:0];
//                    accurate = { accurate_upper,accurate_lower};
//                 end
//              else if (func_var ==2) begin
                    
//                    accurate_upper = x[N-1:N/2] / y[N-1:N/2];
//                    accurate_lower = x[N/2-1:0] * y[N/2-1:0];
//                    accurate = { accurate_upper,accurate_lower};
//                 end
                 
//            else  begin
//                    accurate_upper = x[N-1:N/2] / y[N-1:N/2];
//                    accurate_lower = x[N/2-1:0]  / y[N/2-1:0];
//                    accurate = { accurate_upper,accurate_lower};
//                  end
                  
                  
//             error_lower =  (accurate_lower > result_o_hybrid[N-1:0])   ?   (accurate_lower - result_o_hybrid[N-1:0])/accurate_lower :  (result_o_hybrid[N-1:0] -accurate_lower)/accurate_lower; 
//             error_upper =  (accurate_upper > result_o_hybrid[31:16])   ?   (accurate_upper - result_o_hybrid[31:16])/accurate_upper :  (result_o_hybrid[31:16] -accurate_upper)/accurate_upper;     
                       
//                 $fmonitor(data_file, "%d,%d,%d,%d,%d, %d,%d, %d, %f, %f", x[N-1:N/2], y[N-1:N/2], result_o_hybrid[31:16], accurate_upper, x[N/2-1:0], y[N/2-1:0], result_o_hybrid[N-1:0], accurate_lower, error_lower, error_upper);
//             #5;
//           end 
//         end 
//        end 
       
//    	$fclose(data_file);  






  
	  #5;
         
    end
endmodule
