; 15. ALP to copy a character string from one location to another and display both
.model small
.data

StrLen DB 05H
STR    DB 'HELLO$'
STRCPY DB 06 DUP(?)

.code
.startup

; Display source string.
LEA DX, STR
MOV AH, 09H
INT 21H

; Print new line.
MOV DL, 0DH
MOV AH, 02H
INT 21H
MOV DL, 0AH
INT 21H

; Copy StrLen bytes from STR to STRCPY.
CLD
MOV AX, DS
MOV ES, AX
LEA SI, STR
LEA DI, STRCPY
MOV CL, StrLen
MOV CH, 00H
REP MOVSB
MOV BYTE PTR [DI], '$'

; Display copied string.
LEA DX, STRCPY
MOV AH, 09H
INT 21H

.exit
end
