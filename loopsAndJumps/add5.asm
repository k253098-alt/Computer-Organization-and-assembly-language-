INCLUDE Irvine32.inc

.code
main PROC

    mov ecx, 10
    mov eax, 5


L1:
    call WriteDec
    call Crlf

    add eax, 5
    loop L1

    exit

main ENDP
END main
