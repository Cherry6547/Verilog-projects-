module OnetoFourDemux_tb;
    reg a,e;
    reg [1:0]s;
    wire [3:0]y;
    OnetoFourDemux uut(
        .a(a),
        .e(e),
        .s(s),
        .y(y)
    );
    initial begin
        $dumpfile("OnetoFourDemux.vcd");
        $dumpvars(0,OnetoFourDemux_tb);
        a = 1; e = 0; s = 2'b00;
        #10 a = 1; e = 1; s = 2'b00;
        #10 a = 1; e = 1; s = 2'b01;
        #10 a = 1; e = 1; s = 2'b10;
        #10 a = 1; e = 1; s = 2'b11;
        #10 $finish;
    end
endmodule