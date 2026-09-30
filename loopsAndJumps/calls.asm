Include irvine32.inc
.data
   msg BYTE " charachter: ", 0

.code
main PROC 
    mov eax, 1
    mov edx, offset msg
    mov al, 'A'

    call writeDec

    call WriteString

    call WriteChar

    call Crlf

    exit
main ENDP
END main