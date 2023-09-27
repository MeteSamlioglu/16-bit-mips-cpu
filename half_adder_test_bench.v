module half_adder_testbench(); 
reg a, b;
wire sum, carry_out;

half_adder TB (.sum(sum), .cout(carry_out), .a(a), .b(b));

initial begin
a = 1'b1; b = 1'b1;
#20; // Delay 20ns after each calculation
a = 1 'b0; b = 1'b1;
#20; 
a = 1'b1; b = 1'b0;
#20;
a = 1'b0; b = 1'b0;
end
 
initial
begin
$monitor("a = %1b b = %1b sum = %1b, carry_out = %1b",a ,b ,sum ,carry_out); // Print to the screen
end
 
endmodule