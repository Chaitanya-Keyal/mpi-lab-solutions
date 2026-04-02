; 29. ALP to generate multiplication table of a number
.model small
.data

NUM   DB 05H
TABLE DB 0AH DUP(?)

.code
.startup

LEA DI, TABLE
MOV BL, 01H
MOV CL, 0AH

TABLE_LOOP:
    MOV AL, NUM
    MUL BL
    MOV [DI], AL

    INC DI
    INC BL
LOOP TABLE_LOOP

.exit
end
