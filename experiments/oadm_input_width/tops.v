module input_l0_control_b23(input [31:0] x,y, output [31:0] result);
oadm_fixed_l0_div_specialized dut(x,y,result);
endmodule

module input_l0_mask_b3(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(3), .NARROW(0), .LEVEL(0), .RESIDUAL_DROP(18), .WN_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)) dut(x,y,result);
endmodule

module input_l0_narrow_b3(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(3), .NARROW(1), .LEVEL(0), .RESIDUAL_DROP(18), .WN_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)) dut(x,y,result);
endmodule

module input_l0_mask_b4(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(4), .NARROW(0), .LEVEL(0), .RESIDUAL_DROP(18), .WN_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)) dut(x,y,result);
endmodule

module input_l0_narrow_b4(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(4), .NARROW(1), .LEVEL(0), .RESIDUAL_DROP(18), .WN_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)) dut(x,y,result);
endmodule

module input_l0_mask_b5(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(5), .NARROW(0), .LEVEL(0), .RESIDUAL_DROP(18), .WN_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)) dut(x,y,result);
endmodule

module input_l0_narrow_b5(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(5), .NARROW(1), .LEVEL(0), .RESIDUAL_DROP(18), .WN_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)) dut(x,y,result);
endmodule

module input_l0_mask_b6(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(6), .NARROW(0), .LEVEL(0), .RESIDUAL_DROP(18), .WN_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)) dut(x,y,result);
endmodule

module input_l0_narrow_b6(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(6), .NARROW(1), .LEVEL(0), .RESIDUAL_DROP(18), .WN_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)) dut(x,y,result);
endmodule

module input_l0_mask_b7(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(7), .NARROW(0), .LEVEL(0), .RESIDUAL_DROP(18), .WN_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)) dut(x,y,result);
endmodule

module input_l0_narrow_b7(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(7), .NARROW(1), .LEVEL(0), .RESIDUAL_DROP(18), .WN_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)) dut(x,y,result);
endmodule

module input_l0_mask_b8(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(8), .NARROW(0), .LEVEL(0), .RESIDUAL_DROP(18), .WN_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)) dut(x,y,result);
endmodule

module input_l0_narrow_b8(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(8), .NARROW(1), .LEVEL(0), .RESIDUAL_DROP(18), .WN_DROP(18), .COEFFICIENT_BITS(7), .C0(8'd59)) dut(x,y,result);
endmodule

module input_l1_control_b23(input [31:0] x,y, output [31:0] result);
oadm_fixed_l1_div_specialized dut(x,y,result);
endmodule

module input_l1_mask_b4(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(4), .NARROW(0), .LEVEL(1), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(7), .C0(8'd83), .C1(8'd42)) dut(x,y,result);
endmodule

module input_l1_narrow_b4(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(4), .NARROW(1), .LEVEL(1), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(7), .C0(8'd83), .C1(8'd42)) dut(x,y,result);
endmodule

module input_l1_mask_b5(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(5), .NARROW(0), .LEVEL(1), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(7), .C0(8'd83), .C1(8'd42)) dut(x,y,result);
endmodule

module input_l1_narrow_b5(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(5), .NARROW(1), .LEVEL(1), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(7), .C0(8'd83), .C1(8'd42)) dut(x,y,result);
endmodule

module input_l1_mask_b6(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(6), .NARROW(0), .LEVEL(1), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(7), .C0(8'd83), .C1(8'd42)) dut(x,y,result);
endmodule

module input_l1_narrow_b6(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(6), .NARROW(1), .LEVEL(1), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(7), .C0(8'd83), .C1(8'd42)) dut(x,y,result);
endmodule

module input_l1_mask_b7(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(7), .NARROW(0), .LEVEL(1), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(7), .C0(8'd83), .C1(8'd42)) dut(x,y,result);
endmodule

module input_l1_narrow_b7(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(7), .NARROW(1), .LEVEL(1), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(7), .C0(8'd83), .C1(8'd42)) dut(x,y,result);
endmodule

module input_l1_mask_b8(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(8), .NARROW(0), .LEVEL(1), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(7), .C0(8'd83), .C1(8'd42)) dut(x,y,result);
endmodule

module input_l1_narrow_b8(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(8), .NARROW(1), .LEVEL(1), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(7), .C0(8'd83), .C1(8'd42)) dut(x,y,result);
endmodule

module input_l2_control_b23(input [31:0] x,y, output [31:0] result);
oadm_fixed_l2_div_specialized dut(x,y,result);
endmodule

module input_l2_mask_b4(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(4), .NARROW(0), .LEVEL(2), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd203), .C1(8'd136), .C2(8'd97), .C3(8'd73)) dut(x,y,result);
endmodule

module input_l2_narrow_b4(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(4), .NARROW(1), .LEVEL(2), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd203), .C1(8'd136), .C2(8'd97), .C3(8'd73)) dut(x,y,result);
endmodule

module input_l2_mask_b5(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(5), .NARROW(0), .LEVEL(2), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd203), .C1(8'd136), .C2(8'd97), .C3(8'd73)) dut(x,y,result);
endmodule

module input_l2_narrow_b5(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(5), .NARROW(1), .LEVEL(2), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd203), .C1(8'd136), .C2(8'd97), .C3(8'd73)) dut(x,y,result);
endmodule

module input_l2_mask_b6(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(6), .NARROW(0), .LEVEL(2), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd203), .C1(8'd136), .C2(8'd97), .C3(8'd73)) dut(x,y,result);
endmodule

module input_l2_narrow_b6(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(6), .NARROW(1), .LEVEL(2), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd203), .C1(8'd136), .C2(8'd97), .C3(8'd73)) dut(x,y,result);
endmodule

module input_l2_mask_b7(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(7), .NARROW(0), .LEVEL(2), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd203), .C1(8'd136), .C2(8'd97), .C3(8'd73)) dut(x,y,result);
endmodule

module input_l2_narrow_b7(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(7), .NARROW(1), .LEVEL(2), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd203), .C1(8'd136), .C2(8'd97), .C3(8'd73)) dut(x,y,result);
endmodule

module input_l2_mask_b8(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(8), .NARROW(0), .LEVEL(2), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd203), .C1(8'd136), .C2(8'd97), .C3(8'd73)) dut(x,y,result);
endmodule

module input_l2_narrow_b8(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(8), .NARROW(1), .LEVEL(2), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd203), .C1(8'd136), .C2(8'd97), .C3(8'd73)) dut(x,y,result);
endmodule

module input_l3_control_b23(input [31:0] x,y, output [31:0] result);
oadm_fixed_l3_div_specialized dut(x,y,result);
endmodule

module input_l3_mask_b4(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(4), .NARROW(0), .LEVEL(3), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd227), .C1(8'd182), .C2(8'd149), .C3(8'd124), .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)) dut(x,y,result);
endmodule

module input_l3_narrow_b4(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(4), .NARROW(1), .LEVEL(3), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd227), .C1(8'd182), .C2(8'd149), .C3(8'd124), .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)) dut(x,y,result);
endmodule

module input_l3_mask_b5(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(5), .NARROW(0), .LEVEL(3), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd227), .C1(8'd182), .C2(8'd149), .C3(8'd124), .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)) dut(x,y,result);
endmodule

module input_l3_narrow_b5(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(5), .NARROW(1), .LEVEL(3), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd227), .C1(8'd182), .C2(8'd149), .C3(8'd124), .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)) dut(x,y,result);
endmodule

module input_l3_mask_b6(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(6), .NARROW(0), .LEVEL(3), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd227), .C1(8'd182), .C2(8'd149), .C3(8'd124), .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)) dut(x,y,result);
endmodule

module input_l3_narrow_b6(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(6), .NARROW(1), .LEVEL(3), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd227), .C1(8'd182), .C2(8'd149), .C3(8'd124), .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)) dut(x,y,result);
endmodule

module input_l3_mask_b7(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(7), .NARROW(0), .LEVEL(3), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd227), .C1(8'd182), .C2(8'd149), .C3(8'd124), .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)) dut(x,y,result);
endmodule

module input_l3_narrow_b7(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(7), .NARROW(1), .LEVEL(3), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd227), .C1(8'd182), .C2(8'd149), .C3(8'd124), .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)) dut(x,y,result);
endmodule

module input_l3_mask_b8(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(8), .NARROW(0), .LEVEL(3), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd227), .C1(8'd182), .C2(8'd149), .C3(8'd124), .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)) dut(x,y,result);
endmodule

module input_l3_narrow_b8(input [31:0] x,y, output [31:0] result);
oadm_input_trial #(.B(8), .NARROW(1), .LEVEL(3), .RESIDUAL_DROP(16), .WN_DROP(16), .COEFFICIENT_BITS(8), .C0(8'd227), .C1(8'd182), .C2(8'd149), .C3(8'd124), .C4(8'd105), .C5(8'd90), .C6(8'd78), .C7(8'd68)) dut(x,y,result);
endmodule
