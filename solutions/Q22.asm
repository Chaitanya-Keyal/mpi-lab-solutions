; 22. Write a program in 8086 ALP to add data in one block of memory with data
; in another block of memory (Array Addition)
.model small
.data

BLOCK1 DB 23H, 42H, 63H, 77H, 25H
BLOCK2 DB 31H, 12H, 50H, 33H, 20H

.code
.startup

LEA SI, BLOCK1
LEA DI, BLOCK2
MOV CX, 0005H

ADD_LOOP:
    MOV AL, [SI]
    ADD AL, [DI]
    MOV [DI], AL

    INC SI
    INC DI
LOOP ADD_LOOP

.exit
end
