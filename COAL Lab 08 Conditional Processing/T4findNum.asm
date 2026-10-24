INCLUDE Irvine32.inc

.data
arr WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20
msg1 BYTE "Enter a number to search: ", 0
msg2 BYTE "Number found", 0
msg3 BYTE "Number not found", 0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString
    call ReadDec
    mov bx, ax
    mov esi, OFFSET arr
    mov ecx, LENGTHOF arr

L1:
    mov ax, [esi]
    cmp ax, bx
    je Found
    add esi, TYPE arr
    loop L1

    mov edx, OFFSET msg3
    call WriteString
    jmp Finish
Found:
    mov edx, OFFSET msg2
    call WriteString

Finish:
    call Crlf
    exit
main ENDP
END main