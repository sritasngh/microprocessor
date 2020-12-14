;Add 16-bit values from memory using 8-bit addition.

jmp start

start:  LXI H,1010H
        MOV C,M
        INX H
;D & E -2 BYTES ; sum after every addition
        MOV E,M
        INX H
        MOV D,M
        DCR C
        XRA A
LOOP:   INX H
        MOV A,E
        ADD M
        MOV E,A
        MOV A,D
        ADC M
        MOV D,A
        DCR C
        JNZ LOOP
HLT