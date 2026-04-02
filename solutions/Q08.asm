; 8. Write an assembly program to compute an 8-bit checksum for a byte stored in memory:
; Checksum = (x + (x << 3)) XOR (x >> 1)
MOV SI, 6000H
MOV AL, [SI]

MOV BL, AL
MOV CX, 0003H

L1:
    SHL AL, 01H
LOOP L1
ADD BL, AL

MOV AL, [SI]

SHR AL, 01H
XOR AL, BL

MOV DI, 6001H
MOV [DI], AL

HLT
