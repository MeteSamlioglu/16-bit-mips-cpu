module instruction_memory(clk, instruction, instruction_address);
	input clk;
	output reg[31:0] instruction; //Fetched instruction from the Memory
	input[31:0] instruction_address; //address of the given instruction
	reg [31:0] instruction_memory[1024:0];
	always @(posedge clk) begin
		instruction <= instruction_memory[instruction_address]; //fetch the instruction from the memory
	end
endmodule


