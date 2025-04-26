module GraytoBinaryConverter_tb;
    reg [3:0]a;
    wire  [3:0]y;
    GraytoBinaryConverter uut(
        .a(a),
        .y(y)
    );
    initial begin
        $dumpfile("GraytoBinaryConverter.vcd");
        $dumpvars(0,GraytoBinaryConverter_tb);
        a = 4'b1101;
        #10 a = 4'b0100;
        #10 a = 4'b1111;
        #10 $finish;
    end
endmodule