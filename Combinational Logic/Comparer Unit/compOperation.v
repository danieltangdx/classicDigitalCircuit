/************************************************
目的：比较两个4bit数的

环境：Verilog-2001

范围：input    iNum1,iNum2 待比较的数 4bit
      output   oLarge   iNum1 大于iNum2 则为1 1bit
               oSmall   小于为1 1bit
               oLargeEqual   大于等于为1 1bit
               oSmallEqual   小于等于为1 1bit	
      
功能：以输入的两个数作为敏感信号，驱动比较单元比较
      比较直接使用 > < >= <= 比较符表示比较单元。
		
日期：2017/12/27  
************************************************/
module compOperation(
input		  [3:0]	iNum1,iNum2,
output reg			oLarge,oSmall,
						oLargeEqual,oSmallEqual);
always @(iNum1,iNum2)
begin
	oLarge = iNum1 > iNum2;
	oSmall = iNum1 < iNum2;
	oLargeEqual = iNum1 >= iNum2;
	oSmallEqual = iNum1 <= iNum2;
end
endmodule
