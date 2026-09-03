
function       [2:0] lod_pos_8_bit;
   input       [7:0] a_var;
    begin
       casex(a_var)
            8'b1xxx_xxxx : lod_pos_8_bit = 3'd7;
            8'b01xx_xxxx : lod_pos_8_bit = 3'd6;
            8'b001x_xxxx : lod_pos_8_bit = 3'd5;
            8'b0001_xxxx : lod_pos_8_bit = 3'd4;
            8'b0000_1xxx : lod_pos_8_bit = 3'd3;
            8'b0000_01xx : lod_pos_8_bit = 3'd2;
            8'b0000_001x : lod_pos_8_bit = 3'd1;
            8'b0000_0001 : lod_pos_8_bit = 3'd0;
       endcase
    end

endfunction


function       [1:0] lod_pos_4_bit;
   input       [3:0] a_var;
    begin
       casex(a_var)
 
            4'b1xxx : lod_pos_4_bit = 2'd3;
            4'b01xx : lod_pos_4_bit = 2'd2;
            4'b001x : lod_pos_4_bit = 2'd1;
            4'b0001 : lod_pos_4_bit = 2'd0;
       endcase
    end

endfunction





//function   lod_pos_2_bit;
//   input       [1:0] a_var;
//    begin
//       casex(a_var)
//            2'b1x : lod_pos_2_bit = 1'b1;
//            2'b01 : lod_pos_2_bit = 1'b0;
//       endcase
//    end
//endfunction


//function       seg_pos;
//   input       [1:0]   	 a_var;
//    begin
//       casex(a_var)
//         2'b1x :  seg_pos = 1'b1;
//         2'b01 :  seg_pos = 1'b0;

//       endcase
//    end

//endfunction
