module MajorityVoter_tb;
    reg a,b,c;
    wire y;
    MajorityVoter uut(
        .a(a),
        .b(b),
        .c(c),
        .y(y)
    );
    initial begin
        $dumpfile("MajorityVoter.vcd");
        $dumpvars(0,MajorityVoter_tb);
        a = 0; b = 0; c = 0;
        #10 a = 0; b = 0; c = 1;
        #10 a = 0; b = 1; c = 0;
        #10 a = 0; b = 1; c = 1;
        #10 a = 1; b = 0; c = 0;
        #10 a = 1; b = 0; c = 1;
        #10 a = 1; b = 1; c = 0;
        #10 a = 1; b = 1; c = 1;
        #10 $finish;
    end
    endmodule