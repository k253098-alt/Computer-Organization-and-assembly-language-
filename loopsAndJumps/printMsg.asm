INCLUDE Irvine32.inc

.data
    msg1 BYTE "This is the first message.", 0
    msg2 BYTE "This is the second message.", 0

.code
main PROC

    mov edx, OFFSET msg1
    call WriteString
    call Crlf

    jmp SkipMessage

    mov edx, OFFSET msg2
    call WriteString
    call Crlf

SkipMessage:

    exit

main ENDP
END main