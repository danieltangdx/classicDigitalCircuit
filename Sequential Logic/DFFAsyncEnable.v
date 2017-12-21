/******************
	FileName	:	DFFAsyncEnable.v
	Author	:	daniel
	Description	:	Example of a rising edge flip-flop width asychronouse preset and 
	               clock enable
	Revision	:	2017/12/20
	Company	:	***********
	code	:	Verilog-2001
************************/
module DFFAsyncEnable #(parameter DELAY = 1) (
input 	  iData,iClock,iReset,iEnable
output reg oQ);
always @(posedge iClock, negedge iReset)
	if(~iReset)
		oQ <= 1'b0;
	else if(iEnable)
		oQ <= #DELAY iData;
endmodule