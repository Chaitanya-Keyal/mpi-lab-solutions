; 7. Write an assembly program to find the Sum of Squares of First n Natural Numbers
; Read n from DS:2600H using SI.
MOV SI, 2600H
MOV AL, [SI]
MOV AH, 00H

; AX = n(n+1)
MOV BX, AX
INC BX
MUL BX
MOV CX, AX

; AX = 2n+1
MOV AL, [SI]
MOV AH, 00H
ADD AL, AL
INC AX

; DX:AX = n(n+1)(2n+1)
MUL CX

; Divide by 6
MOV BX, 0006H
DIV BX

; Store result at DS:2800H using DI.
MOV DI, 2800H
MOV [DI], AX

HLT
