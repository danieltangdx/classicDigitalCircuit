/************************************************
目的：四输入选择器

环境：Verilog-2001

范围：input      iData1,iData2,iData3,iData4 输入4个待选择的值 1bit
                 iSel   选择相应信号， 2bit
      output     oData   输出选择结果 1 bit
               
      
功能：选择器，通过选择信号选择取一个输入信号输出

		
日期：2017/12/27  
************************************************/
module muxFourtoOne(
input					iData1,iData2,iData3,iData4,
input			[1:0]	iSel,
output reg			oData);
always @(iData1, iData2, iData3, iData4, iSel)
begin
	case(iSel)
	2'b00: oData = iData1;
	2'b01: oData = iData2;
	2'b10: oData = iData3;
	default:	oData = iData4;
	endcase
end
endmodule
