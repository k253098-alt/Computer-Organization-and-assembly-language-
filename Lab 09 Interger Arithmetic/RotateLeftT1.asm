Include Irvine32.inc

.data
num1 byte 12

.code
main PROC
    mov al, num1
    movzx eax, al
    call writeDec
    call Crlf
    rol al, 1

    movzx eax, al
    call writeDec
    exit

    main ENDP
    end main