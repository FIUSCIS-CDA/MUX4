// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"
// CREATED		"Tue Feb  2 07:05:36 2021"

module MUX4(
	A,
	B,
	C,
	D,
	S,
	Y
);


input wire	A;
input wire	B;
input wire	C;
input wire	D;
input wire	[1:0] S;
output wire	Y;

wire	A00;
wire	B01;
wire	C10;
wire	D11;
wire	notS0;
wire	notS1;




assign	A00 = notS1 & notS0 & A;

assign	C10 = S[1] & notS0 & C;

assign	D11 = S[1] & S[0] & D;

assign	Y = A00 | C10 | D11 | B01;

assign	notS1 =  ~S[1];

assign	notS0 =  ~S[0];

assign	B01 = notS1 & S[0] & B;


endmodule
