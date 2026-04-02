; 21. Write an ALP code to find the square root of a perfect square
.model small
.data

NUM  DB 10H
ROOT DB ?

.code
.startup

MOV AL, NUM
MOV AH, 00H
MOV BX, 0001H
MOV CL, 00H

SQRT_LOOP:
    CMP AX, BX
    JB SQRT_DONE

    SUB AX, BX
    ADD BX, 0002H
    INC CL
    JMP SQRT_LOOP

SQRT_DONE:
MOV ROOT, CL

.exit
end
