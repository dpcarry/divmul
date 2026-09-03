//module simple_function();
//function [1:0] lod_pos;
//
//   input       [3:0]   	 a;
//
//    begin
//       case(a)
//         4'b1xxx : lod_pos = 2'b11;
//         4'b01xx : lod_pos = 2'b10;
//         4'b001x : lod_pos = 2'b01;
//         4'b0001 : lod_pos = 2'b00;
//       endcase
//    end
//   
//endfunction
//endmodule


function       [1:0] lod_pos;
   input       [3:0]   	 a_var;
    begin
       casex(a_var)
         4'b1xxx : lod_pos = 2'b11;
         4'b01xx : lod_pos = 2'b10;
         4'b001x : lod_pos = 2'b01;
         4'b0001 : lod_pos = 2'b00;
       endcase
    end
   
endfunction



function       seg_detect;
   input       [1:0]   	 a_var;
    begin
       casex(a_var)
         2'b1x :  seg_detect = 1'b1;
         2'b01 :  seg_detect = 1'b0;

       endcase
    end
   
endfunction

