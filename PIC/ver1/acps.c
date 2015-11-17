
#include<pic.h>

#define _XTAL_FREQ 4000000

#define LED_BLINK	RA5
#define LED_UPCOUNT	RD0
#define LED_DOWNCOUNT	RD1
#define LED_POWEROUT	RD2
#define RELAY	RD3

#define SEGA	RD7
#define SEGB	RD6
#define SEGC	RC2
#define SEGD	RC3
#define SEGE	RC4
#define SEGF	RC5
#define SEGG	RC6

#define DIG0	RB0
#define DIG1	RB1
#define DIG2	RB2
#define DIG3	RB3

#define BTN_SELECT	RA5
#define BTN_UP	RA5
#define BTN_DOWN	RA5
#define BTN_ONOFF	RA5
#define BTN_MODE	RA5

int minute,msecond,second,hour;
int vblMode;	// Mode 1 for Upcount and Mode 0 for Downcount
int vblSetMinute, vblSetHour;	// always check with original counting time with this values and if mach all of them then turn off 
int vblRemainMinute=0, vblRemainHour=0;
int vblDig0,vblDig1,vblDig2,vblDig3;	// Seven segment shows the exact value of this value
int vblDisplayCount=0;										// and Dig0 is lowest value of the time 00:07 eg. 7 is Dig0


void funcDisplay(unsigned int DigNo, unsigned int Value );	// this function shows the given value oo given Dig

void nop()
{
}

void main()
{	
	T1CKPS1	= 0;
	T1CKPS0	= 1;  // prescaler chage to 2:1

	TMR1CS	= 0; // timer 1 clock sorce selected to internal
	TMR1ON	= 1; // timer 1 on
	T1OSCEN	= 1; // timer 1 oscillator enable enabled //disabled

	TMR1L	= 0xB0;
	TMR1H	= 0x3C; // timer 1 selected to "0"   to 15536( to make 50000 counts for 1 over flow)
	 
	TMR1IE	= 1; // timer 1	
	GIE		= 1;
	PEIE	= 1;
		
	ADCON1 = 0b00000110;
	
	TRISA = 0b11011111;
	PORTA = 0b11011111;
	
	TRISC = 0b00000000;
	PORTC = 0b00000000;	
	
	TRISB = 0b00000000;
	PORTB = 0b00000000;
	
	TRISD = 0b00000000;
	PORTD = 0b00000000;
		
	TRISE = 0b00000000;
	PORTE = 0b00000000;
	
	while(1)
	{
		/*
		vblDig0 = vblRemainMinute%10;
		vblDig1 = vblRemainMinute/10;
		
		vblDig2 = vblRemainHour%10;
		vblDig3 = vblRemainHour/10;
		
		vblRemainMinute++;
		vblRemainHour++;
		*/
		
		vblDig0 = second%10;
		vblDig1 = second/10;
		
		vblDig2 = minute%10;
		vblDig3 = minute/10;		
		
		/*
		SEGA = 1; SEGB = 1;SEGC = 1;SEGD = 1;SEGE = 1;SEGF = 1;SEGG = 0;
		__delay_ms(500);
		SEGA = 0; SEGB = 1;SEGC = 1;SEGD = 0;SEGE = 0;SEGF = 0;SEGG = 0;
		__delay_ms(500);
		SEGA = 1; SEGB = 1;SEGC = 0;SEGD = 1;SEGE = 1;SEGF = 0;SEGG = 1;
		__delay_ms(500);
		SEGA = 1; SEGB = 1;SEGC = 1;SEGD = 1;SEGE = 0;SEGF = 0;SEGG = 1;
		__delay_ms(500);
		SEGA = 0; SEGB = 1;SEGC = 1;SEGD = 0;SEGE = 0;SEGF = 1;SEGG = 1;
		__delay_ms(500);
		SEGA = 1; SEGB = 0;SEGC = 1;SEGD = 1;SEGE = 0;SEGF = 1;SEGG = 1;
		__delay_ms(500);
		SEGA = 1; SEGB = 0;SEGC = 1;SEGD = 1;SEGE = 1;SEGF = 1;SEGG = 1;
		__delay_ms(500);
		SEGA = 1; SEGB = 1;SEGC = 1;SEGD = 0;SEGE = 0;SEGF = 0;SEGG = 0;
		__delay_ms(500);
		SEGA = 1; SEGB = 1;SEGC = 1;SEGD = 1;SEGE = 1;SEGF = 1;SEGG = 1;
		__delay_ms(500);
		SEGA = 1; SEGB = 1;SEGC = 1;SEGD = 1;SEGE = 0;SEGF = 1;SEGG = 1;
		__delay_ms(500);

		*/
		
		/*
		funcDisplay(0,4);
		__delay_ms(5);		
		funcDisplay(1,2);
		__delay_ms(5);
		funcDisplay(2,2);
		__delay_ms(5);
		funcDisplay(3,1);
		__delay_ms(5);
		
		PORTB = 0b00000000;
		
		        //hgfedcba0
		PORTC = 0b00111111;
		__delay_ms(500);
		        //hgfedcba1
		PORTC = 0b00000110;
		__delay_ms(500);
		        //hgfedcba2
		PORTC = 0b01011011;
		__delay_ms(500);
		        //hgfedcba3
		PORTC = 0b01001111;
		__delay_ms(500);
		        //hgfedcba4
		PORTC = 0b01100110;
		__delay_ms(500);
		        //hgfedcba5
		PORTC = 0b01101101;
		__delay_ms(500);
		        //hgfedcba6
		PORTC = 0b01111101;
		__delay_ms(500);
		        //hgfedcba7
		PORTC = 0b00000111;
		__delay_ms(500);
		        //hgfedcba8
		PORTC = 0b01111111;
		__delay_ms(500);
		        //hgfedcba9
		PORTC = 0b01101111;
		__delay_ms(500);
		
		if( RA0==0 )
		{
			        //hgfedcba0
			PORTC = 0b00111111;
			__delay_ms(500);
		}
		if( RA1==0 )
		{
			        //hgfedcba1
			PORTC = 0b00000110;
			__delay_ms(500);
		}	
		if( RA2==0 )
		{
			        //hgfedcba2
			PORTC = 0b01011011;
			__delay_ms(500);
		}
		if( RA3==0 )
		{
			        //hgfedcba3
			PORTC = 0b01001111;
			__delay_ms(500);
		}		
		if( RA4==0 )
		{
			        //hgfedcba3
			PORTC = 0b01001111;
			__delay_ms(500);
		}
		*/	
		
	}
}

void funcDisplay( unsigned int DigNo,unsigned int Value )
{
	if ( DigNo==0 )
	{
		DIG1 = 1;
		DIG2 = 1;
		DIG3 = 1;
		DIG0 = 0;
	}	
	else if ( DigNo==1 )
	{
		DIG0 = 1;
		DIG2 = 1;
		DIG3 = 1;
		DIG1 = 0;
	}	
	else if ( DigNo==2 )
	{
		DIG1 = 1;
		DIG0 = 1;
		DIG3 = 1;
		DIG2 = 0;
	}	
	else if ( DigNo==3 )
	{
		DIG1 = 1;
		DIG0 = 1;
		DIG2 = 1;
		DIG3 = 0;
	}	
	
	if( Value == 0)			{SEGA = 1; SEGB = 1;SEGC = 1;SEGD = 1;SEGE = 1;SEGF = 1;SEGG = 0;}
	else if( Value == 1)	{SEGA = 0; SEGB = 1;SEGC = 1;SEGD = 0;SEGE = 0;SEGF = 0;SEGG = 0;}
	else if( Value == 2)	{SEGA = 1; SEGB = 1;SEGC = 0;SEGD = 1;SEGE = 1;SEGF = 0;SEGG = 1;}
	else if( Value == 3)	{SEGA = 1; SEGB = 1;SEGC = 1;SEGD = 1;SEGE = 0;SEGF = 0;SEGG = 1;}
	else if( Value == 4)	{SEGA = 0; SEGB = 1;SEGC = 1;SEGD = 0;SEGE = 0;SEGF = 1;SEGG = 1;}
	else if( Value == 5)	{SEGA = 1; SEGB = 0;SEGC = 1;SEGD = 1;SEGE = 0;SEGF = 1;SEGG = 1;}
	else if( Value == 6)	{SEGA = 1; SEGB = 0;SEGC = 1;SEGD = 1;SEGE = 1;SEGF = 1;SEGG = 1;}
	else if( Value == 7)	{SEGA = 1; SEGB = 1;SEGC = 1;SEGD = 0;SEGE = 0;SEGF = 0;SEGG = 0;}
	else if( Value == 8)	{SEGA = 1; SEGB = 1;SEGC = 1;SEGD = 1;SEGE = 1;SEGF = 1;SEGG = 1;}
	else if( Value == 9)	{SEGA = 1; SEGB = 1;SEGC = 1;SEGD = 1;SEGE = 0;SEGF = 1;SEGG = 1;}
	
	//__delay_ms(1);		
}

void interrupt isr()
{	
	if(TMR1IF==1)
	{	
			 
		TMR1IE	= 0; // timer 1	
		GIE		= 0;
		PEIE	= 0;
		vblDisplayCount++;
		msecond ++;	
				
		if(vblDisplayCount == 3 )
		{
			funcDisplay( 0,vblDig0 );
		}
		else if( vblDisplayCount == 6 )
		{
			funcDisplay( 1,vblDig1 );
		}		
		else if( vblDisplayCount == 9 )
		{
			funcDisplay( 2,vblDig2 );
		}		
		else if( vblDisplayCount == 12 )
		{
			vblDisplayCount = 0;
			funcDisplay( 3,vblDig3 );
		}			
				
		if(msecond == 500)
		{
			second ++;
			LED_BLINK = !LED_BLINK;
			msecond = 0;
			if( second == 60)
			{
				minute ++;				
				second = 0;
				if( minute == 60)
				{
					minute = 0;
					hour ++;
					if( hour == 24)	hour == 0;
				}
			}
		}		
		TMR1IF	= 0;
		TMR1L	= 47;//0xB0;
		TMR1H	= 0xFC;		
		
		
				 
		TMR1IE	= 1; // timer 1	
		GIE		= 1;
		PEIE	= 1;
	}
}		