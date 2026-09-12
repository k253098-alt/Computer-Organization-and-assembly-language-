Include Irvine32.inc

.data

PI EQU 3
text BYTE "After multiplication: ",0

.code
main PROC
    mov al, PI
    mov bl, 4
    mul bl

    mov edx, OFFSET text
    call writeString

    movzx eax, ax
    call writeInt
    call crlf

    exit
main ENDP
end main
