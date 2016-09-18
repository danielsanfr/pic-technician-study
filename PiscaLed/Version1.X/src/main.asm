;Sestemas Digitas Programáveis - Cap.5 Prof. Luis Hermano
;Aluno: Daniel San Nº06 Turma:323-C
;Nome do Programa: Pisca Led

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
DELAY:								;Sub-rotina de atraso.
		MOVLW	0XFF
		MOVWF	CONT1
		MOVLW	0XFF
		MOVWF	CONT2
		DECFSZ	CONT2,F
		GOTO	$-1
		DECFSZ	CONT1,F
		GOTO	$-5
		RETURN						;Retorno da sub-rotina de ataso.
INICIO:								;Inicio do programa principal.
	BANK1							;Seleciona o BANK "1" de memória.
	MOVLW	B'00000000'				;Configura todos os pinos da porta "b" como saida.
	MOVWF	TRISB					;      ..................
	BANK0							;Seleciona o BANK "0" de memória.
	CLRF	PORTB					;Limpa todos os pinos da porta "b".
LOOP:
	BCF		PORTB,1					;Acende o LED
	CALL	DELAY					;Chama subrotina de atraso
	BSF		PORTB,1					;Apaga o LED
	CALL	DELAY					;Chama subrotina de atraso
	GOTO	LOOP					;Retorna para LOOP
	END								;FIM DE PROGRAMA