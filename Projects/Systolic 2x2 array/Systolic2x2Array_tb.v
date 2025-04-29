
module Systolic2x2Array_tb;
    reg clk,reset;
    reg [7:0] a00,a01,a10,a11;
    reg [7:0] b00,b01,b10,b11;
    wire [15:0] c00,c01,c10,c11;
    Systolic2x2Array uut(
        .clk(clk),
        .reset(reset),
        .a00(a00),
        .a01(a01),
        .a10(a10),
        .a11(a11),
        .b00(b00),
        .b01(b01),
        .b10(b10),
        .b11(b11),
        .c00(c00),
        .c01(c01),
        .c10(c10),
        .c11(c11)
    );
    always #5 clk = ~clk;
    initial begin

        $dumpfile("systolic2x2array.vcd");
        $dumpvars(0,Systolic2x2Array_tb);
        clk = 0;    reset = 1; 
        a00 = 8'd0; a01 = 8'd0; a10 = 8'd0; a11 = 8'd0;
        b00 = 8'd0; b01 = 8'd0; b10 = 8'd0; b11 = 8'd0;
        #10
        reset = 0;

        a00 = 8'd2; a01 = 8'd3;
        a10 = 8'd4; a11 = 8'd5;

        b00 = 8'd6; b01 = 8'd7;
        b10 = 8'd8; b11 = 8'd9;
        #70 $finish;
    end
endmodule