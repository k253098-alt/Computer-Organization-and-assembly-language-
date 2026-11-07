
INCLUDE Irvine32.inc

.data
    num DWORD 10
    msg2 BYTE "Result after multiplying by 4: ",0

.code
main PROC
    mov eax, num
    shl eax, 2

    mov edx, OFFSET msg2
    call WriteString
    call WriteDec

    call Crlf

    exit
main ENDP
END main
