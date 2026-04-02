; 12. ALP to find the LCM of two numbers
.model small
.data

Num1    DB 08H
Num2    DB 0AH
LCM_Out DW ?

.code
.startup

; First find GCD using Euclid's algorithm.
MOV AL, Num1
MOV BL, Num2

GCD_LOOP:
    CMP BL, 00H
    JE GCD_DONE

    MOV AH, 00H
    DIV BL

    MOV AL, BL
    MOV BL, AH
    JMP GCD_LOOP

GCD_DONE:
MOV BL, AL
MOV BH, 00H

; LCM = (Num1 * Num2) / GCD
MOV AL, Num1
MUL Num2
MOV DX, 0000H
DIV BX

MOV LCM_Out, AX

.exit
end
