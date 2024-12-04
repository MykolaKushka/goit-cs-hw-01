.MODEL SMALL
.STACK 100h
.DATA
    a DB 5
    b DB 3
    varC DB 2
    resultMsg DB 'Result: $'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, b
    SUB AL, varC
    ADD AL, a

    ADD AL, 30h

    LEA DX, resultMsg
    MOV AH, 09h
    INT 21h

    MOV DL, AL
    MOV AH, 02h
    INT 21h

    MOV AX, 4C00h
    INT 21h
MAIN ENDP
END MAIN
