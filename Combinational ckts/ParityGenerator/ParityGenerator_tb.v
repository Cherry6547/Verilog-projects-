module ParityGenerator_tb;
    reg [3:0]a;
    wire even,odd;
        ParityGenerator uut(
            .a(a),
            .even(even),
            .odd(odd)
        );
        initial begin
            $dumpfile("ParityGenerator.vcd");
            $dumpvars(0,ParityGenerator_tb);
            a = 4'b0000;
            #10 a = 4'b1010;
            #10 a = 4'b0001;
            #10 a = 4'b1011;
            #10 $finish;
        end
        endmodule