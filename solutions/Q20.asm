; 20. ALP to multiply two 8-bit numbers without using MUL instruction
.model small
.data

NUM1 DB 05H
NUM2 DB 03H
PROD DW ?

.code
.startup

; Shift-and-add multiplication.
MOV AL, NUM1
MOV AH, 00H
MOV BL, NUM2
MOV DX, 0000H
MOV CX, 0008H

MUL_LOOP:
    TEST BL, 01H
    JZ NO_ADD
    ADD DX, AX

NO_ADD:
    SHL AX, 1
    SHR BL, 1
LOOP MUL_LOOP

MOV PROD, DX

.exit
end
