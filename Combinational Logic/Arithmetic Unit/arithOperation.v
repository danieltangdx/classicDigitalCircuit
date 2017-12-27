/************************************************
目的：计算两个4bit数的算术操作

环境：Verilog-2001

范围：input    iNum1,iNum2 待相加的数 4bit
      output   oSum   和 5bit
               oSub   差 4bit
               oDiv   商 4bit
               oMult  积 8bit					
      
功能：以输入的两个数作为敏感信号，驱动运算单元计算
      计算直接使用 + - * / 运算符表示运算单元。
		
日期：2017/12/27  
************************************************/
module operation(
input 		[3:0]	iNum1,iNum2,
output reg	[4:0] oSum,
output reg	[3:0]	oSub,oDiv,
output reg	[7:0]	oMult);
always @(iNum1,iNum2)
begin
	oSum = iNum1 + iNum2;
	oSub = iNum1 - iNum2;
	oDiv = iNum1 / iNum2;
	oMult = iNum1 * iNum2;
end
endmodule