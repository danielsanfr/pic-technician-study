;Sestemas Digitas Programáveis - Cap.5 Prof. Luis Hermano
;Autor Daniel San
;Nome do Programa: A com Leds

LIST P = 16F628A
#INCLUDE<p16f628a.inc>				;Arquivo padrão Microchip para o 16F628A
#DEFINE BANK0 BCF STATUS,RP0		;Seleciona BANCO 0 da mémoria
#DEFINE BANK1 BSF STATUS,RP0		;Seleciona BANCO 1 da mémoria

__CONFIG _BOREN_ON & _CP_OFF & _PWRTE_OFF & _WDT_OFF & _XT_OSC

CBLOCK		0X20					;Definições das variáveis da memória RAM
			CONT1					;Variável da rotina de "DELAY".
			CONT2					;Variável da rotina de "DELAY".
		ENDC

	RESET EQU	0X0000				;Vetor de Reset - inicio do programa
	ORG			RESET
	GOTO  INICIO
;--------------------------------------

DELAY:								;Sub-rotina de atraso.
		MOVLW	0X02
		MOVWF	CONT1
		MOVLW	0X02
		MOVWF	CONT2
		DECFSZ	CONT2,F
		GOTO	$-1
		DECFSZ	CONT1,F
		GOTO	$-5

		RETURN						;Retorno da sub-rotina de ataso.
;--------------------------------------

INICIO:								;Inicio do programa principal.

	BANK1							;Seleciona o BANK "1" de memória.
	MOVLW	B'00000000'				;Configura todos os pinos da porta "b" como saida.
	MOVWF	TRISB					;      ..................
	MOVLW	B'11111000'	
	MOVWF	TRISA
	BANK0							;Seleciona o BANK "0" de memória.
	CLRF	PORTB					;Limpa todos os pinos da porta "b".
	CLRF	PORTA

;--------------------------------------

LOOP:

	MOVLW	0X00
	MOVWF	PORTA
	MOVLW	0XF9					;.
	MOVWF	PORTB					;.
	CALL	DELAY					;Chama uma sub-rotina de atraso em segundos.
	MOVLW	0X01
	MOVWF	PORTA
	MOVLW	0XF6					;.
	MOVWF	PORTB					;.
	CALL	DELAY					;Chama uma sub-rotina de atraso em segundos.
	MOVLW	0X02
	MOVWF	PORTA
	MOVLW	0XF0					;.
	MOVWF	PORTB					;.
	CALL	DELAY					;Chama uma sub-rotina de atraso em segundos.
	MOVLW	0X03
	MOVWF	PORTA
	MOVLW	0XF6					;.
	MOVWF	PORTB					;.
	CALL	DELAY					;Chama uma sub-rotina de atraso em segundos.
	MOVLW	0X04
	MOVWF	PORTA
	MOVLW	0XF6					;.
	MOVWF	PORTB					;.
	CALL	DELAY					;Chama uma sub-rotina de atraso em segundos.	
	GOTO	LOOP					;Retorna para LOOP
	END								;FIM DE PROGRAMA