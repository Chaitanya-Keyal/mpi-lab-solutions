; 3. ALP to find factorial of a number
; Prompt the user to enter a number between 1 and 8 and store result in FACT.
.model small
.data

FACT DW ?
MSG  DB "Enter the number between 1 and 8:$"

.code
.startup

LEA DX, MSG
MOV AH, 09H
INT 21H

MOV AH, 01H
INT 21H
AND AL, 0FH

MOV CL, AL
MOV CH, 00H
MOV AX, 0001H

FACT_LOOP:
    MUL CX
LOOP FACT_LOOP

MOV FACT, AX

.exit
end
