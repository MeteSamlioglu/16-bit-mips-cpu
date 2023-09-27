module adder_8_bit(sum, cout, a, b, c0);

input [7:0]a, b; // 8 bit inputs
input c0; //carry-in of first 1-bit adder
output [7:0] sum;//Sum of all 1-bit adders
output cout; //carry-out
wire temp_carry_out;
adder_4_bit _4_bit_first(sum[3:0], temp_carry_out, a[3:0], b[3:0], c0);
adder_4_bit _4_bit_second(sum[7:4], cout, a[7:4], b[7:4], temp_carry_out);

endmodule