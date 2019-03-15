/*
EE 469 Lab 3 Project
Designing an ALU
Authors: Andrique Liu, Zhengjie Zhu, Grant Maiden

mux2To1Set16Stage1 represents a set of 16 muxes that function as Stage 2
of the barrel shifter module. 

Stage 2 is able to logically shift the barrel shifter's input by 2 bits to the left.
*/
module mux2To1Set16Stage2 (clk, reset, bitsIn, select, bitsOut);
	input  logic clk, reset;     // Clock, Reset
	input  logic [15:0] bitsIn;  // Input bits
	input  logic [15:0] select;  // Select; shift or don't shift
	
	output logic [15:0] bitsOut; // Output bits
	
	// Iteration variable
	// Used to iterate in order to generate muxes.
	genvar i;
	
	// Create 0th and 1th-bit muxes
	// Each of these muxes has a 0 connected to one of its inputs in the event
	// a shift operation is selected.
	mux2To1 mux0bit (.clk, .reset, .select(select[0]),
	                 .in0(1'b0), .in1(bitsIn[0]), .out(bitsOut[0]));
	mux2To1 mux1bit (.clk, .reset, .select(select[1]),
	                 .in0(1'b0), .in1(bitsIn[1]), .out(bitsOut[1]));
	
	// Generate muxes of bits 2 through 15
	generate
		for (i = 2; i < 16; i++) begin : eachMux
			mux2To1 muxCopy (.clk, .reset, .select(select[i]),
			                 .in0(bitsIn[i - 2]), .in1(bitsIn[i]), .out(bitsOut[i]));
		end
	endgenerate
	
endmodule
