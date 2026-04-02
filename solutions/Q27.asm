; 27. ALP to check if the number of odd and even elements in an array are equal
.model small
.data

N      DB 04H
ARRAY  DB 11H, 22H, 33H, 44H
RESULT DB ?

.code
.startup

LEA SI, ARRAY
MOV CL, N
MOV CH, 00H
MOV BL, 00H
MOV BH, 00H

COUNT_LOOP:
    MOV AL, [SI]
    TEST AL, 01H
    JZ EVEN_ELEM

    INC BH
    JMP NEXT_ELEM

EVEN_ELEM:
    INC BL

NEXT_ELEM:
    INC SI
LOOP COUNT_LOOP

CMP BL, BH
JNE NOT_EQUAL

MOV RESULT, 01H
JMP DONE

NOT_EQUAL:
MOV RESULT, 00H

DONE:
.exit
end
