module HalfAdder_tb;
    reg a,b;
    wire sum,c;
    HalfAdder uut(
        .a(a),
        .b(b),
        .sum(sum),
        .c(c)
    );
    initial begin
        $dumpfile("HalfAdder.vcd");
        $dumpvars(0,HalfAdder_tb);
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end
endmodule