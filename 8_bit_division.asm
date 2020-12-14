;DIVISION: N sets. 1010H holds N. 
;1011->1'st Number; 1012->2nd Number 
;1st Num / 2nd Num 
;Q -> 1011 R -> 1012 
;Repeat until N-sets
 
jmp start  

;data
;code
start:  LXI H,1010H
	MOV C,M ;C-> No. of sets

LOOP:	INX H
	MOV A,M
	INX H
	MVI D,00H ;D->Q
DIV:	MOV E,A ;E->R
	INR D
	SUB M
	JP DIV
	DCR D
	MOV M,E
	DCX H
	MOV M,D
	INX H
	DCR C
	JNZ LOOP
hlt

