
;The number of numbers N is in 1010H
;1010H onwards you have the numbers (8-bit)
;Find if each number is a prime number or not 
;If it is a prime, replace the number with FFH
;If the number is not a prime number,replace 00H
;You have to make use of atleast one subroutine
;CALL + RET (conditional or unconditional)

jmp start
start:  LXI H,1010H
	MOV C,M
MAIN:	INX H
	MOV A,M ;A-> DIVIDENT
	MVI B,02H ;B-> DIVISOR
	MVI D,00H ; D->Q
	CALL DIV 
	MOV E,D ;E=N/2
	CALL ISPRIME 
	DCR C
	JNZ MAIN       	
hlt
DIV:	INR D
	SUB B ;A=A-B
	JNC DIV
	DCR D
	ADD B ; A->REMAINDER	
	RET
ISPRIME: MOV A,M
	MOV B,E
	MVI D,00H
	CALL DIV
	CPI 00H
	CZ NOTPRIME
	DCR E 
	MOV A,E
	CPI 01H
	JNZ ISPRIME
	MVI M,0FFH ;if the no is a prime no
	RET
NOTPRIME:MVI M, 00H ;if the no is not a prime no.
	CALL MAIN
