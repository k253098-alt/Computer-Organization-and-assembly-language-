Include Irvine32.inc

.data
marks1 BYTE 67
marks2 BYTE 98

.code
main PROC
    mov al, marks1
    add al, marks2
    movzx eax, al

    call writeInt
    call crlf
    
    mov al, marks1
    sub al, marks2
    movsx eax, al
    call writeInt

    call crlf

    exit
main ENDP
end main

