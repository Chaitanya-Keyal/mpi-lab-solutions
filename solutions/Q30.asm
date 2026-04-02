; 30. ALP to find the roots of a quadratic equation (Δ is a perfect square)
.model small
.data

A DW 0001H
B DW FFFBH
C DW 0006H

ROOT1 DB ?
ROOT2 DB ?

.code
.startup

; Compute Delta = b^2 - 4ac.
MOV AX, B
MOV BX, AX
IMUL BX
MOV SI, AX

MOV AX, A
IMUL C
SHL AX, 1
SHL AX, 1

SUB SI, AX
MOV AX, SI

; Compute sqrt(Delta) using repeated subtraction.
MOV BX, 0001H
MOV CX, 0000H

SQRT_LOOP:
    CMP AX, BX
    JB SQRT_DONE

    SUB AX, BX
    ADD BX, 0002H
    INC CX
    JMP SQRT_LOOP

SQRT_DONE:
MOV BX, A
SHL BX, 1

; ROOT1 = (-b + sqrt(Delta)) / (2a)
MOV AX, B
NEG AX
ADD AX, CX

CWD
IDIV BX
MOV ROOT1, AL

; ROOT2 = (-b - sqrt(Delta)) / (2a)
MOV AX, B
NEG AX
SUB AX, CX

CWD
IDIV BX
MOV ROOT2, AL

.exit
end
