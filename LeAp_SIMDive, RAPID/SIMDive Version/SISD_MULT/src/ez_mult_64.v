
module ez_mult_64 #(parameter N = 8 ,
                    parameter lgN =3
                    )( 
                      input1_i,
                      input2_i,
//                      mode,
                      product_o
                     );
   
   input  [N-1:0]   	 input1_i;
   input  [N-1:0] 	     input2_i;
   output [2*N-1:0] 	 product_o;
   
   wire [lgN-1:0] 	    ka;
   wire [lgN-1:0] 	    kb;
   
   wire [lgN:0]     	log_int;
   wire [lgN:0]     	log_int_m;
   
   wire [N-2:0]     	fraction_a;
   wire [N-2:0]     	fraction_b;
   
   wire [N-1:0]     	log_frac;
   wire [N-1:0]     	log_frac_m;
   wire [N-1:0]     	log_frac_temp;
   wire [2:0] 	    correction;
   wire                 carry;

//        lod #(.N(N),
//         .lgN(lgN)	
//         )inst1(.a(input1_i),
//                .pos(ka)
//                );
//        lod #(.N(N),
//         .lgN(lgN)
//         )inst2(.a(input2_i),
//                .pos(kb)
//                ); 
//        shifter #(.N(N),
//             .lgN(lgN)
//             )inst_frac_a(.a(input1_i),
//                          .shifter(ka[lgN-1:0]),
//                          .out(fraction_a)
//                         );
//        shifter #(.N(N),
//              .lgN(lgN)
//              )inst_frac_b(.a(input2_i),
//                           .shifter(kb[lgN-1:0]),
//                           .out(fraction_b));
      
      
 
                           

//        lod_case#(.N(N),
//         .lgN(lgN)	
//         ) LOD_inst_1 
//            (  .operand(input1_i),
//               .log_int_part(ka),
//               .log_frac_part(fraction_a)
//           );
               
//        lod_case#(.N(N),
//                  .lgN(lgN)    
//                 ) 
//                 LOD_inst_2(
//                   .operand(input2_i),
//                    .log_int_part(kb),
//                     .log_frac_part(fraction_b)
//                         );
                   
                                
        generate
        if(N==16) begin 
        
              
        lod_single_cycle_16_bit lod_inst_lut_1   
        
                                      (  .operand(input1_i),
                                          .log_int_part(ka),
                                          .log_frac_part(fraction_a)
                                      );
                                      
                                      
          lod_single_cycle_16_bit   lod_inst_lut_2(
                  .operand(input2_i),
                  .log_int_part(kb),
                  .log_frac_part(fraction_b)
                      );
        
        
        select_error_coeff_mul_64 inst(.frac_a(fraction_a[N-2:N-4]),
                                 .frac_b(fraction_b[N-2:N-4]),
                                 .error_coeff(correction)
                                ); 
                                
   
        end
        else if (N==8) begin      
        
        
          lod_single_cycle_8_bit lod_inst_lut_1   
                                      (  .operand(input1_i),
                                          .log_int_part(ka),
                                          .log_frac_part(fraction_a)
                                      );
                                      
                                      
          lod_single_cycle_8_bit   lod_inst_lut_2
                    (
                  .operand(input2_i),
                  .log_int_part(kb),
                  .log_frac_part(fraction_b)
                      );
        
        
        
        select_error_coeff_mul_64_8_bit inst_8_bit(.frac_a(fraction_a[N-2:N-4]),
                                 .frac_b(fraction_b[N-2:N-4]),
                                 .error_coeff(correction)
                                );     
        end
        endgenerate        


//    generate
//           if(N==16) begin 
//            select_error_coeff_mul_64 inst(.frac_a(fraction_a[N-1:N-3]),
//                                       .frac_b(fraction_b[N-1:N-3]),
//                                       .error_coeff(correction)
//                                      ); 
//         end
//           else if (N==8) begin      
//            select_error_coeff_mul_64_8_bit inst_8_bit(.frac_a(fraction_a[N-1:N-3]),
//                                       .frac_b(fraction_b[N-1:N-3]),
//                                       .error_coeff(correction)
//                                      );     
//           end
//        endgenerate         

//       adder #(.N(N)
//            )inst_frac
//                     (.a({1'b0, fraction_a}),
//                      .b({1'b0, fraction_b}),
//		              .c(correction), //TODO: Make sure to change this according to the error scheme
//                      .cin(1'b0),
//                      .result({carry, log_frac})
//                     );
                 

       adder #(.N(N)
            )inst_frac
                     (.a({1'b0, fraction_a}),
                      .b({1'b0, fraction_b}),
		              .c({3'b000, correction, 2'b11}), //TODO: Make sure to change this according to the error scheme
                      .cin(1'b0),
                      .result({carry, log_frac})
                     );


//      add_fraction_part #(.N(N),
//                          .lgN(lgN))
                          
//                      (.x_frac_part(fraction_a[N-1:1]),
//                       .y_frac_part(fraction_b[N-1:1]),
//                      .correction_term(correction),
//                      .sum_frac_parts(log_frac)
//                     );
      
      
       add_4_bit  #(.lgN(lgN)) integer_add (.a(ka), .b(kb), .c(log_frac[N-1]), .result(log_int));
       
       shifter_out #(.N(N),
                     .lgN(lgN)    
                    )shift_out(.frac_part(log_frac[N-2:0]),
                               .shifter(log_int),
                               .out(product_o)
                              );
                              
endmodule