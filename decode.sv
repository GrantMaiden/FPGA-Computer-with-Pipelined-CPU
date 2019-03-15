module decode(inst, /*clk, rst,*/ op, reg_en, data_address, sram_RW, ALU_control, Rm, Rn, Rd);
	input  [31:0] inst;
	//input	 		  clk, rst;
	output reg [3:0]  op;
	output reg [2:0]  ALU_control;
	output reg [8:0]  data_address;
	output reg 	      reg_en;
	output reg [1:0]  sram_RW;
	output reg [4:0]  Rn, Rm, Rd;
	
	always@(*) begin
		/*if (rst) begin
			ALU_control <= 3'b000;
			op <= 4'b0000;
			Rn <= 5'b11111;
			Rm <= 5'b11111;
			Rd <= 5'b11111;
			sram_RW <= 2'b10;
			reg_en <= 1'b0;
			data_address <= 9'bX;
		end else*/
		if (11'h5c0 == inst[31:21]) begin
			// SRAM output enable <= 1'b1;
			op <= 4'b1000; // store
			ALU_control <= 3'b000;
			sram_RW <= 2'b00;
			data_address <= inst[20:12];
			Rn <= inst[9:5];
			Rm <= 5'b11111;
			Rd <= 5'b11111;
			
			reg_en <= 1'b0;
		end else if (inst[31:21] >= 11'h0a0 && inst[31:21] <= 11'h0bf) begin
			op <= 4'b1001; // B
			ALU_control <= 3'b000;
			reg_en <= 1'b0;
			data_address <= 9'bX;
			Rn <= 5'b11111;
			Rm <= 5'b11111;
			Rd <= 5'b11111;
			sram_RW <= 2'b10;
		end else if (inst[31:21] == 11'h6b0) begin
			op <= 4'b1010; // BR
			ALU_control <= 3'b000;
			Rn <= inst[4:0];
			Rm <= 5'b11111;
			Rd <= 5'b11111;
			reg_en <= 1'b0;
			sram_RW <= 2'b10;
			data_address <= 9'bX;
		end else if (inst[31:21] >= 11'h2a0 && inst[31:21] <= 11'h2a7) begin
			op <= 4'b1011; // BGT
			ALU_control <= 3'b000;
			// B, GT need negative flag of the subtraction result
			reg_en <= 1'b0;
			Rn <= 5'b11111;
			Rm <= 5'b11111;
			Rd <= 5'b11111;
			sram_RW <= 2'b10;
			data_address <= 9'bX;
		end else if (11'h5c4 == inst[31:21]) begin
			// SRAM output enable <= 1'b0;
			op <= 4'b0111; // load
			ALU_control <= 3'b000;
			data_address <= inst[20:12];
			Rn <= inst[9:5];
			Rm <= inst[20:16];
			Rd <= inst[4:0];
			reg_en <= 1'b1;
			sram_RW <= 2'b01;
		end else if (11'h458 == inst[31:21]) begin
			op <= 4'b0001; // ADD
			ALU_control <= 3'b001;
			Rn <= inst[9:5];
			Rm <= inst[20:16];
			Rd <= inst[4:0];
			reg_en <= 1'b1;
			sram_RW <= 2'b10;
			data_address <= 9'bX;
		end else if (11'h658 == inst[31:21]) begin
			op <= 4'b0010; // SUB
			ALU_control <= 3'b010;
			Rn <= inst[9:5];
			Rm <= inst[20:16];
			Rd <= inst[4:0];
			reg_en <= 1'b1;
			sram_RW <= 2'b10;
			data_address <= 9'bX;
		end else if (11'h450 == inst[31:21]) begin
			op <= 4'b0011; // AND
			ALU_control <= 3'b011;
			Rn <= inst[9:5];
			Rm <= inst[20:16];
			Rd <= inst[4:0];
			reg_en <= 1'b1;
			sram_RW <= 2'b10;
			data_address <= 9'bX;
		end else if (11'h550 == inst[31:21]) begin
			op <= 4'b0100; // ORR
			ALU_control <= 3'b100;
			Rn <= inst[9:5];
			Rm <= inst[20:16];
			Rd <= inst[4:0];
			reg_en <= 1'b1;
			sram_RW <= 2'b10;
			data_address <= 9'bX;
		end else if (11'h650 == inst[31:21]) begin
			op <= 4'b0101; // XOR
			ALU_control <= 3'b101;
			Rn <= inst[9:5];
			Rm <= inst[20:16];
			Rd <= inst[4:0];
			reg_en <= 1'b1;
			sram_RW <= 2'b10;
			data_address <= 9'bX;
		end else if (11'h69b == inst[31:21]) begin
			op <= 4'b0110; // LSL
			ALU_control <= 3'b110;
			Rn <= inst[9:5];
			Rm <= inst[20:16];
			Rd <= inst[4:0];
			reg_en <= 1'b1;
			sram_RW <= 2'b10;
			data_address <= 9'bX;
			// Din2 <= {26'b0, instR[15:10]};
		end else begin
			ALU_control <= 3'b000;
			op <= 4'b0000;
			Rn <= 5'b11111;
			Rm <= 5'b11111;
			Rd <= 5'b11111;
			sram_RW <= 2'b10;
			reg_en <= 1'b0;
			data_address <= 9'bX;
		end
	end
endmodule
