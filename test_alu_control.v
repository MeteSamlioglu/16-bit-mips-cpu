
module Alu_control_test(); 
	
	reg [3:0] AluOP;
	reg [5:0] func;
	wire [2:0] AluControlSignal;
	alu_control control_unit (AluOP,func,AluControlSignal);
	
	initial
		begin
			AluOP=4'b0000; func=6'b100000; //add function will produce 0 0 0
			#10;
			AluOP=4'b0000; func=6'b100010; //sub
			#10;
			AluOP=4'b0000; func=6'b100100; //and
			#10;
 			AluOP=4'b0000; func=6'b100101; //or
 			#10;
 			AluOP=4'b0000; func=6'b101010; //slt
 			#10; 
 			AluOP=4'b0000; func=6'b000000; //sll
 			#10;
 			AluOP=4'b0000; func=6'b000010; //srl
 			#10;
 			AluOP=4'b0000; func=6'b001000; //jump reg
 			#10;
 														//Since I and J-type functions do not have a function field there is no need to fill this 6-bit
 			AluOP=4'b0001; func=6'bXXXXXX; //addi
 			#10;
 			AluOP=4'b0010; func=6'bXXXXXX; //lw
 			#10;
 			AluOP=4'b0011; func=6'bXXXXXX; //sw
 			#10;
 			AluOP=4'b0100; func=6'bXXXXXX; //beq
 			#10;
 			AluOP=4'b0101; func=6'bXXXXXX; //bne
 			#10;
 			AluOP=4'b0110; func=6'bXXXXXX; //slti
 			#10;
 			AluOP=4'b0111; func=6'bXXXXXX; //jump
 			#10;
 			AluOP=4'b1000; func=6'bXXXXXX; //jal
 			#10;
 			AluOP=4'b1001; func=6'bXXXXXX; //andi
 			#10;
 			AluOP=4'b1010; func=6'bXXXXXX; //ori
 			#10;
		end
 
	initial
		begin
			$monitor($time, ", AluOP=%4b, func=%6b, out=%3b", AluOP,func,AluControlSignal);                                                                                        
		end
 
endmodule