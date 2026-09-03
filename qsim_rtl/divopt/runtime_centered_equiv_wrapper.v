module runtime_centered_equiv_wrapper (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output wire signed [28:0] direct_plane,
    output wire signed [28:0] centered_plane
);
    oadm_multilevel_plane_direct direct (
        .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .level(level), .divide_mode(divide_mode),
        .plane_exact(direct_plane)
    );
    oadm_runtime_plane_centered centered (
        .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .level(level), .divide_mode(divide_mode),
        .plane_exact(centered_plane)
    );
endmodule
