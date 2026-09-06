`timescale 1ns/1ps

module tb_gate_vectors;
    reg [31:0] x;
    reg [31:0] y;
    reg [1:0] level;
    reg divide_mode;
    reg [31:0] expected;
    wire [31:0] result;
    integer vectors;
    integer fields;
    integer cases;
    integer mismatches;

    oadm_runtime_drop_gate dut (x, y, level, divide_mode, result);

    initial begin
        vectors = $fopen(`VECTOR_FILE, "r");
        if (vectors == 0) $fatal(1, "cannot open gate vectors");
        cases = 0;
        mismatches = 0;
        while (!$feof(vectors)) begin
            fields = $fscanf(vectors, "%h %h %h %h %h\n",
                              x, y, level, divide_mode, expected);
            if (fields == 5) begin
                #1;
                cases = cases + 1;
                if (result !== expected) begin
                    mismatches = mismatches + 1;
                    if (mismatches <= 5)
                        $display("MISMATCH x=%h y=%h l=%0d m=%0d rtl=%h gate=%h",
                                 x, y, level, divide_mode, expected, result);
                end
            end
        end
        $fclose(vectors);
        $display("GATE_MITER cases=%0d mismatches=%0d", cases, mismatches);
        if (cases != 20004 || mismatches != 0) $fatal(1, "gate miter failed");
        $finish;
    end
endmodule
