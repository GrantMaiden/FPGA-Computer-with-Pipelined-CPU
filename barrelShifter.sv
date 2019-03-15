/*
EE 469 Lab 3 Project
Designing an ALU
Authors: Andrique Liu, Zhengjie Zhu, Grant Maiden

barrelShifter functions as a barrel shifter, completing left shift logical (LSL)
operations of a 16-bit input. 

This barrel shifter takes two inputs shift1 and shift2, allowing the operator/user
to decide whether to shift by 0, 1, 2, or 3 bits to the left- if both are enabled,
the input is shifted to the left by 3.

This module's output represents the shifted value.

Note: The shift operation is LOGICAL, such that the LSBs are replaced with 0s, and the
MSBs are discarded. 
*/
module barrelShifter (clk, reset, bitsIn, shift1, shift2, bitsOut);
	input  logic clk, reset;     // Clock, Reset
	input  logic [15:0] bitsIn;  // Input bits
	input  logic shift1;         // Shift by 1
	input  logic shift2;         // Shift by 2
	
	output logic [15:0] bitsOut; // Output bits
	
	// Negated shift commands; decision to negate or not is purely based
	// on preference/style.
	logic  shift1Neg, shift2Neg;
	assign shift1Neg = !shift1;
	assign shift2Neg = !shift2;
	
	// Select behavior of mux stages; Stage 1 shifts to the left by 1, Stage 2
	// shifts to the left by 2.
	logic  [15:0] shift1Command, shift2Command;
	
	// Intermediate bits between Stage 1 and Stage 2
	logic  [15:0] middleBits;
	
	// Create two stages of 2-to-1 muxes
	mux2To1Set16Stage1 stage1 (.clk, .reset, .bitsIn,
	                      .select(shift1Command), .bitsOut(middleBits));
	mux2To1Set16Stage2 stage2 (.clk, .reset, .bitsIn(middleBits),
	                      .select(shift2Command), .bitsOut);
	
	// Combinational Logic
	// Select the functions of the mux stages; Stage 1 shifts to the left by 1,
	// Stage 2 shifts to the left by 2.
	always_comb begin
		shift1Command = shift1Neg ? {16{1'b1}} : {16{1'b0}};
		shift2Command = shift2Neg ? {16{1'b1}} : {16{1'b0}};
	end
	
endmodule

// Tester module
module barrelShifter_testbench();
	logic clk, reset;
	logic [15:0] bitsIn;
	logic shift1;
	logic shift2;
	
	logic [15:0] bitsOut;
	
	barrelShifter dut (clk, reset, bitsIn, shift1, shift2, bitsOut);
	
	// Set up the clock.
	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	// Set up the inputs to the design. Each line is a clock cycle.
	// Test... set direction to pass data in
	// Then clear direction to read data
	initial begin
								  @(posedge clk);
	reset <= 1;            @(posedge clk);
	reset <= 0;            @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
	bitsIn <= 16'b0011; shift1 <= 0; shift2 <= 0; 
	                       @(posedge clk);
	shift1 <= 1; shift2 <= 1;
								  @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
	shift1 <= 0; shift2 <= 1;
								  @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
								  @(posedge clk);
	$stop; // End the simulation.
	end
endmodule

