Include Irvine32.inc

.data
items BYTE 50
bought BYTE 07
reStock BYTE 14
text BYTE "Final items are: ",0

.code
main PROC
    mov al, items
    sub al, bought
    add al, reStock

    mov edx, OFFSET text
    call writeString

    movzx eax, al
    call writeInt
    call crlf

    exit
main ENDP
end main
