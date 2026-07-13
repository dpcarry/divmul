`timescale 1ns/1ps
`define QSIM_OUT_FN "./oad_lut_divider_dc.result"

module testbench;

  localparam int FRAC_BITS = 16;

  logic [FRAC_BITS:0] x;
  logic [FRAC_BITS:0] y;
  logic [1:0] level;
  wire [FRAC_BITS+1:0] quotient;

  integer qsim_out_file;

  oad_lut_divider oad_lut_divider_inst (
    .x(x),
    .y(y),
    .level(level),
    .quotient(quotient)
  );

  initial $sdf_annotate("../../dc/oad_lut_divider/oad_lut_divider.syn.sdf",
                        oad_lut_divider_inst);

  task automatic drive_case(
    input logic [FRAC_BITS:0] x_in,
    input logic [FRAC_BITS:0] y_in,
    input logic [1:0] level_in
  );
    begin
      x = x_in;
      y = y_in;
      level = level_in;
      #5;
      $fwrite(qsim_out_file, "level=%0d x=0x%05h y=0x%05h q=0x%05h\n",
              level, x, y, quotient);
    end
  endtask

  initial begin
    qsim_out_file = $fopen(`QSIM_OUT_FN, "w");
    if (!qsim_out_file) begin
      $display("Couldn't create output file: %s", `QSIM_OUT_FN);
      $finish;
    end

    $dumpfile("./oad_lut_divider_dc.vcd");
    $dumpvars(0, testbench.oad_lut_divider_inst);

    x = '0;
    y = '0;
    level = '0;

    drive_case(17'h08000, 17'h08000, 2'd0);
    drive_case(17'h0C000, 17'h08000, 2'd1);
    drive_case(17'h10000, 17'h0C000, 2'd2);
    drive_case(17'h14000, 17'h10000, 2'd3);
    drive_case(17'h18000, 17'h14000, 2'd3);

    $display("PASS");
    $fclose(qsim_out_file);
    $dumpall;
    $dumpflush;
    $finish;
  end

endmodule
