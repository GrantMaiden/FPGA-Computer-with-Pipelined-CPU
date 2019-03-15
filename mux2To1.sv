/*
EE 469 Lab 3 Project
Designing an ALU
Authors: Andrique Liu, Grant Maiden, Zhengjie Zhu

mux2To1 functions as a 2-to-1 MUX, with an input select that selects
between two inputs to output.
*/
module mux2To1 (clk, reset, select, in0, in1, out);
	input  logic clk, reset; // Clock, reset
	input  logic select;     // Select between two inputs
	input  logic in0, in1;   // Input bits
	
	output logic out;        // Output bit
	
	// Combinational Logic
	// Select output between the two inputs
	always_comb begin
		if (select) begin // If "1" is selected
			out = in1;
		end else begin    // If "0" is selected
			out = in0;
		end
	end
	
endmodule
