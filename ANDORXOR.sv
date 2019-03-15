/*
EE 469 Lab 3 Project
Designing an ALU
Authors: Andrique Liu, Grant Maiden, Zhengjie Zhu

ANDORXOR performs the logical operations and, or, and xor.
ANDORXOR takes two 16-bit operands and outputs one 16-bit result.
To decide which operation, this module takes ... inputs, and these
three inputs select which operation to execute.
*/
module ANDORXOR (control, operand1, operand2, outputVal);
	input  logic [2:0]  control;      // Select which logical operation
	// Two 16-bit operand inputs
	input  logic [15:0] operand1, operand2;
	
	// 16-bit result output
	output logic [15:0] outputVal;
	
	// Distinguishes between which operation to do (AND, OR, XOR).
	// Conveniently groups together AND, OR, XOR signals.
//	logic  [2:0] whichOperation;
//	assign whichOperation[2:0] = { AND, OR, XOR };
	
	// Combinational Logic
	// Select which operation; if one of AND, OR, and XOR is not selected,
	// output unknown/high X.
	always_comb begin
		if (control == 3'b011) begin          // AND
			outputVal = operand1 & operand2;
		end else if (control== 3'b100) begin  // OR
			outputVal = operand1 | operand2;
		end else if (control == 3'b101) begin // XOR
			outputVal = operand1 ^ operand2;
		end else begin                        // UNKNOWN
			outputVal = {16{1'bX}};
		end
	end
	
endmodule
