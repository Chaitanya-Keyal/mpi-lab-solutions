; 1. ALP to convert from ºC to ºF
.model small
.data

Deg_Cent DB 0AH
Deg_Far  DB ?

.code
.startup

; F = (C * 9) / 5 + 32
MOV AL, Deg_Cent
MOV BL, 09H
MUL BL
MOV BL, 05H
DIV BL
ADD AL, 20H

MOV Deg_Far, AL

.exit
end
