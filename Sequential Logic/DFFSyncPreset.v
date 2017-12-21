/******************
	FileName	:	DFFSyncPreset.v
	Author	:	daniel
	Description	:	Example of a rising edge flip-flop width sychronouse preset
	Revision	:	2017/12/20
	Company	:	***********
	code	:	Verilog-2001
************************/
module DFFSyncPreset #(parameter DELAY = 1) (
input 	  iData,iPreset,iClock,
output reg oQ);
always @(posedge iClock)
	if(~iPreset)
		oQ <= #DELAY 1'b1;
	else
		oQ <= #DELAY iData;
endmodule