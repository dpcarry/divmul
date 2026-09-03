module select_error_coeff_mul_64_8_bit_LUT(frac_a,
                                 frac_b,
                                 error_coeff
                                );


        
    input      [2:0]  frac_a;
    input      [2:0]  frac_b;
    output      [7:0] error_coeff;


            LUT6 #( .INIT(64'h0002450600001008) // Specify LUT Contents         
                 ) LUT6_inst (
                    .O(error_coeff[0]), // 1-bit LUT6 output
                    
                    .I0(frac_a[0]), 
                    .I1(frac_a[1]), 
                    .I2(frac_a[2]), 
                    .I3(frac_b[0]), 
                    .I4(frac_b[1]), 
                    .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
                    );   
            
                    
            
           LUT6 #( .INIT(64'h34580002000000d2) // Specify LUT Contents         
                        ) LUT6_inst1 (
                        .O(error_coeff[1]), // 1-bit LUT6 output
                        
                    .I0(frac_a[0]), 
                        .I1(frac_a[1]), 
                        .I2(frac_a[2]), 
                        .I3(frac_b[0]), 
                        .I4(frac_b[1]), 
                        .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
                        );   
                
                        
                        
            LUT6 #( .INIT(64'h7021000600001116) // Specify LUT Contents         
            ) LUT6_inst2 (
                    .O(error_coeff[2]), // 1-bit LUT6 output
                    
                    .I0(frac_a[0]), 
                    .I1(frac_a[1]), 
                    .I2(frac_a[2]), 
                    .I3(frac_b[0]), 
                    .I4(frac_b[1]), 
                    .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
                    );   
                    
            
            LUT6 #( .INIT(64'h03210000480aa011) // Specify LUT Contents         
            ) LUT6_inst3 (
                    .O(error_coeff[3]), // 1-bit LUT6 output
                    
                    .I0(frac_a[0]), 
                    .I1(frac_a[1]), 
                    .I2(frac_a[2]), 
                    .I3(frac_b[0]), 
                    .I4(frac_b[1]), 
                    .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
                    );   
            
            LUT6 #( .INIT(64'h01258606000d100d) // Specify LUT Contents         
            ) LUT6_inst4 (
                    .O(error_coeff[4]), // 1-bit LUT6 output
                    .I0(frac_a[0]), 
                    .I1(frac_a[1]), 
                    .I2(frac_a[2]), 
                    .I3(frac_b[0]), 
                    .I4(frac_b[1]), 
                    .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
                     );                                                                                     
 
            
            
            LUT6 #( .INIT(64'h1125000600000d08) // Specify LUT Contents         
            ) LUT6_inst5 (
                    .O(error_coeff[5]), // 1-bit LUT6 output
                    
                   .I0(frac_a[0]), 
                     .I1(frac_a[1]), 
                     .I2(frac_a[2]), 
                     .I3(frac_b[0]), 
                     .I4(frac_b[1]), 
                     .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
                     );                                                                                     
       
            
            
                                               
            LUT6 #( .INIT(64'h0000000600000008) // Specify LUT Contents         
            ) LUT6_inst6 (
                    .O(error_coeff[6]), // 1-bit LUT6 output
                    
                     .I0(frac_a[0]), 
                     .I1(frac_a[1]), 
                     .I2(frac_a[2]), 
                     .I3(frac_b[0]), 
                     .I4(frac_b[1]), 
                     .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
                     );                                                                                     
     
                    
            
            
            LUT6 #( .INIT(64'h9874000600000008) // Specify LUT Contents         
            ) LUT6_inst7 (
                    .O(error_coeff[7]), // 1-bit LUT6 output
                    
                    .I0(frac_a[0]), 
                    .I1(frac_a[1]), 
                    .I2(frac_a[2]), 
                    .I3(frac_b[0]), 
                    .I4(frac_b[1]), 
                    .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
                    );                                                                                                                                                                                            


endmodule

//module select_error_coeff_mul_64_8_bit_LUT(frac_a,
//                                 frac_b,
//                                 error_coeff
//                                );


        
//    input      [2:0]  frac_a;
//    input      [2:0]  frac_b;
//    output      [7:0] error_coeff;


//            LUT6_2 #( .INIT(64'h0002450600001008) // Specify LUT Contents         
//                 ) LUT6_2_inst (
//                    .O6(error_coeff[0]), // 1-bit LUT6 output
//                    .O5(), // 1-bit lower LUT5 output
//                    .I0(frac_a[0]), 
//                    .I1(frac_a[1]), 
//                    .I2(frac_a[2]), 
//                    .I3(frac_b[0]), 
//                    .I4(frac_b[1]), 
//                    .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                    );   
            
                    
            
//           LUT6_2 #( .INIT(64'h34580002000000d2) // Specify LUT Contents         
//                        ) LUT6_2_inst1 (
//                        .O6(error_coeff[1]), // 1-bit LUT6 output
//                        .O5(), // 1-bit lower LUT5 output
//                    .I0(frac_a[0]), 
//                        .I1(frac_a[1]), 
//                        .I2(frac_a[2]), 
//                        .I3(frac_b[0]), 
//                        .I4(frac_b[1]), 
//                        .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                        );   
                
                        
                        
//            LUT6_2 #( .INIT(64'h7021000600001116) // Specify LUT Contents         
//            ) LUT6_2_inst2 (
//                    .O6(error_coeff[2]), // 1-bit LUT6 output
//                    .O5(), // 1-bit lower LUT5 output
//                    .I0(frac_a[0]), 
//                    .I1(frac_a[1]), 
//                    .I2(frac_a[2]), 
//                    .I3(frac_b[0]), 
//                    .I4(frac_b[1]), 
//                    .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                    );   
                    
            
//            LUT6_2 #( .INIT(64'h03210000480aa011) // Specify LUT Contents         
//            ) LUT6_2_inst3 (
//                    .O6(error_coeff[3]), // 1-bit LUT6 output
//                    .O5(), // 1-bit lower LUT5 output
//                    .I0(frac_a[0]), 
//                    .I1(frac_a[1]), 
//                    .I2(frac_a[2]), 
//                    .I3(frac_b[0]), 
//                    .I4(frac_b[1]), 
//                    .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                    );   
            
//            LUT6_2 #( .INIT(64'h01258606000d100d) // Specify LUT Contents         
//            ) LUT6_2_inst4 (
//                    .O6(error_coeff[4]), // 1-bit LUT6 output
//                    .O5(), // 1-bit lower LUT5 output
//                   .I0(frac_a[0]), 
//                     .I1(frac_a[1]), 
//                     .I2(frac_a[2]), 
//                     .I3(frac_b[0]), 
//                     .I4(frac_b[1]), 
//                     .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                     );                                                                                     
 
            
            
//            LUT6_2 #( .INIT(64'h1125000600000d08) // Specify LUT Contents         
//            ) LUT6_2_inst5 (
//                    .O6(error_coeff[5]), // 1-bit LUT6 output
//                    .O5(), // 1-bit lower LUT5 output
//                   .I0(frac_a[0]), 
//                     .I1(frac_a[1]), 
//                     .I2(frac_a[2]), 
//                     .I3(frac_b[0]), 
//                     .I4(frac_b[1]), 
//                     .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                     );                                                                                     
       
            
            
                                               
//            LUT6_2 #( .INIT(64'h0000000600000008) // Specify LUT Contents         
//            ) LUT6_2_inst6 (
//                    .O6(error_coeff[6]), // 1-bit LUT6 output
//                    .O5(), // 1-bit lower LUT5 output
//                     .I0(frac_a[0]), 
//                     .I1(frac_a[1]), 
//                     .I2(frac_a[2]), 
//                     .I3(frac_b[0]), 
//                     .I4(frac_b[1]), 
//                     .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                     );                                                                                     
     
                    
            
            
//            LUT6_2 #( .INIT(64'h9874000600000008) // Specify LUT Contents         
//            ) LUT6_2_inst7 (
//                    .O6(error_coeff[7]), // 1-bit LUT6 output
//                    .O5(), // 1-bit lower LUT5 output
//                    .I0(frac_a[0]), 
//                    .I1(frac_a[1]), 
//                    .I2(frac_a[2]), 
//                    .I3(frac_b[0]), 
//                    .I4(frac_b[1]), 
//                    .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                    );                                                                                                                                                                                            


//endmodule