module fourbitAdder_tb;
    reg [3:0]a;
    reg [3:0]b;
    reg cin;
    wire [3:0]sum;
    wire cout;
    fourbitAdder uut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    initial begin
        $dumpfile("fourbitadder.vcd");
        $dumpvars(0,fourbitAdder_tb);
        a = 4'b0000; b = 4'b0000; cin = 1;
        #10 a = 4'b0010; b = 4'b1100; cin = 0;
        #10 a = 4'b1010; b = 4'b0101; cin = 0;
        #10 a = 4'b0110; b = 4'b1001; cin = 0;
        #10 a = 4'b0010; b = 4'b0100; cin = 0;
        #10 a = 4'b1000; b = 4'b0101; cin = 0;
        #10 $finish;
    end    
endmodule