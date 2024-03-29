module ALU(Din1, Din2, Dout, run, control, clk, rst, ZF, VF, CF, NF);
	input  [31:0] Din1, Din2;
	output [31:0] Dout;
	input  [2:0]  control;
	input  		  clk, rst, run;
	output		  ZF, VF, CF, NF;
	reg			  sumVF, sumCF, diffVF, diffCF;
	reg 	 [31:0] result;
	reg	 [15:0] /*OpdA, OpdB, */OpR, signExt;	
	wire	 [15:0] OpdA, OpdB, sum, diff, bitand, bitor, bitxor, lshift;
	
	assign Dout = (~run) ? result: 32'bZ;
	assign OpdA = Din1[15:0];
	assign OpdB = Din2[15:0];
	
	/*reg_32 accum(Din1, A, clk, enter, rst);
	reg_32 TR0(Din2, B, clk, enter, rst);*/
	
	assign signExt = (OpR[15]) ? 16'hFFFF: 16'h0000;
	assign result = {signExt, OpR};
	
	assign ZF = (OpR == 16'b0);
	
	assign NF = (OpR[15] == 1'b1);
	
	assign VF = (control == 3'b001)? sumVF:diffVF;
	
	assign CF = (control == 3'b010)? sumCF:diffCF;
	
	addition adder(1'b0, OpdA, OpdB, sum, sumVF, sumCF);
	Subtractor sub(OpdA, OpdB, diff, diffVF, diffCF/*, ZF, NF*/);
	ANDORXOR AND(3'b011, OpdA, OpdB, bitand);
	ANDORXOR OR(3'b100, OpdA, OpdB, bitor);
	ANDORXOR XOR(3'b101, OpdA, OpdB, bitxor);
	barrelShifter LSL(clk, rst, OpdA, OpdB[0], OpdB[1], lshift);
	
	mux8_1 pick(OpR, control, {OpR, sum, diff, bitand, bitor, bitxor, lshift, lshift});

endmodule

module mux8_1(out, control, in);
	input  [0:7][15:0] in;
	output [15:0] out;
	input  [2:0]  control;
	
	wire [0:3][15:0] out_4;
	genvar i;
	generate
	for (i = 0; i<4; i=i+1) begin: gen_4_mux_2_1
		mux2_1_16 inst1(out_4[i], in[2*i], in[2*i+1], control[0]);
	end
	endgenerate
	
	wire [0:1][15:0] out_2;
	genvar j;
	generate
	for (j = 0; j<2; j=j+1) begin: gen_2_mux_2_1
		mux2_1_16 inst2(out_2[j], out_4[2*j], out_4[2*j+1], control[1]);
	end
	endgenerate
	
	mux2_1_16 inst3(out, out_2[0], out_2[1], control[2]);
	
endmodule

module mux2_1_16 (out, i0, i1, sel);
	output [15:0] out;
	input  [15:0] i0, i1;
	input  		  sel;
	
	assign out = (sel) ? i1: i0;
endmodule

module D_ff (q, d, reset, clk);
	 output reg q;
	 input d, reset, clk;
	 always_ff @(posedge clk)
		 if (reset)
			q <= 0; // On reset, set to 0
		 else
			q <= d; // Otherwise out = d
endmodule

module ALU_testbench();
	reg [31:0] Din1, Din2, Dout;
	reg [2:0]  control;
	reg [1:0]  sel; 
	reg clk, rst, enter, run, ZF, VF, CF, NF;
	
	ALU dut(Din1, Din2, Dout, enter, run, control, clk, rst, ZF, VF, CF, NF);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		rst<=1; run<=1; control<=3'b000;			@(posedge clk);
															@(posedge clk);
															@(posedge clk);
		rst<=0; enter<=1'b1;							@(posedge clk);
		Din1<=16'h6075; Din2<=16'h5105; 			@(posedge clk);		
															@(posedge clk);
															@(posedge clk);
		enter<=1'b0;									@(posedge clk);
															@(posedge clk);
															@(posedge clk);
															@(posedge clk);
															@(posedge clk);
		run<=0; control<=3'b010; 					@(posedge clk);
															@(posedge clk);
		control<=3'b000;								@(posedge clk);
															@(posedge clk);
		run<=1;											@(posedge clk);
															@(posedge clk);
		Din1<=16'h1F75; Din2<=16'h108A;enter<=1'b1;@(posedge clk);
															@(posedge clk);
															@(posedge clk);
															@(posedge clk);
		enter<=1'b0;									@(posedge clk);
		run<=0; control<=3'b011; 					@(posedge clk);
															@(posedge clk);
															@(posedge clk);
				  control<=3'b000;					@(posedge clk);
															@(posedge clk);
															@(posedge clk);
				  control<=3'b100; 					@(posedge clk);
															@(posedge clk);
															@(posedge clk);
				  control<=3'b101; 					@(posedge clk);
															@(posedge clk);
		$stop; //End the simulation
	end
endmodule
