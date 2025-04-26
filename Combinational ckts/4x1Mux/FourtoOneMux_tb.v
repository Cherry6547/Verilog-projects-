module FourtoOneMux_tb;
    reg [3:0]a;
    reg [1:0]s;
    wire y;
    FourtoOneMux uut(
        .a(a),
        .s(s),
        .y(y)
    );
    initial begin
        $dumpfile("fourtoonemux.vcd");
        $dumpvars(0,FourtoOneMux_tb);
        a = 4'b1010; s = 2'b00;
        #10 a = 4'b1010; s = 2'b01;
        #10 a = 4'b1010; s = 2'b10;
        #10 a = 4'b1010; s = 2'b11;
        #10 $finish;
    end
endmodule