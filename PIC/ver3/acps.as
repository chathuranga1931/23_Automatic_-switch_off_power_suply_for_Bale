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
	FNCALL	_main,_funcDispLine
	FNCALL	_main,_funcCheckBtn
	FNCALL	_main,_funcSetDigit
	FNCALL	_main,___wmul
	FNCALL	_funcSetDigit,___awmod
	FNCALL	_funcSetDigit,___awdiv
	FNROOT	_main
	FNCALL	_isr,_funcDisplay
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_vblBllinkDigitNo
	global	_vblSetDig0
	global	_vblSetDig1
	global	_vblSetDig2
	global	_vblSetDig3
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
	line	43

;initializer for _vblBllinkDigitNo
	retlw	05h
	retlw	0

	line	37

;initializer for _vblSetDig0
	retlw	01h
	retlw	0


;initializer for _vblSetDig1
	retlw	02h
	retlw	0


;initializer for _vblSetDig2
	retlw	03h
	retlw	0


;initializer for _vblSetDig3
	retlw	04h
	retlw	0

	global	_hour
	global	_minute
	global	_second
	global	_vblRemainHour
	global	_vblRemainMinute
	global	_vblSetHour
	global	_vblSetMinute
	global	_vblStatusOn
	global	_msecond
	global	_vblDisplayCount
	global	_vblSegStat
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

	global	_vblMode
_vblMode:
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
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
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
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
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

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_vblSegStat:
       ds      1

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

_vblRemainHour:
       ds      2

_vblRemainMinute:
       ds      2

_vblSetHour:
       ds      2

_vblSetMinute:
       ds      2

_vblStatusOn:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
	line	43
_vblBllinkDigitNo:
       ds      2

psect	dataBANK0
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
	line	37
_vblSetDig0:
       ds      2

psect	dataBANK0
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
_vblSetDig1:
       ds      2

psect	dataBANK0
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
_vblSetDig2:
       ds      2

psect	dataBANK0
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
_vblSetDig3:
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

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
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
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+10)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_funcDispLine
?_funcDispLine:	; 0 bytes @ 0x0
	global	?_funcCheckBtn
?_funcCheckBtn:	; 0 bytes @ 0x0
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
	global	??_funcDispLine
??_funcDispLine:	; 0 bytes @ 0x0
	global	??_funcCheckBtn
??_funcCheckBtn:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
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
	global	?_funcSetDigit
?_funcSetDigit:	; 0 bytes @ 0x9
	global	funcSetDigit@High
funcSetDigit@High:	; 2 bytes @ 0x9
	ds	2
	global	funcSetDigit@Law
funcSetDigit@Law:	; 2 bytes @ 0xB
	ds	2
	global	??_funcSetDigit
??_funcSetDigit:	; 0 bytes @ 0xD
	global	??_main
??_main:	; 0 bytes @ 0xD
	ds	2
;;Data sizes: Strings 0, constant 0, data 10, bss 20, persistent 10 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          13      8      13
;; BANK0           80     15      51
;; BANK1           80      0       0
;; BANK3           85      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
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
;;   _main->_funcSetDigit
;;   _funcSetDigit->___awdiv
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0     776
;;                                             13 BANK0      2     2      0
;;                       _funcDispLine
;;                       _funcCheckBtn
;;                       _funcSetDigit
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (1) _funcSetDigit                                         4     0      4     684
;;                                              9 BANK0      4     0      4
;;                            ___awmod
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 BANK0      9     5      4
;; ---------------------------------------------------------------------------------
;; (1) ___wmul                                               6     2      4      92
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (1) _funcCheckBtn                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _funcDispLine                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _isr                                                  4     4      0     330
;;                                              4 COMMON     4     4      0
;;                        _funcDisplay
;; ---------------------------------------------------------------------------------
;; (4) _funcDisplay                                          4     0      4     330
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _funcDispLine
;;   _funcCheckBtn
;;   _funcSetDigit
;;     ___awmod
;;     ___awdiv
;;   ___wmul
;;
;; _isr (ROOT)
;;   _funcDisplay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               55      0       0       9        0.0%
;;BITBANK3            55      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      46      12        0.0%
;;ABS                  0      0      40       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       6       2        0.0%
;;BANK0               50      F      33       5       63.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               D      8       D       1      100.0%
;;BITCOMMON            D      0       1       0        7.7%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 53 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_funcDispLine
;;		_funcCheckBtn
;;		_funcSetDigit
;;		___wmul
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
	line	53
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	54
	
l3565:	
;acps.c: 54: T1CKPS1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(133/8),(133)&7
	line	55
;acps.c: 55: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	57
;acps.c: 57: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	58
;acps.c: 58: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	59
;acps.c: 59: T1OSCEN = 1;
	bsf	(131/8),(131)&7
	line	61
	
l3567:	
;acps.c: 61: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	62
;acps.c: 62: TMR1H = 0x3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	64
	
l3569:	
;acps.c: 64: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	65
	
l3571:	
;acps.c: 65: GIE = 1;
	bsf	(95/8),(95)&7
	line	66
	
l3573:	
;acps.c: 66: PEIE = 1;
	bsf	(94/8),(94)&7
	line	68
;acps.c: 68: ADCON1 = 0b00000110;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	70
;acps.c: 70: TRISA = 0b11011111;
	movlw	(0DFh)
	movwf	(133)^080h	;volatile
	line	71
;acps.c: 71: PORTA = 0b11011111;
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	73
	
l3575:	
;acps.c: 73: TRISC = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	74
	
l3577:	
;acps.c: 74: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	76
	
l3579:	
;acps.c: 76: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	77
	
l3581:	
;acps.c: 77: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	79
	
l3583:	
;acps.c: 79: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	80
	
l3585:	
;acps.c: 80: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	82
	
l3587:	
;acps.c: 82: TRISE = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	83
	
l3589:	
;acps.c: 83: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	85
	
l3591:	
;acps.c: 85: funcDispLine();
	fcall	_funcDispLine
	line	86
	
l3593:	
;acps.c: 86: vblMode = 3;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblMode)
	movlw	high(03h)
	movwf	((_vblMode))+1
	line	88
;acps.c: 88: while(1)
	
l736:	
	line	103
;acps.c: 89: {
;acps.c: 103: funcCheckBtn();
	fcall	_funcCheckBtn
	line	105
;acps.c: 105: switch (vblMode)
	goto	l3779
	line	107
;acps.c: 106: {
;acps.c: 107: case 0:
	
l738:	
	line	108
	
l3595:	
;acps.c: 108: funcSetDigit(vblSetHour, vblSetMinute);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vblSetHour+1),w
	clrf	(?_funcSetDigit+1)
	addwf	(?_funcSetDigit+1)
	movf	(_vblSetHour),w
	clrf	(?_funcSetDigit)
	addwf	(?_funcSetDigit)

	movf	(_vblSetMinute+1),w
	clrf	1+(?_funcSetDigit)+02h
	addwf	1+(?_funcSetDigit)+02h
	movf	(_vblSetMinute),w
	clrf	0+(?_funcSetDigit)+02h
	addwf	0+(?_funcSetDigit)+02h

	fcall	_funcSetDigit
	line	109
	
l3597:	
;acps.c: 109: vblBllinkDigitNo = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_vblBllinkDigitNo)
	clrf	(_vblBllinkDigitNo+1)
	line	110
	
l3599:	
;acps.c: 110: RD3 = 0;
	bcf	(67/8),(67)&7
	line	111
	
l3601:	
;acps.c: 111: RD1 = 0;
	bcf	(65/8),(65)&7
	line	112
	
l3603:	
;acps.c: 112: RD0 = 0;
	bcf	(64/8),(64)&7
	line	113
;acps.c: 113: while( RA3 == 1 )
	goto	l739
	
l740:	
	line	115
;acps.c: 114: {
;acps.c: 115: if( RA1 ==0 )
	btfsc	(41/8),(41)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l741
u3730:
	line	117
	
l3605:	
;acps.c: 116: {
;acps.c: 117: if ( vblBllinkDigitNo==0 )
	movf	((_vblBllinkDigitNo+1)),w
	iorwf	((_vblBllinkDigitNo)),w
	skipz
	goto	u3741
	goto	u3740
u3741:
	goto	l3613
u3740:
	line	119
	
l3607:	
;acps.c: 118: {
;acps.c: 119: if( vblDig0 > 8) vblDig0 = 0;
	movf	(_vblDig0+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3755
	movlw	low(09h)
	subwf	(_vblDig0),w
u3755:

	skipc
	goto	u3751
	goto	u3750
u3751:
	goto	l3611
u3750:
	
l3609:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_vblDig0)
	clrf	(_vblDig0+1)
	goto	l757
	line	120
	
l743:	
	
l3611:	
;acps.c: 120: else vblDig0++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig0),f
	skipnc
	incf	(_vblDig0+1),f
	movlw	high(01h)
	addwf	(_vblDig0+1),f
	goto	l757
	
l744:	
	line	121
;acps.c: 121: }
	goto	l757
	line	122
	
l742:	
	
l3613:	
;acps.c: 122: else if ( vblBllinkDigitNo==1 )
	movlw	01h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u3761
	goto	u3760
u3761:
	goto	l3621
u3760:
	line	124
	
l3615:	
;acps.c: 123: {
;acps.c: 124: if( vblDig1 > 8) vblDig1 = 0;
	movf	(_vblDig1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3775
	movlw	low(09h)
	subwf	(_vblDig1),w
u3775:

	skipc
	goto	u3771
	goto	u3770
u3771:
	goto	l3619
u3770:
	
l3617:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_vblDig1)
	clrf	(_vblDig1+1)
	goto	l757
	line	125
	
l747:	
	
l3619:	
;acps.c: 125: else vblDig1++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig1),f
	skipnc
	incf	(_vblDig1+1),f
	movlw	high(01h)
	addwf	(_vblDig1+1),f
	goto	l757
	
l748:	
	line	126
;acps.c: 126: }
	goto	l757
	line	127
	
l746:	
	
l3621:	
;acps.c: 127: else if ( vblBllinkDigitNo==2 )
	movlw	02h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u3781
	goto	u3780
u3781:
	goto	l3629
u3780:
	line	129
	
l3623:	
;acps.c: 128: {
;acps.c: 129: if( vblDig2 > 8) vblDig2 = 0;
	movf	(_vblDig2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3795
	movlw	low(09h)
	subwf	(_vblDig2),w
u3795:

	skipc
	goto	u3791
	goto	u3790
u3791:
	goto	l3627
u3790:
	
l3625:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_vblDig2)
	clrf	(_vblDig2+1)
	goto	l757
	line	130
	
l751:	
	
l3627:	
;acps.c: 130: else vblDig2++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig2),f
	skipnc
	incf	(_vblDig2+1),f
	movlw	high(01h)
	addwf	(_vblDig2+1),f
	goto	l757
	
l752:	
	line	131
;acps.c: 131: }
	goto	l757
	line	132
	
l750:	
	
l3629:	
;acps.c: 132: else if ( vblBllinkDigitNo==3 )
	movlw	03h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u3801
	goto	u3800
u3801:
	goto	l757
u3800:
	line	134
	
l3631:	
;acps.c: 133: {
;acps.c: 134: if( vblDig3 > 8) vblDig3 = 0;
	movf	(_vblDig3+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3815
	movlw	low(09h)
	subwf	(_vblDig3),w
u3815:

	skipc
	goto	u3811
	goto	u3810
u3811:
	goto	l3635
u3810:
	
l3633:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_vblDig3)
	clrf	(_vblDig3+1)
	goto	l757
	line	135
	
l755:	
	
l3635:	
;acps.c: 135: else vblDig3++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig3),f
	skipnc
	incf	(_vblDig3+1),f
	movlw	high(01h)
	addwf	(_vblDig3+1),f
	goto	l757
	
l756:	
	goto	l757
	line	136
	
l754:	
	goto	l757
	line	137
	
l753:	
	goto	l757
	
l749:	
	goto	l757
	
l745:	
;acps.c: 136: }
;acps.c: 137: while( RA1 ==0 );
	goto	l757
	
l758:	
	
l757:	
	btfss	(41/8),(41)&7
	goto	u3821
	goto	u3820
u3821:
	goto	l757
u3820:
	goto	l739
	
l759:	
	line	138
;acps.c: 138: }
	goto	l739
	line	139
	
l741:	
;acps.c: 139: else if( RA2 ==0 )
	btfsc	(42/8),(42)&7
	goto	u3831
	goto	u3830
u3831:
	goto	l761
u3830:
	line	141
	
l3637:	
;acps.c: 140: {
;acps.c: 141: if ( vblBllinkDigitNo==0 )
	movf	((_vblBllinkDigitNo+1)),w
	iorwf	((_vblBllinkDigitNo)),w
	skipz
	goto	u3841
	goto	u3840
u3841:
	goto	l3645
u3840:
	line	143
	
l3639:	
;acps.c: 142: {
;acps.c: 143: if( vblDig0 < 1) vblDig0 = 9;
	movf	(_vblDig0+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3855
	movlw	low(01h)
	subwf	(_vblDig0),w
u3855:

	skipnc
	goto	u3851
	goto	u3850
u3851:
	goto	l3643
u3850:
	
l3641:	
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblDig0)
	movlw	high(09h)
	movwf	((_vblDig0))+1
	goto	l777
	line	144
	
l763:	
	
l3643:	
;acps.c: 144: else vblDig0--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig0),f
	skipnc
	incf	(_vblDig0+1),f
	movlw	high(-1)
	addwf	(_vblDig0+1),f
	goto	l777
	
l764:	
	line	145
;acps.c: 145: }
	goto	l777
	line	146
	
l762:	
	
l3645:	
;acps.c: 146: else if ( vblBllinkDigitNo==1 )
	movlw	01h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u3861
	goto	u3860
u3861:
	goto	l3653
u3860:
	line	148
	
l3647:	
;acps.c: 147: {
;acps.c: 148: if( vblDig1 < 1) vblDig1 = 9;
	movf	(_vblDig1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3875
	movlw	low(01h)
	subwf	(_vblDig1),w
u3875:

	skipnc
	goto	u3871
	goto	u3870
u3871:
	goto	l3651
u3870:
	
l3649:	
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblDig1)
	movlw	high(09h)
	movwf	((_vblDig1))+1
	goto	l777
	line	149
	
l767:	
	
l3651:	
;acps.c: 149: else vblDig1--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig1),f
	skipnc
	incf	(_vblDig1+1),f
	movlw	high(-1)
	addwf	(_vblDig1+1),f
	goto	l777
	
l768:	
	line	150
;acps.c: 150: }
	goto	l777
	line	151
	
l766:	
	
l3653:	
;acps.c: 151: else if ( vblBllinkDigitNo==2 )
	movlw	02h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l3661
u3880:
	line	153
	
l3655:	
;acps.c: 152: {
;acps.c: 153: if( vblDig2 < 1) vblDig2 = 9;
	movf	(_vblDig2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3895
	movlw	low(01h)
	subwf	(_vblDig2),w
u3895:

	skipnc
	goto	u3891
	goto	u3890
u3891:
	goto	l3659
u3890:
	
l3657:	
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblDig2)
	movlw	high(09h)
	movwf	((_vblDig2))+1
	goto	l777
	line	154
	
l771:	
	
l3659:	
;acps.c: 154: else vblDig2--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig2),f
	skipnc
	incf	(_vblDig2+1),f
	movlw	high(-1)
	addwf	(_vblDig2+1),f
	goto	l777
	
l772:	
	line	155
;acps.c: 155: }
	goto	l777
	line	156
	
l770:	
	
l3661:	
;acps.c: 156: else if ( vblBllinkDigitNo==3 )
	movlw	03h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u3901
	goto	u3900
u3901:
	goto	l777
u3900:
	line	158
	
l3663:	
;acps.c: 157: {
;acps.c: 158: if( vblDig3 < 1) vblDig3 = 9;
	movf	(_vblDig3+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3915
	movlw	low(01h)
	subwf	(_vblDig3),w
u3915:

	skipnc
	goto	u3911
	goto	u3910
u3911:
	goto	l3667
u3910:
	
l3665:	
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblDig3)
	movlw	high(09h)
	movwf	((_vblDig3))+1
	goto	l777
	line	159
	
l775:	
	
l3667:	
;acps.c: 159: else vblDig3--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig3),f
	skipnc
	incf	(_vblDig3+1),f
	movlw	high(-1)
	addwf	(_vblDig3+1),f
	goto	l777
	
l776:	
	goto	l777
	line	160
	
l774:	
	goto	l777
	line	161
	
l773:	
	goto	l777
	
l769:	
	goto	l777
	
l765:	
;acps.c: 160: }
;acps.c: 161: while( RA2 ==0 );
	goto	l777
	
l778:	
	
l777:	
	btfss	(42/8),(42)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l777
u3920:
	goto	l739
	
l779:	
	line	162
;acps.c: 162: }
	goto	l739
	line	163
	
l761:	
;acps.c: 163: else if( RA0 ==0 )
	btfsc	(40/8),(40)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l739
u3930:
	line	165
	
l3669:	
;acps.c: 164: {
;acps.c: 165: if ( vblBllinkDigitNo>2) vblBllinkDigitNo = 0;
	movf	(_vblBllinkDigitNo+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3945
	movlw	low(03h)
	subwf	(_vblBllinkDigitNo),w
u3945:

	skipc
	goto	u3941
	goto	u3940
u3941:
	goto	l3673
u3940:
	
l3671:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_vblBllinkDigitNo)
	clrf	(_vblBllinkDigitNo+1)
	goto	l784
	line	166
	
l782:	
	
l3673:	
;acps.c: 166: else vblBllinkDigitNo++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblBllinkDigitNo),f
	skipnc
	incf	(_vblBllinkDigitNo+1),f
	movlw	high(01h)
	addwf	(_vblBllinkDigitNo+1),f
	goto	l784
	
l783:	
	line	167
;acps.c: 167: while( RA0 ==0 );
	goto	l784
	
l785:	
	
l784:	
	btfss	(40/8),(40)&7
	goto	u3951
	goto	u3950
u3951:
	goto	l784
u3950:
	goto	l739
	
l786:	
	goto	l739
	line	168
	
l781:	
	goto	l739
	line	169
	
l780:	
	goto	l739
	
l760:	
	
l739:	
	line	113
	btfsc	(43/8),(43)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l740
u3960:
	goto	l788
	
l787:	
	line	170
;acps.c: 168: }
;acps.c: 169: }
;acps.c: 170: while( RA3 ==0 );
	goto	l788
	
l789:	
	
l788:	
	btfss	(43/8),(43)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l788
u3970:
	goto	l3675
	
l790:	
	line	171
	
l3675:	
;acps.c: 171: vblMode = 1;
	movlw	low(01h)
	movwf	(_vblMode)
	movlw	high(01h)
	movwf	((_vblMode))+1
	line	172
	
l3677:	
;acps.c: 172: vblSetMinute = vblDig1*10 + vblDig0;
	movf	(_vblDig1+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(_vblDig1),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vblDig0),w
	addwf	(0+(?___wmul)),w
	movwf	(_vblSetMinute)
	movf	(_vblDig0+1),w
	skipnc
	incf	(_vblDig0+1),w
	addwf	(1+(?___wmul)),w
	movwf	1+(_vblSetMinute)
	line	173
	
l3679:	
;acps.c: 173: vblSetHour = vblDig3*10 + vblDig2;
	movf	(_vblDig3+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(_vblDig3),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vblDig2),w
	addwf	(0+(?___wmul)),w
	movwf	(_vblSetHour)
	movf	(_vblDig2+1),w
	skipnc
	incf	(_vblDig2+1),w
	addwf	(1+(?___wmul)),w
	movwf	1+(_vblSetHour)
	line	175
;acps.c: 175: break;
	goto	l736
	line	176
;acps.c: 176: case 1:
	
l792:	
	line	177
	
l3681:	
;acps.c: 177: funcSetDigit(vblSetHour, vblSetMinute);
	movf	(_vblSetHour+1),w
	clrf	(?_funcSetDigit+1)
	addwf	(?_funcSetDigit+1)
	movf	(_vblSetHour),w
	clrf	(?_funcSetDigit)
	addwf	(?_funcSetDigit)

	movf	(_vblSetMinute+1),w
	clrf	1+(?_funcSetDigit)+02h
	addwf	1+(?_funcSetDigit)+02h
	movf	(_vblSetMinute),w
	clrf	0+(?_funcSetDigit)+02h
	addwf	0+(?_funcSetDigit)+02h

	fcall	_funcSetDigit
	line	178
	
l3683:	
;acps.c: 178: vblBllinkDigitNo = 5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblBllinkDigitNo)
	movlw	high(05h)
	movwf	((_vblBllinkDigitNo))+1
	line	179
	
l3685:	
;acps.c: 179: RD1 = 0;
	bcf	(65/8),(65)&7
	line	180
	
l3687:	
;acps.c: 180: RD0 = 1;
	bsf	(64/8),(64)&7
	line	181
	
l3689:	
;acps.c: 181: funcCheckBtn();
	fcall	_funcCheckBtn
	line	182
	
l3691:	
;acps.c: 182: if( RA3 ==0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(43/8),(43)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l736
u3980:
	line	184
	
l3693:	
;acps.c: 183: {
;acps.c: 184: second = 0;
	clrf	(_second)
	clrf	(_second+1)
	line	185
;acps.c: 185: minute = 0;
	clrf	(_minute)
	clrf	(_minute+1)
	line	186
;acps.c: 186: hour = 0;
	clrf	(_hour)
	clrf	(_hour+1)
	line	187
;acps.c: 187: while( RA3 ==0 );
	goto	l794
	
l795:	
	
l794:	
	btfss	(43/8),(43)&7
	goto	u3991
	goto	u3990
u3991:
	goto	l794
u3990:
	goto	l797
	
l796:	
	line	188
;acps.c: 188: while( RA3 ==1 )
	goto	l797
	
l798:	
	line	190
;acps.c: 189: {
;acps.c: 190: RD2 = 1;
	bsf	(66/8),(66)&7
	line	191
;acps.c: 191: RD3 = 1;
	bsf	(67/8),(67)&7
	line	192
	
l3695:	
;acps.c: 192: vblRemainMinute = vblSetMinute - minute;
	comf	(_minute),w
	movwf	(??_main+0)+0
	comf	(_minute+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(_vblSetMinute),w
	addwf	0+(??_main+0)+0,w
	movwf	(_vblRemainMinute)
	movf	(_vblSetMinute+1),w
	skipnc
	incf	(_vblSetMinute+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_vblRemainMinute)
	line	193
;acps.c: 193: vblRemainHour = vblSetHour - hour;
	comf	(_hour),w
	movwf	(??_main+0)+0
	comf	(_hour+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(_vblSetHour),w
	addwf	0+(??_main+0)+0,w
	movwf	(_vblRemainHour)
	movf	(_vblSetHour+1),w
	skipnc
	incf	(_vblSetHour+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_vblRemainHour)
	line	194
;acps.c: 194: while(hour != vblSetHour || minute != vblSetMinute)
	goto	l3705
	
l800:	
	line	196
	
l3697:	
;acps.c: 195: {
;acps.c: 196: vblRemainMinute = vblSetMinute - minute;
	comf	(_minute),w
	movwf	(??_main+0)+0
	comf	(_minute+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(_vblSetMinute),w
	addwf	0+(??_main+0)+0,w
	movwf	(_vblRemainMinute)
	movf	(_vblSetMinute+1),w
	skipnc
	incf	(_vblSetMinute+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_vblRemainMinute)
	line	197
;acps.c: 197: vblRemainHour = vblSetHour - hour;
	comf	(_hour),w
	movwf	(??_main+0)+0
	comf	(_hour+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(_vblSetHour),w
	addwf	0+(??_main+0)+0,w
	movwf	(_vblRemainHour)
	movf	(_vblSetHour+1),w
	skipnc
	incf	(_vblSetHour+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_vblRemainHour)
	line	198
	
l3699:	
;acps.c: 198: funcSetDigit(vblRemainHour, vblRemainMinute);
	movf	(_vblRemainHour+1),w
	clrf	(?_funcSetDigit+1)
	addwf	(?_funcSetDigit+1)
	movf	(_vblRemainHour),w
	clrf	(?_funcSetDigit)
	addwf	(?_funcSetDigit)

	movf	(_vblRemainMinute+1),w
	clrf	1+(?_funcSetDigit)+02h
	addwf	1+(?_funcSetDigit)+02h
	movf	(_vblRemainMinute),w
	clrf	0+(?_funcSetDigit)+02h
	addwf	0+(?_funcSetDigit)+02h

	fcall	_funcSetDigit
	line	199
	
l3701:	
;acps.c: 199: if( RA3 ==0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(43/8),(43)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l3705
u4000:
	line	201
	
l3703:	
;acps.c: 200: {
;acps.c: 201: hour = vblSetHour;
	movf	(_vblSetHour+1),w
	clrf	(_hour+1)
	addwf	(_hour+1)
	movf	(_vblSetHour),w
	clrf	(_hour)
	addwf	(_hour)

	line	202
;acps.c: 202: minute = vblSetMinute;
	movf	(_vblSetMinute+1),w
	clrf	(_minute+1)
	addwf	(_minute+1)
	movf	(_vblSetMinute),w
	clrf	(_minute)
	addwf	(_minute)

	goto	l3705
	line	203
	
l801:	
	goto	l3705
	line	204
	
l799:	
	line	194
	
l3705:	
	movf	(_vblSetHour+1),w
	xorwf	(_hour+1),w
	skipz
	goto	u4015
	movf	(_vblSetHour),w
	xorwf	(_hour),w
u4015:

	skipz
	goto	u4011
	goto	u4010
u4011:
	goto	l3697
u4010:
	
l3707:	
	movf	(_vblSetMinute+1),w
	xorwf	(_minute+1),w
	skipz
	goto	u4025
	movf	(_vblSetMinute),w
	xorwf	(_minute),w
u4025:

	skipz
	goto	u4021
	goto	u4020
u4021:
	goto	l3697
u4020:
	goto	l803
	
l802:	
	line	205
;acps.c: 203: }
;acps.c: 204: }
;acps.c: 205: while( RA3 ==0 );
	goto	l803
	
l804:	
	
l803:	
	btfss	(43/8),(43)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l803
u4030:
	goto	l3709
	
l805:	
	line	206
	
l3709:	
;acps.c: 206: funcDispLine();
	fcall	_funcDispLine
	line	207
	
l3711:	
;acps.c: 207: vblMode = 3;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblMode)
	movlw	high(03h)
	movwf	((_vblMode))+1
	line	208
	
l3713:	
;acps.c: 208: RD3 = 0;
	bcf	(67/8),(67)&7
	line	209
	
l3715:	
;acps.c: 209: RD2 = 0;
	bcf	(66/8),(66)&7
	line	210
;acps.c: 210: break ;
	goto	l807
	line	211
	
l797:	
	line	188
	btfsc	(43/8),(43)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l798
u4040:
	goto	l807
	
l806:	
	line	212
;acps.c: 211: }
;acps.c: 212: while( RA3 ==0 );
	goto	l807
	
l808:	
	
l807:	
	btfss	(43/8),(43)&7
	goto	u4051
	goto	u4050
u4051:
	goto	l807
u4050:
	goto	l736
	
l809:	
	goto	l736
	line	213
	
l793:	
	line	214
;acps.c: 213: }
;acps.c: 214: break;
	goto	l736
	line	215
;acps.c: 215: case 2:
	
l810:	
	line	216
	
l3717:	
;acps.c: 216: funcSetDigit(vblSetHour, vblSetMinute);
	movf	(_vblSetHour+1),w
	clrf	(?_funcSetDigit+1)
	addwf	(?_funcSetDigit+1)
	movf	(_vblSetHour),w
	clrf	(?_funcSetDigit)
	addwf	(?_funcSetDigit)

	movf	(_vblSetMinute+1),w
	clrf	1+(?_funcSetDigit)+02h
	addwf	1+(?_funcSetDigit)+02h
	movf	(_vblSetMinute),w
	clrf	0+(?_funcSetDigit)+02h
	addwf	0+(?_funcSetDigit)+02h

	fcall	_funcSetDigit
	line	217
	
l3719:	
;acps.c: 217: vblBllinkDigitNo = 5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblBllinkDigitNo)
	movlw	high(05h)
	movwf	((_vblBllinkDigitNo))+1
	line	218
	
l3721:	
;acps.c: 218: RD1 = 1;
	bsf	(65/8),(65)&7
	line	219
	
l3723:	
;acps.c: 219: RD0 = 0;
	bcf	(64/8),(64)&7
	line	220
	
l3725:	
;acps.c: 220: funcCheckBtn();
	fcall	_funcCheckBtn
	line	221
	
l3727:	
;acps.c: 221: if( RA3 ==0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(43/8),(43)&7
	goto	u4061
	goto	u4060
u4061:
	goto	l736
u4060:
	line	223
	
l3729:	
;acps.c: 222: {
;acps.c: 223: second = 0;
	clrf	(_second)
	clrf	(_second+1)
	line	224
;acps.c: 224: minute = 0;
	clrf	(_minute)
	clrf	(_minute+1)
	line	225
;acps.c: 225: hour = 0;
	clrf	(_hour)
	clrf	(_hour+1)
	line	226
;acps.c: 226: while( RA3 ==0 );
	goto	l812
	
l813:	
	
l812:	
	btfss	(43/8),(43)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l812
u4070:
	goto	l815
	
l814:	
	line	227
;acps.c: 227: while( RA3 ==1 );
	goto	l815
	
l816:	
	
l815:	
	btfsc	(43/8),(43)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l815
u4080:
	
l817:	
	line	229
;acps.c: 228: {
;acps.c: 229: RD2 = 1;
	bsf	(66/8),(66)&7
	line	230
;acps.c: 230: RD3 = 0;
	bcf	(67/8),(67)&7
	line	231
	
l3731:	
;acps.c: 231: vblRemainMinute = vblSetMinute - minute;
	comf	(_minute),w
	movwf	(??_main+0)+0
	comf	(_minute+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(_vblSetMinute),w
	addwf	0+(??_main+0)+0,w
	movwf	(_vblRemainMinute)
	movf	(_vblSetMinute+1),w
	skipnc
	incf	(_vblSetMinute+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_vblRemainMinute)
	line	232
;acps.c: 232: vblRemainHour = vblSetHour - hour;
	comf	(_hour),w
	movwf	(??_main+0)+0
	comf	(_hour+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(_vblSetHour),w
	addwf	0+(??_main+0)+0,w
	movwf	(_vblRemainHour)
	movf	(_vblSetHour+1),w
	skipnc
	incf	(_vblSetHour+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_vblRemainHour)
	line	233
;acps.c: 233: while( hour != vblSetHour || minute != vblSetMinute)
	goto	l3741
	
l819:	
	line	235
	
l3733:	
;acps.c: 234: {
;acps.c: 235: vblRemainMinute = vblSetMinute - minute;
	comf	(_minute),w
	movwf	(??_main+0)+0
	comf	(_minute+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(_vblSetMinute),w
	addwf	0+(??_main+0)+0,w
	movwf	(_vblRemainMinute)
	movf	(_vblSetMinute+1),w
	skipnc
	incf	(_vblSetMinute+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_vblRemainMinute)
	line	236
;acps.c: 236: vblRemainHour = vblSetHour - hour;
	comf	(_hour),w
	movwf	(??_main+0)+0
	comf	(_hour+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(_vblSetHour),w
	addwf	0+(??_main+0)+0,w
	movwf	(_vblRemainHour)
	movf	(_vblSetHour+1),w
	skipnc
	incf	(_vblSetHour+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_vblRemainHour)
	line	237
	
l3735:	
;acps.c: 237: funcSetDigit(vblRemainHour, vblRemainMinute);
	movf	(_vblRemainHour+1),w
	clrf	(?_funcSetDigit+1)
	addwf	(?_funcSetDigit+1)
	movf	(_vblRemainHour),w
	clrf	(?_funcSetDigit)
	addwf	(?_funcSetDigit)

	movf	(_vblRemainMinute+1),w
	clrf	1+(?_funcSetDigit)+02h
	addwf	1+(?_funcSetDigit)+02h
	movf	(_vblRemainMinute),w
	clrf	0+(?_funcSetDigit)+02h
	addwf	0+(?_funcSetDigit)+02h

	fcall	_funcSetDigit
	line	238
	
l3737:	
;acps.c: 238: if( RA3 ==0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(43/8),(43)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l3741
u4090:
	line	240
	
l3739:	
;acps.c: 239: {
;acps.c: 240: hour = vblSetHour;
	movf	(_vblSetHour+1),w
	clrf	(_hour+1)
	addwf	(_hour+1)
	movf	(_vblSetHour),w
	clrf	(_hour)
	addwf	(_hour)

	line	241
;acps.c: 241: minute = vblSetMinute;
	movf	(_vblSetMinute+1),w
	clrf	(_minute+1)
	addwf	(_minute+1)
	movf	(_vblSetMinute),w
	clrf	(_minute)
	addwf	(_minute)

	goto	l3741
	line	242
	
l820:	
	goto	l3741
	line	243
	
l818:	
	line	233
	
l3741:	
	movf	(_vblSetHour+1),w
	xorwf	(_hour+1),w
	skipz
	goto	u4105
	movf	(_vblSetHour),w
	xorwf	(_hour),w
u4105:

	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l3733
u4100:
	
l3743:	
	movf	(_vblSetMinute+1),w
	xorwf	(_minute+1),w
	skipz
	goto	u4115
	movf	(_vblSetMinute),w
	xorwf	(_minute),w
u4115:

	skipz
	goto	u4111
	goto	u4110
u4111:
	goto	l3733
u4110:
	goto	l822
	
l821:	
	line	244
;acps.c: 242: }
;acps.c: 243: }
;acps.c: 244: while( RA3 ==0 );
	goto	l822
	
l823:	
	
l822:	
	btfss	(43/8),(43)&7
	goto	u4121
	goto	u4120
u4121:
	goto	l822
u4120:
	goto	l3745
	
l824:	
	line	245
	
l3745:	
;acps.c: 245: funcDispLine();
	fcall	_funcDispLine
	line	246
	
l3747:	
;acps.c: 246: vblMode = 4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblMode)
	movlw	high(04h)
	movwf	((_vblMode))+1
	line	247
	
l3749:	
;acps.c: 247: RD3 = 1;
	bsf	(67/8),(67)&7
	line	248
	
l3751:	
;acps.c: 248: RD2 = 0;
	bcf	(66/8),(66)&7
	line	249
;acps.c: 249: break ;
	goto	l736
	line	252
	
l811:	
	line	254
;acps.c: 250: }
;acps.c: 252: }
;acps.c: 254: break;
	goto	l736
	line	255
;acps.c: 255: case 3:
	
l825:	
	line	256
	
l3753:	
;acps.c: 256: funcDispLine();
	fcall	_funcDispLine
	line	257
	
l3755:	
;acps.c: 257: vblBllinkDigitNo = 5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblBllinkDigitNo)
	movlw	high(05h)
	movwf	((_vblBllinkDigitNo))+1
	line	258
	
l3757:	
;acps.c: 258: funcCheckBtn();
	fcall	_funcCheckBtn
	line	259
	
l3759:	
;acps.c: 259: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	260
	
l3761:	
;acps.c: 260: RD1 = 0;
	bcf	(65/8),(65)&7
	line	261
	
l3763:	
;acps.c: 261: RD0 = 0;
	bcf	(64/8),(64)&7
	line	272
;acps.c: 272: break;
	goto	l736
	line	273
;acps.c: 273: case 4:
	
l826:	
	line	274
	
l3765:	
;acps.c: 274: funcDispLine();
	fcall	_funcDispLine
	line	275
	
l3767:	
;acps.c: 275: vblBllinkDigitNo = 5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblBllinkDigitNo)
	movlw	high(05h)
	movwf	((_vblBllinkDigitNo))+1
	line	276
	
l3769:	
;acps.c: 276: funcCheckBtn();
	fcall	_funcCheckBtn
	line	277
	
l3771:	
;acps.c: 277: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	278
	
l3773:	
;acps.c: 278: RD1 = 0;
	bcf	(65/8),(65)&7
	line	279
	
l3775:	
;acps.c: 279: RD0 = 0;
	bcf	(64/8),(64)&7
	line	290
;acps.c: 290: break;
	goto	l736
	line	291
	
l3777:	
;acps.c: 291: }
	goto	l736
	line	105
	
l737:	
	
l3779:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             5     6 (fixed)
; spacedrange            8     9 (fixed)
; locatedrange           1     3 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (_vblMode+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3805
	goto	l736
	opt asmopt_on
	
l3805:	
; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           23     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             9     6 (fixed)
; spacedrange           16     9 (fixed)
; locatedrange           5     3 (fixed)
;	Chosen strategy is simple_byte

	movf (_vblMode),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3595
	xorlw	1^0	; case 1
	skipnz
	goto	l3681
	xorlw	2^1	; case 2
	skipnz
	goto	l3717
	xorlw	3^2	; case 3
	skipnz
	goto	l3753
	xorlw	4^3	; case 4
	skipnz
	goto	l3765
	goto	l736
	opt asmopt_on

	line	291
	
l791:	
	goto	l736
	line	292
	
l827:	
	line	88
	goto	l736
	
l828:	
	line	293
	
l829:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_funcSetDigit
psect	text273,local,class=CODE,delta=2
global __ptext273
__ptext273:

;; *************** function _funcSetDigit *****************
;; Defined at:
;;		line 318 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
;; Parameters:    Size  Location     Type
;;  High            2    9[BANK0 ] int 
;;  Law             2   11[BANK0 ] int 
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
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awmod
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text273
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
	line	318
	global	__size_of_funcSetDigit
	__size_of_funcSetDigit	equ	__end_of_funcSetDigit-_funcSetDigit
	
_funcSetDigit:	
	opt	stack 4
; Regs used in _funcSetDigit: [wreg+status,2+status,0+pclath+cstack]
	line	320
	
l3563:	
;acps.c: 320: vblDig0 = Law%10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(funcSetDigit@Law+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(funcSetDigit@Law),w
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

	line	321
;acps.c: 321: vblDig1 = Law/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(funcSetDigit@Law+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(funcSetDigit@Law),w
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

	line	323
;acps.c: 323: vblDig2 = High%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(funcSetDigit@High+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(funcSetDigit@High),w
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

	line	324
;acps.c: 324: vblDig3 = High/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(funcSetDigit@High+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(funcSetDigit@High),w
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

	line	325
	
l851:	
	return
	opt stack 0
GLOBAL	__end_of_funcSetDigit
	__end_of_funcSetDigit:
;; =============== function _funcSetDigit ends ============

	signat	_funcSetDigit,8312
	global	___awmod
psect	text274,local,class=CODE,delta=2
global __ptext274
__ptext274:

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
;;		_funcSetDigit
;; This function uses a non-reentrant model
;;
psect	text274
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3529:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3641
	goto	u3640
u3641:
	goto	l3533
u3640:
	line	10
	
l3531:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3533
	line	12
	
l1797:	
	line	13
	
l3533:	
	btfss	(___awmod@divisor+1),7
	goto	u3651
	goto	u3650
u3651:
	goto	l3537
u3650:
	line	14
	
l3535:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3537
	
l1798:	
	line	15
	
l3537:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3661
	goto	u3660
u3661:
	goto	l3555
u3660:
	line	16
	
l3539:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3545
	
l1801:	
	line	18
	
l3541:	
	movlw	01h
	
u3675:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3675
	line	19
	
l3543:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3545
	line	20
	
l1800:	
	line	17
	
l3545:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l3541
u3680:
	goto	l3547
	
l1802:	
	goto	l3547
	line	21
	
l1803:	
	line	22
	
l3547:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3695
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3695:
	skipc
	goto	u3691
	goto	u3690
u3691:
	goto	l3551
u3690:
	line	23
	
l3549:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3551
	
l1804:	
	line	24
	
l3551:	
	movlw	01h
	
u3705:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3705
	line	25
	
l3553:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l3547
u3710:
	goto	l3555
	
l1805:	
	goto	l3555
	line	26
	
l1799:	
	line	27
	
l3555:	
	movf	(___awmod@sign),w
	skipz
	goto	u3720
	goto	l3559
u3720:
	line	28
	
l3557:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3559
	
l1806:	
	line	29
	
l3559:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1807
	
l3561:	
	line	30
	
l1807:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text275,local,class=CODE,delta=2
global __ptext275
__ptext275:

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
;;		_funcSetDigit
;; This function uses a non-reentrant model
;;
psect	text275
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3489:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3541
	goto	u3540
u3541:
	goto	l3493
u3540:
	line	11
	
l3491:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3493
	line	13
	
l1729:	
	line	14
	
l3493:	
	btfss	(___awdiv@dividend+1),7
	goto	u3551
	goto	u3550
u3551:
	goto	l3499
u3550:
	line	15
	
l3495:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3497:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3499
	line	17
	
l1730:	
	line	18
	
l3499:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3501:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3561
	goto	u3560
u3561:
	goto	l3521
u3560:
	line	20
	
l3503:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3509
	
l1733:	
	line	22
	
l3505:	
	movlw	01h
	
u3575:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3575
	line	23
	
l3507:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3509
	line	24
	
l1732:	
	line	21
	
l3509:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l3505
u3580:
	goto	l3511
	
l1734:	
	goto	l3511
	line	25
	
l1735:	
	line	26
	
l3511:	
	movlw	01h
	
u3595:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3595
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3605
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3605:
	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l3517
u3600:
	line	28
	
l3513:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3515:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3517
	line	30
	
l1736:	
	line	31
	
l3517:	
	movlw	01h
	
u3615:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3615
	line	32
	
l3519:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l3511
u3620:
	goto	l3521
	
l1737:	
	goto	l3521
	line	33
	
l1731:	
	line	34
	
l3521:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3630
	goto	l3525
u3630:
	line	35
	
l3523:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3525
	
l1738:	
	line	36
	
l3525:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1739
	
l3527:	
	line	37
	
l1739:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text276,local,class=CODE,delta=2
global __ptext276
__ptext276:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text276
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3477:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3479
	line	6
	
l1589:	
	line	7
	
l3479:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l1590
u3500:
	line	8
	
l3481:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1590:	
	line	9
	movlw	01h
	
u3515:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3515
	line	10
	
l3483:	
	movlw	01h
	
u3525:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3525
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3531
	goto	u3530
u3531:
	goto	l3479
u3530:
	goto	l3485
	
l1591:	
	line	12
	
l3485:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1592
	
l3487:	
	line	13
	
l1592:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_funcCheckBtn
psect	text277,local,class=CODE,delta=2
global __ptext277
__ptext277:

;; *************** function _funcCheckBtn *****************
;; Defined at:
;;		line 305 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text277
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
	line	305
	global	__size_of_funcCheckBtn
	__size_of_funcCheckBtn	equ	__end_of_funcCheckBtn-_funcCheckBtn
	
_funcCheckBtn:	
	opt	stack 5
; Regs used in _funcCheckBtn: [wreg+status,2+status,0]
	line	306
	
l3325:	
;acps.c: 306: if( RA4 ==0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l848
u3060:
	line	308
	
l3327:	
;acps.c: 307: {
;acps.c: 308: if( vblMode == 0) vblMode = 1;
	movf	((_vblMode+1)),w
	iorwf	((_vblMode)),w
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l3331
u3070:
	
l3329:	
	movlw	low(01h)
	movwf	(_vblMode)
	movlw	high(01h)
	movwf	((_vblMode))+1
	goto	l845
	line	309
	
l836:	
	
l3331:	
;acps.c: 309: else if( vblMode == 1 ) vblMode = 2;
	movlw	01h
	xorwf	(_vblMode),w
	iorwf	(_vblMode+1),w
	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l3335
u3080:
	
l3333:	
	movlw	low(02h)
	movwf	(_vblMode)
	movlw	high(02h)
	movwf	((_vblMode))+1
	goto	l845
	line	310
	
l838:	
	
l3335:	
;acps.c: 310: else if( vblMode == 2 ) vblMode = 3;
	movlw	02h
	xorwf	(_vblMode),w
	iorwf	(_vblMode+1),w
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l3339
u3090:
	
l3337:	
	movlw	low(03h)
	movwf	(_vblMode)
	movlw	high(03h)
	movwf	((_vblMode))+1
	goto	l845
	line	311
	
l840:	
	
l3339:	
;acps.c: 311: else if( vblMode == 3 ) vblMode = 4;
	movlw	03h
	xorwf	(_vblMode),w
	iorwf	(_vblMode+1),w
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l3343
u3100:
	
l3341:	
	movlw	low(04h)
	movwf	(_vblMode)
	movlw	high(04h)
	movwf	((_vblMode))+1
	goto	l845
	line	312
	
l842:	
	
l3343:	
;acps.c: 312: else if( vblMode == 4 ) vblMode = 0;
	movlw	04h
	xorwf	(_vblMode),w
	iorwf	(_vblMode+1),w
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l845
u3110:
	
l3345:	
	clrf	(_vblMode)
	clrf	(_vblMode+1)
	goto	l845
	
l844:	
	goto	l845
	line	313
	
l843:	
	goto	l845
	
l841:	
	goto	l845
	
l839:	
	goto	l845
	
l837:	
;acps.c: 313: while( RA4 ==0 );
	goto	l845
	
l846:	
	
l845:	
	btfss	(44/8),(44)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l845
u3120:
	goto	l848
	
l847:	
	goto	l848
	line	314
	
l835:	
	line	315
	
l848:	
	return
	opt stack 0
GLOBAL	__end_of_funcCheckBtn
	__end_of_funcCheckBtn:
;; =============== function _funcCheckBtn ends ============

	signat	_funcCheckBtn,88
	global	_funcDispLine
psect	text278,local,class=CODE,delta=2
global __ptext278
__ptext278:

;; *************** function _funcDispLine *****************
;; Defined at:
;;		line 296 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text278
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
	line	296
	global	__size_of_funcDispLine
	__size_of_funcDispLine	equ	__end_of_funcDispLine-_funcDispLine
	
_funcDispLine:	
	opt	stack 5
; Regs used in _funcDispLine: [wreg]
	line	297
	
l3323:	
;acps.c: 297: vblDig0 = 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblDig0)
	movlw	high(0Ah)
	movwf	((_vblDig0))+1
	line	298
;acps.c: 298: vblDig1 = 10;
	movlw	low(0Ah)
	movwf	(_vblDig1)
	movlw	high(0Ah)
	movwf	((_vblDig1))+1
	line	300
;acps.c: 300: vblDig2 = 10;
	movlw	low(0Ah)
	movwf	(_vblDig2)
	movlw	high(0Ah)
	movwf	((_vblDig2))+1
	line	301
;acps.c: 301: vblDig3 = 10;
	movlw	low(0Ah)
	movwf	(_vblDig3)
	movlw	high(0Ah)
	movwf	((_vblDig3))+1
	line	302
	
l832:	
	return
	opt stack 0
GLOBAL	__end_of_funcDispLine
	__end_of_funcDispLine:
;; =============== function _funcDispLine ends ============

	signat	_funcDispLine,88
	global	_isr
psect	text279,local,class=CODE,delta=2
global __ptext279
__ptext279:

;; *************** function _isr *****************
;; Defined at:
;;		line 377 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
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
psect	text279
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
	line	377
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 4
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
psect	text279
	line	378
	
i1l3423:	
;acps.c: 378: if(TMR1IF==1)
	btfss	(96/8),(96)&7
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l906
u340_20:
	line	380
	
i1l3425:	
;acps.c: 379: {
;acps.c: 380: TMR1IE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1120/8)^080h,(1120)&7
	line	381
;acps.c: 381: GIE = 0;
	bcf	(95/8),(95)&7
	line	382
;acps.c: 382: PEIE = 0;
	bcf	(94/8),(94)&7
	line	383
	
i1l3427:	
;acps.c: 383: vblDisplayCount++;
	movlw	low(01h)
	addwf	(_vblDisplayCount),f
	skipnc
	incf	(_vblDisplayCount+1),f
	movlw	high(01h)
	addwf	(_vblDisplayCount+1),f
	line	384
;acps.c: 384: msecond ++;
	movlw	low(01h)
	addwf	(_msecond),f
	skipnc
	incf	(_msecond+1),f
	movlw	high(01h)
	addwf	(_msecond+1),f
	line	386
;acps.c: 386: if(vblDisplayCount == 3 )
	movlw	03h
	xorwf	(_vblDisplayCount),w
	iorwf	(_vblDisplayCount+1),w
	skipz
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l3431
u341_20:
	line	388
	
i1l3429:	
;acps.c: 387: {
;acps.c: 388: funcDisplay( 0,vblDig0 );
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
	line	389
;acps.c: 389: }
	goto	i1l3445
	line	390
	
i1l894:	
	
i1l3431:	
;acps.c: 390: else if( vblDisplayCount == 6 )
	movlw	06h
	xorwf	(_vblDisplayCount),w
	iorwf	(_vblDisplayCount+1),w
	skipz
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l3435
u342_20:
	line	392
	
i1l3433:	
;acps.c: 391: {
;acps.c: 392: funcDisplay( 1,vblDig1 );
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
	line	393
;acps.c: 393: }
	goto	i1l3445
	line	394
	
i1l896:	
	
i1l3435:	
;acps.c: 394: else if( vblDisplayCount == 9 )
	movlw	09h
	xorwf	(_vblDisplayCount),w
	iorwf	(_vblDisplayCount+1),w
	skipz
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l3439
u343_20:
	line	396
	
i1l3437:	
;acps.c: 395: {
;acps.c: 396: funcDisplay( 2,vblDig2 );
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
	line	397
;acps.c: 397: }
	goto	i1l3445
	line	398
	
i1l898:	
	
i1l3439:	
;acps.c: 398: else if( vblDisplayCount == 12 )
	movlw	0Ch
	xorwf	(_vblDisplayCount),w
	iorwf	(_vblDisplayCount+1),w
	skipz
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l3445
u344_20:
	line	400
	
i1l3441:	
;acps.c: 399: {
;acps.c: 400: vblDisplayCount = 0;
	clrf	(_vblDisplayCount)
	clrf	(_vblDisplayCount+1)
	line	401
	
i1l3443:	
;acps.c: 401: funcDisplay( 3,vblDig3 );
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
	goto	i1l3445
	line	402
	
i1l900:	
	goto	i1l3445
	line	404
	
i1l899:	
	goto	i1l3445
	
i1l897:	
	goto	i1l3445
	
i1l895:	
	
i1l3445:	
;acps.c: 402: }
;acps.c: 404: if(msecond == 250)
	movlw	0FAh
	xorwf	(_msecond),w
	iorwf	(_msecond+1),w
	skipz
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l901
u345_20:
	line	406
	
i1l3447:	
;acps.c: 405: {
;acps.c: 406: RA5 = !RA5;
	movlw	1<<((45)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((45)/8),f
	line	407
	
i1l3449:	
;acps.c: 407: vblSegStat = RA5;
	bcf	(_vblSegStat/8),(_vblSegStat)&7
	btfss	(45/8),(45)&7
	goto	u346_25
	bsf	(_vblSegStat/8),(_vblSegStat)&7
u346_25:

	line	408
	
i1l901:	
	line	409
;acps.c: 408: }
;acps.c: 409: if(msecond == 500)
	movlw	high(01F4h)
	xorwf	(_msecond+1),w
	skipz
	goto	u347_25
	movlw	low(01F4h)
	xorwf	(_msecond),w
u347_25:

	skipz
	goto	u347_21
	goto	u347_20
u347_21:
	goto	i1l902
u347_20:
	line	411
	
i1l3451:	
;acps.c: 410: {
;acps.c: 411: second ++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_second),f
	skipnc
	incf	(_second+1),f
	movlw	high(01h)
	addwf	(_second+1),f
	line	412
;acps.c: 412: RA5 = !RA5;
	movlw	1<<((45)&7)
	xorwf	((45)/8),f
	line	413
;acps.c: 413: vblSegStat = !vblSegStat;
	movlw	1<<((_vblSegStat)&7)
	xorwf	((_vblSegStat)/8),f
	line	414
	
i1l3453:	
;acps.c: 414: msecond = 0;
	clrf	(_msecond)
	clrf	(_msecond+1)
	line	415
	
i1l3455:	
;acps.c: 415: if( second == 60)
	movlw	03Ch
	xorwf	(_second),w
	iorwf	(_second+1),w
	skipz
	goto	u348_21
	goto	u348_20
u348_21:
	goto	i1l902
u348_20:
	line	417
	
i1l3457:	
;acps.c: 416: {
;acps.c: 417: minute ++;
	movlw	low(01h)
	addwf	(_minute),f
	skipnc
	incf	(_minute+1),f
	movlw	high(01h)
	addwf	(_minute+1),f
	line	418
	
i1l3459:	
;acps.c: 418: second = 0;
	clrf	(_second)
	clrf	(_second+1)
	line	419
	
i1l3461:	
;acps.c: 419: if( minute == 60)
	movlw	03Ch
	xorwf	(_minute),w
	iorwf	(_minute+1),w
	skipz
	goto	u349_21
	goto	u349_20
u349_21:
	goto	i1l902
u349_20:
	line	421
	
i1l3463:	
;acps.c: 420: {
;acps.c: 421: minute = 0;
	clrf	(_minute)
	clrf	(_minute+1)
	line	422
	
i1l3465:	
;acps.c: 422: hour ++;
	movlw	low(01h)
	addwf	(_hour),f
	skipnc
	incf	(_hour+1),f
	movlw	high(01h)
	addwf	(_hour+1),f
	goto	i1l902
	line	423
	
i1l3467:	
	goto	i1l902
	
i1l905:	
	goto	i1l902
	line	424
	
i1l904:	
	goto	i1l902
	line	425
	
i1l903:	
	line	426
	
i1l902:	
	line	427
;acps.c: 424: }
;acps.c: 425: }
;acps.c: 426: }
;acps.c: 427: TMR1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	line	428
	
i1l3469:	
;acps.c: 428: TMR1L = 47;
	movlw	(02Fh)
	movwf	(14)	;volatile
	line	429
;acps.c: 429: TMR1H = 0xFC;
	movlw	(0FCh)
	movwf	(15)	;volatile
	line	431
	
i1l3471:	
;acps.c: 431: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	432
	
i1l3473:	
;acps.c: 432: GIE = 1;
	bsf	(95/8),(95)&7
	line	433
	
i1l3475:	
;acps.c: 433: PEIE = 1;
	bsf	(94/8),(94)&7
	goto	i1l906
	line	434
	
i1l893:	
	line	435
	
i1l906:	
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
psect	text280,local,class=CODE,delta=2
global __ptext280
__ptext280:

;; *************** function _funcDisplay *****************
;; Defined at:
;;		line 328 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
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
psect	text280
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver3\acps.c"
	line	328
	global	__size_of_funcDisplay
	__size_of_funcDisplay	equ	__end_of_funcDisplay-_funcDisplay
	
_funcDisplay:	
	opt	stack 4
; Regs used in _funcDisplay: [wreg+status,2+status,0]
	line	329
	
i1l3347:	
;acps.c: 329: if ( DigNo==0 )
	movf	((funcDisplay@DigNo+1)),w
	iorwf	((funcDisplay@DigNo)),w
	skipz
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l3355
u313_20:
	line	331
	
i1l3349:	
;acps.c: 330: {
;acps.c: 331: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	332
;acps.c: 332: RB2 = 1;
	bsf	(50/8),(50)&7
	line	333
;acps.c: 333: RB3 = 1;
	bsf	(51/8),(51)&7
	line	334
	
i1l3351:	
;acps.c: 334: if(vblBllinkDigitNo==0) RB0 = vblSegStat;
	movf	((_vblBllinkDigitNo+1)),w
	iorwf	((_vblBllinkDigitNo)),w
	skipz
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l855
u314_20:
	
i1l3353:	
	btfsc	(_vblSegStat/8),(_vblSegStat)&7
	goto	u315_21
	goto	u315_20
	
u315_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	u316_24
u315_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
u316_24:
	goto	i1l3379
	line	335
	
i1l855:	
;acps.c: 335: else RB0 = 0;
	bcf	(48/8),(48)&7
	goto	i1l3379
	
i1l856:	
	line	336
;acps.c: 336: }
	goto	i1l3379
	line	337
	
i1l854:	
	
i1l3355:	
;acps.c: 337: else if ( DigNo==1 )
	movlw	01h
	xorwf	(funcDisplay@DigNo),w
	iorwf	(funcDisplay@DigNo+1),w
	skipz
	goto	u317_21
	goto	u317_20
u317_21:
	goto	i1l3363
u317_20:
	line	339
	
i1l3357:	
;acps.c: 338: {
;acps.c: 339: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	340
;acps.c: 340: RB2 = 1;
	bsf	(50/8),(50)&7
	line	341
;acps.c: 341: RB3 = 1;
	bsf	(51/8),(51)&7
	line	342
	
i1l3359:	
;acps.c: 342: if(vblBllinkDigitNo==1) RB1 = vblSegStat;
	movlw	01h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u318_21
	goto	u318_20
u318_21:
	goto	i1l859
u318_20:
	
i1l3361:	
	btfsc	(_vblSegStat/8),(_vblSegStat)&7
	goto	u319_21
	goto	u319_20
	
u319_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	goto	u320_24
u319_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
u320_24:
	goto	i1l3379
	line	343
	
i1l859:	
;acps.c: 343: else RB1 = 0;
	bcf	(49/8),(49)&7
	goto	i1l3379
	
i1l860:	
	line	344
;acps.c: 344: }
	goto	i1l3379
	line	345
	
i1l858:	
	
i1l3363:	
;acps.c: 345: else if ( DigNo==2 )
	movlw	02h
	xorwf	(funcDisplay@DigNo),w
	iorwf	(funcDisplay@DigNo+1),w
	skipz
	goto	u321_21
	goto	u321_20
u321_21:
	goto	i1l3371
u321_20:
	line	347
	
i1l3365:	
;acps.c: 346: {
;acps.c: 347: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	348
;acps.c: 348: RB0 = 1;
	bsf	(48/8),(48)&7
	line	349
;acps.c: 349: RB3 = 1;
	bsf	(51/8),(51)&7
	line	350
	
i1l3367:	
;acps.c: 350: if(vblBllinkDigitNo==2) RB2 = vblSegStat;
	movlw	02h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u322_21
	goto	u322_20
u322_21:
	goto	i1l863
u322_20:
	
i1l3369:	
	btfsc	(_vblSegStat/8),(_vblSegStat)&7
	goto	u323_21
	goto	u323_20
	
u323_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	goto	u324_24
u323_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
u324_24:
	goto	i1l3379
	line	351
	
i1l863:	
;acps.c: 351: else RB2 = 0;
	bcf	(50/8),(50)&7
	goto	i1l3379
	
i1l864:	
	line	352
;acps.c: 352: }
	goto	i1l3379
	line	353
	
i1l862:	
	
i1l3371:	
;acps.c: 353: else if ( DigNo==3 )
	movlw	03h
	xorwf	(funcDisplay@DigNo),w
	iorwf	(funcDisplay@DigNo+1),w
	skipz
	goto	u325_21
	goto	u325_20
u325_21:
	goto	i1l3379
u325_20:
	line	355
	
i1l3373:	
;acps.c: 354: {
;acps.c: 355: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	356
;acps.c: 356: RB0 = 1;
	bsf	(48/8),(48)&7
	line	357
;acps.c: 357: RB2 = 1;
	bsf	(50/8),(50)&7
	line	358
	
i1l3375:	
;acps.c: 358: if(vblBllinkDigitNo==3) RB3 = vblSegStat;
	movlw	03h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u326_21
	goto	u326_20
u326_21:
	goto	i1l867
u326_20:
	
i1l3377:	
	btfsc	(_vblSegStat/8),(_vblSegStat)&7
	goto	u327_21
	goto	u327_20
	
u327_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	goto	u328_24
u327_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
u328_24:
	goto	i1l3379
	line	359
	
i1l867:	
;acps.c: 359: else RB3 = 0;
	bcf	(51/8),(51)&7
	goto	i1l3379
	
i1l868:	
	goto	i1l3379
	line	360
	
i1l866:	
	goto	i1l3379
	line	362
	
i1l865:	
	goto	i1l3379
	
i1l861:	
	goto	i1l3379
	
i1l857:	
	
i1l3379:	
;acps.c: 360: }
;acps.c: 362: if( Value == 0) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 1;RC4 = 1;RC5 = 1;RC6 = 0;}
	movf	((funcDisplay@Value+1)),w
	iorwf	((funcDisplay@Value)),w
	skipz
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l3383
u329_20:
	
i1l3381:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bsf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bcf	(62/8),(62)&7
	goto	i1l890
	line	363
	
i1l869:	
	
i1l3383:	
;acps.c: 363: else if( Value == 1) {RD7 = 0; RD6 = 1;RC2 = 1;RC3 = 0;RC4 = 0;RC5 = 0;RC6 = 0;}
	movlw	01h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u330_21
	goto	u330_20
u330_21:
	goto	i1l3387
u330_20:
	
i1l3385:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bcf	(62/8),(62)&7
	goto	i1l890
	line	364
	
i1l871:	
	
i1l3387:	
;acps.c: 364: else if( Value == 2) {RD7 = 1; RD6 = 1;RC2 = 0;RC3 = 1;RC4 = 1;RC5 = 0;RC6 = 1;}
	movlw	02h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u331_21
	goto	u331_20
u331_21:
	goto	i1l3391
u331_20:
	
i1l3389:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bcf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bsf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l890
	line	365
	
i1l873:	
	
i1l3391:	
;acps.c: 365: else if( Value == 3) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 1;RC4 = 0;RC5 = 0;RC6 = 1;}
	movlw	03h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u332_21
	goto	u332_20
u332_21:
	goto	i1l3395
u332_20:
	
i1l3393:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l890
	line	366
	
i1l875:	
	
i1l3395:	
;acps.c: 366: else if( Value == 4) {RD7 = 0; RD6 = 1;RC2 = 1;RC3 = 0;RC4 = 0;RC5 = 1;RC6 = 1;}
	movlw	04h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u333_21
	goto	u333_20
u333_21:
	goto	i1l3399
u333_20:
	
i1l3397:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l890
	line	367
	
i1l877:	
	
i1l3399:	
;acps.c: 367: else if( Value == 5) {RD7 = 1; RD6 = 0;RC2 = 1;RC3 = 1;RC4 = 0;RC5 = 1;RC6 = 1;}
	movlw	05h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l3403
u334_20:
	
i1l3401:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l890
	line	368
	
i1l879:	
	
i1l3403:	
;acps.c: 368: else if( Value == 6) {RD7 = 1; RD6 = 0;RC2 = 1;RC3 = 1;RC4 = 1;RC5 = 1;RC6 = 1;}
	movlw	06h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l3407
u335_20:
	
i1l3405:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bsf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l890
	line	369
	
i1l881:	
	
i1l3407:	
;acps.c: 369: else if( Value == 7) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 0;RC4 = 0;RC5 = 0;RC6 = 0;}
	movlw	07h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l3411
u336_20:
	
i1l3409:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bcf	(62/8),(62)&7
	goto	i1l890
	line	370
	
i1l883:	
	
i1l3411:	
;acps.c: 370: else if( Value == 8) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 1;RC4 = 1;RC5 = 1;RC6 = 1;}
	movlw	08h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u337_21
	goto	u337_20
u337_21:
	goto	i1l3415
u337_20:
	
i1l3413:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bsf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l890
	line	371
	
i1l885:	
	
i1l3415:	
;acps.c: 371: else if( Value == 9) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 1;RC4 = 0;RC5 = 1;RC6 = 1;}
	movlw	09h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l3419
u338_20:
	
i1l3417:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l890
	line	372
	
i1l887:	
	
i1l3419:	
;acps.c: 372: else if( Value == 10) {RD7 = 0; RD6 = 0;RC2 = 0;RC3 = 0;RC4 = 0;RC5 = 0;RC6 = 1;}
	movlw	0Ah
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u339_21
	goto	u339_20
u339_21:
	goto	i1l890
u339_20:
	
i1l3421:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bcf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l890
	
i1l889:	
	goto	i1l890
	line	374
	
i1l888:	
	goto	i1l890
	
i1l886:	
	goto	i1l890
	
i1l884:	
	goto	i1l890
	
i1l882:	
	goto	i1l890
	
i1l880:	
	goto	i1l890
	
i1l878:	
	goto	i1l890
	
i1l876:	
	goto	i1l890
	
i1l874:	
	goto	i1l890
	
i1l872:	
	goto	i1l890
	
i1l870:	
	
i1l890:	
	return
	opt stack 0
GLOBAL	__end_of_funcDisplay
	__end_of_funcDisplay:
;; =============== function _funcDisplay ends ============

	signat	_funcDisplay,8312
psect	text281,local,class=CODE,delta=2
global __ptext281
__ptext281:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
