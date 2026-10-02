Include Irvine32.inc

.data

arrayW WORD 100h, 200h, 300h, 400h, 500h
msg BYTE "Sum is: ",0

.code
main PROC
    mov bx, arrayW[2] 
    add bx, arrayW[6]
    mov edx, offset msg
    call WriteString
    movzx eax, bx
    call WriteInt
    
    exit
main ENDP
END main

