Include Irvine32.inc
.data
star BYTE "* ",0

.code
main PROC
    mov ecx, 4
    mov ebx, 1

L1: 
   push ecx
   mov ecx, ebx

L2:

    mov edx, offset star
    call writeString
    loop L2
    inc ebx
    call Crlf

    pop ecx
    loop L1

    exit

main ENDP
END main