Include Irvine32.inc

.data
number BYTE 20
text BYTE "Final number: ",0

.code
main PROC
    mov al, number
    INC al
    INC al
    INC al

    DEC al
    DEC al

    mov edx, OFFSET text
    call writeString

    movzx eax, al
    call writeInt
    call crlf

    exit
main ENDP
end main
