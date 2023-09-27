module control_unit(opcode, beq, regDst, memRead, memWrite, memToReg, AluSrc, AluOp, regWrite, jump);
input [5:0] opcode;
output beq, regDst, memRead, memWrite, memToReg, AluSrc, regWrite, jump;
output [3:0]AluOp;

assign beq = ~opcode[3]&opcode[2]; //C'D
assign regDst = ~opcode[3]& ~opcode[2]& ~opcode[1]; //C'D'E'
assign memRead = opcode[5]& ~opcode[3]; //A'C
assign memToReg = opcode[5]& ~opcode[3]; //A'C
assign memWrite = opcode[5]& opcode[3]; //AC
assign regWrite = (~opcode[3]& ~opcode[2])|(~opcode[5]& opcode[3]);
assign jump = ~opcode[5]& ~opcode[3]& opcode[1];
assign AluSrc = opcode[5] | (~opcode[3]& opcode[2]) | (opcode[3]& ~opcode[2]);
assign AluOp[3] = (opcode[3]& opcode[2])|(~opcode[5]& ~opcode[2]& opcode[0]);
assign AluOp[2] = (opcode[1]& ~opcode[0])|(~opcode[3]& opcode[2]);
assign AluOp[1] = opcode[5]|(opcode[1]& ~opcode[0])|(opcode[3]& opcode[0]);
assign AluOp[0] = (opcode[5]& opcode[3])|(~opcode[3]& ~opcode[1]& opcode[0])|(~opcode[3]& opcode[1]& ~opcode[0])|(opcode[3]& ~opcode[1]& ~opcode[0]);
endmodule
