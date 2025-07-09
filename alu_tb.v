module tb_alu;
	reg [3:0] a,b;
	reg [2:0] alu_sel;
	wire [3:0] alu_out;
	wire carry_out;

	alu_4bit dut (.a(a), .b(b), .alu_sel(alu_sel), .alu_out(alu_out), .carry_out(carry_out) );

	initial
		begin
			a = 4'b0101; b = 4'b0011;
			alu_sel = 3'b000;	#20;
			alu_sel = 3'b001;	#20;
			alu_sel = 3'b010;	#20;
			alu_sel = 3'b011;	#20;
			alu_sel = 3'b100;	#20;
			alu_sel = 3'b101;	#20;
			alu_sel = 3'b110;	#20;
			alu_sel = 3'b111;	#20;
			$finish;
		end

endmodule
