module FourbitComparator_tb;
    reg [3:0]a;
    reg [3:0]b;
    wire l,e,g;
    FourbitComparator uut(
        .a(a),
        .b(b),
        .l(l),
        .e(e),
        .g(g)
    );
    initial begin
        $dumpfile("FourbitComparator.vcd");
        $dumpvars(0,FourbitComparator_tb);
        a = 4'b0000; b = 4'b0001;
        #10 a = 4'b1111; b = 4'b1111;
        #10 a = 4'b1111; b = 4'b0000;
        #10 $finish;
    end
endmodule