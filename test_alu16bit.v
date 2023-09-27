module test_alu16bit; 
	

	wire [15:0]res;
	reg [3:0] AluOp;
	reg [15:0] a, b;
	wire zeroBit;

	alu_16_bit alu(res,zeroBit,a,b,AluOp);

	initial begin
		AluOp=3'b000;  //add, addi, lw, sw
		a=16'b0000_1111_0000_1111; 
		b=16'b0000_1111_0000_1111;
		#10;
		AluOp=3'b001; 
		a=16'b0000_1111_0000_1111; //and, andi
		b=16'b0000_1111_0000_1111;
		#10;
		AluOp=3'b010; 
		a = 16'b0000_1111_0000_1111; //or, ori
		b = 16'b0000_1111_0000_1111;
		#10;
		AluOp=3'b011; 
		a = 16'b0000_1111_0000_1111; //slt, slti
		b = 16'b0000_1111_0000_1111;
		#10;
		AluOp=3'b100; 
		a = 16'b0000_1111_0000_1111; //beq, sub
		b = 16'b0000_1111_0000_1111;
		#10;
		AluOp=3'b101; 
		a = 16'b0000_1111_0000_1111; //sll
		b = 16'b0000_1111_0000_1111;
		#10;
		AluOp=3'b110; 
		a = 16'b0000_1111_0000_1111; //srl
		b = 16'b0000_1111_0000_1111;
		#10;
		AluOp=3'b111; 
		a = 16'b0000_1111_0000_1111; //bne
		b = 16'b0000_1111_0000_1111;
		#10;
		AluOp = 3'b001;
		a = 16'b1111_0000_1111_0000; //and, andi
		b = 16'b0000_1111_0000_1111;
		#10;
		AluOp = 3'b010;
		a = 16'b1111_0000_1111_0000; //or, ori
		b = 16'b0000_1111_0000_1111;
		#10;
		AluOp= 3'b011;
		a = 16'b1110_0000_0000_0000; //slt, slti
		b = 16'b1111_1111_1111_1111;
		#10;
	end
 
	initial begin
			$monitor($time,", AluOp=%3b, input1 = %d, input2=%d, result=%d, zeroBit= %1b", AluOp, a, b, res,zeroBit);
	end
endmodule