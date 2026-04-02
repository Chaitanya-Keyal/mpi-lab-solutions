; 6. ALP to find the first N terms of the fibonacci series
.model small
.data

N       DB 08H
FIB_Out DB 08H DUP(00H)

.code
.startup

MOV FIB_Out[0], 00H
MOV FIB_Out[1], 01H
MOV CL, N
MOV CH, 00H
SUB CX, 0002H
JC DONE
MOV SI, 0002H

FIB_LOOP:
    MOV AL, FIB_Out[SI-1]
    ADD AL, FIB_Out[SI-2]
    MOV FIB_Out[SI], AL
    INC SI
LOOP FIB_LOOP

DONE:
.exit
end
