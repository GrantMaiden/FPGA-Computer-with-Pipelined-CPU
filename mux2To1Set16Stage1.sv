/*
EE 469 Lab 3 Project
Designing an ALU
Authors: Andrique Liu, Grant Maiden, Zhengjie Zhu

mux2To1Set16Stage1 represents a set of 16 muxes that function as Stage 1
of the barrel shifter module. 

Stage 1 is able to logically shift the barrel shifter's input by 1 bit to the left.
*/
module mux2To1Set16Stage1 (clk, reset, bitsIn, select, bitsOut);
	input  logic clk, reset;     // Clock, reset
	input  logic [15:0] bitsIn;  // Input bits
	input  logic [15:0] select;  // Select; shift or don't shift
	
	output logic [15:0] bitsOut; // Output bits
	
	// Iteration variable
	// Used to iterate in order to generate muxes.
	genvar i;
	
	// Create 0th-bit mux
	// This mux has a 0 connected to one of its inputs in the event
	// a shift operation is selected.
	mux2To1 mux0bit (.clk, .reset, .select(select[0]),
	                 .in0(1'b0), .in1(bitsIn[0]), .out(bitsOut[0]));
	
	// Generate muxes of bits 1 through 15
	generate
		for (i = 1; i < 16; i++) begin : eachMux
			mux2To1 muxCopy (.clk, .reset, .select(select[i]),
			                 .in0(bitsIn[i - 1]), .in1(bitsIn[i]), .out(bitsOut[i]));
		end
	endgenerate
	
endmodule
