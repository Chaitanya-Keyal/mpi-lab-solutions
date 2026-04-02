; 4. ALP to find factorial of a number using recursion
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
CALL FACTORIAL

MOV FACT, AX

.exit

FACTORIAL PROC
    CMP CX, 0001H
    JBE FACT_BASE

    PUSH CX
    DEC CX
    CALL FACTORIAL
    POP CX
    MUL CX
    RET

FACT_BASE:
    MOV AX, 0001H
    RET
FACTORIAL ENDP

end
