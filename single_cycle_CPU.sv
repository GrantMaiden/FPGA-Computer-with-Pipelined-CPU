/*




*/
module single_cycle_CPU (clk, reset);
	input  logic clk, reset;
	
	
	logic [31:0] memory [7:0];	// 8 x 32 bit memory - holds instructions
	logic [12:0] pc;			   // 13 bit program counter - holds address of current instruction
	logic [31:0] accumulator;	// 32 bit accumulator - holds intermediate ALU results
	logic [15:0] ir;           // 16 bit instruction register - holds current instruction
	
	
	
	logic [31:0] r [7:0];		// 16 x 32 value - 
	
	// Instantiate instruction and data memory modules
	// Instruction memory is 128x32/256x16
	// Data memory is 
	memory #(.DEPTH(256), .FILE("instructions.txt")) instruction_memory
	        (clk, reset, data, address, out_en, chip_s, RW);
	memory #(.DEPTH(512), .FILE("data.txt")) data_memory
	        (clk, reset, data, address, out_en, chip_s, RW);
	
	// 
	initial begin  //  initialize the pc and the accumulator
					   //  define the instruction rom
		pc = 0;
		accumulator = 0;
		$display("\nInitialize accumulator with 0", accumulator);
		
		// Load instruction memory
		memory[0] = 'h0000;
		memory[1] = 'h2001;
		memory[2] = 'h4002;
		memory[3] = 'h6003;
		memory[4] = 'ha004;
		memory[5] = 'hc005;
		memory[6] = 'h6206;
		memory[7] = 'h8007;
		
		// 
		r[0] = 'h0;
		r[1] = 'h1;
		r[2] = 'h2;
		r[3] = 'h3;
		r[4] = 'h4;
		r[5] = 'h5;
		r[6] = 'h6;
		r[7] = 'h7;
	end
	
	// Sequential Logic
	// 
	always_ff @(posedge clk) begin
		ir <= memory[pc];	// Fetch an instruction
		
		// Begin decoding and executing
		if (ir[15:13] == 3'b000)
			pc <= memory[ir[12:0]];
		else if (ir[15:13] == 3'b001)
			pc <= pc + memory[ir[12:0]];
		else if (ir[15:13] == 3'b010)
			accumulator <= memory[ir[12:0]];
		else if (ir[15:13] == 3'b011)
			memory[ir[12:0]] <= accumulator;
		else if ((ir[15:13] == 3'b101) || (ir[15:13] == 3'b100))
			accumulator <= accumulator - memory[ir[12:0]];
		else if (ir[15:13] == 3'b110) begin
			accumulator <= -memory[ir[12:0]];
			pc <= pc + 1;
			accumulator <= r[(ir[12:10])] + r[(ir[3:0])];
		end
		
		pc <= (pc + 1) % 8; // Increment program counter
	end
		
endmodule

module single_cycle_CPU_testbench();
	logic  clk, reset;
	
	
	single_cycle_CPU dut (clk, pc);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
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
