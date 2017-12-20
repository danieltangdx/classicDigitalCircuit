/******************
	FileName	:	DFFAsyncPreset.v
	Author	:	daniel
	Description	:	Example of a rising edge flip-flop width asychronouse preset
	Revision	:	2017/12/20
	Company	:	***********
	code	:	Verilog-2001
************************/
module DFFAsyncPreset #(parameter DELAY = 1) (
input 	  iData,iPreset,iClock,
output reg oQ);
always @(posedge iClock, negedge iPreset)
	if(~iPreset)
		oQ <= #DELAY 1'b1;
	else
		oQ <= #DELAY iData;
endmodule