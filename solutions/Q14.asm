; 14. Write an assembly language program to convert 8-bit binary data to BCD
.model small
.data

Bin_Data DB 0C8H
BCD_Res  DB ?
BCD_Hund DB ?

.code
.startup

; Divide by 100 to get hundreds digit.
MOV AL, Bin_Data
MOV AH, 00H
MOV BL, 64H
DIV BL
MOV BCD_Hund, AL

; Divide remainder by 10 to get tens and units.
MOV AL, AH
MOV AH, 00H
MOV BL, 0AH
DIV BL

MOV CL, AL
SHL CL, 4
OR CL, AH
MOV BCD_Res, CL

.exit
end
