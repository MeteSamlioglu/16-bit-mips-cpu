module registers(busA, busB, busW, rs, rt, rw, regWr, clk);

	input [3:0] rs, rt, rw; //rs and rt are read register addresses, rw is a write register address
							//Since there are 16 register, I need 4 bit address
	input clk;
	output reg [15:0] busA, busB;
	input [15:0] busW; //write data into registers
	input regWr; //register write signal
	reg [15:0] register_file [15:0]; //there are 16 registers each stores 16 bits

	always @(*) begin
		busA <= register_file[rs]; //rs is the address of the register and busA has rs register's content $rs
		busB <= register_file[rt]; //rt is the address of the register and busB has rs register's content $rt
	end
	always @(posedge clk) begin
		if(regWr) begin
			register_file[rw] <= busW; //at each posedge clk, data in busW is written into register_file (address rw)
		end
	end

endmodule;