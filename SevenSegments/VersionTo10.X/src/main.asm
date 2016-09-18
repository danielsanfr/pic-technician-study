;==============================================================================
;Nome do Programa: 7-segmentos
;Autor: Daniel San Ferreira da Rocha
;==============================================================================

LIST P = 16F628A
#INCLUDE<p16f628a.inc>				;Arquivo padrão Microchip para o 16F628A
#DEFINE BANK0 BCF STATUS,RP0		;Seleciona BANCO 0 da mémoria
#DEFINE BANK1 BSF STATUS,RP0		;Seleciona BANCO 1 da mémoria

;__CONFIG _BOREN_ON & _CP_OFF & _PWRTE_OFF & _WDT_OFF & _XT_OSC
		__CONFIG _BOREN_ON & _CP_OFF & _PWRTE_OFF & _WDT_OFF & _LVP_OFF & _INTOSC_OSC_NOCLKOUT & _MCLRE_OFF  ;configura bits

CBLOCK		0X20					;Definições das variáveis da memória RAM
			CONT1					;Variável da rotina de "DELAY".
			CONT2					;Variável da rotina de "DELAY".
			CARACT
			INVERT
		ENDC

	RESET EQU	0X0000				;Vetor de Reset - inicio do programa
	ORG			RESET
	GOTO  INICIO
;==================================================================
;Subrotina de atraso.
;==================================================================
DELAY:								;Sub-rotina de atraso.
		MOVLW	0X0F
		MOVWF	CONT1
		MOVLW	0XFF
		MOVWF	CONT2
		DECFSZ	CONT2,F
		GOTO	$-1
		DECFSZ	CONT1,F
		GOTO	$-5

		RETURN						;Retorno da sub-rotina de ataso.
;==================================================================
;Subrotina com valores do display.
;==================================================================
TABELA:
        MOVF    CARACT,W
        ADDWF   PCL,F	
		RETLW	B'11101101'
		RETLW	B'00101000'
		RETLW	B'11001110'
		RETLW	B'01101110'
		RETLW	B'00101011'
		RETLW	B'01100111'
		RETLW	B'11100111'
		RETLW	B'00101100'
		RETLW	B'11101111'
		RETLW	B'00101111'
		RETLW	B'10101111'
		RETLW	B'11100011'
		RETLW	B'11000101'
		RETLW	B'11101010'
		RETLW	B'11000111'
		RETLW	B'10000111'
;=====================================================================
;Inicio do programa pincipal.
;=====================================================================
INICIO:									;Inicio do programa principal.

		BANK0							;Seleciona o BANK "0" de memória.
		MOVLW	B'00000111'				; Desliga os Comparadores e habilita os Bits como I/O Digital
		MOVWF	CMCON
		BCF		RCSTA,SPEN				; DESLIGA A USART.
										;Inicio do programa principal.
		BANK1							;Seleciona o BANK "1" de memória.
		MOVLW	B'00000000'				;Configura todos os pinos da porta "b" como saida.
		MOVWF	TRISB					;      ..................
		BANK0							;Seleciona o BANK "0" de memória.
		CLRF	PORTB					;Limpa todos os pinos da porta "b".

LOOP:
		MOVLW	0X00
		MOVWF	CARACT
		CALL	TABELA
		MOVWF	PORTB
		BSF		PORTB,4
		CALL	DELAY
		MOVLW	0X01
		MOVWF	CARACT
		CALL	TABELA
		MOVWF	INVERT
		COMF	INVERT,0
		MOVWF	PORTB
		BCF		PORTB,4
		CALL	DELAY
		GOTO	LOOP					;Retorna para LOOP
		END								;FIM DE PROGRAMA