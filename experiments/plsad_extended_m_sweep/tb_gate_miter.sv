`timescale 1ns/1ps

module tb_gate_miter;
    parameter integer CASES = 20000;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] rtl_result [0:2];
    wire [31:0] gate_result [0:2];
    integer seed;
    integer i;
    integer mismatches [0:2];

    plsad_m10_fp32_paceio m10_ref (x, y, rtl_result[0]);
    plsad_m12_fp32_paceio m12_ref (x, y, rtl_result[1]);
    plsad_m15_fp32_paceio m15_ref (x, y, rtl_result[2]);
    plsad_m10_fp32_paceio_gate m10_gate (x, y, gate_result[0]);
    plsad_m12_fp32_paceio_gate m12_gate (x, y, gate_result[1]);
    plsad_m15_fp32_paceio_gate m15_gate (x, y, gate_result[2]);

    task check_outputs;
        begin
            #1;
            for (integer point = 0; point < 3; point = point + 1)
                if (rtl_result[point] !== gate_result[point]) begin
                    if (mismatches[point] < 10)
                        $display("MISMATCH point=%0d i=%0d x=%h y=%h rtl=%h gate=%h",
                            point, i, x, y, rtl_result[point], gate_result[point]);
                    mismatches[point] = mismatches[point] + 1;
                end
        end
    endtask

    initial begin
        seed = 6321;
        for (integer point = 0; point < 3; point = point + 1)
            mismatches[point] = 0;
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
        if (mismatches[0] || mismatches[1] || mismatches[2])
            $fatal(1, "gate mismatches: %0d/%0d/%0d",
                mismatches[0], mismatches[1], mismatches[2]);
        $display("PLSAD_EXTENDED_M_GATE_MITER PASS: %0d vectors per DUT",
            CASES + 2);
        $finish;
    end
endmodule
