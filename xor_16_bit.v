module xor_16_bit(resXOR, a, b);
input [15:0] a,b;
output [15:0] resXOR;

xor xor0(resXOR[0], a[0], b[0]);
xor xor1(resXOR[1], a[1], b[1]);
xor xor2(resXOR[2], a[2], b[2]);
xor xor3(resXOR[3], a[3], b[3]);
xor xor4(resXOR[4], a[4], b[4]);
xor xor5(resXOR[5], a[5], b[5]);
xor xor6(resXOR[6], a[6], b[6]);
xor xor7(resXOR[7], a[7], b[7]);
xor xor8(resXOR[8], a[8], b[8]);
xor xor9(resXOR[9], a[9], b[9]);
xor xor10(resXOR[10], a[10], b[10]);
xor xor11(resXOR[11], a[11], b[11]);
xor xor12(resXOR[12], a[12], b[12]);
xor xor13(resXOR[13], a[13], b[13]);
xor xor14(resXOR[14], a[14], b[14]);
xor xor15(resXOR[15], a[15], b[15]);
endmodule