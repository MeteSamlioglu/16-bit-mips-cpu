
module test_instruction_memory();
	wire[31:0] instruction;
	reg clk;
	reg[31:0] address;

	instruction_memory fetch(clk,instruction,address);
	initial begin
		clk = 0'b1; //initial moment
		address = 10'd0; //0.address //address of the first instruction
		$readmemb("instruction_set.mem",fetch.instruction_memory);
	end                           //Since there are at most 1024 instruction in our instruction memory 10bit is enough to represent it
	always begin
		#5 clk = ~clk;
	end

	initial begin
		//R-Type instructions
		#10
		address = 10'd1;
		#10;
		address = 10'd2;
		#10;
		address = 10'd3;
		#10;
		address = 10'd4;
		#10;
		address = 10'd5;
		#10;
		address = 10'd6;
		#10;
		address = 10'd7;
		#10;
		address = 10'd8;
		#10;
		address = 10'd9;
		#10;
		address = 10'd10;
		#10;
		address = 10'd11;
		#10;
		address = 10'd12;
		#10;
		address = 10'd13;
		#10;
		address = 10'd14;
		#10;
		address = 10'd15;
		#10;
		address = 10'd16;
		#10;
		address = 10'd17;
		#10;
		address = 10'd18;
		end
		//R-Type instructions ended
		initial begin
			$monitor($time,", Fetched instruction = %32b",instruction);
			end

		endmodule


