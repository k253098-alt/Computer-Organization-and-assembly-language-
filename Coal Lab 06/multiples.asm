INCLUDE Irvine32.inc

.code
main PROC

    mov ecx, 10
    mov eax, 0

L1:
    add eax, 5
    call WriteDec
    call Crlf

    loop L1

    exit
main ENDP
END main