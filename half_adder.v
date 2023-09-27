module half_adder(sum, cout, a, b);
input a, b;
output sum, cout;

xor xor1(sum, a, b);
and and1(cout, a, b);
endmodule
