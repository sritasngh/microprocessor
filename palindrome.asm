;<Find if each of the numbers in a set of N numbers is a palindrome or not.>

jmp start

;N->1010H
;If it’s a palindrome mov FFH to the current location else 00H 
;code
start:	LXI H,1010H	
	MOV C,M	;C← N(no of numbers)
MAIN:	INX H
	MOV B, M	
	MVI A,0FH	;To get lower nibble
	ANA B		
	MOV D,A	;lower nibble in D
	MVI A,0F0H	;To get upper nibble
	ANA B		;upper nibble in A
	MVI E,0CH	;counter for rotating A right circular by 12 times
LOOP: RRC 	;Rotate accumulator right circular by 12 times 
	DCR E
	JNZ LOOP
	CMP D
	JZ PDROM 	;If the no is a palindrome
	MVI M,00H	;If the no is not a palindrome
	CALL FOR	
PDROM:MVI M,0FFH
FOR:	DCR C
	JNZ MAIN
HLT	


