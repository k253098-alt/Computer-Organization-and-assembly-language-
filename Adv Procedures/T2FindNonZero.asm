INCLUDE Irvine32.inc

.data
 Arr WORD 0, 0, 0, 150, 120, 35, 12, 66, 4, 0
 msg BYTE "First non-zero value: ", 0

.code
main PROC
    mov esi, OFFSET Arr
    mov ecx, LENGTHOF Arr

L1:
    mov ax, [esi]
    cmp ax, 0
    jne Found

    add esi, TYPE Arr
    loop L1
    jmp NotFound

Found:
    mov edx, OFFSET msg
    call WriteString
    movzx eax, ax
    call WriteDec
    call Crlf

NotFound:
    exit
main ENDP
END main