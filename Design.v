`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:03:32 06/11/2022 
// Design Name: 8 BIT ALU 
// Module Name:    design  bit ALU
// Project Name:Designing an  
// Target Devices: 
// Tool: XILINX ISE
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module design(operand1,operand2,clk,opcode,result,carry);
   input [7:0] operand1;
	input [7:0] operand2;
	input clk;
   input [2:0] opcode;
	output reg [7:0] result;
	output reg carry;
	reg [8:0] temp;
	parameter add=3'b000,sub=3'b001,mul=3'b010,div=3'b011,logi_and=3'b100,logi_or=3'b101,logi_xor=3'b110,shift_right=3'b111;
	always@(posedge clk) begin
	case(opcode)
	add: begin 
	temp<=operand1+operand2;
	carry<=temp[8];
	result<=temp[7:0];
	end
	sub: result<=operand1-operand2;
	mul: result<=operand1*operand2;
	div: result<=operand1/operand2;
	logi_and: result<=operand1&&operand2;
	logi_or: result<=operand1||operand2;
	logi_xor: result<=operand1^operand2;
	shift_right: result<=operand1>>1;
	default: result<=0;
	endcase
	end
	
	

endmodule`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:03:32 06/11/2022 
// Design Name: 8 BIT ALU 
// Module Name:    design  bit ALU
// Project Name:Designing an  
// Target Devices: 
// Tool: XILINX ISE
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module design(operand1,operand2,clk,opcode,result,carry);
   input [7:0] operand1;
	input [7:0] operand2;
	input clk;
   input [2:0] opcode;
	output reg [7:0] result;
	output reg carry;
	reg [8:0] temp;
	parameter add=3'b000,sub=3'b001,mul=3'b010,div=3'b011,logi_and=3'b100,logi_or=3'b101,logi_xor=3'b110,shift_right=3'b111;
	always@(posedge clk) begin
	case(opcode)
	add: begin 
	temp<=operand1+operand2;
	carry<=temp[8];
	result<=temp[7:0];
	end
	sub: result<=operand1-operand2;
	mul: result<=operand1*operand2;
	div: result<=operand1/operand2;
	logi_and: result<=operand1&&operand2;
	logi_or: result<=operand1||operand2;
	logi_xor: result<=operand1^operand2;
	shift_right: result<=operand1>>1;
	default: result<=0;
	endcase
	end
	
	

endmodule
