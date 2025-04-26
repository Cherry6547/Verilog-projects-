module TwotoOneMux_tb;
    reg [1:0]a;
    reg s;
    wire y;
    TwotoOneMux uut(
        .a(a),
        .s(s),
        .y(y)
    );
    initial begin
        $dumpfile("twotoonemux.vcd");
        $dumpvars(0,TwotoOneMux_tb);
        a = 2'b01; s = 0;
        #10 a = 2'b01; s = 1;
        #10 $finish;
    
    end
    endmodule