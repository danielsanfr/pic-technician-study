;Sestemas Digitas Programáveis - Cap.5 Prof. Luis Hermano
;Aluno: Daniel San Nº06 Turma: 323-C
;Nome do Programa: Controle 1.0

LIST P = 16F628A
#INCLUDE<p16f628a.inc>				;Arquivo padrão Microchip para o 16F628A
#DEFINE BANK0 BCF STATUS,RP0		;Seleciona BANCO 0 da mémoria
#DEFINE BANK1 BSF STATUS,RP0		;Seleciona BANCO 1 da mémoria

		__CONFIG _BOREN_ON & _CP_OFF & _PWRTE_OFF & _WDT_OFF & _LVP_OFF & _INTOSC_OSC_NOCLKOUT & _MCLRE_OFF  ;configura bits

CBLOCK		0X20					;Definições das variáveis da memória RAM
			CONT1					;Variável da rotina de "DELAY".
			CONT2					;Variável da rotina de "DELAY".
		ENDC

	RESET EQU	0X0000				;Vetor de Reset - inicio do programa
	ORG			RESET
	GOTO  INICIO
LD0:
	MOVLW	B'11111110'
	MOVWF	PORTB
	RETURN
LD1:
	MOVLW	B'11111101'
	MOVWF	PORTB
	RETURN
LD2:
	MOVLW	B'11111011'
	MOVWF	PORTB
	RETURN
LD3:
	MOVLW	B'11110111'
	MOVWF	PORTB
	RETURN
INICIO:								;Inicio do programa principal.
	BANK1							;Seleciona o BANK "1" de memória.
	MOVLW	B'00000000'				;Configura todos os pinos da porta "b" como saida.
	MOVWF	TRISB					;      ..................
	MOVLW	B'00000011'				;Configura todos os pinos da porta "b" como saida.
	MOVWF	TRISA	
	BANK0							;Seleciona o BANK "0" de memória.
	MOVLW	0XFF
	MOVWF	PORTB
LOOP:
	BTFSS	PORTA,0					;Testa se RB0 esta setado
	BTFSC	PORTA,1					;Testa se RB1 esta resetado
	GOTO	$+2						;Não acende o LED0
	CALL	LD0						;Chama subrotina que acende o LED0

	BTFSC	PORTA,0					;Testa se RB0 esta resetado
	BTFSC	PORTA,1					;Testa se RB1 esta resetado
	GOTO	$+2						;Não acende o LED1
	CALL	LD1						;Chama subrotina que acende o LED1

	BTFSS	PORTA,0					;Testa se RB0 esta setado
	BTFSS	PORTA,1					;Testa se RB1 esta setado
	GOTO	$+2						;Não acende o LED2
	CALL	LD2						;Chama subrotina que acende o LED2

	BTFSC	PORTA,0					;Testa se RB0 esta resetado
	BTFSS	PORTA,1					;Testa se RB1 esta setado
	GOTO	$+2						;Não acende o LED3
	CALL	LD3						;Chama subrotina que acende o LED3

	GOTO	LOOP					;Retorna para LOOP
	END								;FIM DE PROGRAMA