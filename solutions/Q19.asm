; 19. Write an ALP to compare two strings of 20 bytes
.model small
.data

STR1 DB 20 DUP('A')
STR2 DB 20 DUP('A')

.code
.startup

LEA SI, STR1
LEA DI, STR2
MOV CX, 0014H
CLD

REPE CMPSB
JNE NOT_EQUAL

MOV BL, 01H
JMP DONE

NOT_EQUAL:
MOV BL, 00H

DONE:
.exit
end
