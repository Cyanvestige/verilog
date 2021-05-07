`timescale  1ns/1ns
`include "decoder_3-to-8.v"

module decoder3to8_tb;

reg  [2:0] A;
wire [7:0] D;

decoder3to8 UUT(A, D);

initial begin
    $dumpfile("decoder_3-to-8.vcd");
    $dumpvars(0, decoder3to8_tb);
   
    A = 3'b111; #20;
    A = 3'b110; #20;
    A = 3'b101; #20;
    A = 3'b100; #20;
    A = 3'b011; #20;
    A = 3'b010; #20;
    A = 3'b001; #20;
    A = 3'b000; #20;
   
end

endmodule