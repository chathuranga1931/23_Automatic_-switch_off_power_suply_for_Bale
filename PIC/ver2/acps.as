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
	FNCALL	_main,_funcCheckBtn
	FNCALL	_main,___wmul
	FNCALL	_main,_funcSetDigit
	FNCALL	_funcSetDigit,___awmod
	FNCALL	_funcSetDigit,___awdiv
	FNROOT	_main
	FNCALL	_isr,_funcDisplay
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_vblBllinkDigitNo
	global	_vblMode
	global	_vblSetDig0
	global	_vblSetDig1
	global	_vblSetDig2
	global	_vblSetDig3
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
	line	44

;initializer for _vblBllinkDigitNo
	retlw	05h
	retlw	0

	line	40

;initializer for _vblMode
	retlw	02h
	retlw	0

	line	38

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
	global	_vblDig0
	global	_vblDig1
	global	_vblDig2
	global	_vblDig3
	global	_vblRemainHour
	global	_vblRemainMinute
	global	_vblSetHour
	global	_vblSetMinute
	global	_vblStatusOn
	global	_msecond
	global	_vblDisplayCount
	global	_vblSegStat
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

_vblDig0:
       ds      2

_vblDig1:
       ds      2

_vblDig2:
       ds      2

_vblDig3:
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
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
	line	44
_vblBllinkDigitNo:
       ds      2

psect	dataBANK0
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
	line	40
_vblMode:
       ds      2

psect	dataBANK0
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
	line	38
_vblSetDig0:
       ds      2

psect	dataBANK0
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
_vblSetDig1:
       ds      2

psect	dataBANK0
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
_vblSetDig2:
       ds      2

psect	dataBANK0
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
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
	movlw	low((__pbssBANK0)+018h)
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
	movlw low(__pdataBANK0+12)
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
;;Data sizes: Strings 0, constant 0, data 12, bss 28, persistent 0 stack 0
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
;;                       _funcCheckBtn
;;                             ___wmul
;;                       _funcSetDigit
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
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _isr                                                  4     4      0     308
;;                                              4 COMMON     4     4      0
;;                        _funcDisplay
;; ---------------------------------------------------------------------------------
;; (4) _funcDisplay                                          4     0      4     308
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _funcCheckBtn
;;   ___wmul
;;   _funcSetDigit
;;     ___awmod
;;     ___awdiv
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
;;		line 53 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
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
;;		_funcCheckBtn
;;		___wmul
;;		_funcSetDigit
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
	line	53
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	54
	
l3496:	
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
	
l3498:	
;acps.c: 61: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	62
;acps.c: 62: TMR1H = 0x3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	64
	
l3500:	
;acps.c: 64: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	65
	
l3502:	
;acps.c: 65: GIE = 1;
	bsf	(95/8),(95)&7
	line	66
	
l3504:	
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
	
l3506:	
;acps.c: 73: TRISC = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	74
	
l3508:	
;acps.c: 74: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	76
	
l3510:	
;acps.c: 76: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	77
	
l3512:	
;acps.c: 77: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	79
	
l3514:	
;acps.c: 79: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	80
	
l3516:	
;acps.c: 80: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	82
	
l3518:	
;acps.c: 82: TRISE = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	83
	
l3520:	
;acps.c: 83: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	goto	l3522
	line	85
;acps.c: 85: while(1)
	
l734:	
	line	100
	
l3522:	
;acps.c: 86: {
;acps.c: 100: funcCheckBtn();
	fcall	_funcCheckBtn
	line	102
;acps.c: 102: switch (vblMode)
	goto	l3676
	line	104
;acps.c: 103: {
;acps.c: 104: case 0:
	
l736:	
	line	105
	
l3524:	
;acps.c: 105: vblBllinkDigitNo = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_vblBllinkDigitNo)
	clrf	(_vblBllinkDigitNo+1)
	line	106
	
l3526:	
;acps.c: 106: RD3 = 0;
	bcf	(67/8),(67)&7
	line	107
	
l3528:	
;acps.c: 107: RD1 = 0;
	bcf	(65/8),(65)&7
	line	108
	
l3530:	
;acps.c: 108: RD0 = 0;
	bcf	(64/8),(64)&7
	line	109
;acps.c: 109: while( RA3 == 1 )
	goto	l737
	
l738:	
	line	111
;acps.c: 110: {
;acps.c: 111: if( RA1 ==0 )
	btfsc	(41/8),(41)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l739
u3680:
	line	113
	
l3532:	
;acps.c: 112: {
;acps.c: 113: if ( vblBllinkDigitNo==0 )
	movf	((_vblBllinkDigitNo+1)),w
	iorwf	((_vblBllinkDigitNo)),w
	skipz
	goto	u3691
	goto	u3690
u3691:
	goto	l3540
u3690:
	line	115
	
l3534:	
;acps.c: 114: {
;acps.c: 115: if( vblDig0 > 8) vblDig0 = 0;
	movf	(_vblDig0+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3705
	movlw	low(09h)
	subwf	(_vblDig0),w
u3705:

	skipc
	goto	u3701
	goto	u3700
u3701:
	goto	l3538
u3700:
	
l3536:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_vblDig0)
	clrf	(_vblDig0+1)
	goto	l755
	line	116
	
l741:	
	
l3538:	
;acps.c: 116: else vblDig0++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig0),f
	skipnc
	incf	(_vblDig0+1),f
	movlw	high(01h)
	addwf	(_vblDig0+1),f
	goto	l755
	
l742:	
	line	117
;acps.c: 117: }
	goto	l755
	line	118
	
l740:	
	
l3540:	
;acps.c: 118: else if ( vblBllinkDigitNo==1 )
	movlw	01h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u3711
	goto	u3710
u3711:
	goto	l3548
u3710:
	line	120
	
l3542:	
;acps.c: 119: {
;acps.c: 120: if( vblDig1 > 8) vblDig1 = 0;
	movf	(_vblDig1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3725
	movlw	low(09h)
	subwf	(_vblDig1),w
u3725:

	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l3546
u3720:
	
l3544:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_vblDig1)
	clrf	(_vblDig1+1)
	goto	l755
	line	121
	
l745:	
	
l3546:	
;acps.c: 121: else vblDig1++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig1),f
	skipnc
	incf	(_vblDig1+1),f
	movlw	high(01h)
	addwf	(_vblDig1+1),f
	goto	l755
	
l746:	
	line	122
;acps.c: 122: }
	goto	l755
	line	123
	
l744:	
	
l3548:	
;acps.c: 123: else if ( vblBllinkDigitNo==2 )
	movlw	02h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l3556
u3730:
	line	125
	
l3550:	
;acps.c: 124: {
;acps.c: 125: if( vblDig2 > 8) vblDig2 = 0;
	movf	(_vblDig2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3745
	movlw	low(09h)
	subwf	(_vblDig2),w
u3745:

	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l3554
u3740:
	
l3552:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_vblDig2)
	clrf	(_vblDig2+1)
	goto	l755
	line	126
	
l749:	
	
l3554:	
;acps.c: 126: else vblDig2++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig2),f
	skipnc
	incf	(_vblDig2+1),f
	movlw	high(01h)
	addwf	(_vblDig2+1),f
	goto	l755
	
l750:	
	line	127
;acps.c: 127: }
	goto	l755
	line	128
	
l748:	
	
l3556:	
;acps.c: 128: else if ( vblBllinkDigitNo==3 )
	movlw	03h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l755
u3750:
	line	130
	
l3558:	
;acps.c: 129: {
;acps.c: 130: if( vblDig3 > 8) vblDig3 = 0;
	movf	(_vblDig3+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3765
	movlw	low(09h)
	subwf	(_vblDig3),w
u3765:

	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l3562
u3760:
	
l3560:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_vblDig3)
	clrf	(_vblDig3+1)
	goto	l755
	line	131
	
l753:	
	
l3562:	
;acps.c: 131: else vblDig3++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig3),f
	skipnc
	incf	(_vblDig3+1),f
	movlw	high(01h)
	addwf	(_vblDig3+1),f
	goto	l755
	
l754:	
	goto	l755
	line	132
	
l752:	
	goto	l755
	line	133
	
l751:	
	goto	l755
	
l747:	
	goto	l755
	
l743:	
;acps.c: 132: }
;acps.c: 133: while( RA1 ==0 );
	goto	l755
	
l756:	
	
l755:	
	btfss	(41/8),(41)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l755
u3770:
	goto	l737
	
l757:	
	line	134
;acps.c: 134: }
	goto	l737
	line	135
	
l739:	
;acps.c: 135: else if( RA2 ==0 )
	btfsc	(42/8),(42)&7
	goto	u3781
	goto	u3780
u3781:
	goto	l759
u3780:
	line	137
	
l3564:	
;acps.c: 136: {
;acps.c: 137: if ( vblBllinkDigitNo==0 )
	movf	((_vblBllinkDigitNo+1)),w
	iorwf	((_vblBllinkDigitNo)),w
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l3572
u3790:
	line	139
	
l3566:	
;acps.c: 138: {
;acps.c: 139: if( vblDig0 < 1) vblDig0 = 9;
	movf	(_vblDig0+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3805
	movlw	low(01h)
	subwf	(_vblDig0),w
u3805:

	skipnc
	goto	u3801
	goto	u3800
u3801:
	goto	l3570
u3800:
	
l3568:	
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblDig0)
	movlw	high(09h)
	movwf	((_vblDig0))+1
	goto	l775
	line	140
	
l761:	
	
l3570:	
;acps.c: 140: else vblDig0--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig0),f
	skipnc
	incf	(_vblDig0+1),f
	movlw	high(-1)
	addwf	(_vblDig0+1),f
	goto	l775
	
l762:	
	line	141
;acps.c: 141: }
	goto	l775
	line	142
	
l760:	
	
l3572:	
;acps.c: 142: else if ( vblBllinkDigitNo==1 )
	movlw	01h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u3811
	goto	u3810
u3811:
	goto	l3580
u3810:
	line	144
	
l3574:	
;acps.c: 143: {
;acps.c: 144: if( vblDig1 < 1) vblDig1 = 9;
	movf	(_vblDig1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3825
	movlw	low(01h)
	subwf	(_vblDig1),w
u3825:

	skipnc
	goto	u3821
	goto	u3820
u3821:
	goto	l3578
u3820:
	
l3576:	
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblDig1)
	movlw	high(09h)
	movwf	((_vblDig1))+1
	goto	l775
	line	145
	
l765:	
	
l3578:	
;acps.c: 145: else vblDig1--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig1),f
	skipnc
	incf	(_vblDig1+1),f
	movlw	high(-1)
	addwf	(_vblDig1+1),f
	goto	l775
	
l766:	
	line	146
;acps.c: 146: }
	goto	l775
	line	147
	
l764:	
	
l3580:	
;acps.c: 147: else if ( vblBllinkDigitNo==2 )
	movlw	02h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l3588
u3830:
	line	149
	
l3582:	
;acps.c: 148: {
;acps.c: 149: if( vblDig2 < 1) vblDig2 = 9;
	movf	(_vblDig2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3845
	movlw	low(01h)
	subwf	(_vblDig2),w
u3845:

	skipnc
	goto	u3841
	goto	u3840
u3841:
	goto	l3586
u3840:
	
l3584:	
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblDig2)
	movlw	high(09h)
	movwf	((_vblDig2))+1
	goto	l775
	line	150
	
l769:	
	
l3586:	
;acps.c: 150: else vblDig2--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig2),f
	skipnc
	incf	(_vblDig2+1),f
	movlw	high(-1)
	addwf	(_vblDig2+1),f
	goto	l775
	
l770:	
	line	151
;acps.c: 151: }
	goto	l775
	line	152
	
l768:	
	
l3588:	
;acps.c: 152: else if ( vblBllinkDigitNo==3 )
	movlw	03h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u3851
	goto	u3850
u3851:
	goto	l775
u3850:
	line	154
	
l3590:	
;acps.c: 153: {
;acps.c: 154: if( vblDig3 < 1) vblDig3 = 9;
	movf	(_vblDig3+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3865
	movlw	low(01h)
	subwf	(_vblDig3),w
u3865:

	skipnc
	goto	u3861
	goto	u3860
u3861:
	goto	l3594
u3860:
	
l3592:	
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vblDig3)
	movlw	high(09h)
	movwf	((_vblDig3))+1
	goto	l775
	line	155
	
l773:	
	
l3594:	
;acps.c: 155: else vblDig3--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblDig3),f
	skipnc
	incf	(_vblDig3+1),f
	movlw	high(-1)
	addwf	(_vblDig3+1),f
	goto	l775
	
l774:	
	goto	l775
	line	156
	
l772:	
	goto	l775
	line	157
	
l771:	
	goto	l775
	
l767:	
	goto	l775
	
l763:	
;acps.c: 156: }
;acps.c: 157: while( RA2 ==0 );
	goto	l775
	
l776:	
	
l775:	
	btfss	(42/8),(42)&7
	goto	u3871
	goto	u3870
u3871:
	goto	l775
u3870:
	goto	l737
	
l777:	
	line	158
;acps.c: 158: }
	goto	l737
	line	159
	
l759:	
;acps.c: 159: else if( RA0 ==0 )
	btfsc	(40/8),(40)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l737
u3880:
	line	161
	
l3596:	
;acps.c: 160: {
;acps.c: 161: if ( vblBllinkDigitNo>2) vblBllinkDigitNo = 0;
	movf	(_vblBllinkDigitNo+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3895
	movlw	low(03h)
	subwf	(_vblBllinkDigitNo),w
u3895:

	skipc
	goto	u3891
	goto	u3890
u3891:
	goto	l3600
u3890:
	
l3598:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_vblBllinkDigitNo)
	clrf	(_vblBllinkDigitNo+1)
	goto	l782
	line	162
	
l780:	
	
l3600:	
;acps.c: 162: else vblBllinkDigitNo++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_vblBllinkDigitNo),f
	skipnc
	incf	(_vblBllinkDigitNo+1),f
	movlw	high(01h)
	addwf	(_vblBllinkDigitNo+1),f
	goto	l782
	
l781:	
	line	163
;acps.c: 163: while( RA0 ==0 );
	goto	l782
	
l783:	
	
l782:	
	btfss	(40/8),(40)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l782
u3900:
	goto	l737
	
l784:	
	goto	l737
	line	164
	
l779:	
	goto	l737
	line	165
	
l778:	
	goto	l737
	
l758:	
	
l737:	
	line	109
	btfsc	(43/8),(43)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l738
u3910:
	goto	l3602
	
l785:	
	line	166
	
l3602:	
;acps.c: 164: }
;acps.c: 165: }
;acps.c: 166: vblMode = 1;
	movlw	low(01h)
	movwf	(_vblMode)
	movlw	high(01h)
	movwf	((_vblMode))+1
	line	167
	
l3604:	
;acps.c: 167: vblSetMinute = vblDig1*10 + vblDig0;
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
	line	168
	
l3606:	
;acps.c: 168: vblSetHour = vblDig3*10 + vblDig2;
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
	line	170
;acps.c: 170: break;
	goto	l3522
	line	171
;acps.c: 171: case 1:
	
l787:	
	line	172
	
l3608:	
;acps.c: 172: vblBllinkDigitNo = 5;
	movlw	low(05h)
	movwf	(_vblBllinkDigitNo)
	movlw	high(05h)
	movwf	((_vblBllinkDigitNo))+1
	line	173
	
l3610:	
;acps.c: 173: RD3 = 0;
	bcf	(67/8),(67)&7
	line	174
	
l3612:	
;acps.c: 174: RD1 = 0;
	bcf	(65/8),(65)&7
	line	175
	
l3614:	
;acps.c: 175: RD0 = 1;
	bsf	(64/8),(64)&7
	line	176
	
l3616:	
;acps.c: 176: funcCheckBtn();
	fcall	_funcCheckBtn
	line	177
	
l3618:	
;acps.c: 177: if( RA3 ==0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(43/8),(43)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l3522
u3920:
	line	179
	
l3620:	
;acps.c: 178: {
;acps.c: 179: second = 0;
	clrf	(_second)
	clrf	(_second+1)
	line	180
;acps.c: 180: minute = 0;
	clrf	(_minute)
	clrf	(_minute+1)
	line	181
;acps.c: 181: hour = 0;
	clrf	(_hour)
	clrf	(_hour+1)
	line	182
;acps.c: 182: while( RA3 ==0 );
	goto	l789
	
l790:	
	
l789:	
	btfss	(43/8),(43)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l789
u3930:
	goto	l792
	
l791:	
	line	183
;acps.c: 183: while( RA3 ==1 )
	goto	l792
	
l793:	
	line	185
;acps.c: 184: {
;acps.c: 185: RD2 = 1;
	bsf	(66/8),(66)&7
	line	186
	
l3622:	
;acps.c: 186: vblRemainMinute = vblSetMinute - minute;
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
	line	187
;acps.c: 187: vblRemainHour = vblSetHour - hour;
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
	line	188
;acps.c: 188: while( hour != vblSetHour || minute != vblSetMinute )
	goto	l3628
	
l795:	
	line	190
	
l3624:	
;acps.c: 189: {
;acps.c: 190: vblRemainMinute = vblSetMinute - minute;
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
	line	191
;acps.c: 191: vblRemainHour = vblSetHour - hour;
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
	line	192
	
l3626:	
;acps.c: 192: funcSetDigit(vblRemainHour, vblRemainMinute);
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
	goto	l3628
	line	193
	
l794:	
	line	188
	
l3628:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vblSetHour+1),w
	xorwf	(_hour+1),w
	skipz
	goto	u3945
	movf	(_vblSetHour),w
	xorwf	(_hour),w
u3945:

	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l3624
u3940:
	
l3630:	
	movf	(_vblSetMinute+1),w
	xorwf	(_minute+1),w
	skipz
	goto	u3955
	movf	(_vblSetMinute),w
	xorwf	(_minute),w
u3955:

	skipz
	goto	u3951
	goto	u3950
u3951:
	goto	l3624
u3950:
	goto	l798
	
l796:	
	line	194
;acps.c: 193: }
;acps.c: 194: break ;
	goto	l798
	line	195
	
l792:	
	line	183
	btfsc	(43/8),(43)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l793
u3960:
	goto	l798
	
l797:	
	line	196
;acps.c: 195: }
;acps.c: 196: while( RA3 ==0 );
	goto	l798
	
l799:	
	
l798:	
	btfss	(43/8),(43)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l798
u3970:
	
l800:	
	line	197
;acps.c: 197: RD2 = 0;
	bcf	(66/8),(66)&7
	goto	l3522
	line	198
	
l788:	
	line	199
;acps.c: 198: }
;acps.c: 199: break;
	goto	l3522
	line	200
;acps.c: 200: case 2:
	
l801:	
	line	201
	
l3632:	
;acps.c: 201: vblBllinkDigitNo = 5;
	movlw	low(05h)
	movwf	(_vblBllinkDigitNo)
	movlw	high(05h)
	movwf	((_vblBllinkDigitNo))+1
	line	202
	
l3634:	
;acps.c: 202: RD3 = 0;
	bcf	(67/8),(67)&7
	line	203
	
l3636:	
;acps.c: 203: RD1 = 1;
	bsf	(65/8),(65)&7
	line	204
	
l3638:	
;acps.c: 204: RD0 = 0;
	bcf	(64/8),(64)&7
	line	205
	
l3640:	
;acps.c: 205: funcCheckBtn();
	fcall	_funcCheckBtn
	line	206
	
l3642:	
;acps.c: 206: if( RA3 ==0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(43/8),(43)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l3522
u3980:
	goto	l803
	line	208
	
l3644:	
;acps.c: 207: {
;acps.c: 208: while( RA3 ==0 );
	goto	l803
	
l804:	
	
l803:	
	btfss	(43/8),(43)&7
	goto	u3991
	goto	u3990
u3991:
	goto	l803
u3990:
	goto	l806
	
l805:	
	line	209
;acps.c: 209: while( RA3 ==1 );
	goto	l806
	
l807:	
	
l806:	
	btfsc	(43/8),(43)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l806
u4000:
	
l808:	
	line	211
;acps.c: 210: {
;acps.c: 211: RD2 = 1;
	bsf	(66/8),(66)&7
	goto	l3522
	line	213
	
l802:	
	line	214
;acps.c: 212: }
;acps.c: 213: }
;acps.c: 214: break;
	goto	l3522
	line	215
;acps.c: 215: case 3:
	
l809:	
	line	216
	
l3646:	
;acps.c: 216: vblBllinkDigitNo = 5;
	movlw	low(05h)
	movwf	(_vblBllinkDigitNo)
	movlw	high(05h)
	movwf	((_vblBllinkDigitNo))+1
	line	217
	
l3648:	
;acps.c: 217: funcCheckBtn();
	fcall	_funcCheckBtn
	line	218
	
l3650:	
;acps.c: 218: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	219
	
l3652:	
;acps.c: 219: RD1 = 0;
	bcf	(65/8),(65)&7
	line	220
	
l3654:	
;acps.c: 220: RD0 = 0;
	bcf	(64/8),(64)&7
	line	221
	
l3656:	
;acps.c: 221: if( RA3 ==0 )
	btfsc	(43/8),(43)&7
	goto	u4011
	goto	u4010
u4011:
	goto	l3522
u4010:
	goto	l811
	line	223
	
l3658:	
;acps.c: 222: {
;acps.c: 223: while( RA3 ==0 );
	goto	l811
	
l812:	
	
l811:	
	btfss	(43/8),(43)&7
	goto	u4021
	goto	u4020
u4021:
	goto	l811
u4020:
	goto	l814
	
l813:	
	line	224
;acps.c: 224: while( RA3 ==1 );
	goto	l814
	
l815:	
	
l814:	
	btfsc	(43/8),(43)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l814
u4030:
	
l816:	
	line	226
;acps.c: 225: {
;acps.c: 226: RD2 = 1;
	bsf	(66/8),(66)&7
	goto	l3522
	line	228
	
l810:	
	line	229
;acps.c: 227: }
;acps.c: 228: }
;acps.c: 229: break;
	goto	l3522
	line	230
;acps.c: 230: case 4:
	
l817:	
	line	231
	
l3660:	
;acps.c: 231: vblBllinkDigitNo = 5;
	movlw	low(05h)
	movwf	(_vblBllinkDigitNo)
	movlw	high(05h)
	movwf	((_vblBllinkDigitNo))+1
	line	232
	
l3662:	
;acps.c: 232: funcCheckBtn();
	fcall	_funcCheckBtn
	line	233
	
l3664:	
;acps.c: 233: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	234
	
l3666:	
;acps.c: 234: RD1 = 0;
	bcf	(65/8),(65)&7
	line	235
	
l3668:	
;acps.c: 235: RD0 = 0;
	bcf	(64/8),(64)&7
	line	236
	
l3670:	
;acps.c: 236: if( RA3 ==0 )
	btfsc	(43/8),(43)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l3522
u4040:
	goto	l819
	line	238
	
l3672:	
;acps.c: 237: {
;acps.c: 238: while( RA3 ==0 );
	goto	l819
	
l820:	
	
l819:	
	btfss	(43/8),(43)&7
	goto	u4051
	goto	u4050
u4051:
	goto	l819
u4050:
	goto	l822
	
l821:	
	line	239
;acps.c: 239: while( RA3 ==1 );
	goto	l822
	
l823:	
	
l822:	
	btfsc	(43/8),(43)&7
	goto	u4061
	goto	u4060
u4061:
	goto	l822
u4060:
	
l824:	
	line	241
;acps.c: 240: {
;acps.c: 241: RD2 = 1;
	bsf	(66/8),(66)&7
	goto	l3522
	line	243
	
l818:	
	line	244
;acps.c: 242: }
;acps.c: 243: }
;acps.c: 244: break;
	goto	l3522
	line	245
	
l3674:	
;acps.c: 245: }
	goto	l3522
	line	102
	
l735:	
	
l3676:	
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
	goto	l3702
	goto	l3522
	opt asmopt_on
	
l3702:	
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
	goto	l3524
	xorlw	1^0	; case 1
	skipnz
	goto	l3608
	xorlw	2^1	; case 2
	skipnz
	goto	l3632
	xorlw	3^2	; case 3
	skipnz
	goto	l3646
	xorlw	4^3	; case 4
	skipnz
	goto	l3660
	goto	l3522
	opt asmopt_on

	line	245
	
l786:	
	goto	l3522
	line	414
	
l825:	
	line	85
	goto	l3522
	
l826:	
	line	415
	
l827:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_funcSetDigit
psect	text249,local,class=CODE,delta=2
global __ptext249
__ptext249:

;; *************** function _funcSetDigit *****************
;; Defined at:
;;		line 431 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
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
psect	text249
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
	line	431
	global	__size_of_funcSetDigit
	__size_of_funcSetDigit	equ	__end_of_funcSetDigit-_funcSetDigit
	
_funcSetDigit:	
	opt	stack 4
; Regs used in _funcSetDigit: [wreg+status,2+status,0+pclath+cstack]
	line	433
	
l3494:	
;acps.c: 433: vblDig0 = Law%10;
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

	line	434
;acps.c: 434: vblDig1 = Law/10;
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

	line	436
;acps.c: 436: vblDig2 = High%10;
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

	line	437
;acps.c: 437: vblDig3 = High/10;
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

	line	438
	
l846:	
	return
	opt stack 0
GLOBAL	__end_of_funcSetDigit
	__end_of_funcSetDigit:
;; =============== function _funcSetDigit ends ============

	signat	_funcSetDigit,8312
	global	___awmod
psect	text250,local,class=CODE,delta=2
global __ptext250
__ptext250:

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
psect	text250
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3460:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3591
	goto	u3590
u3591:
	goto	l3464
u3590:
	line	10
	
l3462:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3464
	line	12
	
l1790:	
	line	13
	
l3464:	
	btfss	(___awmod@divisor+1),7
	goto	u3601
	goto	u3600
u3601:
	goto	l3468
u3600:
	line	14
	
l3466:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3468
	
l1791:	
	line	15
	
l3468:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3611
	goto	u3610
u3611:
	goto	l3486
u3610:
	line	16
	
l3470:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3476
	
l1794:	
	line	18
	
l3472:	
	movlw	01h
	
u3625:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3625
	line	19
	
l3474:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3476
	line	20
	
l1793:	
	line	17
	
l3476:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l3472
u3630:
	goto	l3478
	
l1795:	
	goto	l3478
	line	21
	
l1796:	
	line	22
	
l3478:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3645
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3645:
	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l3482
u3640:
	line	23
	
l3480:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3482
	
l1797:	
	line	24
	
l3482:	
	movlw	01h
	
u3655:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3655
	line	25
	
l3484:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l3478
u3660:
	goto	l3486
	
l1798:	
	goto	l3486
	line	26
	
l1792:	
	line	27
	
l3486:	
	movf	(___awmod@sign),w
	skipz
	goto	u3670
	goto	l3490
u3670:
	line	28
	
l3488:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3490
	
l1799:	
	line	29
	
l3490:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1800
	
l3492:	
	line	30
	
l1800:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text251,local,class=CODE,delta=2
global __ptext251
__ptext251:

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
psect	text251
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3420:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3491
	goto	u3490
u3491:
	goto	l3424
u3490:
	line	11
	
l3422:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3424
	line	13
	
l1722:	
	line	14
	
l3424:	
	btfss	(___awdiv@dividend+1),7
	goto	u3501
	goto	u3500
u3501:
	goto	l3430
u3500:
	line	15
	
l3426:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3428:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3430
	line	17
	
l1723:	
	line	18
	
l3430:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3432:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3511
	goto	u3510
u3511:
	goto	l3452
u3510:
	line	20
	
l3434:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3440
	
l1726:	
	line	22
	
l3436:	
	movlw	01h
	
u3525:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3525
	line	23
	
l3438:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3440
	line	24
	
l1725:	
	line	21
	
l3440:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l3436
u3530:
	goto	l3442
	
l1727:	
	goto	l3442
	line	25
	
l1728:	
	line	26
	
l3442:	
	movlw	01h
	
u3545:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3545
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3555
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3555:
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l3448
u3550:
	line	28
	
l3444:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3446:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3448
	line	30
	
l1729:	
	line	31
	
l3448:	
	movlw	01h
	
u3565:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3565
	line	32
	
l3450:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l3442
u3570:
	goto	l3452
	
l1730:	
	goto	l3452
	line	33
	
l1724:	
	line	34
	
l3452:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3580
	goto	l3456
u3580:
	line	35
	
l3454:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3456
	
l1731:	
	line	36
	
l3456:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1732
	
l3458:	
	line	37
	
l1732:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text252,local,class=CODE,delta=2
global __ptext252
__ptext252:

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
psect	text252
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3408:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3410
	line	6
	
l1582:	
	line	7
	
l3410:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3451
	goto	u3450
u3451:
	goto	l1583
u3450:
	line	8
	
l3412:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1583:	
	line	9
	movlw	01h
	
u3465:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3465
	line	10
	
l3414:	
	movlw	01h
	
u3475:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3475
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l3410
u3480:
	goto	l3416
	
l1584:	
	line	12
	
l3416:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1585
	
l3418:	
	line	13
	
l1585:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_funcCheckBtn
psect	text253,local,class=CODE,delta=2
global __ptext253
__ptext253:

;; *************** function _funcCheckBtn *****************
;; Defined at:
;;		line 418 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
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
psect	text253
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
	line	418
	global	__size_of_funcCheckBtn
	__size_of_funcCheckBtn	equ	__end_of_funcCheckBtn-_funcCheckBtn
	
_funcCheckBtn:	
	opt	stack 5
; Regs used in _funcCheckBtn: [wreg+status,2+status,0]
	line	419
	
l3262:	
;acps.c: 419: if( RA4 ==0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l843
u3030:
	line	421
	
l3264:	
;acps.c: 420: {
;acps.c: 421: if( vblMode == 0) vblMode = 1;
	movf	((_vblMode+1)),w
	iorwf	((_vblMode)),w
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l3268
u3040:
	
l3266:	
	movlw	low(01h)
	movwf	(_vblMode)
	movlw	high(01h)
	movwf	((_vblMode))+1
	goto	l840
	line	422
	
l831:	
	
l3268:	
;acps.c: 422: else if( vblMode == 1 ) vblMode = 2;
	movlw	01h
	xorwf	(_vblMode),w
	iorwf	(_vblMode+1),w
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l3272
u3050:
	
l3270:	
	movlw	low(02h)
	movwf	(_vblMode)
	movlw	high(02h)
	movwf	((_vblMode))+1
	goto	l840
	line	423
	
l833:	
	
l3272:	
;acps.c: 423: else if( vblMode == 2 ) vblMode = 3;
	movlw	02h
	xorwf	(_vblMode),w
	iorwf	(_vblMode+1),w
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l3276
u3060:
	
l3274:	
	movlw	low(03h)
	movwf	(_vblMode)
	movlw	high(03h)
	movwf	((_vblMode))+1
	goto	l840
	line	424
	
l835:	
	
l3276:	
;acps.c: 424: else if( vblMode == 3 ) vblMode = 4;
	movlw	03h
	xorwf	(_vblMode),w
	iorwf	(_vblMode+1),w
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l3280
u3070:
	
l3278:	
	movlw	low(04h)
	movwf	(_vblMode)
	movlw	high(04h)
	movwf	((_vblMode))+1
	goto	l840
	line	425
	
l837:	
	
l3280:	
;acps.c: 425: else if( vblMode == 4 ) vblMode = 0;
	movlw	04h
	xorwf	(_vblMode),w
	iorwf	(_vblMode+1),w
	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l840
u3080:
	
l3282:	
	clrf	(_vblMode)
	clrf	(_vblMode+1)
	goto	l840
	
l839:	
	goto	l840
	line	426
	
l838:	
	goto	l840
	
l836:	
	goto	l840
	
l834:	
	goto	l840
	
l832:	
;acps.c: 426: while( RA4 ==0 );
	goto	l840
	
l841:	
	
l840:	
	btfss	(44/8),(44)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l840
u3090:
	goto	l843
	
l842:	
	goto	l843
	line	427
	
l830:	
	line	428
	
l843:	
	return
	opt stack 0
GLOBAL	__end_of_funcCheckBtn
	__end_of_funcCheckBtn:
;; =============== function _funcCheckBtn ends ============

	signat	_funcCheckBtn,88
	global	_isr
psect	text254,local,class=CODE,delta=2
global __ptext254
__ptext254:

;; *************** function _isr *****************
;; Defined at:
;;		line 489 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
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
psect	text254
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
	line	489
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
psect	text254
	line	490
	
i1l3356:	
;acps.c: 490: if(TMR1IF==1)
	btfss	(96/8),(96)&7
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l899
u336_20:
	line	492
	
i1l3358:	
;acps.c: 491: {
;acps.c: 492: TMR1IE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1120/8)^080h,(1120)&7
	line	493
;acps.c: 493: GIE = 0;
	bcf	(95/8),(95)&7
	line	494
;acps.c: 494: PEIE = 0;
	bcf	(94/8),(94)&7
	line	495
	
i1l3360:	
;acps.c: 495: vblDisplayCount++;
	movlw	low(01h)
	addwf	(_vblDisplayCount),f
	skipnc
	incf	(_vblDisplayCount+1),f
	movlw	high(01h)
	addwf	(_vblDisplayCount+1),f
	line	496
;acps.c: 496: msecond ++;
	movlw	low(01h)
	addwf	(_msecond),f
	skipnc
	incf	(_msecond+1),f
	movlw	high(01h)
	addwf	(_msecond+1),f
	line	498
;acps.c: 498: if(vblDisplayCount == 3 )
	movlw	03h
	xorwf	(_vblDisplayCount),w
	iorwf	(_vblDisplayCount+1),w
	skipz
	goto	u337_21
	goto	u337_20
u337_21:
	goto	i1l3364
u337_20:
	line	500
	
i1l3362:	
;acps.c: 499: {
;acps.c: 500: funcDisplay( 0,vblDig0 );
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
	line	501
;acps.c: 501: }
	goto	i1l3378
	line	502
	
i1l887:	
	
i1l3364:	
;acps.c: 502: else if( vblDisplayCount == 6 )
	movlw	06h
	xorwf	(_vblDisplayCount),w
	iorwf	(_vblDisplayCount+1),w
	skipz
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l3368
u338_20:
	line	504
	
i1l3366:	
;acps.c: 503: {
;acps.c: 504: funcDisplay( 1,vblDig1 );
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
	line	505
;acps.c: 505: }
	goto	i1l3378
	line	506
	
i1l889:	
	
i1l3368:	
;acps.c: 506: else if( vblDisplayCount == 9 )
	movlw	09h
	xorwf	(_vblDisplayCount),w
	iorwf	(_vblDisplayCount+1),w
	skipz
	goto	u339_21
	goto	u339_20
u339_21:
	goto	i1l3372
u339_20:
	line	508
	
i1l3370:	
;acps.c: 507: {
;acps.c: 508: funcDisplay( 2,vblDig2 );
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
	line	509
;acps.c: 509: }
	goto	i1l3378
	line	510
	
i1l891:	
	
i1l3372:	
;acps.c: 510: else if( vblDisplayCount == 12 )
	movlw	0Ch
	xorwf	(_vblDisplayCount),w
	iorwf	(_vblDisplayCount+1),w
	skipz
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l3378
u340_20:
	line	512
	
i1l3374:	
;acps.c: 511: {
;acps.c: 512: vblDisplayCount = 0;
	clrf	(_vblDisplayCount)
	clrf	(_vblDisplayCount+1)
	line	513
	
i1l3376:	
;acps.c: 513: funcDisplay( 3,vblDig3 );
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
	goto	i1l3378
	line	514
	
i1l893:	
	goto	i1l3378
	line	516
	
i1l892:	
	goto	i1l3378
	
i1l890:	
	goto	i1l3378
	
i1l888:	
	
i1l3378:	
;acps.c: 514: }
;acps.c: 516: if(msecond == 250)
	movlw	0FAh
	xorwf	(_msecond),w
	iorwf	(_msecond+1),w
	skipz
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l894
u341_20:
	line	519
	
i1l3380:	
;acps.c: 517: {
;acps.c: 519: vblSegStat = !vblSegStat;
	movlw	1<<((_vblSegStat)&7)
	xorwf	((_vblSegStat)/8),f
	line	520
	
i1l894:	
	line	521
;acps.c: 520: }
;acps.c: 521: if(msecond == 500)
	movlw	high(01F4h)
	xorwf	(_msecond+1),w
	skipz
	goto	u342_25
	movlw	low(01F4h)
	xorwf	(_msecond),w
u342_25:

	skipz
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l895
u342_20:
	line	523
	
i1l3382:	
;acps.c: 522: {
;acps.c: 523: second ++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_second),f
	skipnc
	incf	(_second+1),f
	movlw	high(01h)
	addwf	(_second+1),f
	line	524
;acps.c: 524: RA5 = !RA5;
	movlw	1<<((45)&7)
	xorwf	((45)/8),f
	line	525
;acps.c: 525: vblSegStat = !vblSegStat;
	movlw	1<<((_vblSegStat)&7)
	xorwf	((_vblSegStat)/8),f
	line	526
	
i1l3384:	
;acps.c: 526: msecond = 0;
	clrf	(_msecond)
	clrf	(_msecond+1)
	line	527
	
i1l3386:	
;acps.c: 527: if( second == 60)
	movlw	03Ch
	xorwf	(_second),w
	iorwf	(_second+1),w
	skipz
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l895
u343_20:
	line	529
	
i1l3388:	
;acps.c: 528: {
;acps.c: 529: minute ++;
	movlw	low(01h)
	addwf	(_minute),f
	skipnc
	incf	(_minute+1),f
	movlw	high(01h)
	addwf	(_minute+1),f
	line	530
	
i1l3390:	
;acps.c: 530: second = 0;
	clrf	(_second)
	clrf	(_second+1)
	line	531
	
i1l3392:	
;acps.c: 531: if( minute == 60)
	movlw	03Ch
	xorwf	(_minute),w
	iorwf	(_minute+1),w
	skipz
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l895
u344_20:
	line	533
	
i1l3394:	
;acps.c: 532: {
;acps.c: 533: minute = 0;
	clrf	(_minute)
	clrf	(_minute+1)
	line	534
	
i1l3396:	
;acps.c: 534: hour ++;
	movlw	low(01h)
	addwf	(_hour),f
	skipnc
	incf	(_hour+1),f
	movlw	high(01h)
	addwf	(_hour+1),f
	goto	i1l895
	line	535
	
i1l3398:	
	goto	i1l895
	
i1l898:	
	goto	i1l895
	line	536
	
i1l897:	
	goto	i1l895
	line	537
	
i1l896:	
	line	538
	
i1l895:	
	line	539
;acps.c: 536: }
;acps.c: 537: }
;acps.c: 538: }
;acps.c: 539: TMR1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	line	540
	
i1l3400:	
;acps.c: 540: TMR1L = 47;
	movlw	(02Fh)
	movwf	(14)	;volatile
	line	541
;acps.c: 541: TMR1H = 0xFC;
	movlw	(0FCh)
	movwf	(15)	;volatile
	line	543
	
i1l3402:	
;acps.c: 543: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	544
	
i1l3404:	
;acps.c: 544: GIE = 1;
	bsf	(95/8),(95)&7
	line	545
	
i1l3406:	
;acps.c: 545: PEIE = 1;
	bsf	(94/8),(94)&7
	goto	i1l899
	line	546
	
i1l886:	
	line	547
	
i1l899:	
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
psect	text255,local,class=CODE,delta=2
global __ptext255
__ptext255:

;; *************** function _funcDisplay *****************
;; Defined at:
;;		line 441 in file "F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
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
psect	text255
	file	"F:\ELECTRONIC\2015\Projects\23. Automatic switch off power suply for Bale\PIC\ver2\acps.c"
	line	441
	global	__size_of_funcDisplay
	__size_of_funcDisplay	equ	__end_of_funcDisplay-_funcDisplay
	
_funcDisplay:	
	opt	stack 4
; Regs used in _funcDisplay: [wreg+status,2+status,0]
	line	442
	
i1l3284:	
;acps.c: 442: if ( DigNo==0 )
	movf	((funcDisplay@DigNo+1)),w
	iorwf	((funcDisplay@DigNo)),w
	skipz
	goto	u310_21
	goto	u310_20
u310_21:
	goto	i1l3292
u310_20:
	line	444
	
i1l3286:	
;acps.c: 443: {
;acps.c: 444: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	445
;acps.c: 445: RB2 = 1;
	bsf	(50/8),(50)&7
	line	446
;acps.c: 446: RB3 = 1;
	bsf	(51/8),(51)&7
	line	447
	
i1l3288:	
;acps.c: 447: if(vblBllinkDigitNo==0) RB0 = vblSegStat;
	movf	((_vblBllinkDigitNo+1)),w
	iorwf	((_vblBllinkDigitNo)),w
	skipz
	goto	u311_21
	goto	u311_20
u311_21:
	goto	i1l850
u311_20:
	
i1l3290:	
	btfsc	(_vblSegStat/8),(_vblSegStat)&7
	goto	u312_21
	goto	u312_20
	
u312_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	u313_24
u312_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
u313_24:
	goto	i1l3316
	line	448
	
i1l850:	
;acps.c: 448: else RB0 = 0;
	bcf	(48/8),(48)&7
	goto	i1l3316
	
i1l851:	
	line	449
;acps.c: 449: }
	goto	i1l3316
	line	450
	
i1l849:	
	
i1l3292:	
;acps.c: 450: else if ( DigNo==1 )
	movlw	01h
	xorwf	(funcDisplay@DigNo),w
	iorwf	(funcDisplay@DigNo+1),w
	skipz
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l3300
u314_20:
	line	452
	
i1l3294:	
;acps.c: 451: {
;acps.c: 452: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	453
;acps.c: 453: RB2 = 1;
	bsf	(50/8),(50)&7
	line	454
;acps.c: 454: RB3 = 1;
	bsf	(51/8),(51)&7
	line	455
	
i1l3296:	
;acps.c: 455: if(vblBllinkDigitNo==1) RB1 = vblSegStat;
	movlw	01h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l854
u315_20:
	
i1l3298:	
	btfsc	(_vblSegStat/8),(_vblSegStat)&7
	goto	u316_21
	goto	u316_20
	
u316_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	goto	u317_24
u316_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
u317_24:
	goto	i1l3316
	line	456
	
i1l854:	
;acps.c: 456: else RB1 = 0;
	bcf	(49/8),(49)&7
	goto	i1l3316
	
i1l855:	
	line	457
;acps.c: 457: }
	goto	i1l3316
	line	458
	
i1l853:	
	
i1l3300:	
;acps.c: 458: else if ( DigNo==2 )
	movlw	02h
	xorwf	(funcDisplay@DigNo),w
	iorwf	(funcDisplay@DigNo+1),w
	skipz
	goto	u318_21
	goto	u318_20
u318_21:
	goto	i1l3308
u318_20:
	line	460
	
i1l3302:	
;acps.c: 459: {
;acps.c: 460: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	461
;acps.c: 461: RB0 = 1;
	bsf	(48/8),(48)&7
	line	462
;acps.c: 462: RB3 = 1;
	bsf	(51/8),(51)&7
	line	463
	
i1l3304:	
;acps.c: 463: if(vblBllinkDigitNo==2) RB2 = vblSegStat;
	movlw	02h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u319_21
	goto	u319_20
u319_21:
	goto	i1l858
u319_20:
	
i1l3306:	
	btfsc	(_vblSegStat/8),(_vblSegStat)&7
	goto	u320_21
	goto	u320_20
	
u320_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	goto	u321_24
u320_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
u321_24:
	goto	i1l3316
	line	464
	
i1l858:	
;acps.c: 464: else RB2 = 0;
	bcf	(50/8),(50)&7
	goto	i1l3316
	
i1l859:	
	line	465
;acps.c: 465: }
	goto	i1l3316
	line	466
	
i1l857:	
	
i1l3308:	
;acps.c: 466: else if ( DigNo==3 )
	movlw	03h
	xorwf	(funcDisplay@DigNo),w
	iorwf	(funcDisplay@DigNo+1),w
	skipz
	goto	u322_21
	goto	u322_20
u322_21:
	goto	i1l3316
u322_20:
	line	468
	
i1l3310:	
;acps.c: 467: {
;acps.c: 468: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	469
;acps.c: 469: RB0 = 1;
	bsf	(48/8),(48)&7
	line	470
;acps.c: 470: RB2 = 1;
	bsf	(50/8),(50)&7
	line	471
	
i1l3312:	
;acps.c: 471: if(vblBllinkDigitNo==3) RB3 = vblSegStat;
	movlw	03h
	xorwf	(_vblBllinkDigitNo),w
	iorwf	(_vblBllinkDigitNo+1),w
	skipz
	goto	u323_21
	goto	u323_20
u323_21:
	goto	i1l862
u323_20:
	
i1l3314:	
	btfsc	(_vblSegStat/8),(_vblSegStat)&7
	goto	u324_21
	goto	u324_20
	
u324_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	goto	u325_24
u324_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
u325_24:
	goto	i1l3316
	line	472
	
i1l862:	
;acps.c: 472: else RB3 = 0;
	bcf	(51/8),(51)&7
	goto	i1l3316
	
i1l863:	
	goto	i1l3316
	line	473
	
i1l861:	
	goto	i1l3316
	line	475
	
i1l860:	
	goto	i1l3316
	
i1l856:	
	goto	i1l3316
	
i1l852:	
	
i1l3316:	
;acps.c: 473: }
;acps.c: 475: if( Value == 0) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 1;RC4 = 1;RC5 = 1;RC6 = 0;}
	movf	((funcDisplay@Value+1)),w
	iorwf	((funcDisplay@Value)),w
	skipz
	goto	u326_21
	goto	u326_20
u326_21:
	goto	i1l3320
u326_20:
	
i1l3318:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bsf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bcf	(62/8),(62)&7
	goto	i1l883
	line	476
	
i1l864:	
	
i1l3320:	
;acps.c: 476: else if( Value == 1) {RD7 = 0; RD6 = 1;RC2 = 1;RC3 = 0;RC4 = 0;RC5 = 0;RC6 = 0;}
	movlw	01h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u327_21
	goto	u327_20
u327_21:
	goto	i1l3324
u327_20:
	
i1l3322:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bcf	(62/8),(62)&7
	goto	i1l883
	line	477
	
i1l866:	
	
i1l3324:	
;acps.c: 477: else if( Value == 2) {RD7 = 1; RD6 = 1;RC2 = 0;RC3 = 1;RC4 = 1;RC5 = 0;RC6 = 1;}
	movlw	02h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u328_21
	goto	u328_20
u328_21:
	goto	i1l3328
u328_20:
	
i1l3326:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bcf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bsf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l883
	line	478
	
i1l868:	
	
i1l3328:	
;acps.c: 478: else if( Value == 3) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 1;RC4 = 0;RC5 = 0;RC6 = 1;}
	movlw	03h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l3332
u329_20:
	
i1l3330:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l883
	line	479
	
i1l870:	
	
i1l3332:	
;acps.c: 479: else if( Value == 4) {RD7 = 0; RD6 = 1;RC2 = 1;RC3 = 0;RC4 = 0;RC5 = 1;RC6 = 1;}
	movlw	04h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u330_21
	goto	u330_20
u330_21:
	goto	i1l3336
u330_20:
	
i1l3334:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l883
	line	480
	
i1l872:	
	
i1l3336:	
;acps.c: 480: else if( Value == 5) {RD7 = 1; RD6 = 0;RC2 = 1;RC3 = 1;RC4 = 0;RC5 = 1;RC6 = 1;}
	movlw	05h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u331_21
	goto	u331_20
u331_21:
	goto	i1l3340
u331_20:
	
i1l3338:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l883
	line	481
	
i1l874:	
	
i1l3340:	
;acps.c: 481: else if( Value == 6) {RD7 = 1; RD6 = 0;RC2 = 1;RC3 = 1;RC4 = 1;RC5 = 1;RC6 = 1;}
	movlw	06h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u332_21
	goto	u332_20
u332_21:
	goto	i1l3344
u332_20:
	
i1l3342:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bsf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l883
	line	482
	
i1l876:	
	
i1l3344:	
;acps.c: 482: else if( Value == 7) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 0;RC4 = 0;RC5 = 0;RC6 = 0;}
	movlw	07h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u333_21
	goto	u333_20
u333_21:
	goto	i1l3348
u333_20:
	
i1l3346:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bcf	(61/8),(61)&7
	bcf	(62/8),(62)&7
	goto	i1l883
	line	483
	
i1l878:	
	
i1l3348:	
;acps.c: 483: else if( Value == 8) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 1;RC4 = 1;RC5 = 1;RC6 = 1;}
	movlw	08h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l3352
u334_20:
	
i1l3350:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bsf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l883
	line	484
	
i1l880:	
	
i1l3352:	
;acps.c: 484: else if( Value == 9) {RD7 = 1; RD6 = 1;RC2 = 1;RC3 = 1;RC4 = 0;RC5 = 1;RC6 = 1;}
	movlw	09h
	xorwf	(funcDisplay@Value),w
	iorwf	(funcDisplay@Value+1),w
	skipz
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l883
u335_20:
	
i1l3354:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	bsf	(70/8),(70)&7
	bsf	(58/8),(58)&7
	bsf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	bsf	(61/8),(61)&7
	bsf	(62/8),(62)&7
	goto	i1l883
	
i1l882:	
	goto	i1l883
	line	486
	
i1l881:	
	goto	i1l883
	
i1l879:	
	goto	i1l883
	
i1l877:	
	goto	i1l883
	
i1l875:	
	goto	i1l883
	
i1l873:	
	goto	i1l883
	
i1l871:	
	goto	i1l883
	
i1l869:	
	goto	i1l883
	
i1l867:	
	goto	i1l883
	
i1l865:	
	
i1l883:	
	return
	opt stack 0
GLOBAL	__end_of_funcDisplay
	__end_of_funcDisplay:
;; =============== function _funcDisplay ends ============

	signat	_funcDisplay,8312
psect	text256,local,class=CODE,delta=2
global __ptext256
__ptext256:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
