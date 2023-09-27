

module alu_control(AluOp, func, outSignal);

input [3:0] AluOp;
output [2:0] outSignal; //A signal that will perform a desired execution in ALU
input [5:0] func; //Funcfield of instruction

assign outSignal[2] = (~AluOp[3] & ~AluOp[1] & ~AluOp[0] & ~func[4] & ~func[3] & ~func[2] & func[1] & ~func[0]) | (~AluOp[3] & AluOp[2] & ~AluOp[1])| 
					 (~AluOp[3] & ~AluOp[1] & ~AluOp[0] & ~func[5] & ~func[4] & ~func[3]&~func[2]&~func[1]);

assign outSignal[1] = (~AluOp[3] & ~AluOp[2] & ~AluOp[1] & ~AluOp[0] & ~func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & ~func[0])| 
					(~AluOp[3] & ~AluOp[2] & ~AluOp[1] & ~AluOp[0] & func[5] & ~func[4] & ~func[3] & func[2] & ~func[1] & func[0])| 
				    (~AluOp[3] & ~AluOp[2] & ~AluOp[1] & ~AluOp[0] & func[5] & ~func[4] & func[3] & ~func[2] & func[1] & ~func[0])| 
				    (~AluOp[3] & AluOp[2] & ~AluOp[1] & AluOp[0]) | (~AluOp[3] & AluOp[2] & AluOp[1] & ~AluOp[0]) | (AluOp[3]&~AluOp[2]&AluOp[1]&~AluOp[0]);                  



assign outSignal[0] = (~AluOp[3] & ~AluOp[2] & ~AluOp[1] & ~AluOp[0] & ~func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & ~func[0])| 
					(~AluOp[3] & ~AluOp[2] & ~AluOp[1] & ~AluOp[0] & func[5] & ~func[4] & ~func[3] & func[2] & ~func[1] & ~func[0])| 
				    (~AluOp[3] & ~AluOp[2] & ~AluOp[1] & ~AluOp[0] & func[5] & ~func[4] & func[3] & ~func[2] & func[1] & ~func[0])| 
			    	(~AluOp[3] & AluOp[2] & ~AluOp[1] & AluOp[0]) | (~AluOp[3] & AluOp[2] & AluOp[1] & ~AluOp[0]) | (AluOp[3]&~AluOp[2]&~AluOp[1]&AluOp[0]);

endmodule