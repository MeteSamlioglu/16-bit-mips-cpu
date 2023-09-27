module data_memory(address,store_data, load_data, memRead,memWrite,clk);
	
	input clk;
	input [15:0] address, store_data;
	input memRead,memWrite;
	output reg [15:0] load_data;
	reg [15:0] memory [65535:0];
	
	always @(*) begin
		if(memRead) begin
			load_data<= memory[address]; //load_word
		end
	end
	
	always @(posedge clk) begin
		if(memWrite)begin
			memory[address]<= store_data; //store_Word
		end
	end

	endmodule