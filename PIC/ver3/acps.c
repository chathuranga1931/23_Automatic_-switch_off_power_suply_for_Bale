
#include<pic.h>

#define _XTAL_FREQ 4000000

#define LED_BLINK		RA5
#define LED_TURNON		RD0
#define LED_TURNOFF		RD1
#define LED_ON			RD2
#define RELAY			RD3

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

#define BTN_SELECT	RA0
#define BTN_UP		RA1
#define BTN_DOWN	RA2
#define BTN_OK		RA3
#define BTN_MODE	RA4

#define PRESSED	==0

int minute,msecond,second,hour;
int vblSetMinute, vblSetHour;	// always check with original counting time with this values and if mach all of them then turn off 
int vblRemainMinute=0, vblRemainHour=0;
int vblDig0,vblDig1,vblDig2,vblDig3;	// Seven segment shows the exact value of this value
int vblSetDig0 = 1,vblSetDig1=2,vblSetDig2=3,vblSetDig3=4;	// Keep the last entered values
int vblDisplayCount=0;	// and Dig0 is lowest value of the time 00:07 eg. 7 is Dig0
int vblMode=0;	// when 0 down count mode selected and 
					// when 1 up count mode selected
					// when 2 
int vblStatusOn=0;
int vblBllinkDigitNo=5;
bit vblSegStat=0;

void funcDisplay(unsigned int DigNo, unsigned int Value );	// this function shows the given value oo given Dig
void nop(){}
void funcSetDigit( int High, int Law);
void funcCheckBtn();
void funcDispLine();

void main()
{	
	T1CKPS1	= 0;
	T1CKPS0	= 1;  // prescaler chage to 2:1

	TMR1CS	= 0; // timer 1 clock sorce selected to internal
	TMR1ON	= 1; // timer 1 on
	T1OSCEN	= 0; // timer 1 oscillator enable enabled
				 // while this enables T1OSC1 and T1OSC2 become 
				 // inputs there for TRISC<1:0> bits are ignored

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
	
	funcDispLine();
	vblMode = 3;
	
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
				
 		//funcSetDigit( minute, second );	
		
		funcCheckBtn();
		
		switch (vblMode)
		{			
			case 0:		// set timer			
			funcSetDigit(vblSetHour, vblSetMinute);
			vblBllinkDigitNo = 0;
			RELAY = 0;	
			LED_TURNOFF = 0;
			LED_TURNON = 0;			
			while( BTN_OK == 1 )
			{	
				if(	BTN_UP PRESSED )
				{
					if ( vblBllinkDigitNo==0 )
					{
						if( vblDig0 > 8) vblDig0 = 0; 
						else vblDig0++; 
					}
					else if ( vblBllinkDigitNo==1 )	
					{							
						if( vblDig1 > 8) vblDig1 = 0; 
						else vblDig1++; 
					}
					else if ( vblBllinkDigitNo==2 )	
					{							
						if( vblDig2 > 8) vblDig2 = 0; 
						else vblDig2++; 
					}
					else if ( vblBllinkDigitNo==3 )	
					{							
						if( vblDig3 > 8) vblDig3 = 0; 
						else vblDig3++; 
					}		
					while( BTN_UP PRESSED );	
				}
				else if( BTN_DOWN PRESSED )
				{	
					if ( vblBllinkDigitNo==0 )
					{
						if( vblDig0 < 1) vblDig0 = 9; 
						else vblDig0--; 
					}
					else if ( vblBllinkDigitNo==1 )
					{
						if( vblDig1 < 1) vblDig1 = 9; 
						else vblDig1--; 
					}
					else if ( vblBllinkDigitNo==2 )
					{
						if( vblDig2 < 1) vblDig2 = 9; 
						else vblDig2--; 
					}
					else if ( vblBllinkDigitNo==3 )
					{
						if( vblDig3 < 1) vblDig3 = 9; 
						else vblDig3--; 
					}
					while( BTN_DOWN PRESSED );
				}	
				else if( BTN_SELECT PRESSED )
				{						
					if ( vblBllinkDigitNo>2)	vblBllinkDigitNo = 0;
					else vblBllinkDigitNo++;
					while( BTN_SELECT PRESSED );
				}
			}
			while( BTN_OK PRESSED );
			vblMode = 1;
			vblSetMinute = vblDig1*10 + vblDig0;
			vblSetHour = vblDig3*10 + vblDig2;
						
			break;
			case 1:		// turn off 
			funcSetDigit(vblSetHour, vblSetMinute);
			vblBllinkDigitNo = 5;
			LED_TURNOFF = 0;
			LED_TURNON = 1;		
			funcCheckBtn();
			if( BTN_OK PRESSED )
			{				
				second = 0;
				minute = 0;
				hour = 0;
				while( BTN_OK PRESSED );
				while( BTN_OK ==1 )
				{
					LED_ON = 1;
					RELAY = 1;
					vblRemainMinute = vblSetMinute - minute;
					vblRemainHour = vblSetHour - hour;
					while(hour != vblSetHour || minute != vblSetMinute)
					{
						vblRemainMinute = vblSetMinute - minute;
						vblRemainHour = vblSetHour - hour;
						funcSetDigit(vblRemainHour, vblRemainMinute);
						if( BTN_OK PRESSED )	
						{
							hour = vblSetHour;
							minute = vblSetMinute;
						}
					}
					while( BTN_OK PRESSED );
					funcDispLine();
					vblMode = 3;
					RELAY = 0;
					LED_ON = 0;	
					break ;		
				}	
				while( BTN_OK PRESSED );
			}	
			break;		
			case 2:		// turn on 							
			funcSetDigit(vblSetHour, vblSetMinute);		
			vblBllinkDigitNo = 5;
			LED_TURNOFF = 1;
			LED_TURNON = 0;				
			funcCheckBtn();
			if( BTN_OK PRESSED )
			{						
				second = 0;
				minute = 0;
				hour = 0;
				while( BTN_OK PRESSED );
				while( BTN_OK ==1 );
				{
					LED_ON = 1;
					RELAY = 0;
					vblRemainMinute = vblSetMinute - minute;
					vblRemainHour = vblSetHour - hour;
					while( hour != vblSetHour || minute != vblSetMinute)
					{
						vblRemainMinute = vblSetMinute - minute;
						vblRemainHour = vblSetHour - hour;
						funcSetDigit(vblRemainHour, vblRemainMinute);
						if( BTN_OK PRESSED )	
						{
							hour = vblSetHour;
							minute = vblSetMinute;
						}	
					}
					while( BTN_OK PRESSED );
					funcDispLine();
					vblMode = 4;
					RELAY = 1;
					LED_ON = 0;	
					break ;		
				}
					
			}
			
			break;
			case 3:		// sleep mode	
			funcDispLine();		
			vblBllinkDigitNo = 5;			
			funcCheckBtn();
			RELAY = 0;	
			LED_TURNOFF = 0;
			LED_TURNON = 0;
			/*
			if( BTN_OK PRESSED )
			{
				while( BTN_OK PRESSED );
				while( BTN_OK ==1 );
				{
					LED_ON = 1;
				}	
			}
			*/
			break;
			case 4:		// always on
			funcDispLine();			
			vblBllinkDigitNo = 5;			
			funcCheckBtn();
			RELAY = 1;	
			LED_TURNOFF = 0;
			LED_TURNON = 0;
			/*	
			if( BTN_OK PRESSED )
			{
				while( BTN_OK PRESSED );
				while( BTN_OK ==1 );
				{
					LED_ON = 1;
				}	
			}			
			*/
			break;				
		}			
	}
}

void funcDispLine()
{
	vblDig0 = 10;
	vblDig1 = 10;
	
	vblDig2 = 10;
	vblDig3 = 10;
}	

void funcCheckBtn()
{
	if( BTN_MODE PRESSED )
	{					
		if( vblMode == 0)	vblMode = 1;
		else if( vblMode == 1 )	vblMode = 2;
		else if( vblMode == 2 )	vblMode = 3;
		else if( vblMode == 3 )	vblMode = 4;
		else if( vblMode == 4 )	vblMode = 0;			
		while( BTN_MODE PRESSED );				
	}
}	

void funcSetDigit( int High, int Law)
{
	
		vblDig0 = Law%10;
		vblDig1 = Law/10;
		
		vblDig2 = High%10;
		vblDig3 = High/10;
}	

void funcDisplay( unsigned int DigNo,unsigned int Value )
{
	if ( DigNo==0 )
	{
		DIG1 = 1;
		DIG2 = 1;
		DIG3 = 1;
		if(vblBllinkDigitNo==0)	DIG0 = vblSegStat;
		else DIG0 = 0;
	}	
	else if ( DigNo==1 )
	{
		DIG0 = 1;
		DIG2 = 1;
		DIG3 = 1;
		if(vblBllinkDigitNo==1)	DIG1 = vblSegStat;
		else DIG1 = 0;
	}	
	else if ( DigNo==2 )
	{
		DIG1 = 1;
		DIG0 = 1;
		DIG3 = 1;
		if(vblBllinkDigitNo==2)	DIG2 = vblSegStat;
		else DIG2 = 0;
	}	
	else if ( DigNo==3 )
	{
		DIG1 = 1;
		DIG0 = 1;
		DIG2 = 1;
		if(vblBllinkDigitNo==3)	DIG3 = vblSegStat;
		else DIG3 = 0;
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
	else if( Value == 10)	{SEGA = 0; SEGB = 0;SEGC = 0;SEGD = 0;SEGE = 0;SEGF = 0;SEGG = 1;}
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
				
		if(msecond == 250)
		{	
			LED_BLINK = !LED_BLINK;
			vblSegStat = LED_BLINK;
		}		
		if(msecond == 500)
		{
			second ++;
			LED_BLINK = !LED_BLINK;
			vblSegStat = !vblSegStat;
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
				 
		TMR1IE	= 1;
		GIE		= 1;
		PEIE	= 1;
	}
}		