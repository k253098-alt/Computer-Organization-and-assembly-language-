Include Irvine32.inc

.data
dayTemp BYTE 32
nightTemp BYTE 17

text2 BYTE "Difference of temprature: ",0
text BYTE "Final night Temprature: ",0


.code
main PROC
    mov al, dayTemp
    sub al, nightTemp
    

    mov edx, OFFSET text2
    call writeString

    movzx eax, al
    call writeInt
    call crlf

    INC nightTemp
    INC nightTemp
    mov al, nightTemp

    mov edx, OFFSET text
    call writeString

    movzx eax, al
    call writeInt

    exit
main ENDP
end main
