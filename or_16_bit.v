module or_16_bit(resOR, a, b);

input [15:0] a, b;
output [15:0]resOR;

or or0(resOR[0], a[0], b[0]);
or or1(resOR[1], a[1], b[1]);
or or2(resOR[2], a[2], b[2]);
or or3(resOR[3], a[3], b[3]);
or or4(resOR[4], a[4], b[4]);
or or5(resOR[5], a[5], b[5]);
or or6(resOR[6], a[6], b[6]);
or or7(resOR[7], a[7], b[7]);
or or8(resOR[8], a[8], b[8]);
or or9(resOR[9], a[9], b[9]);
or or10(resOR[10], a[10], b[10]);
or or11(resOR[11], a[11], b[11]);
or or12(resOR[12], a[12], b[12]);
or or13(resOR[13], a[13], b[13]);
or or14(resOR[14], a[14], b[14]);
or or15(resOR[15], a[15], b[15]);
endmodule