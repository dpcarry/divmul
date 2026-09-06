`timescale 1ns/1ps
module tb_check;
reg [31:0] x,y;
integer fd, scanned, count, i;
wire [31:0] actual [0:14];
reg [31:0] expected [0:14];
`ifdef GATE
wire [31:0] gate_0;
input_div_b3_bias1_gate g0(x,y,gate_0);
`endif
input_div_b3_bias1 d0(x,y,actual[0]);
`ifdef GATE
wire [31:0] gate_1;
input_div_b5_bias1_gate g1(x,y,gate_1);
`endif
input_div_b5_bias1 d1(x,y,actual[1]);
`ifdef GATE
wire [31:0] gate_2;
input_div_b7_bias1_gate g2(x,y,gate_2);
`endif
input_div_b7_bias1 d2(x,y,actual[2]);
`ifdef GATE
wire [31:0] gate_3;
input_mul_b3_bias1_gate g3(x,y,gate_3);
`endif
input_mul_b3_bias1 d3(x,y,actual[3]);
`ifdef GATE
wire [31:0] gate_4;
input_mul_b5_bias1_gate g4(x,y,gate_4);
`endif
input_mul_b5_bias1 d4(x,y,actual[4]);
`ifdef GATE
wire [31:0] gate_5;
input_mul_b7_bias1_gate g5(x,y,gate_5);
`endif
input_mul_b7_bias1 d5(x,y,actual[5]);
`ifdef GATE
wire [31:0] gate_6;
input_mul_b9_bias1_gate g6(x,y,gate_6);
`endif
input_mul_b9_bias1 d6(x,y,actual[6]);
oadm_fixed_l0_div_specialized d7(x,y,actual[7]);
oadm_fixed_l1_div_specialized d8(x,y,actual[8]);
oadm_fixed_l2_div_specialized d9(x,y,actual[9]);
oadm_fixed_l3_div_specialized d10(x,y,actual[10]);
oadm_fixed_l0_mul_root_opt d11(x,y,actual[11]);
oadm_fixed_l1_mul_root_opt d12(x,y,actual[12]);
oadm_fixed_l2_mul_root_opt d13(x,y,actual[13]);
oadm_fixed_l3_mul_root_opt d14(x,y,actual[14]);
initial begin
    count = 0;
    fd = $fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/input_trunc_bias/results/vectors.txt", "r");
    if (!fd) $fatal(1,"missing vectors");
    while (!$feof(fd)) begin
        scanned = $fscanf(fd, "%h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", x, y, expected[0], expected[1], expected[2], expected[3], expected[4], expected[5], expected[6], expected[7], expected[8], expected[9], expected[10], expected[11], expected[12], expected[13], expected[14]);
        if (scanned != 17) $fatal(1,"malformed vectors");
        #10;
        for (i=0; i<15; i=i+1) begin
            if (actual[i] !== expected[i]) begin
                $display("MODEL_MISMATCH dut=%0d vector=%0d x=%h y=%h actual=%h expected=%h",i,count,x,y,actual[i],expected[i]);
                $fatal(1,"model mismatch");
            end
        end
`ifdef GATE
            if (actual[0] !== gate_0) begin
                $display("GATE_MISMATCH input_div_b3_bias1 vector=%0d x=%h y=%h", count,x,y);
                $fatal(1,"gate mismatch");
            end
`endif
`ifdef GATE
            if (actual[1] !== gate_1) begin
                $display("GATE_MISMATCH input_div_b5_bias1 vector=%0d x=%h y=%h", count,x,y);
                $fatal(1,"gate mismatch");
            end
`endif
`ifdef GATE
            if (actual[2] !== gate_2) begin
                $display("GATE_MISMATCH input_div_b7_bias1 vector=%0d x=%h y=%h", count,x,y);
                $fatal(1,"gate mismatch");
            end
`endif
`ifdef GATE
            if (actual[3] !== gate_3) begin
                $display("GATE_MISMATCH input_mul_b3_bias1 vector=%0d x=%h y=%h", count,x,y);
                $fatal(1,"gate mismatch");
            end
`endif
`ifdef GATE
            if (actual[4] !== gate_4) begin
                $display("GATE_MISMATCH input_mul_b5_bias1 vector=%0d x=%h y=%h", count,x,y);
                $fatal(1,"gate mismatch");
            end
`endif
`ifdef GATE
            if (actual[5] !== gate_5) begin
                $display("GATE_MISMATCH input_mul_b7_bias1 vector=%0d x=%h y=%h", count,x,y);
                $fatal(1,"gate mismatch");
            end
`endif
`ifdef GATE
            if (actual[6] !== gate_6) begin
                $display("GATE_MISMATCH input_mul_b9_bias1 vector=%0d x=%h y=%h", count,x,y);
                $fatal(1,"gate mismatch");
            end
`endif
        count = count+1;
    end
    $display("INPUT_TRUNC_CHECK PASS: %0d vectors per DUT",count);
    $finish;
end
endmodule
