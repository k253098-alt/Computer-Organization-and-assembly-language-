
INCLUDE Irvine32.inc

.data
    num DWORD 32
    msg2 BYTE "Result after dividing by 8: ",0

.code
main PROC
    mov eax, num
    shr eax, 3

    mov edx, OFFSET msg2
    call WriteString
    call WriteDec

    call Crlf

    exit
main ENDP
END main
