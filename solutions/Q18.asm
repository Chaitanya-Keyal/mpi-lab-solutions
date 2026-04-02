; 18. ALP to reverse a character string without using any additional memory locations
; and display both original and reversed strings
.model small
.data

StrLen DB 05H
STR    DB 'HELLO$'

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

; Reverse STR in place.
LEA SI, STR
MOV CL, StrLen
MOV CH, 00H
LEA DI, STR
ADD DI, CX
DEC DI

REV_LOOP:
    CMP SI, DI
    JAE REV_DONE

    MOV AL, [SI]
    MOV BL, [DI]
    MOV [SI], BL
    MOV [DI], AL

    INC SI
    DEC DI
    JMP REV_LOOP

REV_DONE:
; Display reversed string.
LEA DX, STR
MOV AH, 09H
INT 21H

.exit
end
