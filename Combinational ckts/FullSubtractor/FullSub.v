module FullSub (
    input a,b,bin,
    output d,bout
);
    assign d = a ^ b ^ bin;
    assign bout = (~a & bin) | (~a & b) | (b & bin);
endmodule