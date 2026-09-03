module LOD_ENC
#(
	parameter width=23,
	parameter log_width=$clog2(width)
)
`define w(x) [(x)-1:0]
(
    input `w(width) l_one, // only the leading one
	output reg `w(log_width) num0 // number of leading zero
);
    //encoding 
    integer i;

    always @(*) begin
        num0 = width[log_width-1:0];
        for (i = 0;i<=width-1;i=i+1) begin:zerocnt
            if (l_one[width-i-1] == 1'b1) num0 = i[log_width-1:0];
        end
    end
endmodule
