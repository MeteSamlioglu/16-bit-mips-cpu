module Mips_16bit(res, pc, next_address,clk);
input clk;
wire zeroBit;
wire [15:0] AluResult;
wire[3:0] AluOp, AluControlOut;
input [31:0] pc; //PC
output[15:0] res;
output next_address; //ALU result and next PC
wire[31:0] instruction; //32-bit instruction;
//signals
wire beq, regDst, memRead, memWrite, memToReg, AluSrc, regWrite, jump;

//first fetch the instruction from memory
instruction_memory unit1(clk, instruction, pc);
/registers(busA, busB, busW, rs, rt, rw, regWr, clk);
//send opcode to control_unit
control_unit unit2(instruction[31:26], beq, regDst, memRead, memWrite, memToReg, AluSrc, AluOp, regWrite, jump);
//alu_16_bit(AluResult, zeroBit, a, b, AluOp);


//signals were produced by control unit


endmodule;