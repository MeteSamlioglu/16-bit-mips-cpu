module adder_16_bit(sum, cout, a, b, c0);

output [15:0] sum;
output cout; //carry-out
input [15:0]a, b;
input c0; // first 1-bit adder's carry-in 
wire temp_cout_1;

adder_8_bit _8_bit_first(sum[7:0], temp_cout_1, a[7:0], b[7:0], c0);
adder_8_bit _8_bit_second(sum[15:8], cout, a[15:8], b[15:8], temp_cout_1);

endmodule


