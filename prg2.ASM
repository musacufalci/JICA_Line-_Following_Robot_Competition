
		LIST	P=16F628A
		INCLUDE	"P16F628A.INC"
;		RADIX	HEX

SAYAC1	EQU		h'20'
SAYAC2	EQU		h'21'
DEGER	EQU		h'22'

		CLRF	PORTA
		CLRF	PORTB
		BCF		STATUS,RP1
		BSF		STATUS,RP0		;BANK1

		MOVLW	b'00000'
		MOVWF	TRISA
		MOVLW	h'FF'
		MOVWF	TRISB
		BCF		STATUS,RP0

		MOVLW	h'07'
		MOVWF	CMCON
;___________________________________________________

BASLA		

		BTFSC	PORTB,4
		GOTO	SAGG
		BTFSC	PORTB,5
		GOTO	SOLL
		GOTO	ILERI
SAGG
		GOTO	SAG	
SOLL
		GOTO	SOL	


	
		GOTO	BASLA
;___________________________________________________
ILERI
;		CLRF	PORTA
		BSF		PORTA,0
		BCF		PORTA,1

		BSF		PORTA,2
		BCF		PORTA,3

		GOTO	BASLA

DUR
		CLRF	PORTA
		GOTO	BASLA

SAG	
		CLRF	PORTA
		BSF		PORTA,0
		BCF		PORTA,1
		GOTO	BASLA

SOL
		CLRF	PORTA
		BSF		PORTA,2
		BCF		PORTA,3
		GOTO	BASLA
;______________NORMAL______________________



;__________________________________________

TIMER
		MOVLW	h'FF'
		MOVWF	SAYAC1
DONGU1
		MOVLW	h'FF'
		MOVWF	SAYAC2
DONGU2
		DECFSZ	SAYAC2,1
		GOTO	DONGU2
		DECFSZ	SAYAC1,1
		GOTO	DONGU1
		RETURN
DONGU
		GOTO	DONGU

		END
		
 