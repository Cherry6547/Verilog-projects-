module orgate_tb;
    reg a,b;
    wire y;
    orgate uut (
        .A(a),
        .B(b),
        .Y(y)
    );
    initial begin
        $dumpfile("orgate.vcd");
        $dumpvars(0,orgate_tb);
         a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end
endmodule