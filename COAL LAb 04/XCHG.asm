Include Irvine32.inc

.data

text BYTE "After exchange: ",0


num1 BYTE 10
num2 BYTE 20

.code
main PROC
    mov al, num1
    mov bl, num2


    XCHG al, bl
   

    mov edx, OFFSET text
    call writeString
    call crlf

    movzx eax, al
    call writeInt
    call crlf

    movzx eax, bl
    call writeInt
    call crlf

    exit
main ENDP
end main
