module test_registers();
	reg [3:0] rs, rt, rw; //register addresses
	wire [15:0] busA, busB; 
	reg regWr;
	reg [15:0] busW; // writes data into registers
	reg clk;
	registers regs(busA, busB, busW, rs, rt, rw, regWr, clk);

	initial begin
		clk = 0;
		regWr = 1'b0;
		$readmemb("register_file.mem",regs.register_file); //reads register_file's content from .mem extension document
	end
	always begin 
		#10 clk = ~clk;
	end

	initial begin
		rs=3'd0;  //it will read the initial content of addresses which are located in 0001 and 0010 in register_file.mem
		rt=3'd1;
		#10;
		rs=3'd4;  //it will read the initial content of addresses which are located in 0100 and 0101 in register_file.mem
		rt=3'd5;
		#10;
		rs= 3'd15;
		rt= 3'd14;
		#10;
		regWr = 1'b1; 
		rw = 3'd1;
		busW = 32'b1111_1111_1111_1111;
		#10;
		$writememb("register_file.mem",regs.register_file);
		$stop;
	end
 
	initial
		begin
			$monitor($time, " rs=%4b  $rs=%16b, rt=%4b $rt=%16b",rs,busA,rt, busB);
		end

	endmodule