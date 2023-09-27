module full_adder(sum, carry_out, carry_in, a, b);
input a, b, carry_in;
output carry_out, sum;
wire carry_out_1, carry_out_2, Tsum;

half_adder s1(Tsum, carry_out_1, a, b);
half_adder s2(sum, carry_out_2, Tsum, carry_in);

or last_carry_out(carry_out, carry_out_1, carry_out_2); //Either first summation's zero or summation of carry_in and initial sum will propagate 1

endmodule
