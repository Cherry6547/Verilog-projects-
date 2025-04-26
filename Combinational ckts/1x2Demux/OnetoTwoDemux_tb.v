module OnetoTwoDemux_tb;
    reg a,e,s;
    wire y0,y1;
    OnetoTwoDemux uut(
        .a(a),
        .e(e),
        .s(s),
        .y({y1,y0})
    );
    initial begin
        $dumpfile("OnetoTwoDemux.vcd");
        $dumpvars(0,OnetoTwoDemux_tb);
        a = 1; e =  0; s = 0;
        #10 a = 1; e = 1; s = 1;
        #10 a = 1; e = 1; s = 0;
        #10 a = 0; e = 1; s = 1;
        #10 a = 0; e = 1; s = 0;
        #10 $finish;
    end
endmodule