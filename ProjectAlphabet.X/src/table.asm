;=====================================================================================================
;
; Objetivo da Sub-Rotina:	Gerar uma rotina que faça a captura do código DOS DÍGITOS DO DISPLAY.
; Nome do Arquivo:			table.asm
;
;=====================================================================================================

TABELA:

        BCF     PCLATH,0
		BCF     PCLATH,1
        MOVF    CARACT,W
        ADDWF   PCL,F
		GOTO	LETRA_A				; Caractere 0
		GOTO	LETRA_B				; Caractere 1
		GOTO	LETRA_C				; Caractere 2
		GOTO	LETRA_D				; Caractere 3
		GOTO	LETRA_E				; Caractere 4
		GOTO	LETRA_F				; Caractere 5
		GOTO	LETRA_G				; Caractere 6
		GOTO	LETRA_H				; Caractere 7
		GOTO	LETRA_I				; Caractere 8
		GOTO	LETRA_J				; Caractere 9
		GOTO	LETRA_K				; Caractere 10
		GOTO	LETRA_L				; Caractere 11
		GOTO	LETRA_M				; Caractere 12
		GOTO	LETRA_N				; Caractere 13
		GOTO	LETRA_O				; Caractere 14
		GOTO	LETRA_P				; Caractere 15
		GOTO	LETRA_Q				; Caractere 16
		GOTO	LETRA_R				; Caractere 17
		GOTO	LETRA_S				; Caractere 18
		GOTO	LETRA_T				; Caractere 19
		GOTO	LETRA_U				; Caractere 20
		GOTO	LETRA_V				; Caractere 21
		GOTO	LETRA_W				; Caractere 22
		GOTO	LETRA_X				; Caractere 23
		GOTO	LETRA_Y				; Caractere 24
		GOTO	LETRA_Z				; Caractere 25
		GOTO	ZERO				; Caractere 26
		GOTO	UM				; Caractere 27
		GOTO	DOIS				; Caractere 28
		GOTO	TRES				; Caractere 29
		GOTO	QUATRO				; Caractere 30
		GOTO	CINCO				; Caractere 31
		GOTO	SEIS				; Caractere 32
		GOTO	SETE				; Caractere 33
		GOTO	OITO				; Caractere 34
		GOTO	NOVE				; Caractere 35
		GOTO	PONTO				; Caractere 36
		GOTO	VIRGULA				; Caractere 37
		GOTO	ADICAO				; Caractere 38
		GOTO	SUBTRASAO				; Caractere 39
		GOTO	MULTIPLICACAO				; Caractere 40
		GOTO	DIVISAO				; Caractere 41
		GOTO	IGUALDADE				; Caractere 42
		GOTO	ESCLAMACAO				; Caractere 43
		GOTO	INTEROGACAO				; Caractere 444
		GOTO	PONTO_VIRGULA				; Caractere 45
		GOTO	DOIS_PONTOS				; Caractere 46
		GOTO	PORCENTAGEM				; Caractere 47
		GOTO	CORACAO				; Caractere 48
		GOTO	ABRA_PARENTES		; Caractere 49
		GOTO	FECHA_PARENTES		; Caractere 50
		GOTO	ESPACO				; Caractere 51

LETRA_A:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01100000'
                RETLW    B'10010000'
                RETLW    B'11110000'
                RETLW    B'10010000'
                RETLW    B'10010000'
 
LETRA_B:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'11100000'
                RETLW    B'10010000'
                RETLW    B'11100000'
                RETLW    B'10010000'
                RETLW    B'11100000'
 
LETRA_C:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01100000'
                RETLW    B'10010000'
                RETLW    B'10000000'
                RETLW    B'10010000'
                RETLW    B'01100000'
 
LETRA_D:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'11100000'
                RETLW    B'10010000'
                RETLW    B'10010000'
                RETLW    B'10010000'
                RETLW    B'11100000'
 
LETRA_E:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'11110000'
                RETLW    B'10000000'
                RETLW    B'11100000'
                RETLW    B'10000000'
                RETLW    B'11110000'
 
LETRA_F:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'11110000'
                RETLW    B'10000000'
                RETLW    B'11100000'
                RETLW    B'10000000'
                RETLW    B'10000000'
 
LETRA_G:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01110000'
                RETLW    B'10000000'
                RETLW    B'10110000'
                RETLW    B'10010000'
                RETLW    B'01100000'
 
LETRA_H:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10010000'
                RETLW    B'10010000'
                RETLW    B'11110000'
                RETLW    B'10010000'
                RETLW    B'10010000'
 
LETRA_I:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'11100000'
                RETLW    B'01000000'
                RETLW    B'01000000'
                RETLW    B'01000000'
                RETLW    B'11100000'
 
LETRA_J:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01110000'
                RETLW    B'00100000'
                RETLW    B'00100000'
                RETLW    B'10100000'
                RETLW    B'01000000'
 
LETRA_K:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10010000'
                RETLW    B'10100000'
                RETLW    B'11000000'
                RETLW    B'10100000'
                RETLW    B'10010000'
 
LETRA_L:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10000000'
                RETLW    B'10000000'
                RETLW    B'10000000'
                RETLW    B'10000000'
                RETLW    B'11100000'
 
LETRA_M:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10001000'
                RETLW    B'11011000'
                RETLW    B'10101000'
                RETLW    B'10001000'
                RETLW    B'10001000'
 
LETRA_N:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10010000'
                RETLW    B'11010000'
                RETLW    B'10110000'
                RETLW    B'10010000'
                RETLW    B'10010000'
 
LETRA_O:      
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01110000'
                RETLW    B'10001000'
                RETLW    B'10001000'
                RETLW    B'10001000'
                RETLW    B'01110000'
				
  		ORG		0X0100
		
LETRA_P:      

        BSF     PCLATH,0
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'11100000'
                RETLW    B'10010000'
                RETLW    B'11100000'
                RETLW    B'10000000'
                RETLW    B'10000000'

LETRA_Q:

        BSF     PCLATH,0   
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01110000'
                RETLW    B'10001000'
                RETLW    B'10001000'
                RETLW    B'10010000'
                RETLW    B'01101000'

LETRA_R:      

        BSF     PCLATH,0			
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'11100000'
                RETLW    B'10010000'
                RETLW    B'11100000'
                RETLW    B'10100000'
                RETLW    B'10010000'

LETRA_S:    

        BSF     PCLATH,0
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01110000'
                RETLW    B'10000000'
                RETLW    B'01100000'
                RETLW    B'00010000'
                RETLW    B'11100000'
 
LETRA_T:     

        BSF     PCLATH,0
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'11100000'
                RETLW    B'01000000'
                RETLW    B'01000000'
                RETLW    B'01000000'
                RETLW    B'01000000'
 
LETRA_U:      

        BSF     PCLATH,0
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10010000'
                RETLW    B'10010000'
                RETLW    B'10010000'
                RETLW    B'10010000'
                RETLW    B'01100000'
 
LETRA_V:    

        BSF     PCLATH,0  
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10001000'
                RETLW    B'10001000'
                RETLW    B'10001000'
                RETLW    B'01010000'
                RETLW    B'00100000'
 
LETRA_X:   

        BSF     PCLATH,0   
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10001000'
                RETLW    B'01010000'
                RETLW    B'00100000'
                RETLW    B'01010000'
                RETLW    B'10001000'
 
LETRA_Y:   

        BSF     PCLATH,0   
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10001000'
                RETLW    B'01010000'
                RETLW    B'00100000'
                RETLW    B'00100000'
                RETLW    B'00100000'
 
LETRA_W:     

        BSF     PCLATH,0  
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10001000'
                RETLW    B'10001000'
                RETLW    B'10101000'
                RETLW    B'11011000'
                RETLW    B'10001000'
 
LETRA_Z:      

        BSF     PCLATH,0
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'11111000'
                RETLW    B'00010000'
                RETLW    B'00100000'
                RETLW    B'01000000'
                RETLW    B'11111000'
 
ZERO:       

        BSF     PCLATH,0  
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01100000'
                RETLW    B'10010000'
                RETLW    B'10010000'
                RETLW    B'10010000'
                RETLW    B'01100000'
 
UM:      

        BSF     PCLATH,0   
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01000000'
                RETLW    B'11000000'
                RETLW    B'01000000'
                RETLW    B'01000000'
                RETLW    B'11100000'
 
DOIS:       

        BSF     PCLATH,0 
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01100000'
                RETLW    B'10010000'
                RETLW    B'00100000'
                RETLW    B'01000000'
                RETLW    B'11110000'
 
TRES:      

        BSF     PCLATH,0   
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'11000000'
                RETLW    B'00100000'
                RETLW    B'11000000'
                RETLW    B'00100000'
                RETLW    B'11000000'
 
QUATRO:   

        BSF     PCLATH,0     
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10100000'
                RETLW    B'10100000'
                RETLW    B'11100000'
                RETLW    B'00100000'
                RETLW    B'00100000'
 
CINCO:       

        BSF     PCLATH,0
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'11100000'
                RETLW    B'10000000'
                RETLW    B'11100000'
                RETLW    B'00010000'
                RETLW    B'11100000'
 
SEIS:       

        BSF     PCLATH,0   
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01100000'
                RETLW    B'10000000'
                RETLW    B'11100000'
                RETLW    B'10010000'
                RETLW    B'01100000'
 
SETE:       

        BSF     PCLATH,0  
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'11110000'
                RETLW    B'00010000'
                RETLW    B'00100000'
                RETLW    B'01000000'
                RETLW    B'01000000'
 
OITO:      

        BSF     PCLATH,0   
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01100000'
                RETLW    B'10010000'
                RETLW    B'01100000'
                RETLW    B'10010000'
                RETLW    B'01100000'
 
NOVE:       

        BSF     PCLATH,0   
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01100000'
                RETLW    B'10010000'
                RETLW    B'01110000'
                RETLW    B'00010000'
                RETLW    B'01100000'
 
PONTO:    

        BSF     PCLATH,0    
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'00000000'
                RETLW    B'00000000'
                RETLW    B'00000000'
                RETLW    B'00000000'
                RETLW    B'10000000'
 
VIRGULA:     

        BSF     PCLATH,0  
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'00000000'
                RETLW    B'00000000'
                RETLW    B'00000000'
                RETLW    B'11000000'
                RETLW    B'01000000'
 
ADICAO:      

        BSF     PCLATH,0 
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'00000000'
                RETLW    B'01000000'
                RETLW    B'11100000'
                RETLW    B'01000000'
                RETLW    B'00000000'
 
SUBTRASAO:    

        BSF     PCLATH,0
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'00000000'
                RETLW    B'00000000'
                RETLW    B'11100000'
                RETLW    B'00000000'
                RETLW    B'00000000'
 
MULTIPLICACAO:

        BSF     PCLATH,0
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'00000000'
                RETLW    B'10100000'
                RETLW    B'01000000'
                RETLW    B'10100000'
                RETLW    B'00000000'
 
DIVISAO:   

        BSF     PCLATH,0   
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'00000000'
                RETLW    B'00100000'
                RETLW    B'01000000'
                RETLW    B'10000000'
                RETLW    B'00000000'
    		ORG		0X0200
IGUALDADE:   

        BSF     PCLATH,1
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'00000000'
                RETLW    B'11100000'
                RETLW    B'00000000'
                RETLW    B'11100000'
                RETLW    B'00000000'

ESCLAMACAO: 
  
        BSF     PCLATH,1
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10000000'
                RETLW    B'10000000'
                RETLW    B'10000000'
                RETLW    B'00000000'
                RETLW    B'10000000'

INTEROGACAO:  

        BSF     PCLATH,1
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01100000'
                RETLW    B'10010000'
                RETLW    B'00100000'
                RETLW    B'00000000'
                RETLW    B'00100000'

PONTO_VIRGULA:

        BSF     PCLATH,1
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'00000000'
                RETLW    B'01000000'
                RETLW    B'00000000'
                RETLW    B'11000000'
                RETLW    B'01000000'
 
DOIS_PONTOS:

        BSF     PCLATH,1
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'00000000'
                RETLW    B'10000000'
                RETLW    B'00000000'
                RETLW    B'00000000'
                RETLW    B'10000000'

PORCENTAGEM:

        BSF     PCLATH,1
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10001000'
                RETLW    B'00010000'
                RETLW    B'00100000'
                RETLW    B'01000000'
                RETLW    B'10001000'
				
CORACAO:
				
        BSF     PCLATH,1
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01010000'
                RETLW    B'10101000'
                RETLW    B'10001000'
                RETLW    B'01010000'
                RETLW    B'00100000'
				
ABRA_PARENTES:

        BSF     PCLATH,1
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'01000000'
                RETLW    B'10000000'
                RETLW    B'10000000'
                RETLW    B'10000000'
                RETLW    B'01000000'
 
FECHA_PARENTES:

        BSF     PCLATH,1
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'10000000'
                RETLW    B'01000000'
                RETLW    B'01000000'
                RETLW    B'01000000'
                RETLW    B'10000000'
				
ESPACO:

        BSF     PCLATH,1
                MOVF    CARACT_LINHA,W
                ADDWF   PCL,F
                RETLW    B'00000000'
                RETLW    B'00000000'
                RETLW    B'00000000'
                RETLW    B'00000000'
                RETLW    B'00000000'