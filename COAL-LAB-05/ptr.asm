Include Irvine32.inc
.data
var DWORD 12345678h

.code
main PROC
    mov eax, var
    mov al, BYTE ptr [var]
    movzx eax, al
    call writeHex
    call Crlf

    mov ax, WORD ptr [var]
    movzx eax, ax
    call writeHex

    exit
main ENDP
END main