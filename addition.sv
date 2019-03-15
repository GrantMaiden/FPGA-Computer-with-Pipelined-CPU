//-----------------------------------------------------------
// Module name:
//     addtion.sv
//
// Description:
//    A 16-bit carry look-ahead adder
//    Take two 16-bit binary numbers as operands and
//		output result
//
// Author:
//    Zhengjie Zhu
// Rev. 0 27 Jan 2017
//-----------------------------------------------------------
module addition(c_i, A, B, sum, over, carryFlag);
	input 			c_i;
	input  [15:0]	A, B;
	output [15:0]	sum;
	output 			over, carryFlag;
	wire	 [15:0]	c_o, P, G;
	
	fullAdder adder0 (A[0], B[0], c_i, sum[0], P[0], G[0]);
	genvar i;
	generate
		for (i=1; i<16; i=i+1) begin: gen_adders
			fullAdder adders (A[i], B[i], c_o[i-1], sum[i], P[i], G[i]);
		end
	endgenerate
	
	assign carryFlag = c_o[15];
	
	assign over = (A[15] ~^ B[15]) & (A[15] ^ c_o[14]);
	
	carry_lookAhead carrygen(c_i, P, G, c_o);
	
endmodule

//-----------------------------------------------------------
// carry_lookAhead
//
// Purpose:
//    Generate carries based on propagation and generation term
//
// Parameters:
//    [in] c_i 
//			  rst - reset the value to all 0s, 
//			  D - Data input bus
//
// Returns:
//    reg [31:0] - a 32-bit long output of the register
//
// Author:
//    Zhengjie Zhu	
// Rev. 0 27 January 2017
//-----------------------------------------------------------
module carry_lookAhead (c_i, P, G, c_o);
	input 			c_i;
	input  [15:0]	G, P;
	output [15:0]	c_o; //c_o[15] will be carry-out bit
	reg 	 [15:0]	C;
	
	integer i;
	always @(*) begin
		C[0] = (c_i & P[0]) | G[0];
		for (i=1; i<16; i=i+1) begin
			C[i] = (C[i-1] & P[i]) | G[i];
		end
	end
	
	assign c_o = C;
endmodule

module fullAdder (A, B, c_i, s, P, G);
	input A, B, c_i;
	output P, G, s;
	
	assign s = A ^ B ^ c_i;
	assign P = A ^ B; 
	assign G = A & B;
endmodule

module testbench();
	reg [15:0] A, B;
	reg  [15:0] result;
	wire 			OF, CF;
	
	addition adder(1'b0, A, B, result, OF, CF);
	
	initial begin
	A = 16'h0000;
	B = 16'h0070;
	while (A < 16'h7FFF) begin
		#5;
		A = A+16'h0200;
		B = B+16'h0200;
	end 
	end
	
endmodule
