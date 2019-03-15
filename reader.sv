//-----------------------------------------------------------
// Module name:
//     reader.sv
//
// Description:
//    Choose one register among the 32 registers in a 
//		register file and read data from it
//
// Author:
//    Zhengjie Zhu
// Rev. 0 27 Jan 2017
//-----------------------------------------------------------

module reader (rsel, regs, out);
	input 	[4:0] 	rsel;
	input 	[31:0] 	regs [31:0];
	output 	[31:0] 	out;
	genvar i;
	generate 
	for (i = 0; i<32; i=i+1) begin: gen_32_mux
		mux32_1 mux_inst(out[i], {regs[31][i], regs[30][i], regs[29][i], regs[28][i], regs[27][i], regs[26][i], regs[25][i], regs[24][i], regs[23][i], regs[22][i], regs[21][i],regs[20][i]
								, regs[19][i], regs[18][i], regs[17][i], regs[16][i], regs[15][i], regs[14][i], regs[13][i], regs[12][i], regs[11][i], regs[10][i], regs[9][i], regs[8][i], 
								regs[7][i], regs[6][i], regs[5][i], regs[4][i], regs[3][i], regs[2][i], regs[1][i], regs[0][i]}, rsel);
	end 
	endgenerate
endmodule

//-----------------------------------------------------------
// mux32_1
//
// Purpose:
//    Select one input to be the output of the module from
//		all 32 inputs
//
// Parameters:
//    [in] in  - 32 -bit long input
//			  sel - use to determine which input should be chosen
//
// Returns:
//    out - one bit output that is selected from 32 bits
//
// Author:
//    Zhengjie Zhu	
// Rev. 0 27 January 2017
//-----------------------------------------------------------


module mux32_1 (out, in, sel);
	input [31:0] in;
	output		 out;
	input [4:0]	 sel;
	
	wire  [15:0] out_32;
	//assign out = in[sel];
	genvar i;
	generate
	for (i = 0; i<16; i=i+1) begin: gen_16_mux_2_1
		mux2_1 inst0(out_32[i], in[2*i], in[2*i+1], sel[0]);
	end
	endgenerate
	
	wire  [7:0] out_16;
	genvar j;
	generate
	for (j = 0; j<8; j=j+1) begin: gen_8_mux_2_1
		mux2_1 inst1(out_16[j], out_32[2*j], out_32[2*j+1], sel[1]);
	end
	endgenerate
	
	wire  [3:0] out_8;
	genvar k;
	generate
	for (k = 0; k<4; k=k+1) begin: gen_4_mux_2_1
		mux2_1 inst2(out_8[k], out_16[2*k], out_16[2*k+1], sel[2]);
	end
	endgenerate
	
	wire  [1:0] out_4;
	genvar l;
	generate
	for (l = 0; l<2; l=l+1) begin: gen_2_mux_2_1
		mux2_1 inst3(out_4[l], out_8[2*l], out_8[2*l+1], sel[3]);
	end 
	endgenerate
	
	mux2_1 top(out, out_4[0], out_4[1], sel[4]);
	
endmodule

//-----------------------------------------------------------
// mux2_1
//
// Purpose:
//    A submodule of the 32 to 1 mux, select one input to be
// 	the output from the total two inputs
//
// Parameters:
//    [in] i0, i1 - single bit input that is being selected 
//			  sel - select signal to determine which to choose
//
// Returns:
//    out - a selected single bit output
//
// Author:
//    Zhengjie Zhu	
// Rev. 0 27 January 2017
//-----------------------------------------------------------


module mux2_1(out, i0, i1, sel);
	output  out;
	input i0, i1, sel;
	wire nsel, and1, and0;
	
	not (nsel, sel);
	and (and1, i1, sel);
	and (and0, i0, nsel);
	or (out, and0, and1);
	//assign out = (i1 & sel) | (i0 & ~sel);
endmodule
