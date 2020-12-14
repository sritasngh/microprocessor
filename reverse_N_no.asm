;Number of numbers N is in 1010H,N<-even
;Reverse the numbers -first<->last
;All the numbers should visit stack--push/pop
;Your stack should not grow; max-4 bytes;

jmp start
start:	LXI H,1010H
	XRA A
	MOV A,M ;A<- N
	RAR 
	MVI D,00H
	MOV E,M
	XCHG ; A<-N/2
	DAD D
	INX D
	LXI SP,2020H
LOOP:	MVI B,00H
	MOV C,M	
	PUSH B
	XCHG
	MOV C,M
	PUSH B
	XCHG
	POP B
	MOV M,C
	XCHG
	POP B
	MOV M,C
	XCHG
	INX D
	DCX H
	DCR A
	JNZ LOOP		
hlt
