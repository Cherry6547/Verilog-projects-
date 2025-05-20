module SR_Latch(
    input s,r,
    output q,qbar
);
    wire nq,nqbar;
    nand n1(nq,s,nqbar);
    nand n2(nqbar,r,nq);
    assign q = nq;
    assign qbar = nqbar;
endmodule