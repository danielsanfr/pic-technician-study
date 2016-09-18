LIST P = 16F628A
#INCLUDE<p16f628a.inc>				;Arquivo padrão Microchip para o 16F628A
#DEFINE BANK0 BCF STATUS,RP0		;Seleciona BANCO 0 da mémoria
#DEFINE BANK1 BSF STATUS,RP0		;Seleciona BANCO 1 da mémoria

;__CONFIG _BOREN_ON & _CP_OFF & _PWRTE_OFF & _WDT_OFF & _XT_OSC
__CONFIG _BOREN_ON & _CP_OFF & _PWRTE_OFF & _WDT_OFF & _XT_OSC & _LVP_OFF

CBLOCK		0X20					;Definições das variáveis da memória RAM
			CONT1					;Variável da rotina de "DELAY".
			CONT2					;Variável da rotina de "DELAY".
			QUANT_VE
			CARACT
			CARACT_LINHA
			LINHA1
			LINHA2
			LINHA3
			LINHA4
			LINHA5
		ENDC

	RESET EQU	0X0000				;Vetor de Reset - inicio do programa
	ORG			RESET
	GOTO  INICIO
			
;--------------------------------------
DELAY:								;Sub-rotina de atraso.
			MOVLW	0X0F
			MOVWF	CONT1
			MOVLW	0X0F
			MOVWF	CONT2
			DECFSZ	CONT2,F
			GOTO	$-1
			DECFSZ	CONT1,F
			GOTO	$-5
	
			RETURN						;Retorno da sub-rotina de ataso.
;--------------------------------------

INICIO:								;Inicio do programa principal.

			BANK0							;Seleciona o BANK "0" de memória.
			MOVLW	B'00000111'				; Desliga os Comparadores e habilita os Bits como I/O Digital
			MOVWF	CMCON
			BCF		RCSTA,SPEN			  	; DESLIGA A USART.
								
			BANK1							;Seleciona o BANK "1" de memória.
			MOVLW	B'00000000'				;Configura todos os pinos da porta "A" como saida.
			MOVWF	TRISA					;      ..................
			MOVLW	B'00000000'				;Configura todos os pinos da porta "B" como saida.
			MOVWF	TRISB					;      ..................
			BANK0							;Seleciona o BANK "0" de memória.
		
			MOVLW	B'11111111'
			MOVWF	PORTA
			CLRF	PORTB					;Limpa todos os pinos da porta "b".

;--------------------------------------

INICIO_ALFABETO:

			MOVLW	.255
			MOVWF	CARACT

PROX_LETRA:

			BCF	STATUS,Z
			INCF	CARACT,F
			MOVLW	.51
			SUBWF	CARACT,W
			BTFSC	STATUS,Z
			GOTO	INICIO_ALFABETO
			MOVLW	0X8F
			MOVWF	QUANT_VE

LOOP:
		
			MOVLW	B'00010000'
			MOVWF	PORTA
			MOVLW	.0
			MOVWF	CARACT_LINHA
			CALL	TABELA
		BCF		PCLATH,0
			MOVWF	PORTB
			BSF		PORTA,3
			BCF		PORTA,3
			BCF		PORTA,4
			CALL	DELAY
		
			MOVLW	B'00010001'
			MOVWF	PORTA
			MOVLW	.1
			MOVWF	CARACT_LINHA
			CALL	TABELA
		BCF		PCLATH,0
			MOVWF	PORTB
			BSF		PORTA,3
			BCF		PORTA,3
			BCF		PORTA,4
			CALL	DELAY
		
			MOVLW	B'00010010'
			MOVWF	PORTA
			MOVLW	.2
			MOVWF	CARACT_LINHA
			CALL	TABELA
		BCF		PCLATH,0
			MOVWF	PORTB
			BSF		PORTA,3
			BCF		PORTA,3
			BCF		PORTA,4
			CALL	DELAY
		
			MOVLW	B'00010011'
			MOVWF	PORTA
			MOVLW	.3
			MOVWF	CARACT_LINHA
			CALL	TABELA
		BCF		PCLATH,0
			MOVWF	PORTB
			BSF		PORTA,3
			BCF		PORTA,3
			BCF		PORTA,4
			CALL	DELAY
		
			MOVLW	B'00010100'
			MOVWF	PORTA
			MOVLW	.4
			MOVWF	CARACT_LINHA
			CALL	TABELA
		BCF		PCLATH,0
			MOVWF	PORTB
			BSF		PORTA,3
			BCF		PORTA,3
			BCF		PORTA,4
			CALL	DELAY
	
			DECFSZ	QUANT_VE,F
			GOTO	LOOP
			GOTO	PROX_LETRA

;=====================================================================================================
;						ARQUIVOS  DE  INCLUDES  -  Sub Rotinas do Programa Principal
;=====================================================================================================

	#include "table.asm"		; Rotina de captura do código binário ao Matriz.

	END							; FIM  DA  PROGRAMAÇÃO