module lod#(parameter N = 16,
            parameter lgN =4
            )(a,
              pos
              );

   `include "LOD_function.v" 
   input  [N-1:0]       a;
   output [lgN:0]       pos;
   genvar 	        i;

   generate
      if(lgN==4)
	begin : lgN4
	  	 reg  [lgN-1: 0] or_op;
		 wire [1:0] seg_location;
		wire lod_detected;
	            for(i=0;i<lgN;i=i+1)
	               begin :segments
                      	 always @* begin
				 or_op[i] = a[(4*i)+ 3] | a[(4*i)+2] | a[(4*i)+1] | a[(4*i)+0];
			end
		end
	assign lod_detected = (or_op==0) ? 1'b0 : 1'b1;
	assign seg_location = lod_pos(or_op); 	
	assign  pos = (lod_detected) ? {1'b0, seg_location, lod_pos(a[(seg_location)*4+:4])} : 5'b10000;
	end
		
	
 else if(lgN==3)
	       begin : lgN3
		reg [1: 0] or_op;
		wire	 seg_location;
		wire lod_detected;
	           for(i=0;i<lgN-1;i=i+1)
	                begin :segments
				always @* begin
				 	or_op[i] = a[(4*i)+ 3] | a[(4*i)+2] | a[(4*i)+1] | a[(4*i)+0];
				end
		                
	       end
	assign lod_detected = (or_op!=0) ? 1'b1 : 1'b0;
	assign seg_location = seg_detect(or_op); 	
	assign  pos = (lod_detected) ? {1'b0,  seg_location, lod_pos(a[(seg_location)*4+:4])} : 4'b1000;

	end


	



   endgenerate 
endmodule





//module lod_old#(parameter N = 16,
//            parameter lgN =4
//            )(a,
//              pos
//              );
   
//   input  [N-1:0]      a;
//   output [lgN:0]      pos;
//   genvar 	       i;
   
   
//   generate
//      if(lgN==4)
//	begin : lgN4
//	   for(i=0;i<lgN;i=i+1)
//	     begin :segments
//		wire [lgN/2:0] seg;
//		lod_4bits inst(.a(a[N-((4*i)+1):N-((4*i)+4)]), .pos(seg));
//	     end
//	   assign pos = (lgN4.segments[0].seg[lgN/2]==0) ? {3'b011,lgN4.segments[0].seg[(lgN/2)-1:0]} : 
//    			(lgN4.segments[1].seg[lgN/2]==0) ? {3'b010,lgN4.segments[1].seg[(lgN/2)-1:0]} :
//    			(lgN4.segments[2].seg[lgN/2]==0) ? {3'b001,lgN4.segments[2].seg[(lgN/2)-1:0]} :
//   			(lgN4.segments[3].seg[lgN/2]==0) ? {3'b000,lgN4.segments[3].seg[(lgN/2)-1:0]} :
//    			5'b10000;
//	end
//      else if(lgN==3)
//	begin : lgN3
//	    for(i=0;i<lgN-1;i=i+1)
//	     begin :segments
//		wire [lgN-1:0] seg;
//		lod_4bits inst(.a(a[N-((4*i)+1):N-((4*i)+4)]), .pos(seg));
//	     end
//	   assign pos = (lgN3.segments[0].seg[lgN-1]==0) ? {2'b01,lgN3.segments[0].seg[(lgN-2):0]} :
//   			(lgN3.segments[1].seg[lgN-1]==0) ? {2'b00,lgN3.segments[1].seg[(lgN-2):0]} :
//    			4'b1000;
//	end
//   endgenerate 
//endmodule