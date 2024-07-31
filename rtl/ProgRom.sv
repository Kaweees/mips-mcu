module ProgRom(
	input CLK, // Clock Signal (only increment during each cycle)
	input [31:0] ADDRESS_IN, // Address from which to read the instruction
	output logic [31:0] INSTRUCTION // Instruction read from the ROM
	);

	logic [13:0] wordAddr; 

	// convert byte address to word address
	assign wordAddr = ADDRESS_IN[15:2];
    
	(* rom_style="{distributed | block}" *) // Implement the memory as distributed (LUTRAM) or block (BRAM) RAM
	(* ram_decomp = "power" *) // Decompose the RAM into LUTs for power optimization
  logic [31:0] rom [0:16383]; // 16KB ROM (4KB x 32-bit)
    
	// initialize the ROM with a file containing assembled instructions
	initial begin
    $readmemh("memory.mem", rom, 0, 16383);
	end

	always_ff @(posedge CLK) begin
    INSTRUCTION <= rom[wordAddr];
	end
 
endmodule
