; 11. ALP to find the GCD of two numbers
.model small
.data

Num1    DB 08H
Num2    DB 0AH
GCD_Out DB ?

.code
.startup

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
MOV GCD_Out, AL

.exit
end
