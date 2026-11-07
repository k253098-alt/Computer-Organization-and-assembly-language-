Include Irvine32.inc

.data
num1 byte 12

.code
main PROC
    mov al, num1
    movzx eax, al
    call writeDec
    call Crlf
    SHL al, 3

    movzx eax, al
    call writeDec
    call Crlf

    SHR al, 2
    movzx eax, al
    call writeDec
    call Crlf
    exit

    main ENDP
    end main