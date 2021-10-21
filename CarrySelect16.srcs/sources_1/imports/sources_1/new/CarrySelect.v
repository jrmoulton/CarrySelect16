`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2021 04:17:49 PM
// Design Name: 
// Module Name: CarrySelect
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CarrySelect(X, Y, cin, sum, cout);
	input [3:0] X, Y;
	input cin;
	output [3:0] sum;
	output cout;

	wire [3:0] tempsum1, tempsum2;
	wire [1:0] couttr;

	RippleCarry R1(X, Y, 0, tempsum1, couttr[0]);
	RippleCarry R2(X, Y, 1, tempsum1, couttr[1]);

	MUX M1(tempsum1[0], tempsum2[0], cin, sum[0]);
	MUX M2(tempsum1[1], tempsum2[1], cin, sum[1]);
	MUX M3(tempsum1[2], tempsum2[2], cin, sum[2]);
	MUX M4(tempsum1[3], tempsum2[3], cin, sum[3]);

	MUX M5(couttr[0], couttr[1], cin, cout);
endmodule

