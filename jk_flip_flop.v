module jk_flip_flop(
    input J,
    input K,
    input clk,
    output Q,
    output Qnot
);

    wire D;

    assign D = (J & ~Q) | (~K & Q);

    d_flip_flop dff (
        .D(D),
        .clk(clk),
        .Q(Q),
        .Qnot(Qnot)
    );

endmodule