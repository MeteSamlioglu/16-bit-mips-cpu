module srl_module (
  input [15:0] alu_in,  
  input [4:0]  shamt, // shamt field
  output [15:0] shifted_bits // the shifted result
);  
  assign shifted_bits = alu_in >> shamt; 

endmodule