//-----------------------------------------------------------
// Module name:
//     reg_file.sv
//
// Description:
//    Building an ARM 32 by 32 register file at structural
//    level, which can be read from and written to. 
//
// Author:
//    Zhengjie Zhu
// Rev. 0 27 Jan 2017
//-----------------------------------------------------------
module reg_file (rsel1, rsel2, wsel, D, en, read1, read2, clk, rst);
	input [4:0] rsel1, rsel2, wsel;
	input [31:0] D;
	input en, clk, rst;
	output reg [31:0] read1, read2;
	reg [31:0] Q [31:0];
	wire [31:0] decode, selreg;
	
	//assign decode = 32'b1 << wsel;
	decoder_5_32 decoder (wsel, decode);
	
	genvar i;
	generate
	for (i=0; i<31; i=i+1) begin: gen_32_regs
		and (selreg[i], decode[i], en);
		reg_32 registers(D, Q[i], clk, selreg[i], rst);
	end
	endgenerate
	and (selreg[31], decode[31], en);
	reg_32 register_zero(D, Q[31], clk, selreg[31], 1'b1);
	
	reader reader1(rsel1, Q, read1);
	reader reader2(rsel2, Q, read2);
	
endmodule

//-----------------------------------------------------------
// reg_32
//
// Purpose:
//    Create a 32 bits register with 32 D-flipflops
//
// Parameters:
//    [in] clk, en - enable writing to the register, 
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


module reg_32 (D, Q, clk, en, rst);
	input clk, en, rst;
	input [31:0] D;
	output reg [31:0] Q;
	wire enclk;
	
	and (enclk, en, clk);
	
	genvar i;
	generate
	for (i=0; i<32; i=i+1) begin: gen_32_bits
		D_ff bits(Q[i], D[i], rst, enclk);
	end
	endgenerate
	
endmodule

//-----------------------------------------------------------
// decoder_5_32
//
// Purpose:
//    A 5 input 32 output decoder
//
// Parameters:
//    [in] sel - select the corresponding output
//
// Returns:
//    out [31:0] - a 32-bit bus with only one true digit
//
// Author:
//    Zhengjie Zhu	
// Rev. 0 27 January 2017
//-----------------------------------------------------------


module decoder_5_32 (sel, out);
	input  [4:0] 	sel;
	output [31:0]	out;
	
	wire [1:0] invsel;
	not (invsel[0], sel[3]);
	not (invsel[1], sel[4]);
	
	wire [3:0] two_four;
	and (two_four[0], invsel[0], invsel[1]);
	and (two_four[1], sel[3], invsel[1]);
	and (two_four[2], invsel[0], sel[4]);
	and (two_four[3], sel[3], sel[4]);
	
	genvar i;
	generate
	for (i=0; i<4; i=i+1) begin: gen_4_decoder_3_8
		decoder_3_8 decoders(sel[2:0], out[(8*i+7):(8*i)], two_four[i]);
	end
	endgenerate
	
endmodule

//-----------------------------------------------------------
// decoder_3_8
//
// Purpose:
//    A 3 input to 8 output decoder. This is a submodule of 
//		5 to 32 decoder
//
// Parameters:
//    [in] sel - select one output among eight 
//			  en  - indicates whether this decoder was enabled
//
// Returns:
//    out [7:0] - a 7-bit long output that implies which output
// 	was chosen
//
// Author:
//    Zhengjie Zhu	
// Rev. 0 27 January 2017
//-----------------------------------------------------------


module decoder_3_8 (sel, out, en);
	input 	[2:0] sel;
	input 			en;
	output 	[7:0] out;
	
	wire [2:0] invsel;
	not (invsel[0], sel[0]);
	not (invsel[1], sel[1]);
	not (invsel[2], sel[2]);
	
	wire [7:0] three_eight;
	and (three_eight[0], invsel[0], invsel[1], invsel[2], en);
	and (three_eight[1], sel[0], invsel[1], invsel[2], en);
	and (three_eight[2], invsel[0], sel[1], invsel[2], en);
	and (three_eight[3], sel[0], sel[1], invsel[2], en);
	and (three_eight[4], invsel[0], invsel[1], sel[2], en);
	and (three_eight[5], sel[0], invsel[1], sel[2], en);
	and (three_eight[6], invsel[0], sel[1], sel[2], en);
	and (three_eight[7], sel[0], sel[1], sel[2], en);
	
	assign out = three_eight;
	
endmodule
