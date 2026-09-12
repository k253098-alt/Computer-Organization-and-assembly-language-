Include Irvine32.inc

.data
balance Word 5000
deposit Word 1400
withdraw Word 3000
text BYTE "Final balance is: ",0

.code
main PROC
    mov ax, balance
    add ax, Deposit
    sub ax, withdraw

    mov edx, OFFSET text
    call writeString

    movzx eax, ax
    call writeInt
    call crlf

    exit
main ENDP
end main
