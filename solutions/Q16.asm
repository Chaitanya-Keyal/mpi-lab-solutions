; 16. ALP to reverse a string, and print both the original and new versions of the string
.model small
.data

StrLen DB 05H
STR    DB 'HELLO$'
REVSTR DB 06 DUP(?)

.code
.startup

; Display original string.
LEA DX, STR
MOV AH, 09H
INT 21H

; Print new line.
MOV DL, 0DH
MOV AH, 02H
INT 21H
MOV DL, 0AH
INT 21H

; Reverse STR into REVSTR.
CLD
MOV AX, DS
MOV ES, AX

LEA SI, STR
LEA DI, REVSTR
MOV CL, StrLen
MOV CH, 00H
ADD SI, CX
DEC SI

STD

REV_LOOP:
    MOVSB
    ADD DI, 2
LOOP REV_LOOP

CLD

MOV BYTE PTR [DI], '$'

; Display reversed string.
LEA DX, REVSTR
MOV AH, 09H
INT 21H

.exit
end
