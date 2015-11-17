opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,___awmod
	FNCALL	_main,___awdiv
	FNROOT	_main
	FNCALL	_isr,_funcDisplay
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_hour
	global	_minute
	global	_second
	global	_vblMode
	global	_vblRemainHour
	global	_vblRemainMinute
	global	_vblSetHour
	global	_vblSetMinute
	global	_msecond
	global	_vblDisplayCount
	global	_vblDig0
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_vblDig0:
       ds      2

	global	_vblDig1
_vblDig1:
       ds      2

	global	_vblDig2
_vblDig2:
       ds      2

	global	_vblDig3
_vblDig3:
       ds      2

	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RA5
_RA5	set	45
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_T1OSCEN
_T1OSCEN	set	131
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_ADCON1
_ADCON1	set	159
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_TMR1IE
_TMR1IE	set	1120
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"acps.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_msecond:
       ds      2

_vblDisplayCount:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_hour:
       ds      2

_minute:
       ds      2

_second:
       ds      2

_vblMode:
       ds      2

_vblRemainHour:
       ds      2

_vblRemainMinute:
       ds      2

_vblSetHour:
       ds      2

_vblSetMinute:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+010h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_funcDisplay
?_funcDisplay:	; 0 bytes @ 0x0
	global	?_isr
?_isr:	; 0 bytes @ 0x0
	global	funcDisplay@DigNo
funcDisplay@DigNo:	; 2 bytes @ 0x0
	ds	2
	global	funcDisplay@Value
funcDisplay@Value:	; 2 bytes @ 0x2
	ds	2
	global	??_funcDisplay
??_funcDisplay:	; 0 bytes @ 0x4
	global	??_isr
??_isr:	; 0 bytes @ 0x4
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
;;Data sizes: Strings 0, constant 0, data 0, bss 20, persistent 8 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          13      8      12
;; BANK0           80      9      33
;; BANK1           80      0       0
;; BANK3           85      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _isr in COMMON
;;
;;   _isr->_funcDisplay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___awdiv
;;
;; Critical Paths under _isr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _isr in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _isr in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _isr in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     596
;;                            ___awmod
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 BANK0      9     5      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _isr                                                  4     4      0     308
;;                                              4 COMMON     4     4      0
;;                        _funcDisplay
;; ---------------------------------------------------------------------------------
;; (3) _funcDisplay                                          4     0      4     308
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   ___awmod
;;   ___awdiv
;;
;; _isr (ROOT)
;;   _funcDisplay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            D      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               D      8       C       1       92.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      2D       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      9      21       5       41.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            55      0       0       8        0.0%
;;BANK3               55      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      32      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 46 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver1\acps.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awmod
;;		___awdiv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver1\acps.c"
	line	46
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	47
	
l3056:	
;acps.c: 47: T1CKPS1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(133/8),(133)&7
	line	48
;acps.c: 48: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	50
;acps.c: 50: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	51
;acps.c: 51: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	52
;acps.c: 52: T1OSCEN = 1;
	bsf	(131/8),(131)&7
	line	54
	
l3058:	
;acps.c: 54: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	55
;acps.c: 55: TMR1H = 0x3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	57
	
l3060:	
;acps.c: 57: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	58
	
l3062:	
;acps.c: 58: GIE = 1;
	bsf	(95/8),(95)&7
	line	59
	
l3064:	
;acps.c: 59: PEIE = 1;
	bsf	(94/8),(94)&7
	line	61
;acps.c: 61: ADCON1 = 0b00000110;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	63
;acps.c: 63: TRISA = 0b11011111;
	movlw	(0DFh)
	movwf	(133)^080h	;volatile
	line	64
;acps.c: 64: PORTA = 0b11011111;
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	66
	
l3066:	
;acps.c: 66: TRISC = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	67
	
l3068:	
;acps.c: 67: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	69
	
l3070:	
;acps.c: 69: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	70
	
l3072:	
;acps.c: 70: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	72
	
l3074:	
;acps.c: 72: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	73
	
l3076:	
;acps.c: 73: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	75
	
l3078:	
;acps.c: 75: TRISE = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	76
	
l3080:	
;acps.c: 76: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	goto	l3082
	line	78
;acps.c: 78: while(1)
	
l716:	
	line	91
	
l3082:	
;acps.c: 79: {
;acps.c: 91: vblDig0 = second%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_second+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_second),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(_vblDig0+1)
	addwf	(_vblDig0+1)
	movf	(0+(?___awmod)),w
	clrf	(_vblDig0)
	addwf	(_vblDig0)

	line	92
	
l3084:	
;acps.c: 92: vblDig1 = second/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_second+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_second),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(_vblDig1+1)
	addwf	(_vblDig1+1)
	movf	(0+(?___awdiv)),w
	clrf	(_vblDig1)
	addwf	(_vblDig1)

	line	94
	
l3086:	
;acps.c: 94: vblDig2 = minute%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_minute+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_minute),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(_vblDig2+1)
	addwf	(_vblDig2+1)
	movf	(0+(?___awmod)),w
	clrf	(_vblDig2)
	addwf	(_vblDig2)

	line	95
	
l3088:	
;acps.c: 95: vblDig3 = minute/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_minute+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_minute),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(_vblDig3+1)
	addwf	(_vblDig3+1)
	movf	(0+(?___awdiv)),w
	clrf	(_vblDig3)
	addwf	(_vblDig3)

	goto	l3082
	line	196
	
l717:	
	line	78
	goto	l3082
	
l718:	
	line	197
	
l719:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awmod
psect	text184,local,class=CODE,delta=2
global __ptext184
__ptext184:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text184
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3022:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2761
	goto	u2760
u2761:
	goto	l3026
u2760:
	line	10
	
l3024:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3026
	line	12
	
l1654:	
	line	13
	
l3026:	
	btfss	(___awmod@divisor+1),7
	goto	u2771
	goto	u2770
u2771:
	goto	l3030
u2770:
	line	14
	
l3028:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3030
	
l1655:	
	line	15
	
l3030:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2781
	goto	u2780
u2781:
	goto	l3048
u2780:
	line	16
	
l3032:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3038
	
l1658:	
	line	18
	
l3034:	
	movlw	01h
	
u2795:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2795
	line	19
	
l3036:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3038
	line	20
	
l1657:	
	line	17
	
l3038:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l3034
u2800:
	goto	l3040
	
l1659:	
	goto	l3040
	line	21
	
l1660:	
	line	22
	
l3040:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2815
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2815:
	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l3044
u2810:
	line	23
	
l3042:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3044
	
l1661:	
	line	24
	
l3044:	
	movlw	01h
	
u2825:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2825
	line	25
	
l3046:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l3040
u2830:
	goto	l3048
	
l1662:	
	goto	l3048
	line	26
	
l1656:	
	line	27
	
l3048:	
	movf	(___awmod@sign),w
	skipz
	goto	u2840
	goto	l3052
u2840:
	line	28
	
l3050:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3052
	
l1663:	
	line	29
	
l3052:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1664
	
l3054:	
	line	30
	
l1664:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text185,local,class=CODE,delta=2
global __ptext185
__ptext185:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] int 
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text185
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2982:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2661
	goto	u2660
u2661:
	goto	l2986
u2660:
	line	11
	
l2984:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2986
	line	13
	
l1586:	
	line	14
	
l2986:	
	btfss	(___awdiv@dividend+1),7
	goto	u2671
	goto	u2670
u2671:
	goto	l2992
u2670:
	line	15
	
l2988:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2990:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2992
	line	17
	
l1587:	
	line	18
	
l2992:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2994:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2681
	goto	u2680
u2681:
	goto	l3014
u2680:
	line	20
	
l2996:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3002
	
l1590:	
	line	22
	
l2998:	
	movlw	01h
	
u2695:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2695
	line	23
	
l3000:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3002
	line	24
	
l1589:	
	line	21
	
l3002:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l2998
u2700:
	goto	l3004
	
l1591:	
	goto	l3004
	line	25
	
l1592:	
	line	26
	
l3004:	
	movlw	01h
	
u2715:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2715
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2725
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2725:
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l3010
u2720:
	line	28
	
l3006:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3008:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3010
	line	30
	
l1593:	
	line	31
	
l3010:	
	movlw	01h
	
u2735:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2735
	line	32
	
l3012:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l3004
u2740:
	goto	l3014
	
l1594:	
	goto	l3014
	line	33
	
l1588:	
	line	34
	
l3014:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2750
	goto	l3018
u2750:
	line	35
	
l3016:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3018
	
l1595:	
	line	36
	
l3018:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1596
	
l3020:	
	line	37
	
l1596:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_isr
psect	text186,local,class=CODE,delta=2
global __ptext186
__ptext186:

;; *************** function _isr *****************
;; Defined at:
;;		line 245 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver1\acps.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_funcDisplay
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text186
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver1\acps.c"
	line	245
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 5
; Regs used in _isr: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+0)
	movf	fsr0,w
	movwf	(??_isr+1)
	movf	pclath,w
	movwf	(??_isr+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_isr+3)
	ljmp	_isr
psect	text186
	line	246
	
i1l2932:	
;acps.c: 246: if(TMR1IF==1)
	btfss	(96/8),(96)&7
	goto	u258_21
	goto	u258_20
u258_21:
	goto	i1l763
u258_20:
	line	249
	
i1l2934:	
;acps.c: 247: {
;acps.c: 249: TMR1IE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1120/8)^080h,(1120)&7
	line	250
;acps.c: 250: GIE = 0;
	bcf	(95/8),(95)&7
	line	251
;acps.c: 251: PEIE = 0;
	bcf	(94/8),(94)&7
	line	252
	
i1l2936:	
;acps.c: 252: vblDisplayCount++;
	movlw	low(01h)
	addwf	(_vblDisplayCount),f
	skipnc
	incf	(_vblDisplayCount+1),f
	movlw	high(01h)
	addwf	(_vblDisplayCount+1),f
	line	253
;acps.c: 253: msecond ++;
	movlw	low(01h)
	addwf	(_msecond),f
	skipnc
	incf	(_msecond+1),f
	movlw	high(01h)
	addwf	(_msecond+1),f
	line	255
;acps.c: 255: if(vblDisplayCount == 3 )
	movlw	03h
	xorwf	(_vblDisplayCount),w
	iorwf	(_vblDisplayCount+1),w
	skipz
	goto	u259_21
	goto	u259_20
u259_21:
	goto	i1l2940
u259_20:
	line	257
	
i1l2938:	
;acps.c: 256: {
;acps.c: 257: funcDisplay( 0,vblDig0 );
	movlw	low(0)
	movwf	(?_funcDisplay)
	movlw	high(0)
	movwf	((?_funcDisplay))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vblDig0+1),w
	clrf	1+(?_funcDisplay)+02h
	addwf	1+(?_funcDisplay)+02h
	movf	(_vblDig0),w
	clrf	0+(?_funcDisplay)+02h
	addwf	0+(?_funcDisplay)+02h

	fcall	_funcDisplay
	line	258
;acps.c: 258: }
	goto	i1l2954
	line	259
	
i1l752:	
	
i1l2940:	
;acps.c: 259: else if( vblDisplayCount == 6 )
	movlw	06h
	xorwf	(_vblDisplayCount),w
	iorwf	(_vblDisplayCount+1),w
	skipz
	goto	u260_21
	goto	u260_20
u260_21:
	goto	i1l2944
u260_20:
	line	261
	
i1l2942:	
;acps.c: 260: {
;acps.c: 261: funcDisplay( 1,vblDig1 );
	movlw	low(01h)
	movwf	(?_funcDisplay)
	movlw	high(01h)
	movwf	((?_funcDisplay))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vblDig1+1),w
	clrf	1+(?_funcDisplay)+02h
	addwf	1+(?_funcDisplay)+02h
	movf	(_vblDig1),w
	clrf	0+(?_funcDisplay)+02h
	addwf	0+(?_funcDisplay)+02h

	fcall	_funcDisplay
	line	262
;acps.c: 262: }
	goto	i1l2954
	line	263
	
i1l754:	
	
i1l2944:	
;acps.c: 263: else if( vblDisplayCount == 9 )
	movlw	09h
	xorwf	(_vblDisplayCount),w
	iorwf	(_vblDisplayCount+1),w
	skipz
	goto	u261_21
	goto	u261_20
u261_21:
	goto	i1l2948
u261_20:
	line	265
	
i1l2946:	
;acps.c: 264: {
;acps.c: 265: funcDisplay( 2,vblDig2 );
	movlw	low(02h)
	movwf	(?_funcDisplay)
	movlw	high(02h)
	movwf	((?_funcDisplay))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vblDig2+1),w
	clrf	1+(?_funcDisplay)+02h
	addwf	1+(?_funcDisplay)+02h
	movf	(_vblDig2),w
	clrf	0+(?_funcDisplay)+02h
	addwf	0+(?_funcDisplay)+02h

	fcall	_funcDisplay
	line	266
;acps.c: 266: }
	goto	i1l2954
	line	267
	
i1l756:	
	
i1l2948:	
;acps.c: 267: else if( vblDisplayCount == 12 )
	movlw	0Ch
	xorwf	(_vblDisplayCount),w
	iorwf	(_vblDisplayCount+1),w
	skipz
	goto	u262_21
	goto	u262_20
u262_21:
	goto	i1l2954
u262_20:
	line	269
	
i1l2950:	
;acps.c: 268: {
;acps.c: 269: vblDisplayCount = 0;
	clrf	(_vblDisplayCount)
	clrf	(_vblDisplayCount+1)
	line	270
	
i1l2952:	
;acps.c: 270: funcDisplay( 3,vblDig3 );
	movlw	low(03h)
	movwf	(?_funcDisplay)
	movlw	high(03h)
	movwf	((?_funcDisplay))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vblDig3+1),w
	clrf	1+(?_funcDisplay)+02h
	addwf	1+(?_funcDisplay)+02h
	movf	(_vblDig3),w
	clrf	0+(?_funcDisplay)+02h
	addwf	0+(?_funcDisplay)+02h

	fcall	_funcDisplay
	goto	i1l2954
	line	271
	
i1l758:	
	goto	i1l2954
	line	273
	
i1l757:	
	goto	i1l2954
	
i1l755:	
	goto	i1l2954
	
i1l753:	
	
i1l2954:	
;acps.c: 271: }
;acps.c: 273: if(msecond == 500)
	movlw	high(01F4h)
	xorwf	(_msecond+1),w
	skipz
	goto	u263_25
	movlw	low(01F4h)
	xorwf	(_msecond),w
u263_25:

	skipz
	goto	u263_21
	goto	u263_20
u263_21:
	goto	i1l759
u263_20:
	line	275
	
i1l2956:	
;acps.c: 274: {
;acps.c: 275: second ++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_second),f
	skipnc
	incf	(_second+1),f
	movlw	high(01h)
	addwf	(_second+1),f
	line	276
;acps.c: 276: RA5 = !RA5;
	movlw	1<<((45)&7)
	xorwf	((45)/8),f
	line	277
	
i1l2958:	
;acps.c: 277: msecond = 0;
	clrf	(_msecond)
	clrf	(_msecond+1)
	line	278
	
i1l2960:	
;acps.c: 278: if( second == 60)
	movlw	03Ch
	xorwf	(_second),w
	iorwf	(_second+1),w
	skipz
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l759
u264_20:
	line	280
	
i1l2962:	
;acps.c: 279: {
;acps.c: 280: minute ++;
	movlw	low(01h)
	addwf	(_minute),f
	skipnc
	incf	(_minute+1),f
	movlw	high(01h)
	addwf	(_minute+1),f
	line	281
	
i1l2964:	
;acps.c: 281: second = 0;
	clrf	(_second)
	clrf	(_second+1)
	line	282
	
i1l2966:	
;acps.c: 282: if( minute == 60)
	movlw	03Ch
	xorwf	(_minute),w
	iorwf	(_minute+1),w
	skipz
	goto	u265_21
	goto	u265_20
u265_21:
	goto	i1l759
u265_20:
	line	284
	
i1l2968:	
;acps.c: 283: {
;acps.c: 284: minute = 0;
	clrf	(_minute)
	clrf	(_minute+1)
	line	285
	
i1l2970:	
;acps.c: 285: hour ++;
	movlw	low(01h)
	addwf	(_hour),f
	skipnc
	incf	(_hour+1),f
	movlw	high(01h)
	addwf	(_hour+1),f
	goto	i1l759
	line	286
	
i1l2972:	
	goto	i1l759
	
i1l762:	
	goto	i1l759
	line	287
	
i1l761:	
	goto	i1l759
	line	288
	
i1l760:	
	line	289
	
i1l759:	
	line	290
;acps.c: 287: }
;acps.c: 288: }
;acps.c: 289: }
;acps.c: 290: TMR1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	line	291
	
i1l2974:	
;acps.c: 291: TMR1L = 47;
	movlw	(02Fh)
	movwf	(14)	;volatile
	line	292
;acps.c: 292: TMR1H = 0xFC;
	movlw	(0FCh)
	movwf	(15)	;volatile
	line	296
	
i1l2976:	
;acps.c: 296: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	297
	
i1l2978:	
;acps.c: 297: GIE = 1;
	bsf	(95/8),(95)&7
	line	298
	
i1l2980:	
;acps.c: 298: PEIE = 1;
	bsf	(94/8),(94)&7
	goto	i1l763
	line	299
	
i1l751:	
	line	300
	
i1l763:	
	movf	(??_isr+3),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_isr+2),w
	movwf	pclath
	movf	(??_isr+1),w
	movwf	fsr0
	swapf	(??_isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
;; =============== function _isr ends ============

	signat	_isr,88
	global	_funcDisplay
psect	text187,local,class=CODE,delta=2
global __ptext187
__ptext187:

;; *************** function _funcDisplay *****************
;; Defined at:
;;		line 200 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver1\acps.c"
;; Parameters:    Size  Location     Type
;;  DigNo           2    0[COMMON] unsigned int 
;;  Value           2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text187
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver1\acps.c"
	line	200
	global	__size_of_funcDisplay
	__size_of_funcDisplay	equ	__end_of_funcDisplay-_funcDisplay
	
_funcDisplay:	
	opt	stack 5
; Regs used in _funcDisplay: [wreg+status,2+status,0]
	line	201
	
i1l2876:	
;acps.c: 201: if ( DigNo==0 )
	movf	((funcDisplay@DigNo+1)),w
	iorwf	((funcDisplay@DigNo)),w
	skipz
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l2880
u244_20:
	line	203
	
i1l2878:	
;acps.c: 202: {
;acps.c: 203: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	204
;acps.c: 204: RB2 = 1;
	bsf	(50/8),(50)&7
	line	205
;acps.c: 205: RB3 = 1;
	bsf	(51/8),(51)&7
	line	206
;acps.c: 206: RB0 = 0;
	bcf	(48/8),(48)&7
	line	207
;acps.c: 207: }
	goto	i1l2892
	line	208
	
i1l722:	
	
i1l2880:	
;acps.c: 208: else if ( DigNo==1 )
	movlw	01h
	xorwf	(funcDisplay@DigNo),w
	iorwf	(funcDisplay@DigNo+1),w
	skipz
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l2884
u245_20:
	line	210
	
i1l2882:	
;acps.c: 209: {
;acps.c: 210: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	211
;acps.c: 211: RB2 = 1;
	bsf	(50/8),(50)&7
	line	212
;acps.c: 212: RB3 = 1;
	bsf	(51/8),(51)&7
	line	213
;acps.c: 213: RB1 = 0;
	bcf	(49/8),(49)&7
	line	214
;acps.c: 214: }
	goto	i1l2892
	line	215
	
i1l724:	
	
i1l2884:	
;acps.c: 215: else if ( DigNo==2 )
	movlw	02h
	xorwf	(funcDisplay@DigNo),w
	iorwf	(funcDisplay@DigNo+1),w
	skipz
	goto	u246_21
	goto	u246_20
u246_21:
	goto	i1l2888
u246_20:
	line	217
	
i1l2886:	
;acps.c: 216: {
;acps.c: 217: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	218
;acps.c: 218: RB0 = 1;
	bsf	(48/8),(48)&7
	line	219
;acps.c: 219: RB3 = 1;
	bsf	(51/8),(51)&7
	line	220
;acps.c: 220: RB2 = 0;
	bcf	(50/8),(50)&7
	line	221
;acps.c: 221: }
	goto	i1l2892
	line	222
	
i1l726:	
	
i1l2888:	
;acps.c: 222: else if ( DigNo==3 )
	movlw	03h
	xorwf	(funcDisplay@DigNo),w
	iorwf	(funcDisplay@DigNo+1),w
	skipz
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l2892
u247_20:
	line	224
	
i1l2890:	
;acps.c: 223: {
;acps.c: 224: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	225
;acps.c: 225: RB0 = 1;
	bsf	(48/8),(48)&7
	line	226
;acps.c: 226: RB2 = 1;
	bsf	(50/8),(50)&7
	line	227
;acps.c: 227: RB3 = 0;
	bcf	(51/8),(51)&7
	goto	i1l2892
	line	228
	
i1l728:	
	goto	i1l2892
	line	230
	
i1l727:	
	goto	i1l2892
	
i1l725:	
	goto	i1l2892
	
i1l723:	
	
i1l2892:	
;acps.c: 228: }
;acps.c: 230: if( Value == 0) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 1;RC4 = 1;RC5 = 1;RC6 = 0;}
	movf	((funcDisplay@Value+1)),w
	iorwf	((funcDisplay@Value)),w
	skipz
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l2896
u248_20:
	
i1l2894:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bsf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bcf	(62/8),(62)&7
	goto	i1l748
	line	231
	
i1l729:	
	
i1l2896:	
;acps.c: 231: else if( Value == 1) {RD7 = 0; RD6 = 1;RC2 = 1;RC3 = 0;RC4 = 0;RC5 = 0;RC6 = 0;}
	movlw	01h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l2900
u249_20:
	
i1l2898:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bcf	(62/8),(62)&7
	goto	i1l748
	line	232
	
i1l731:	
	
i1l2900:	
;acps.c: 232: else if( Value == 2) {RD7 = 1; RD6 = 1;RC2 = 0;RC3 = 1;RC4 = 1;RC5 = 0;RC6 = 1;}
	movlw	02h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u250_21
	goto	u250_20
u250_21:
	goto	i1l2904
u250_20:
	
i1l2902:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bcf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bsf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l748
	line	233
	
i1l733:	
	
i1l2904:	
;acps.c: 233: else if( Value == 3) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 1;RC4 = 0;RC5 = 0;RC6 = 1;}
	movlw	03h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u251_21
	goto	u251_20
u251_21:
	goto	i1l2908
u251_20:
	
i1l2906:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l748
	line	234
	
i1l735:	
	
i1l2908:	
;acps.c: 234: else if( Value == 4) {RD7 = 0; RD6 = 1;RC2 = 1;RC3 = 0;RC4 = 0;RC5 = 1;RC6 = 1;}
	movlw	04h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u252_21
	goto	u252_20
u252_21:
	goto	i1l2912
u252_20:
	
i1l2910:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l748
	line	235
	
i1l737:	
	
i1l2912:	
;acps.c: 235: else if( Value == 5) {RD7 = 1; RD6 = 0;RC2 = 1;RC3 = 1;RC4 = 0;RC5 = 1;RC6 = 1;}
	movlw	05h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u253_21
	goto	u253_20
u253_21:
	goto	i1l2916
u253_20:
	
i1l2914:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l748
	line	236
	
i1l739:	
	
i1l2916:	
;acps.c: 236: else if( Value == 6) {RD7 = 1; RD6 = 0;RC2 = 1;RC3 = 1;RC4 = 1;RC5 = 1;RC6 = 1;}
	movlw	06h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u254_21
	goto	u254_20
u254_21:
	goto	i1l2920
u254_20:
	
i1l2918:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bsf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l748
	line	237
	
i1l741:	
	
i1l2920:	
;acps.c: 237: else if( Value == 7) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 0;RC4 = 0;RC5 = 0;RC6 = 0;}
	movlw	07h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u255_21
	goto	u255_20
u255_21:
	goto	i1l2924
u255_20:
	
i1l2922:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bcf	(62/8),(62)&7
	goto	i1l748
	line	238
	
i1l743:	
	
i1l2924:	
;acps.c: 238: else if( Value == 8) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 1;RC4 = 1;RC5 = 1;RC6 = 1;}
	movlw	08h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l2928
u256_20:
	
i1l2926:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bsf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l748
	line	239
	
i1l745:	
	
i1l2928:	
;acps.c: 239: else if( Value == 9) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 1;RC4 = 0;RC5 = 1;RC6 = 1;}
	movlw	09h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u257_21
	goto	u257_20
u257_21:
	goto	i1l748
u257_20:
	
i1l2930:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l748
	
i1l747:	
	goto	i1l748
	line	242
	
i1l746:	
	goto	i1l748
	
i1l744:	
	goto	i1l748
	
i1l742:	
	goto	i1l748
	
i1l740:	
	goto	i1l748
	
i1l738:	
	goto	i1l748
	
i1l736:	
	goto	i1l748
	
i1l734:	
	goto	i1l748
	
i1l732:	
	goto	i1l748
	
i1l730:	
	
i1l748:	
	return
	opt stack 0
GLOBAL	__end_of_funcDisplay
	__end_of_funcDisplay:
;; =============== function _funcDisplay ends ============

	signat	_funcDisplay,8312
psect	text188,local,class=CODE,delta=2
global __ptext188
__ptext188:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
