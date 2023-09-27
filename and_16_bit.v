module and_16_bit(resAND, a, b);
input[15:0] a, b;
output [15:0] resAND;

and AND0(resAND[0], a[0], b[0]);
and AND1(resAND[1], a[1], b[1]);
and AND2(resAND[2], a[2], b[2]);
and AND3(resAND[3], a[3], b[3]);
and AND4(resAND[4], a[4], b[4]);
and AND5(resAND[5], a[5], b[5]);
and AND6(resAND[6], a[6], b[6]);
and AND7(resAND[7], a[7], b[7]);
and AND8(resAND[8], a[8], b[8]);
and AND9(resAND[9], a[9], b[9]);
and AND10(resAND[10], a[10], b[10]);
and AND11(resAND[11], a[11], b[11]);
and AND12(resAND[12], a[12], b[12]);
and AND13(resAND[13], a[13], b[13]);
and AND14(resAND[14], a[14], b[14]);
and AND15(resAND[15], a[15], b[15]);
endmodule