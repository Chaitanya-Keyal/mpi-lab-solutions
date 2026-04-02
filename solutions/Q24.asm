; 24. ALP to convert 8-bit binary data to Gray code
.model small
.data

BIN_Data DB 0AH
GRAY_Out DB ?

.code
.startup

MOV AL, BIN_Data
MOV BL, AL
SHR AL, 1
XOR AL, BL
MOV GRAY_Out, AL

.exit
end
