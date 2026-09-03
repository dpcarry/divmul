module hybrid #(parameter N = 16,
                    parameter lgN =4
                    )(input1_i,
                      input2_i,
		              func,
                      result_o_hybrid
                     );
   
   input  [N-1:0]   	   input1_i;
   input  [N-1:0] 	       input2_i;
   input   	               func;  // 0 for multiplication and 1 for division
   output [2*N-1:0] 	   result_o_hybrid;



   wire [lgN:0] 	    	ka;
   wire [lgN:0] 	    	kb;

   wire [lgN+1:0]     		log_int;
   wire [lgN+1:0]           log_int_div_mul;
   
   wire [lgN:0]     		log_int_m;
   wire [N-2:0]     		fraction_a;
   wire [N-2:0]     		fraction_b;
   wire [N-1:0]     		log_frac;
   wire [N-1:0]     		log_frac_m;
   wire [N-1:0]     		log_frac_temp;
   wire [N-1:0] 	    	correction;
   wire [N-1:0] 	    	correction_div;
   wire [N:0]       	    corrected_a;
   wire [N:0]       	    corrected;
   wire [N+lgN:0]       	corrected_m;
   wire                     complement_bit;
   wire                     log_frac_last_bit;
   
   
    wire [N-1:0]            a_i;
    wire [lgN+1:0]          shift_i;
   
   
   
   wire [N+lgN -1:0]       	adder1_i;
   wire [N+lgN -1:0]       	adder2_i;
   
   wire [N+lgN :0]       	adder3_i;
   wire [N+lgN :0]          adder4_i;



   
//   lod #(.N(N), .lgN(lgN)) inst_loda(.a(input1_i), .pos(ka));
//   lod #(.N(N), .lgN(lgN)) inst_lodb(.a(input2_i), .pos(kb));

//     shifter #(.N(N), .lgN(lgN)) inst_frac_a(.a(input1_i), .shifter(ka[lgN-1:0]), .out(fraction_a));
//     shifter #(.N(N), .lgN(lgN))inst_frac_b(.a(input2_i),  .shifter(kb[lgN-1:0]), .out(fraction_b));
    
    generate
       if(N==16) begin 
        
      lod #(.N(N), .lgN(lgN)) inst_loda(.a(input1_i), .pos(ka));
      lod #(.N(N), .lgN(lgN)) inst_lodb(.a(input2_i), .pos(kb));
   
      shifter #(.N(N), .lgN(lgN)) inst_frac_a(.a(input1_i), .shifter(ka[lgN-1:0]), .out(fraction_a));
      shifter #(.N(N), .lgN(lgN))inst_frac_b(.a(input2_i),  .shifter(kb[lgN-1:0]), .out(fraction_b));
      
      select_ec_16_mul_div  inst_mul_ec(.mode(func), .frac_a(fraction_a[N-2:N-4]), .frac_b(fraction_b[N-2:N-4]), .error_coeff(correction)); 
         
         
         
    
                        
   end
    else if (N==8) begin           

   lod #(.N(N), .lgN(lgN)) inst_loda(.a(input1_i), .pos(ka));
   lod #(.N(N), .lgN(lgN)) inst_lodb(.a(input2_i), .pos(kb));
    
   shifter #(.N(N), .lgN(lgN)) inst_frac_a(.a(input1_i), .shifter(ka[lgN-1:0]), .out(fraction_a));
   shifter #(.N(N), .lgN(lgN))inst_frac_b(.a(input2_i),  .shifter(kb[lgN-1:0]), .out(fraction_b));                 

   select_ec_8_mul_div  inst_mul_ec(.mode(func), .frac_a(fraction_a[N-2:N-4]), .frac_b(fraction_b[N-2:N-4]), .error_coeff(correction)); 
    
            end
   endgenerate 
   
   
      //  (Fraction_b + Error_correction)
     adder #(.N(N)) adder_inst_1(.a({1'b0, fraction_b}), 
                                 .b(correction),
                                 .cin(1'b0),
                                 .sum(corrected_a)
                          );
                          
   
                          
   // Depending on the func bit (Mult or div) it outputs either the input or the inverted input. 
   // The input to this instance is corrected_a = (Fraction_b + Error_correction)                                                          
    func_select_add#(.N(N)) func_select_2(.func(func), 
                                          .input_i(corrected_a),
                                          .output_o(corrected)
                                          );
                                     
                                     
   // Addition or Subraction based on the func bit (faction a + corrected ) or (faction_b - corrected)
    adder #(.N(N)) adder_inst_2(.a(corrected[N-1:0]), 
                                 .b({1'b0,fraction_a}),
                                 .cin(func), // 
                                 .sum(log_frac)
                          );                                                                             
                                  
                                  
                                  
    //addition or subraction of integer part based on the func bit                               
    add_integer_part#(.lgN(lgN))  add_int_part_inst 
                                                    (.func(func),
                                                     .a(ka),
                                                     .b(kb), 
                                                     .c(log_frac[N-1]), 
                                                     .result(log_int)
                                                     );  

    //shifting the output based on the integer part                 
    shifter_out_mul_div#(.N(N), .lgN(lgN)) shifter_out_mul_div_inst 
                                                    (.func(func),
                                                     .a (log_frac),
                                                     .shifter(log_int),
                                                     .out(result_o_hybrid)
                                                    );


endmodule
