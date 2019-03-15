/*
EE 469 Lab 3 Project
Designing an ALU
Authors: Andrique Liu, Zhengjie Zhu, Grant Maiden

Subtractor takes in 2 2's comp numbers and computes the first number minus the second number.

It also output overflow out, carry out, zero out, and negative out.
*/
module Subtractor (A, B, sum, VF, CF/*, ZF, NF*/);
	input [15:0]A, B;
	output [15:0]sum;
	output VF, CF/*, ZF, NF*/;
	wire [15:0] minuend;
	wire [15:0] tempcarryOut;
	
	assign minuend = ~B;
	
	four_bit_carry_lookahead add1(.a(A[3:0]), .b(minuend[3:0]), .c(1'b1), .s(sum[3:0]), .cout(tempcarryOut[3:0])); //carryin is 1'b1 for 2's comp conversion
	four_bit_carry_lookahead add2(.a(A[7:4]), .b(minuend[7:4]), .c(tempcarryOut[3]), .s(sum[7:4]), .cout(tempcarryOut[7:4]));
	four_bit_carry_lookahead add3(.a(A[11:8]), .b(minuend[11:8]), .c(tempcarryOut[7]), .s(sum[11:8]), .cout(tempcarryOut[11:8]));
	four_bit_carry_lookahead add4(.a(A[15:12]), .b(minuend[15:12]), .c(tempcarryOut[11]), .s(sum[15:12]), .cout(tempcarryOut[15:12]));
	//calculate carry bits
	assign VF = tempcarryOut[15] ^ tempcarryOut[14];
	assign CF = tempcarryOut[15];
	//assign ZF = ~(1'b0 | sum[15]);
	//assign NF = sum[15];
	
endmodule

module four_bit_carry_lookahead (a, b, c, s, cout);
  input  [3:0] a;
  input  [3:0] b;
  input        c;    //Carry in
  output [3:0] s;    //Sum
  output [3:0] cout;  //Carry out

  wire [4:1] carrys;
  wire [3:0] p;
  wire [3:0] g;

  assign cout[3:0] = carrys[4:1];
  
  fulladder add0(.a(a[0]), .b(b[0]), .c(c),        .s(s[0]), .g(g[0]), .p(p[0]) );
  fulladder add1(.a(a[1]), .b(b[1]), .c(carrys[1]), .s(s[1]), .g(g[1]), .p(p[1]) );
  fulladder add2(.a(a[2]), .b(b[2]), .c(carrys[2]), .s(s[2]), .g(g[2]), .p(p[2]) );
  fulladder add3(.a(a[3]), .b(b[3]), .c(carrys[3]), .s(s[3]), .g(g[3]), .p(p[3]) );

  carry_lookahead lookahead(.cin(c),
   .p    (p    ), //input  [3:0] 
   .g    (g    ), //input  [3:0]
   .c   (carrys) //output [3:1]
	);

endmodule

module carry_lookahead(cin, p,g,c);
	input cin;
	input [3:0] p,g;
	output[4:1] c;
	
	assign c[1] = g[0] | (p[0]&cin);
	assign c[2] = g[1] | (p[1]&c[1]);
	assign c[3] = g[2] | (p[2]&c[2]);
	assign c[4] = g[3] | (p[3]&c[3]);
	
endmodule
	
module fulladder (a, b, c, s, g, p);
	input a, b, c;
	output p, g, s;
	
	assign s = a ^ b ^ c;
	assign p = a ^ b; 
	assign g = a & b;
	
endmodule

/*module Subtractor_testbench();
	reg [15:0] a, b, sum; 
	reg clk, ZF, VF, CF, NF;
	
	Subtractor sub(a, b, sum, VF, CF, ZF, NF);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		a<=16'b0000000000000111; b<=16'b0000000000000101;		@(posedge clk);
		a<=16'b0000000000000000; b<=16'b0000000000000001;		@(posedge clk);
		a<=16'b0000000000000000; b<=16'b0000000000000010;		@(posedge clk);
		a<=16'b0100010000000000; b<=16'b0100000000000000;		@(posedge clk);
		a<=16'b0100000000000000; b<=16'b0100000000000000;		@(posedge clk);
		a<=16'b0100010000000000; b<=16'b0100000000000000;		@(posedge clk);
		a<=16'b1100010000000000; b<=16'b0111111111111111;		@(posedge clk); //overflow example
		$stop; //End the simulation
	end
endmodule*/

