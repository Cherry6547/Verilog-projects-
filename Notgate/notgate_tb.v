module notgate_tb;
reg a;
wire y;
    notgate uut(
        .a(a),
        .y(y)
    );
    initial begin
        $dumpfile("notgate.vcd");
        $dumpvars(0,notgate_tb);
        a = 0;
        #10 a = 1;
        #10 $finish;
    end
    endmodule