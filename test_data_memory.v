module test_data_memory(); 
	reg memWrite,memRead;
	reg clk;
	reg [15:0] store_data, address;
	wire [15:0] load_data;

	data_memory mem(address, store_data, load_data, memRead,memWrite,clk);
	

	initial 
		begin
		clk= 0;
		memRead=1'b0;
		memWrite=1'b0;
		$readmemb("data_memory_file.mem",mem.memory);
	end

	always begin 
		#5 clk= ~clk;
	end
	
	initial
		begin
			memWrite=1'b1; 
			address=16'd1; 
			store_data=16'b0000_0000_0000_0000_0000_0000_0000_1111;
			#10;
			memWrite=1'b0; 
			memRead=1'b1;
			#10;
			$writememb("memory_output.mem",mem.memory);
			$stop;
		end
 
	initial
		begin
			$monitor($time, ", adress=%d, memWrite=%b, store_data=%d, memRead=%b, load_data=%d", address,memWrite,store_data,memRead,load_data);
		end
 
endmodule