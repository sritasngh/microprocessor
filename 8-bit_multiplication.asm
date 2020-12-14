; Multiply N sets of numbers and find their cummulative sum
; 1010H-> number of sets of 8-bit numbers
; for example: (1 X 2) + (3 X 4) + (5 X 6)
; constrain:final result is 8-bit
jmp start
;data
;code
start: LXI H, 1010H
MOV B, M
LXI SP,2020H
L1: INX H
MOV C, M
INX H
XRA A
 L2: ADD M
 DCR C
 MOV E, A
 JNZ L2
 PUSH D
DCR B
JNZ L1
LXI H, 1010H
MOV B, M
XRA A
L3: POP D
ADC E
DCR B
JNZ L3
STA 2000H
hlt