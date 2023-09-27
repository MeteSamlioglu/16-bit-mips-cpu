module multiplexer_8x1(Res, I0, I1, I2, I3, I4, I5, I6, I7, s0, s1, s2);

input I0, I1, I2, I3, I4, I5 ,I6 ,I7;
output Res; //Result of mux
input s0, s1, s2; //Mux input signals, s2 represents E which is Enable signal
wire mux1_temp, mux2_temp;
wire _s2; // enable not

not enable(_s2, s2); //To choose one 4x1 mux at a time get the not of s2

multiplexer_4x1 mux1(mux1_temp, I0, I1, I2, I3, s0, s1, s2);
multiplexer_4x1 mux2(mux2_temp, I4, I5, I6, I7, s0, s1, _s2);

or(Res, mux1_temp, mux2_temp); // Choose only one 4x1 mux's result




endmodule