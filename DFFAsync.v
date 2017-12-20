/******************
	FileName	:	DFFAsync.v
	Author	:	daniel
	Description	:	Example of a rising edge flip-flop width asychronouse preset and reset
	Revision	:	2017/12/20
	Company	:	***********
	code	:	Verilog-2001
************************/
module #(parameter DELAY = 1) DFFAsync(
input 	  iData,iPreset,iClock,iReset,
output reg oQ);
always @(posedge iClock, negedge iPreset,negedge iReset)
	if(~iReset)
		oQ <= 1'b0;
	else if(iPreset)
   	oQ <= 1'b1;
	else
		oQ <= #DELAY iData;
endmodule