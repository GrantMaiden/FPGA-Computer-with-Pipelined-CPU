/*




*/
module instruction_fetch (pc, instruction_register);
	input  logic clk, reset; // Clock, Reset signals
	input  logic [6:0] pc;   // Program counter: holds instruction address
	
	// Register holding current instruction
	output logic [31:0] instruction_register;
	
	// 128 x 32 Instruction Memory, modeled as registers
	logic [127:0][31:0] instruction_memory;
	
	// Combinational Logic
	// instruction register set to the element in instruction memory
	// pointed to by the program counter.
	always_comb begin
		instruction_register = instruction_memory[pc];
	end
	
endmodule
