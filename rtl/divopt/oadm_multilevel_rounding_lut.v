module oadm_multilevel_rounding_lut (
    input wire [1:0] level,
    input wire [2:0] index,
    input wire [3:0] value_low,
    output wire [1:0] x_error,
    output wire [1:0] y_error
);
    wire l1 = level[1];
    wire l0 = level[0];
    wire i2 = index[2];
    wire i1 = index[1];
    wire i0 = index[0];
    wire v3 = value_low[3];
    wire v2 = value_low[2];
    wire v1 = value_low[1];
    wire v0 = value_low[0];

    assign x_error[1] = (l1&l0&~i2&i0&v3&v2&~v1&v0) | (l1&l0&i2&~i0&~v3&~v2&v1&v0) | (l1&l0
        &i1&~v3&v2&v1&v0) | (l1&l0&~i1&~i0&~v2&~v1&v0) | (l1&l0&~i1&~i0&~v3
        &~v2&v1) | (l1&l0&i1&i0&v3&v2&v1) | (l1&~i2&~i1&~v2&~v1&v0) | (l1&i2
        &i1&v2&v1&v0) | (l1&l0&~i2&~i0&~v3&~v1&v0) | (l1&l0&~i1&i0&v3&~v2&v0) | (
        l1&l0&i1&~i0&~v3&v2&v0) | (l1&l0&~i2&i1&v2&~v1&v0) | (l1&l0&i1&i0&v3
        &v2&v0) | (l1&l0&i2&~i1&~v2&v1&v0) | (l1&l0&i2&i0&v3&v1&v0);

    assign x_error[0] = (l1&~i1&i0&~v3&v2&~v1&v0) | (l1&i2&~i0&v3&v2&~v1&v0) | (l1&~i1&~i0
        &v3&v2&~v1&v0) | (l1&i1&i0&~v3&~v2&v1&v0) | (l1&i1&~v3&v2&v1&~v0) | (
        l1&~i2&i1&~v2&v1&v0) | (l1&i2&~i1&~i0&v2&v0) | (l1&~i2&~i0&v3&~v2&v1
        &v0) | (l1&~i2&i1&~i0&v3&v1&v0) | (l1&~i2&~i1&i0&~v3&~v2&v1) | (l1&l0
        &~i1&i0&v1&~v0) | (l1&i1&~i0&v3&~v2&v1&v0) | (l1&i2&~i1&v2&~v1&v0) | (
        l1&~i2&i1&i0&~v2&v0) | (~l1&l0&~i2&~v1&v0) | (l1&~l0&~i1&~v2&v1) | (
        ~l1&l0&i2&v1&v0) | (l1&l0&~i0&~v3&v2&~v0) | (l1&l0&i0&v3&v2&~v1&~v0) | (
        l1&~l0&i1&v2&v1&~v0) | (l1&l0&i1&~i0&v1&~v0) | (l1&l0&v3&~v2&v1&~v0) | (
        l1&~l0&i2&~i1&v0) | (l1&~l0&~i2&i1&v0) | (l1&~l0&v2&~v1&v0) | (l0&~i2
        &~i1&~i0&~v3&~v2&~v1&v0) | (l1&l0&i2&i1&~i0&~v2&~v1&v0) | (l1&i2&~i1
        &i0&~v3&~v1&v0) | (l1&l0&i1&v3&~v2&~v1&v0) | (l1&~l0&~v2&v1&v0) | (
        l1&i2&i0&~v3&v2&~v1&v0) | (l1&l0&~i1&~v3&v2&v1) | (l1&l0&~i2&~i1&i0
        &v2&v1) | (l0&i2&i1&i0&v3&v2&v1&v0);

    assign y_error[1] = (l1&l0&i2&~i0&v3&v2&~v1) | (l1&l0&i1&v3&~v2&~v1&v0) | (l1&l0&~i1&~v3
        &v2&v1) | (l1&l0&i0&~v2&v1&~v0) | (l1&l0&~v3&v2&v1&~v0) | (l1&l0&~i2
        &i0&~v3&~v2&v1) | (l1&l0&v3&~v2&v1&~v0) | (l1&l0&i1&~i0&v3&~v2&v0) | (
        l1&l0&i1&i0&~v3&~v2&v0) | (l1&i2&i1&~v2&~v1&v0) | (l1&l0&i2&i0&~v3&~v1
        &v0) | (l1&~i2&~i1&v2&v1) | (l1&i1&~v2&v1&~v0) | (l1&l0&~i1&i0&~v3&v2) | (
        l1&l0&~i1&~i0&v3&v2) | (l1&l0&i2&~i1&v2&~v1&v0) | (l1&~i1&v2&v1&~v0) | (
        l1&l0&i0&~v3&v2&~v0) | (l1&l0&~i0&v3&v2&~v0) | (l1&l0&~i2&i1&~v2&v1) | (
        l1&l0&~i2&~i0&v3&v1);

    assign y_error[0] = (l1&i2&~i1&~i0&~v2&v0) | (l1&i2&~i0&~v3&~v2&v1&v0) | (l1&i1&~i0&~v3
        &v2&~v1) | (l1&~i1&i0&v3&~v2&v1&v0) | (l1&~i2&i0&v3&v2&~v1) | (l1&~i2
        &i1&i0&v2&v0) | (l1&i1&i0&v3&v2&~v1) | (l1&i1&i0&v3&v2&~v0) | (l1&~i1
        &~i0&~v3&~v2&v1) | (l1&i0&v3&v2&~v1&~v0) | (~l1&l0&v1&~v0) | (~l1&l0
        &i2&~v1&v0) | (l1&~l0&v2&~v1) | (~l1&l0&~i2&v1) | (l1&~l0&~i1&~v2&v1) | (
        l1&~l0&i2&~i1&v0) | (l1&~l0&~i2&i1&v0) | (l1&~l0&i1&v2&~v0) | (l1&l0
        &v3&~v2&~v1&~v0) | (l1&~l0&~v2&v1&v0) | (l1&~i0&~v3&v2&~v1&~v0) | (
        l0&i1&i0&~v3&~v2&v1&~v0) | (l1&~i2&i1&~i0&~v3&~v1&v0) | (l1&l0&~i2&~i1
        &i0&~v2&~v1&v0) | (l0&i2&i1&i0&~v3&~v2&~v1&v0) | (l1&l0&~i1&v3&~v2&~v1) | (
        l1&~i2&~i0&~v3&v2&~v1) | (l0&~i1&~i0&v3&v2&v1&~v0) | (l1&~i2&i1&v2&~v1
        &v0) | (l1&i2&~i1&~v2&v1&v0) | (l1&i2&i0&v3&~v2&v1&v0) | (l1&l0&i1&~v3
        &v2&v1&v0) | (l0&~i2&~i1&~i0&v3&v2&v1) | (l1&l0&i2&i1&~i0&v2&v1&v0) | (
        l1&i2&~i1&i0&v3&v1&v0);
endmodule
