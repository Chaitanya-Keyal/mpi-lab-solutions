; 28. ALP to find the Hamming distance between two numbers
.model small
.data

NUM1 DB 0AH
NUM2 DB 0FH
DIST DB ?

.code
.startup

MOV AL, NUM1
XOR AL, NUM2
MOV CL, 08H
MOV BL, 00H

COUNT_LOOP:
    TEST AL, 01H
    JZ SKIP_INC
    INC BL

SKIP_INC:
    SHR AL, 1
LOOP COUNT_LOOP

MOV DIST, BL

.exit
end
