/******************
	FileName	:	muxFourtoOne.v
	Author		:	daniel
	Description	:	Example of a mux 4-1
	Revision	:	2017/12/20
	Company		:	***********
	code		:	Verilog-2001
************************/
module muxFourtoOne(
input					iA,iB,iC,iD,
input			[1:0]	iS,
output reg			oMux);
always @(iA or iB or iB or iD or iS)
begin
	case(iS)
	2'b00: oMux = iA;
	2'b01: oMux = iB;
	2'b10: oMux = iC;
	default:	oMux = iD;
	endcase
end
endmodule
