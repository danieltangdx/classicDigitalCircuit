/************************************************
目的：摩尔类型有限状态机的二进制状态和输出方式

环境：Verilog-2001

范围：input      i1,i1,i2,i3,i4, 输入型号 1bit
                 clk,rst, 时钟和复位信号 1bit
      output     err,n_o1,o2,o3,o4 不同状态的输出 1bit 
                
      
功能：两段式编码风格，输出在状态转移时输出，且输出与输入信号无关
		
日期：2017/12/27  
************************************************/
module FSMEncode(
input      i1,i2,i3,i4,clk,rst,
output reg err,n_o1,o2,o3,o4);

	localparam [2:0] IDLE = 3'b0,
						  	 S1 = 3'b1,
							 S2 = 3'b2,
							 S3 = 3'b3,
						 ERROR = 3'b4;
					 
	reg [2:0] state,next;

always @(posedge clk or negedge rst)
	if(rst)	state <= IDLE;
	else 		state <= next;
		
always @(state, i1,i2,i3,i4) begin
	next = 3'bx;
	 err = 0;
	n_o1 = 1;
	  o2 = 0;
	  o3 = 0;
	  o4 = 0;
	case(state)
	IDLE: begin
									next = ERROR;
			if(!i1)				next = IDLE	;
			if(i1 & i2)			next = S1;
			if(i1 & !i2 & i3)	next = S2;
			end
			
	S1: begin
									next = ERROR;
			if(!i2)				next = S1;
			if(i2 & i3)			next = S2;
			if(i1 & !i2 & i3)	next = S3;
			n_o1 = 0;
			  o2 = 1;
			end	
			
	S2: begin
									next = ERROR;
			if(i3)				next = S2;
			if(!i3 & i4)		next = S3;
			o2 = 1;
			o3 = 1;
			end
			
	S3: begin
									next = S3;
			if(!i1)				next = IDLE;
			if(i1 & i2)		   next = ERROR;
			o4 = 1;
			end
			
	ERROR: begin
									next = IDLE;
			if(i1)				next = ERROR;
			err = 1;
			end
	endcase
end
endmodule
