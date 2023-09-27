module adder_4_bit(sum, cout, a, b, c0);

input [3:0] a, b; 
input c0; //carryin
output [3:0] sum;
output cout; //carryout
wire c1, c2, c3; //carry out of other 1-bit adders

full_adder fullAdder1(sum[0], c1, c0, a[0], b[0]);
full_adder full_adder2(sum[1], c2, c1, a[1], b[1]);
full_adder full_adder3(sum[2], c3, c2, a[2], b[2]);
full_adder full_adder4(sum[3], cout, c3, a[3], b[3]);

endmodule
