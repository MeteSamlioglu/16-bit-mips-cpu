module alu_16_bit(sum, zeroBit, a, b, AluOp);
output [15:0]sum;
input [15:0] a, b;
input [3:0] AluOp; 
wire carry_out, coutSUB, coutSLT, coutMult, MSB, coutTwo;
wire[15:0] ORresult, ANDresult, XORresult, NORresult, SLTresult, ADDresult, SUBresult, MULTresult, SLLresult, SRLresult;
wire[15:0] ones_compelement;
wire[15:0] twos;
wire temp; //temporary bit
output zeroBit; //Zero bit to perform beq 

//OR and ORI operation
or_16_bit or1(.resOR(ORresult), .a(a), .b(b));

//AND and ANDI operation
and_16_bit and1(.resAND(ANDresult), .a(a), .b(b));

//XOR operation
xor_16_bit xor1(.resXOR(XORresult), .a(a), .b(b));

//ADD operation
adder_16_bit adder1(.sum(ADDresult), .cout(carry_out), .a(a), .b(b), .c0(1'b0));

//SUB operation
//First flip all the bits of b
xor_16_bit xor2(ones_compelement, 16'hFFFF, b);
// Instead of calculating two's complement give one's compelemnt as an output of adder and give 1 to first carry_in
// By doing that it additional one will be added to ones compelemt of b
   adder_16_bit adder2(SUBresult, coutSUB, a, ones_compelement ,1'b1);
 

//SLT operation
and(MSB, SUBresult[15], 1'b1);
adder_16_bit adder3(SLTresult, coutSLT, 16'b0000_0000_0000_0000, 16'b0000_0000_0000_0000, MSB);

//SLL operation
sll_module sll_operation (.alu_in(b),.shamt(5'b00001), .shifted_bits(SLLresult));

//SRL operation
srl_module srl_operation (.alu_in(b),.shamt(5'b00001), .shifted_bits(SRLresult));


//Send operations to the multiplexers according to the ALUop signals 
//001 -> AND, 011->SLT, 101->SLL, 111->BNE, 000->[ADD,ADDI, LW, SW], 010->[OR, ORI], 100->[SUB, BEQ], 110->SRL
multiplexer_8x1 MUX0(sum[0], ANDresult[0], SLTresult[0], SLLresult[0], SUBresult[0], ADDresult[0], ORresult[0], SUBresult[0], SRLresult[0], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX1(sum[1], ANDresult[1], SLTresult[1], SLLresult[1], SUBresult[1], ADDresult[1], ORresult[1], SUBresult[1], SRLresult[1], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX2(sum[2], ANDresult[2], SLTresult[2], SLLresult[2], SUBresult[2], ADDresult[2], ORresult[2], SUBresult[2], SRLresult[2], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX3(sum[3], ANDresult[3], SLTresult[3], SLLresult[3], SUBresult[3], ADDresult[3], ORresult[3], SUBresult[3], SRLresult[3], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX4(sum[4], ANDresult[4], SLTresult[4], SLLresult[4], SUBresult[4], ADDresult[4], ORresult[4], SUBresult[4], SRLresult[4], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX5(sum[5], ANDresult[5], SLTresult[5], SLLresult[5], SUBresult[5], ADDresult[5], ORresult[5], SUBresult[5], SRLresult[5], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX6(sum[6], ANDresult[6], SLTresult[6], SLLresult[6], SUBresult[6], ADDresult[6], ORresult[6], SUBresult[6], SRLresult[6], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX7(sum[7], ANDresult[7], SLTresult[7], SLLresult[7], SUBresult[7], ADDresult[7], ORresult[7], SUBresult[7], SRLresult[7], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX8(sum[8], ANDresult[8], SLTresult[8], SLLresult[8], SUBresult[8], ADDresult[8], ORresult[8], SUBresult[8], SRLresult[8], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX9(sum[9], ANDresult[9], SLTresult[9], SLLresult[9], SUBresult[9], ADDresult[9], ORresult[9], SUBresult[9], SRLresult[9], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX10(sum[10], ANDresult[10], SLTresult[10], SLLresult[10], SUBresult[10], ADDresult[10], ORresult[10], SUBresult[10], SRLresult[10], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX11(sum[11], ANDresult[11], SLTresult[11], SLLresult[11], SUBresult[11], ADDresult[11], ORresult[11], SUBresult[11], SRLresult[11], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX12(sum[12], ANDresult[12], SLTresult[12], SLLresult[12], SUBresult[12], ADDresult[12], ORresult[12], SUBresult[12], SRLresult[12], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX13(sum[13], ANDresult[13], SLTresult[13], SLLresult[13], SUBresult[13], ADDresult[13], ORresult[13], SUBresult[13], SRLresult[13], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX14(sum[14], ANDresult[14], SLTresult[14], SLLresult[14], SUBresult[14], ADDresult[14], ORresult[14], SUBresult[14], SRLresult[14], AluOp[2], AluOp[1], AluOp[0]);
multiplexer_8x1 MUX15(sum[15], ANDresult[15], SLTresult[15], SLLresult[15], SUBresult[15], ADDresult[15], ORresult[15], SUBresult[15], SRLresult[15], AluOp[2], AluOp[1], AluOp[0]);

//Calculate what zero bit is for beq instruction                                                                                                                                                           

or(temp,sum[0],sum[1],sum[2],sum[3],sum[4],sum[5],sum[6],sum[7],sum[8],
   sum[9],sum[10],sum[11],sum[12],sum[13],sum[14],sum[15]);
not(zeroBit, temp); //Both beq and bne is related to this bit

endmodule