module Halfsub_tb;
reg a,b;
wire d, bout;
    Halfsub uut(
        .a(a),
        .b(b),
        .d(d),
        .bout(bout)
    );
    initial begin
        $dumpfile("HalfSub.vcd");
        $dumpvars(0,Halfsub_tb);
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end
    endmodule