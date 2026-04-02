; 23. ALP to convert a BCD number to binary using a procedure
.model small
.data

BCDNum DB 45H

.code
.startup

MOV AL, BCDNum
CALL BCDtoBin

; Result remains in AL as required.
.exit

BCDtoBin PROC
    MOV AH, AL

    AND AL, 0FH
    MOV BL, AL

    MOV AL, AH
    AND AL, 0F0H
    SHR AL, 04H

    MOV AH, 00H
    MOV CL, 0AH
    MUL CL

    ADD AL, BL
    RET
BCDtoBin ENDP

end
