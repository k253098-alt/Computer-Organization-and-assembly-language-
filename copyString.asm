Include Irvine32.inc
.data
Source BYTE "Hello Assembly",0
Target BYTE 16 DUP (?)

.code
main PROC
    mov ecx, 15
    mov esi, 0
    mov edi, 0

L1:
    mov al, Source[esi]
    mov Target[edi], al
    inc esi
    inc edi

    loop L1

    mov Target[edi], 0

    mov edx, offset Target
    call WriteString
    call Crlf
    exit
main ENDP
END main