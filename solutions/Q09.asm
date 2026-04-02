; 9. ALP to sort the elements of an array in ascending order using bubble sort
.model small
.data

N     DB 05H
ARRAY DB 53H, 45H, 13H, 46H, 10H

.code
.startup

MOV CL, N
MOV CH, 00H
DEC CX

OUTER_LOOP:
    LEA BX, ARRAY
    MOV DX, CX

INNER_LOOP:
    MOV AL, [BX]
    CMP AL, [BX+1]
    JBE NO_SWAP

    XCHG AL, [BX+1]
    MOV [BX], AL

NO_SWAP:
    INC BX
    DEC DX
    JNZ INNER_LOOP
LOOP OUTER_LOOP

.exit
end
