module	LCD(	
input	iCLK,
input	iRST_N,
output	[7:0]LCD_DATA,
output	LCD_RW,
output	LCD_EN,
output	LCD_RS


);

//	Internal Wires/Registers
reg	[5:0]	LUT_INDEX;
reg	[8:0]	LUT_DATA;
reg	[5:0]	mLCD_ST;
reg	[17:0]	mDLY;
reg			mLCD_Start;
reg	[7:0]	mLCD_DATA;
reg			mLCD_RS;
wire		mLCD_Done;

parameter	LCD_INTIAL	=	0;
parameter	LCD_LINE1	=	5;
parameter	LCD_CH_LINE	=	LCD_LINE1+16;
parameter	LCD_LINE2	=	LCD_LINE1+16+1;
parameter	LUT_SIZE	=	39;//LCD_LINE1+32+1;

always@(posedge iCLK)
begin
	if(!iRST_N)
	begin
		LUT_INDEX	<=	0;
		mLCD_ST		<=	0;
		mDLY		<=	0;
		mLCD_Start	<=	0;
		mLCD_DATA	<=	0;
		mLCD_RS		<=	0;
	end
	else
	begin
		if(LUT_INDEX<LUT_SIZE)
		begin
			case(mLCD_ST)
			0:	begin
					mLCD_DATA	<=	LUT_DATA[7:0];
					mLCD_RS		<=	LUT_DATA[8];
					mLCD_Start	<=	1;
					mLCD_ST		<=	1;
				end
			1:	begin
					if(mLCD_Done)
					begin
						mLCD_Start	<=	0;
						mLCD_ST		<=	2;					
					end
				end
			2:	begin
					if(mDLY<18'h3FFFE)
					mDLY	<=	mDLY+1;
					else
					begin
						mDLY	<=	0;
						mLCD_ST	<=	3;
					end
				end
			3:	begin
					LUT_INDEX	<=	LUT_INDEX+1;
					mLCD_ST	<=	0;
				end
			endcase
		end
	end
end


always@(posedge iCLK) begin
	case(LUT_INDEX)
	//	Initial
	 1:	LUT_DATA	<=	9'h038;
	 2:	LUT_DATA	<=	9'h00C;
	 3:	LUT_DATA	<=	9'h002;
	 4:	LUT_DATA	<=	9'h006;
	 5:	LUT_DATA	<=	9'h080;
	 6:	LUT_DATA	<=	9'h14A;//R
	 7:	LUT_DATA	<=	9'h14F;//E
	 8:	LUT_DATA	<=	9'h148;//G
	 9:	LUT_DATA	<=	9'h14E;//(
	10:	LUT_DATA	<=	9'h120;
	11:	LUT_DATA	<=	9'h120;
	12:	LUT_DATA	<=	9'h148;//H
	13:	LUT_DATA	<=	9'h129;//)
	14:	LUT_DATA	<=	9'h130;//0
	15:	LUT_DATA	<=	9'h178;//x
	16:	LUT_DATA	<=	9'h120;
	17:	LUT_DATA	<=	9'h120;
	18:	LUT_DATA	<=	9'h120;
	19:	LUT_DATA	<=	9'h120;
	20:	LUT_DATA	<=	9'h120;
	21:	LUT_DATA	<=	9'h120;
	22:	LUT_DATA	<=	9'h0C0;
	23:	LUT_DATA	<=	9'h120;
	24:	LUT_DATA	<=	9'h120;
	25:	LUT_DATA	<=	9'h120;
	26:	LUT_DATA	<=	9'h120;
	27:	LUT_DATA	<=	9'h120;
	28:	LUT_DATA	<=	9'h120;
	29:	LUT_DATA	<=	9'h120;
	30:	LUT_DATA	<=	9'h120;
	31:	LUT_DATA	<=	9'h120;
	32:	LUT_DATA	<=	9'h120;
	33:	LUT_DATA	<=	9'h120;
	34:	LUT_DATA	<=	9'h120;
	35:	LUT_DATA	<=	9'h120;
	36:	LUT_DATA	<=	9'h120;
	37:	LUT_DATA	<=	9'h120;
	38:	LUT_DATA	<=	9'h120;
	endcase
end

LCD_Controller 		u0	(	//	Host Side
							.iDATA(mLCD_DATA),
							.iRS(mLCD_RS),
							.iStart(mLCD_Start),
							.oDone(mLCD_Done),
							.iCLK(iCLK),
							.iRST_N(iRST_N),
							//	LCD Interface
							.LCD_DATA(LCD_DATA),
							.LCD_RW(LCD_RW),
							.LCD_EN(LCD_EN),
							.LCD_RS(LCD_RS)	);

endmodule