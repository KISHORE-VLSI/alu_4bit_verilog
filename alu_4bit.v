module alu_4bit(
				input [3:0] a,b,
				input [2:0] alu_sel,
				output reg [3:0] alu_out,
				output reg carry_out);

	always @(alu_sel)
		begin
			case(alu_sel)
				3'b000:{carry_out,alu_out} = a+b;	
				3'b001:{carry_out,alu_out} = a-b;	
				3'b010:{carry_out,alu_out} = a&b;	
				3'b011:{carry_out,alu_out} = a|b;	
				3'b100:{carry_out,alu_out} = a^b;	
				3'b101:{carry_out,alu_out} = ~a;	
				3'b110:{carry_out,alu_out} = a<<1;	
				3'b111:{carry_out,alu_out} = a>>1;
				default: alu_out = 4'b0000;
			endcase
		end
	
endmodule
