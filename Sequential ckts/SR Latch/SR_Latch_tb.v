module SR_Latch_tb;
reg s,r;
wire q,qbar;
    SR_Latch uut(
        .s(s),
        .r(r),
        .q(q),
        .qbar(qbar)
    );
    initial begin
        $dumpfile("SR_Latch.vcd");
        $dumpvars(0,SR_Latch_tb);
        s = 0; r = 0; 
        #10 s = 0; r = 1;
        #10 s = 1; r = 0;
        #10 s = 1; r = 1;
        #10 $finish;
    end
endmodule