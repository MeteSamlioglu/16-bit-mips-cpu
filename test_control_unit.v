module control_unit_test(); 
	wire regDst,beq,memRead,memToReg,memWrite,AluSrc,regWrite, jump;
	reg [5:0]opcode;
	wire [3:0] AluOp;

	control_unit fatb(opcode, beq, regDst, memRead, memWrite, memToReg, AluSrc, AluOp, regWrite, jump);
	

	initial
		begin
			opcode = 6'b000000;  //R-type
			#20;
			opcode = 6'b001000;  //addi
			#20;
			opcode = 6'b100011;  //lw
			#20;
			opcode = 6'b101011; //sw
			#20;
			opcode = 6'b000100; //beq
			#20;
			opcode = 6'b000101; //bne
			#20;
			opcode = 6'b001010; //slti
			#20;
			opcode = 6'b000010; //jump
			#20;
			opcode = 6'b000011; //jal
			#20;
			opcode = 6'b001100; //andi
			#20;
			opcode = 6'b001101; //ori
			#20;
			$stop;
		


		end
 
	initial
		begin
			$monitor($time,", opcode=%6b, beq=%1b, regDst=%1b, memRead =%1b, memToReg=%1b, AluOP= %4b, memWrite=%1b, AluSrc =%b, regWrite= %1b, jump= %1b",opcode,beq,regDst,memRead,memToReg,AluOp,memWrite,AluSrc,regWrite, jump);
		end
 
endmodule