`timescale 1ns/1ps

module tb_gate_miter;
    parameter integer CASES = 20000;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] rtl [0:7];
    wire [31:0] gate [0:7];
    integer seed;
    integer i;
    integer mismatches;

    oadm_fixed_l0_div_dx18_dy18_control rtl0 (x, y, rtl[0]);
    oadm_fixed_l0_div_dx18_dy18_control_gate gate0 (x, y, gate[0]);
    oadm_fixed_l0_div_dx18_dy18_c60_control rtl1 (x, y, rtl[1]);
    oadm_fixed_l0_div_dx18_dy18_c60_control_gate gate1 (x, y, gate[1]);
    oadm_fixed_l0_div_dx19_dy18_c59 rtl2 (x, y, rtl[2]);
    oadm_fixed_l0_div_dx19_dy18_c59_gate gate2 (x, y, gate[2]);
    oadm_fixed_l0_div_dx19_dy18 rtl3 (x, y, rtl[3]);
    oadm_fixed_l0_div_dx19_dy18_gate gate3 (x, y, gate[3]);
    oadm_fixed_l0_div_dx18_dy19 rtl4 (x, y, rtl[4]);
    oadm_fixed_l0_div_dx18_dy19_gate gate4 (x, y, gate[4]);
    oadm_fixed_l1_div_dx16_dy16_control rtl5 (x, y, rtl[5]);
    oadm_fixed_l1_div_dx16_dy16_control_gate gate5 (x, y, gate[5]);
    oadm_fixed_l1_div_dx17_dy16 rtl6 (x, y, rtl[6]);
    oadm_fixed_l1_div_dx17_dy16_gate gate6 (x, y, gate[6]);
    oadm_fixed_l1_div_dx16_dy17 rtl7 (x, y, rtl[7]);
    oadm_fixed_l1_div_dx16_dy17_gate gate7 (x, y, gate[7]);

    task check_outputs;
        integer dut;
        begin
            #1;
            for (dut = 0; dut < 8; dut = dut + 1)
                if (rtl[dut] !== gate[dut]) begin
                    if (mismatches < 10)
                        $display("MISMATCH dut=%0d i=%0d x=%h y=%h got=%h expected=%h",
                            dut, i, x, y, gate[dut], rtl[dut]);
                    mismatches = mismatches + 1;
                end
        end
    endtask

    initial begin
        seed = 6321;
        mismatches = 0;
        i = -2;
        x = 32'h3f800000; y = 32'h3f800000; check_outputs();
        i = -1;
        x = 32'h3fffffff; y = 32'h3f800000; check_outputs();
        for (i = 0; i < CASES; i = i + 1) begin
            x = {$random(seed) & 1'b1,
                 $urandom_range(1, 254),
                 $random(seed) & 23'h7fffff};
            y = {$random(seed) & 1'b1,
                 $urandom_range(1, 254),
                 $random(seed) & 23'h7fffff};
            check_outputs();
        end
        if (mismatches != 0)
            $fatal(1, "gate mismatches: %0d", mismatches);
        $display("ASYMMETRIC_FIXED_DIV_GATE_MITER PASS: %0d vectors per DUT",
            CASES + 2);
        $finish;
    end
endmodule
