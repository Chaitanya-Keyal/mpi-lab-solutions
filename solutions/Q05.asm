; 5. ALP to find sum of first n natural numbers
; Prompt user for n (1 to 20) and store sum in NSUM.
.model small
.data

NSUM DW ?
MSG  DB "Enter the number between 1 and 20:$"

.code
.startup

LEA DX, MSG
MOV AH, 09H
INT 21H

; Read first digit.
MOV AH, 01H
INT 21H
AND AL, 0FH
MOV BL, AL

; Read next key: either second digit or Enter.
MOV AH, 01H
INT 21H
CMP AL, 0DH
JE COMPUTE_SUM

AND AL, 0FH
MOV CL, AL

MOV AL, BL
MOV AH, 00H
MOV DL, 0AH
MUL DL
ADD AL, CL
MOV BL, AL

COMPUTE_SUM:
; AX = n
MOV AL, BL
MOV AH, 00H
MOV CL, BL
INC CL
MUL CL
MOV CL, 02H
DIV CL

MOV NSUM, AX

.exit
end
