module shifter_out #(parameter N = 16,
                     parameter lgN = 4
                    )(frac_part,
                      shifter,
                      out
                     );

   input      [N-2:0]   frac_part;
   input      [lgN:0] shifter;
   output reg       [2*N-1:0]   out;  

   reg [N:0] 	        num;
   reg [N:0] 	        out_reg;
   wire                 append;
   wire [lgN-1:0]       shift;
   
reg        [(N-2) + (2*N):0]      temp;


    
   always@(*)
     begin
           temp = {{2*N-2{1'b0}}, 1'b1, frac_part} << shifter;
           out   = temp[(N-2) + (2*N) -:N*2];      // out1  = a<< N- lod_pos_upper_half; 
     end
     
//     assign out = (shifter == 4'd0)?  {{15{1'b0}}, 1'b1}:
//                  (shifter == 4'd1)?  {{14{1'b0}}, 1'b1, frac_part[N-2]} : 
//                  (shifter == 4'd2)?  {{13{1'b0}}, 1'b1, frac_part[N-2:N-3]}:
//                  (shifter == 4'd3)?  {{12{1'b0}}, 1'b1, frac_part[N-2:N-4]}:
//                  (shifter == 4'd4)?  {{11{1'b0}}, 1'b1, frac_part[N-2:N-5]}:
//                  (shifter == 4'd5)?  {{10{1'b0}}, 1'b1, frac_part[N-2:N-6]}:
//                  (shifter == 4'd6)?  {{9{1'b0}},  1'b1, frac_part[N-2:N-7]}:
//                  (shifter == 4'd7)?  {{8{1'b0}},  1'b1, frac_part[N-2:0]}:
//                  (shifter == 4'd8)?  {{7{1'b0}},1'b1, frac_part[N-2:0], {1{1'b0}}}:
//                  (shifter == 4'd9)?  {{6{1'b0}},1'b1, frac_part[N-2:0], {2{1'b0}}}:
//                  (shifter == 4'd10)? {{5{1'b0}},1'b1, frac_part[N-2:0], {3{1'b0}}}:
//                  (shifter == 4'd11)? {{4{1'b0}},1'b1, frac_part[N-2:0], {4{1'b0}}}:
//                  (shifter == 4'd12)? {{3{1'b0}},1'b1, frac_part[N-2:0], {5{1'b0}}}:
//                  (shifter == 4'd13)? {{2{1'b0}},1'b1, frac_part[N-2:0], {6{1'b0}}}:
//                  (shifter == 4'd14)? {{1{1'b0}},1'b1, frac_part[N-2:0], {7{1'b0}}}:
//                                                {1'b1, frac_part[N-2:0], {8{1'b0}}};
                                                
                                                
//       always@(*)
//         begin
//                case(shifter)
                
//                4'd0 : begin out =   {{15{1'b0}}, 1'b1}; end
//                4'd1 : begin out =   {{14{1'b0}}, 1'b1, frac_part[N-2]} ; end
//                4'd2 : begin out =   {{13{1'b0}}, 1'b1, frac_part[N-2:N-3]}; end
//                4'd3 : begin out =   {{12{1'b0}}, 1'b1, frac_part[N-2:N-4]}; end
//                4'd4 : begin out =   {{11{1'b0}}, 1'b1, frac_part[N-2:N-5]}; end
//                4'd5 : begin out =   {{10{1'b0}}, 1'b1, frac_part[N-2:N-6]}; end
//                4'd6 : begin out =   {{9{1'b0}},  1'b1, frac_part[N-2:N-7]}; end
//                4'd7 : begin out =   {{8{1'b0}},  1'b1, frac_part[N-2:0]}; end
//                4'd8 : begin out =   {{7{1'b0}},1'b1, frac_part[N-2:0], {1{1'b0}}}; end
//                4'd9 : begin out =   {{6{1'b0}},1'b1, frac_part[N-2:0], {2{1'b0}}}; end
//                4'd10 : begin out =  {{5{1'b0}},1'b1, frac_part[N-2:0], {3{1'b0}}}; end
//                4'd11 : begin out =  {{4{1'b0}},1'b1, frac_part[N-2:0], {4{1'b0}}}; end
//                4'd12 : begin out =   {{3{1'b0}},1'b1, frac_part[N-2:0], {5{1'b0}}}; end
//                4'd13 : begin out =  {{2{1'b0}},1'b1, frac_part[N-2:0], {6{1'b0}}}; end
//                4'd14 : begin out =  {{1{1'b0}},1'b1, frac_part[N-2:0], {7{1'b0}}}; end
//                4'd15 : begin out =  {1'b1, frac_part[N-2:0], {8{1'b0}}}; end

                
//                endcase
                
                
//           end                                          
                                                
                                                
                                                

                    
endmodule

