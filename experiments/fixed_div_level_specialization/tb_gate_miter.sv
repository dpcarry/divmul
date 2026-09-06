`timescale 1ns/1ps

module tb_gate_miter;
    parameter integer CASES = 20000;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] rtl [0:3];
    wire [31:0] gate [0:3];
    integer seed;
    integer i;
    integer mismatches;

    oadm_fixed_l0_div_specialized rtl0 (x, y, rtl[0]);
    oadm_fixed_l0_div_specialized_gate gate0 (x, y, gate[0]);
    oadm_fixed_l1_div_specialized rtl1 (x, y, rtl[1]);
    oadm_fixed_l1_div_specialized_gate gate1 (x, y, gate[1]);
    oadm_fixed_l2_div_specialized rtl2 (x, y, rtl[2]);
    oadm_fixed_l2_div_specialized_gate gate2 (x, y, gate[2]);
    oadm_fixed_l3_div_specialized rtl3 (x, y, rtl[3]);
    oadm_fixed_l3_div_specialized_gate gate3 (x, y, gate[3]);

    task check_outputs;
        integer level;
        begin
            #1;
            for (level = 0; level < 4; level = level + 1)
                if (rtl[level] !== gate[level]) begin
                    if (mismatches < 10)
                        $display("MISMATCH level=%0d i=%0d x=%h y=%h rtl=%h gate=%h",
                            level, i, x, y, rtl[level], gate[level]);
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
        $display("FIXED_DIV_LEVEL_SPECIALIZATION_GATE_MITER PASS: %0d vectors per level",
            CASES + 2);
        $finish;
    end
endmodule
