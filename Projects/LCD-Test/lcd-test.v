
module lcdtest (

	CLOCK_50,
	LCD_BLON,
	LCD_DATA,
	LCD_EN,
	LCD_ON,
	LCD_RS,
	LCD_RW
);

input		          		CLOCK_50;
output		        		LCD_BLON;
inout		      [7:0]		LCD_DATA;
output		          	LCD_EN;
output		          	LCD_ON;
output		          	LCD_RS;
output		        		LCD_RW;

wire [7:0]  LCD_D_1;
wire        LCD_RW_1;
wire        LCD_EN_1;
wire        LCD_RS_1;

assign LCD_DATA = LCD_D_1;
assign LCD_RW   = LCD_RW_1;
assign LCD_EN   = LCD_EN_1;
assign LCD_RS   = LCD_RS_1; 
assign LCD_ON   = 1'b1;
assign LCD_BLON = 1'b0; //not supported;


LCD_TEST 			u5	(	//	Host Side
							.iCLK(CLOCK_50),
							.iRST_N(DLY_RST),
							//	LCD Side
							.LCD_DATA(LCD_D_1),
							.LCD_RW(LCD_RW_1),
							.LCD_EN(LCD_EN_1),
							.LCD_RS(LCD_RS_1)	);


endmodule