Include Irvine32.inc
.data

Source BYTE "Hello world",0
Target BYTE lengthOf Source DUP(?)

.code
main PROC
    mov esi, 0
    mov edi, 0

L1:
    mov al, Source[edi]
    mov Target[esi], al

    inc esi
    inc edi

    cmp al, 0
    jne L1

    mov edx, offset Target
    call writeString
    exit

main ENDP
END main