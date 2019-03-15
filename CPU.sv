module CPU(clk, rst, instMem);
	input clk, rst;
	input [127:0][31:0]instMem;
	
	// instantiate instruction and data memory
	reg en, ZF, VF, CF, NF, flag_en, halt/*, Wait*/;
	reg  [31:0] instR, A, B, Din2, result, flags;
	reg  [31:0] Dout; 
	wire [31:0] Din1;
	reg  [4:0]  Rm, Rn, Rd;
	reg  [3:0]  op;
	reg  [1:0]  sram_RW;
	wire [31:0] data_inout, data_local_data; 
	reg  [8:0] data_address;
	reg  data_en, data_RW, load;
	wire data_cs;
	
	// 32-bit instruction: 31~21 op code, 20~16 Reg(result), 15~10shamt, 9~5 Reg(OpdA), 4~0 Reg(OpdB)
	
	wire [31:0] dividedClk;
	
	parameter whichClock = 0;
	clock_divider cdiv (clk, dividedClk);
	
	reg [2:0]  control;
	reg [6:0]  pc; // program counter
	
	ALU unit (Din1, Din2, result, 1'b0, control/*specify operation based on opcode*/, dividedClk[whichClock], rst, ZF, VF, CF, NF);
	
	reg_file regs (Rn, Rm, Rd, Dout, en, A, B, dividedClk[whichClock], rst);
	
	decode inst_decoder(instR, /*dividedClk[whichClock], rst,*/ op, en, data_address, sram_RW, control, Rm, Rn, Rd);
	
	reg_32 flag({28'b0, NF, CF, VF, ZF}, flags, dividedClk[whichClock], flag_en, rst);
	
	
	always_comb begin
		if (4'b0001 == op) begin
			// ADD
			Din2 = B;
			Dout = result;
			flag_en = 1'b1;
		end else if (4'b0010 == op) begin
			// SUB
			Din2 = B;
			Dout = result;
			flag_en = 1'b1;
		end else if (4'b0011 == op) begin
			// AND
			Din2 = B;
			Dout = result;
			flag_en = 1'b1;
		end else if (4'b0100 == op) begin
			// ORR
			Din2 = B;
			Dout = result;
			flag_en = 1'b1;
		end else if (4'b0101 == op) begin
			// XOR
			Din2 = B;
			Dout = result;
			flag_en = 1'b1;
		end else if (4'b0110 == op) begin
			// LSL
			Din2 = {26'b0, instR[15:10]};
			Dout = result;
			flag_en = 1'b1;
		end else if (4'b0111 == op) begin
			// load
			Din2 = B;
			Dout = data_inout;
			flag_en = 1'b0;
		end else if (4'b1000 == op) begin
			// store
			Din2 = B;
			Dout = data_inout;
			flag_en = 1'b0;
		end else if (4'b1001 == op) begin
			// B
			Din2 = B;
			Dout = result;
			flag_en = 1'b0;
		end else if (4'b1010 == op) begin
			// BR
			Din2 = B;
			Dout = result;
			flag_en = 1'b0;
		end else if (4'b1011 == op) begin
			// BGT
			Din2 = B;
			Dout = result;
			flag_en = 1'b0;
		end else begin
			// NOP
			Din2 = B;
			Dout = result;
			flag_en = 1'b0;
		end
	end
	
	always_comb begin
		case (sram_RW)
			2'b00: begin data_en <= 1'b1;
							 data_RW <= 1'b0; end
			2'b01: begin data_en <= 1'b0;
							 data_RW <= 1'b1; end
			default: begin data_en <= 1'b1;
								data_RW <= 1'b1; end
		endcase
	end
	
	assign Din1 = A;
	
	always@(posedge dividedClk[whichClock]) begin
		if (rst) begin
			pc <= 7'b0;
		end else if (4'b1001 == op) begin
			pc <= pc + instR[6:0];
		end else if (4'b1010 == op) begin
			pc <= A[6:0];
		end else if (4'b1011 == op && flags[0] != 1'b1 && flags[3] != 1'b1) begin
			pc <= pc + instR[11:5];
		end else if ((11'h5c0 == instR[31:21] || 11'h5c4 == instR[31:21]) && halt == 1'b0) begin
			halt <= 1'b1;
			pc <= pc;
		end else begin
			pc <= pc + 1'b1;
			halt <= 1'b0;
		end
	end
	
	//reg  [31:0] data_local_data;
	
	// out_en high to write, low to read
	assign data_inout = (data_en) ? data_local_data : 32'bz;

	assign data_local_data = A;
	
	// assign Dout = (load) ? data_inout: result;
	
	assign data_cs = 1'b0;
	
	// Instanstiate data memory
	memory #(.DEPTH(128), .FILE("data.txt")) dat_mem
	        (.clk/*(dividedClk[0])*/, .reset( ), .data(data_inout), .address(data_address),
				.out_en(data_en), .chip_s(data_cs), .RW(data_RW));
	
	assign instR = instMem[pc];
	
	
	/*always_ff @(posedge dividedClk[whichClock]) begin
		if (rst) begin
			//	Wait <= 1'b0;
			pc <= 7'b0;
			//NOP <= 2'b0;
			control <= 3'b000;
		end else if (11'h5c0 == instR[31:21]) begin
			// SRAM output enable <= 1'b1;
			data_en <= 1'b1;
			data_RW <= 1'b0;
			data_address <= instR[20:12];
			//data_local_data <= A; // value read from the reg file write into SRAM
			Rn <= instR[4:0];
			Rm <= 5'b11111;
			Rd <= 5'b11111;
			en <= 1'b0;
			load <= 1'b1;
			control <= 3'b000;*/
			/*if (Wait == 1'b1) begin
				Wait <= 1'b1;
				pc <= pc;
			end else begin
				pc <= pc +1'b1;
				Wait <= 1'b0;
			end*/
			/*pc <= pc + 1'b1;
		end else if (instR[31:21] >= 11'h0a0 && instR[31:21] <= 11'h0bf) begin 
			pc <= pc + instR[6:0];
			en <= 1'b0;
			Rn <= 5'b11111;
			Rm <= 5'b11111;
			Rd <= 5'b11111;
			load <= 1'b0;
			data_en <= 1'b1;
			data_RW <= 1'b1;
			control <= 3'b000;
			//Wait <= 1'b0;
			data_en <= 1'b0;
		end else if (instR[31:21] == 11'h6b0) begin
			Rn <= instR[4:0];
			Rm <= 5'b11111;
			Rd <= 5'b11111;
			pc <= A[6:0];
			control <= 3'b000;
			en <= 1'b0;
			data_en <= 1'b1;
			data_RW <= 1'b1;
			load <= 1'b0;
			//Wait <= 1'b0;
			data_en <= 1'b0;
		end else if (instR[31:21] >= 11'h2a0 && instR[31:21] <= 11'h2a7) begin
			// B, GT need negative flag of the subtraction result
			en <= 1'b0;
			control <= 3'b000;
			load <= 1'b0;
			//Wait <= 1'b0;
			data_en <= 1'b1;
			data_RW <= 1'b1;
			if (NF != 1'b1 && ZF != 1'b1) 
				pc <= pc + instR[11:5];
			else 
				pc <= pc + 1'b1;
		end else if (11'h5c4 == instR[31:21]) begin
			// SRAM output enable <= 1'b0;
			data_address <= instR[20:12];
			Rn <= instR[9:5];
			Rm <= instR[20:16];
			Rd <= instR[4:0];
			data_en <= 1'b0;
			en <= 1'b1;
			load <= 1'b1;
			data_RW <= 1'b1;
			pc <= pc +1'b1;*/
			/*if (Wait == 1'b0) begin
				data_address <= instR[20:12];
				Rn <= instR[9:5];
				Rm <= instR[20:16];
				Rd <= instR[4:0];
				data_en <= 1'b0;
				en <= 1'b1;
				load <= 1'b1;
				data_RW <= 1'b1;
				Wait <= 1'b1;
				pc <= pc;
			end else begin
				Rn <= 5'b11111;
				Rm <= 5'b11111;
				Rd <= 5'b11111;
				data_en <= 1'b1;
				en <= 1'b0;
				pc <= pc +1'b1;
				Wait <= 1'b0;
			end*/
		/*end else if (11'h458 == instR[31:21]) begin
			control <= 3'b001; // ADD 
			Rn <= instR[9:5];
			Rm <= instR[20:16];
			Rd <= instR[4:0];
			en <= 1'b1;
			load <= 1'b0;
			data_en <= 1'b0;
			data_RW <= 1'b1;
			//Wait <= 1'b0;
			pc <= pc + 1'b1;
		end else if (11'h658 == instR[31:21]) begin
			control <= 3'b010; // SUB
			Rn <= instR[9:5];
			Rm <= instR[20:16];
			Rd <= instR[4:0];
			en <= 1'b1;
			load <= 1'b0;
			data_en <= 1'b0;
			data_RW <= 1'b1;
			//Wait <= 1'b0;
			pc <= pc + 1'b1;
		end else if (11'h450 == instR[31:21]) begin
			control <= 3'b011; // AND
			Rn <= instR[9:5];
			Rm <= instR[20:16];
			Rd <= instR[4:0];
			en <= 1'b1;
			data_en <= 1'b0;
			data_RW <= 1'b1;
			load <= 1'b0;
			//Wait <= 1'b0;
			pc <= pc + 1'b1;
		end else if (11'h550 == instR[31:21]) begin
			control <= 3'b100; // ORR
			Rn <= instR[9:5];
			Rm <= instR[20:16];
			Rd <= instR[4:0];
			en <= 1'b1;
			load <= 1'b0;
			data_en <= 1'b0;
			data_RW <= 1'b1;
			//Wait <= 1'b0;
			pc <= pc + 1'b1;
		end else if (11'h650 == instR[31:21]) begin
			control <= 3'b101; // XOR
			Rn <= instR[9:5];
			Rm <= instR[20:16];
			Rd <= instR[4:0];
			en <= 1'b1;
			load <= 1'b0;
			//Wait <= 1'b0;
			pc <= pc + 1'b1;
		end else if (11'h69b == instR[31:21]) begin
			control <= 3'b110; // LSL
			Rn <= instR[9:5];
			Rm <= instR[20:16];
			Rd <= instR[4:0];
			en <= 1'b1;
			data_en <= 1'b0;
			data_RW <= 1'b1;
			//Wait <= 1'b0;
			// Din2 <= {26'b0, instR[15:10]};
			load <= 1'b0;
			pc <= pc + 1'b1;
		end else begin
			control <= 3'b000;
			load <= 1'b0;
			Rn <= 5'b11111;
			Rm <= 5'b11111;
			Rd <= 5'b11111;
			data_en <= 1'b0;
			data_RW <= 1'b1;*/
			//Wait <= 1'b0;
			/*if (instR == 32'b0) begin
				NOP <= NOP + 1'b1;
				if (NOP > 2'b01) 
					pc <= pc;
			end else 
				pc <= pc + 1'b1;*/
			/*pc <= pc + 1'b1;
		end
	end*/
	
	
endmodule

// divided_clocks[0] = 25MHz, [1] = 12.5MHz, ... [23] = 3Hz, [24] = 1.5Hz, [25] = 0.75 Hz, ...
	module clock_divider (clock, divided_clocks); 
	input				clock;
	output reg [31:0]	divided_clocks;
	
	initial
		divided_clocks <= 32'b0;
	
	always@(posedge clock)
		divided_clocks <= divided_clocks + 1;
endmodule

module CPU_testbench();
	reg rst, clk;
	reg [127:0][31:0]instruct_mem;
	
	CPU dut (clk, rst, instruct_mem);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		/*instruct_mem[0] <= 32'hb88013e0;
		instruct_mem[1] <= 32'hb88023e1;
		instruct_mem[2] <= 32'h8b010002;
		instruct_mem[3] <= 32'hcb010003;
		instruct_mem[4] <= 32'h00000000;
		instruct_mem[5] <= 32'h00000000;
		instruct_mem[6] <= 32'h
		instruct_mem[7] <= 32'h
		instruct_mem[8] <= 32'h
		instruct_mem[9] <= 32'h
		instruct_mem[10] <= 32'h
		instruct_mem[11] <= 32'h
		instruct_mem[12] <= 32'h
		instruct_mem[13] <= 32'h
		instruct_mem[14] <= 32'h
		instruct_mem[15] <= 32'h
		*/
		/*instruct_mem[0] = 32'b0;
		instruct_mem[1] = 32'b10111000100000000001001111100001;		//LDURSW 0 load 1 to reg 1
		instruct_mem[2] = 32'b10111000100000000010_00_11111_00010;		//LDURSW 1 load 2 to reg 2
		instruct_mem[3] = 32'b1100101100000001_000000_00010_00011;		//SUB 2 store A-B into register 3
		instruct_mem[4] = 32'b1000101100000001_000000_00010_00100;		//Add 3 store A+B into reg 4
		instruct_mem[5] = 32'b1100101000000001_000000_00010_00101;		//XOR store to reg 5
		instruct_mem[6] = 32'b1000101000000001_000000_00010_00110;		//AND store reg 6
		instruct_mem[7] = 32'b1010101000000001_000000_00010_00111;		//ORR store reg 7		
		instruct_mem[8] = 32'b0000000000000000_000000_00000_00000;		//NOP
		instruct_mem[9] = 32'b010101000000000000000000100_11111;		//B.GT 8 B.GT to 
		instruct_mem[10] = 32'b0000000000000000_000000_00000_00000;
		instruct_mem[11] = 32'b00000000000_00000_000000_00000_00000;
		instruct_mem[12] = 32'b00000000000_00000_000000_00000_00000;
		instruct_mem[13] = 32'b11010011011_11111_000011_00010_01000;		//LSL 9 R[Rd] = R[Rn] << 3 STORE TO REG 4
		instruct_mem[14] = 32'b10111000000_000000000_00_00100_11111;		//STURW 10 store R[Rd] to mem address 0		
		instruct_mem[15] = 32'b000101_00000000000000000000000011;		//B 13 branch to end
		instruct_mem[16] = 32'b00000000000_00000_000000_00000_00000;
		instruct_mem[17] = 32'b00000000000_00000_000000_00000_00000;
		instruct_mem[18] = 32'b11010110000_11111_000000_11111_00001;		//BR PC <= 1*/

		
		/*instruct_mem[0] = 32'b10111000100000000011001111100011;		//LDURSW 1 load 3
		instruct_mem[1] = 32'b10111000100000000111001111100111;		//LDURSW 2 load word A
		instruct_mem[2] = 32'b10111000100000000101001111100101;		//LDURSW 3 load word b
		instruct_mem[3] = 32'b10111000100000000010001111100010;		//LDURSW		4 load word c
		instruct_mem[4] = 32'b10111000100000000100001111101001;		//LDURSW		5 load address 4 into reg 9
		instruct_mem[5] = 32'b10111000100000000100001111100100;		//LDURSW		5 load word d
		instruct_mem[6] = 32'b11001011000001010000000011101010;		//LDURSW		6 store A-B into register
		instruct_mem[7] = 32'b11001011000000110000000101011111;		//SUB 7 compute A-B - 3
		instruct_mem[8] = 32'b01010100000000000000000011011111;		//B.GT 8 B.GT to 14
		instruct_mem[9] = 32'b11010011011111110000110001000010;		//LSL 9 R[Rd] = R[Rn] << 3		
		instruct_mem[10] = 32'b10111000100000000111001111100111;		//LDURS 11 load word 7
		instruct_mem[11] = 32'b10111000000000000100000011111111;		//STURW 12 store 7 to mem address 4
		instruct_mem[12] = 32'b00010100000000000000000000000101;		//B 13 branch to end
		instruct_mem[13] = 32'b10111000100000000110001111100110;		//LDURSW 14 load word 6
		instruct_mem[14] = 32'b10111000000000000010000011011111;		//STURW 15 store 6 to mem address 2
		instruct_mem[15] = 32'b11010011011111110000100010001100;		//LSL 16 R[Rd] = R[Rn] << 2
		instruct_mem[16] = 32'b10111000000000000100000110011111;		//STURW 17 store R[Rd] to mem address*/
		
		instruct_mem[0] = 32'b0;
		instruct_mem[1] = 32'b10111000100000000011001111100011;		//LDURSW 0 load 3
		instruct_mem[2] = 32'b10111000100000000111001111100111;		//LDURSW 1 load word 7
		instruct_mem[3] = 32'b10111000100000000101001111100101;		//LDURSW 2 load word b
		instruct_mem[4] = 32'b10111000100000000010001111100010;		//LDURSW		3 load word c
		instruct_mem[5] = 32'b10111000100000000100001111100100;		//LDURSW		4 load word d
		instruct_mem[6] = 32'b10111000100000001000001111101000;		//LDURSW		5 load word 8
		instruct_mem[7] = 32'b11001011000001000000000100001010;		//SUB		6 store A-B into register
		instruct_mem[8] = 32'b11001011000000110000000101011111;		//SUB 7 compute A-B - 3
		instruct_mem[9] = 32'b01010100000000000000000011011111;		//B.GT 8 B.GT to 14
		instruct_mem[10] = 32'b11010011011111110000110001000011;		//LSL 9 R[Rd] = R[Rn] << 3
		instruct_mem[11] = 32'b10111000000000000010000001111111;		//STURW 10 store R[Rd] to mem address 3			
		instruct_mem[12] = 32'b10111000100000000111001111100111;		//LDURS 11 load word 7
		instruct_mem[13] = 32'b10111000000000000100000011111111;		//STURW 12 store 7 to mem address 4
		instruct_mem[14] = 32'b00010100000000000000000000000101;		//B 13 branch to end
		instruct_mem[15] = 32'b10111000100000000110001111100110;		//LDURSW 14 load word 6
		instruct_mem[16] = 32'b10111000100000000110001111100010;		//LDURSW 15 load 6 to reg 2
		instruct_mem[17] = 32'b10111000000000000010000011011111;		//STURW 16 store 6 to mem address 2
		instruct_mem[18] = 32'b11010011011111110000100010000100;		//LSL 17 R[Rd] = R[Rn] << 2
		instruct_mem[19] = 32'b10111000000000000100000010011111;		//STURW 18 store R[Rd] to mem address 
		
		rst <= 1'b1;						@(posedge clk);
												@(posedge clk);
												@(posedge clk);
												@(posedge clk);		
		rst <= 1'b0;						@(posedge clk);
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
												@(posedge clk);
		$stop; //End the simulation
	end
endmodule
