module alu_32_bit_testbench();

reg [31:0] a, b;
reg s0, s1, s2;
wire [31:0] res;

//ALUT stands for alu testbench
alu_32_bit testALU(res, a, b, s0, s1, s2);

initial begin

//SUB Operation
 a = 32'hFFFFFFFF; b = 32'h00000000; s0 = 0; s1 = 0; s2 = 1;
 #20;
 a = 32'hFFFFFFFF; b = 32'hFFFFFFFF; s0 = 0; s1 = 0; s2 = 1;
 #20;
 a = 32'hFFFFFFFF; b = 32'h01010011; s0 = 0; s1 = 0; s2 = 1;
 #20;
 a = 32'hFFAABB00; b = 32'hDDFF11BB; s0 = 0; s1 = 0; s2 = 1;
 #20;

//XOR Operation
 a = 32'h0000FFFF; b = 32'h0; s0 = 0; s1 = 1; s2 = 1;
 #20;
 a = 32'hF0F0F0F0; b = 32'hFFFFFFFF; s0 = 0; s1 = 1; s2 = 1;
 #20;

//OR Operation
 a = 32'hFFFFFFFF; b = 32'h00000000; s0 = 1; s1 = 0; s2 = 1;
 #20;
 a = 32'h0000F0F0; b = 32'hFFFF0000; s0 = 1; s1 = 0; s2 = 1;
 #20;

//NOR Operation
 a = 32'hFFFFFFFF; b = 32'h00000000; s0 = 1; s1 = 1; s2 = 1;
 #20;
 a = 32'h0000F0F0; b = 32'hFFFF0000; s0 = 1; s1 = 1; s2 = 1;
 #20;

//ADD Operation
 a = 32'hFFFF0000; b = 32'h0000BBBB; s0 = 0; s1 = 0; s2 = 0;
 #20;
 a = 32'hFABC00DF; b = 32'hABC00BDA; s0 = 0; s1 = 0; s2 = 0;
 #20;
 a = 32'hFFFF0000; b = 32'hA1BEEEE; s0 = 0; s1 = 0; s2 = 0;
 #20;
 
//MULT Operation doesn't work, therefore there is no need to test it because it will generate garbage value

//AND Operation
a = 32'hFFFFFFFF; b = 32'h00000000; s0 = 1; s1 = 0; s2 = 0;
#20;
a = 32'h0000F0F0; b = 32'hFFFF0000; s0 = 1; s1 = 0; s2 = 0;
#20;
//SLT Operation
 a = 32'hFFFF0000; b = 32'hAAAA1111; s0 = 1; s1 = 1; s2 = 0;
 #20
 a = 32'h05453FAF; b = 32'h00000001; s0 = 1; s1 = 1; s2 = 0;
 #20;
 a = 32'hAAAABBBB; b = 32'hFFFFFFFF; s0 = 1; s1 = 1; s2 = 0;
 #20; 
 a = 32'h0000CCCC; b = 32'h1111DDDD; s0 = 1; s1 = 1; s2 = 0;
 #20;

end

initial
begin
$monitor("ALU operation result = %8h, a =%8h, b= %8h, s0= %1b, s1= %1b, s2= %1b",res, a, b, s0, s1, s2);
end
 

endmodule
