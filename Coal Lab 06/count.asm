INCLUDE Irvine32.inc

.code
main PROC

    mov ecx, 10
    mov eax, 10

L1:
    call WriteDec
    call Crlf

    dec eax
    loop L1

    exit
main ENDP
END main