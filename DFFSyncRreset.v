/******************
	FileName	:	DFFSyncRreset.v
	Author	:	daniel
	Description	:	Example of a rising edge flip-flop width sychronouse reset
	Revision	:	2017/12/20
	Company	:	***********
	code	:	Verilog-2001
************************/
module DFFSyncRreset #(parameter DELAY = 1) (
input 	  iData,iReset,iClock,
output reg oQ);
always @(posedge iClock)
	if(~iReset)
		oQ <= #DELAY 1'b0;
	else
		oQ <= #DELAY iData;
endmodule