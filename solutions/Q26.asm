; 26. ALP to count the number of 1's in an 8-bit number
.model small
.data

NUM   DB 0AH
COUNT DB ?

.code
.startup

MOV AL, NUM
MOV CL, 08H
MOV BL, 00H

COUNT_LOOP:
    TEST AL, 01H
    JZ SKIP_INC
    INC BL

SKIP_INC:
    SHR AL, 1
LOOP COUNT_LOOP

MOV COUNT, BL

.exit
end
