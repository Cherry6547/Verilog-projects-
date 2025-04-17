module fourtotwoencoder_tb;
reg a,b,c,d;
wire v,y1,y0;
    FourtoTwoEncoder uut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .v(v),
        .y1(y1),
        .y0(y0)
    );
    initial begin
        $dumpfile("FourtoTwoEncoder.vcd");
        $dumpvars(0,fourtotwoencoder_tb);
        #10 a = 0; b = 0; c = 0; d = 0;
        #10 a = 0; b = 0; c = 0; d = 1;
        #10 a = 0; b = 0; c = 1; d = 0;
        #10 a = 0; b = 0; c = 1; d = 1;
        #10 a = 0; b = 1; c = 0; d = 0;
        #10 a = 0; b = 1; c = 0; d = 1;
        #10 a = 0; b = 1; c = 1; d = 0;
        #10 a = 0; b = 1; c = 1; d = 1;
        #10 a = 1; b = 0; c = 0; d = 0;
        #10 a = 1; b = 0; c = 0; d = 1;
        #10 a = 1; b = 0; c = 1; d = 0;
        #10 a = 1; b = 0; c = 1; d = 1;
        #10 a = 1; b = 1; c = 0; d = 0;
        #10 a = 1; b = 1; c = 0; d = 1;
        #10 a = 1; b = 1; c = 1; d = 0;
        #10 a = 1; b = 1; c = 1; d = 1;
        #10 $finish;
    end
endmodule