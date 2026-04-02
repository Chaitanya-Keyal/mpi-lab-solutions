; 25. ALP to search for an element in an array
.model small
.data

N      DB 05H
ARRAY  DB 10H, 20H, 30H, 40H, 50H
KEY    DB 30H
RESULT DB ?

.code
.startup

LEA SI, ARRAY
MOV CL, N
MOV CH, 00H
MOV AL, KEY

SEARCH_LOOP:
    CMP AL, [SI]
    JE FOUND

    INC SI
LOOP SEARCH_LOOP

MOV RESULT, 00H
JMP DONE

FOUND:
MOV RESULT, 01H

DONE:
.exit
end
