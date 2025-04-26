module OnebitComparator_tb;
    reg a,b;
    wire l,e,g;
    OnebitComparator uut(
        .a(a),
        .b(b),
        .l(l),
        .e(e),
        .g(g)
    );
    initial begin
        $dumpfile("OnebitComparator.vcd");
        $dumpvars(0,OnebitComparator_tb);
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end
endmodule