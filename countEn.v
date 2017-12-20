/******************
	FileName	:	countEn.v
	Author	:	daniel
	Description	:	Example of a counter with enable
	Revision	:	2017/12/20
	Company	:	***********
	code	:	Verilog-2001
************************/
module #(parameter WIDTH = 8, DELAY = 1) countEn(
input		iEnable,iClock,iReset,
output reg	[WIDTH-1:0]	oA);
always @(posedge iClock, negedge iReset)
if(!iReset)
	oA <= 8'b0;
else if(iEnable)
	oA <= #DELAY + 1;
endmodule




