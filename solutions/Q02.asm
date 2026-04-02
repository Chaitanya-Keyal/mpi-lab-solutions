; 2. ALP to convert from ºF to K
.model small
.data

Deg_Far DB 50H
Deg_Kel DW ?

.code
.startup

; K = ((F - 32) * 5) / 9 + 273
MOV AL, Deg_Far
MOV AH, 00H
SUB AX, 0020H

MOV BX, 0005H
MUL BX

MOV BX, 0009H
MOV DX, 0000H
DIV BX

ADD AX, 0111H
MOV Deg_Kel, AX

.exit
end
