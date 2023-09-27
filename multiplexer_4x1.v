module multiplexer_4x1(Result, I0, I1, I2, I3, s0, s1, E);
output Result; //Result of multiplexer_
input I0, I1, I2, I3;
input s0, s1, E; //E is for enable signal to choose one from two 4x1mux at a time and s0 and s1 are Aluop2 and Aluop1 signals

wire wire1, wire2, wire3, wire4, s0_, s1_;
wire tempRes; 
not not1(s0_, s0); // find the not of s0
not not2(s1_, s1); // find the not of s1

//Choose one input from out of 4
and and1(wire1,I0, s0_, s1_); //00
and and2(wire2,I1, s0_, s1); //01
and and3(wire3,I2, s0, s1_); //10
and and4(wire4,I3, s0, s1); //11

or or1(tempRes, wire1, wire2, wire3, wire4); // Choose one input according to the s0 s1 and enable signal 
                                             
and and5(Result, tempRes, E); // If enable signal is 0 it will choose from the 4x1 which has a b c d inputs if not it will chose from e f g h
											
endmodule
