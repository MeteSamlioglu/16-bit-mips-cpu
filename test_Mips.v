module test_Mips();
	reg [31:0] address;
	reg clk;
	wire [31:0] instruction;
	//Mips_16bit mips16bit(res,pc,nextCounter,clk);
	instruction_memory unit1(clk, instruction, address);
	
	initial begin
		$readmemb("instructions.mem",unit1.instruction_memory);
		//$readmemb("memmory.mem",mips16bit.f9.data);
		//$readmemb("in_reg.mem",mips16bit.f4.data);
		clk=1; address = 32'd0;
	end
	
	always begin 
		#5 clk= ~clk;
		
	end	

	always begin
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
	always begin
		$monitor($time," pc=%d,instruction=%32b ",address, unit1.instruction);
	end



endmodule