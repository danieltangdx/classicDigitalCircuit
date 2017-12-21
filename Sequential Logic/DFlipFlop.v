/******************
	FileName	:	DFlipFlop.v
	Author	:	daniel
	Description	:	Example of a rising edge flip-flop
	Revision	:	2017/12/20
	Company	:	***********
	code	:	Verilog-2001
************************/
module DFlipFlop(
input 		iData,iClock,
output reg  oQ);
always @(posedge iClock)
	oQ <= iData;
endmodule

