`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2021 11:56:40 AM
// Design Name: 
// Module Name: RippleCarry
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



module RippleCarry(X, Y, cin, sum, cout);
	input [3:0] X, Y;
	input cin;
	output [3:0] sum;
	output cout;
	wire [2:0] tr;

	FullAdder s1(X[0], Y[0], cin, sum[0], tr[0]);
	FullAdder s2(X[1], Y[1], tr[0], sum[1], tr[1]);
	FullAdder s3(X[2], Y[2], tr[1], sum[2], tr[2]);
	FullAdder s4(X[3], Y[3], tr[2], sum[3], cout);
endmodule

