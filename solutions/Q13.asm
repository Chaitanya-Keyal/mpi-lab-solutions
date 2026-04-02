; 13. Write an assembly program to perform Matrix Addition of two 2×2 matrices
.model small
.data

ARRAY1 DB 00H, 01H, 02H, 03H
ARRAY2 DB 01H, 01H, 02H, 03H

.code
.startup

LEA SI, ARRAY1
LEA BX, ARRAY2
MOV DI, 7000H
MOV CX, 0004H

ADD_LOOP:
    MOV AL, [SI]
    ADD AL, [BX]
    MOV [DI], AL

    INC SI
    INC BX
    INC DI
LOOP ADD_LOOP

.exit
end
