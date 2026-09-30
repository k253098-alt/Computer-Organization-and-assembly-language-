Include Irvine32.inc
.data

Source BYTE "I am Hamza Jutt",0
target BYTE SIZEOF Source DUP(?)

.code
main PROC
    mov esi, offset Source
    mov edi, OFFSET target
    mov ecx, SIZEOF Source

L1:
    mov al, [esi]
    mov [edi], al

    inc esi
    inc edi
    dec ecx

    jmp L1

    exit
main ENDP
END main