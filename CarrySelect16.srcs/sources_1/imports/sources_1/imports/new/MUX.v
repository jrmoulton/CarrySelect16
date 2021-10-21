`timescale 1ns / 1ps

module MUX(input x, y, sel, output out);
	assign out = sel ? y : x;
endmodule
