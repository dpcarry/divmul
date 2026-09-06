`timescale 1ns/1ps

module tb_gate_miter;
    parameter integer CASES = 20000;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] rtl_l0;
    wire [31:0] gate_l0;
    wire [31:0] rtl_l1;
    wire [31:0] gate_l1;
    integer seed;
    integer i;
    integer mismatches;

    oadm_fixed_l0_div_r19_w18 l0_ref (x, y, rtl_l0);
    oadm_fixed_l0_div_r19_w18_gate l0_gate (x, y, gate_l0);
    oadm_fixed_l1_div_r16_w17 l1_ref (x, y, rtl_l1);
    oadm_fixed_l1_div_r16_w17_gate l1_gate (x, y, gate_l1);

    task check_outputs;
        begin
            #1;
            if (rtl_l0 !== gate_l0 || rtl_l1 !== gate_l1) begin
                if (mismatches < 10)
                    $display("MISMATCH i=%0d x=%h y=%h l0=%h/%h l1=%h/%h",
                        i, x, y, rtl_l0, gate_l0, rtl_l1, gate_l1);
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
        $display("AGGRESSIVE_FIXED_DIV_GATE_MITER PASS: %0d vectors per DUT",
            CASES + 2);
        $finish;
    end
endmodule
