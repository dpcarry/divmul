`timescale 1ns/1ps

module tb_pace_gate_miter;
    parameter LEVEL = 1;
    parameter CASES = 10000;

    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] rtl_out;
    wire [31:0] gate_out;
    integer i;
    integer seed;
    integer mismatches;

    generate
        if (LEVEL == 1) begin : gen_l1
            pace_fp32_l1 rtl_dut (.x(x), .y(y), .out(rtl_out));
            pace_fp32_l1_gate gate_dut (.x(x), .y(y), .out0(gate_out));
        end else if (LEVEL == 2) begin : gen_l2
            pace_fp32_l2 rtl_dut (.x(x), .y(y), .out(rtl_out));
            pace_fp32_l2_gate gate_dut (.x(x), .y(y), .out0(gate_out));
        end else if (LEVEL == 3) begin : gen_l3
            pace_fp32_l3 rtl_dut (.x(x), .y(y), .out(rtl_out));
            pace_fp32_l3_gate gate_dut (.x(x), .y(y), .out0(gate_out));
        end else begin : gen_l4
            pace_fp32_l4 rtl_dut (.x(x), .y(y), .out(rtl_out));
            pace_fp32_l4_gate gate_dut (.x(x), .y(y), .out0(gate_out));
        end
    endgenerate

    initial begin
        seed = 6321;
        mismatches = 0;
        x = 0;
        y = 0;
        #1;
        for (i = 0; i < CASES; i = i + 1) begin
            x = 32'h3f800000 | ($random(seed) & 32'h007fffff);
            y = 32'h3f800000 | ($random(seed) & 32'h007fffff);
            #1;
            if (gate_out !== rtl_out) begin
                if (mismatches < 10)
                    $display("Mismatch L%0d i=%0d x=%h y=%h rtl=%h gate=%h",
                             LEVEL, i, x, y, rtl_out, gate_out);
                mismatches = mismatches + 1;
            end
        end
        if (mismatches != 0)
            $fatal(1, "PACE hierarchy gate mismatch L%0d: %0d/%0d",
                   LEVEL, mismatches, CASES);
        $display("PACE_HIER_GATE_MITER PASS L%0d: %0d vectors", LEVEL, CASES);
        $finish;
    end
endmodule
