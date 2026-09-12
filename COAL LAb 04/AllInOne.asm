INCLUDE Irvine32.inc

.data

val1 BYTE 10h
val2 WORD 8000h
val3 DWORD 0FFFFh
val4 WORD 7FFFh

msg1 BYTE "After incrementing val2: ", 0
msg2 BYTE "After subtracting val3 from EAX: ", 0
msg3 BYTE "After subtracting val4 from val2: ", 0
msg4 BYTE "Value of BL after moving val1: ", 0

.code
main PROC

    inc val2
    mov edx, OFFSET msg1
    call WriteString

    movzx eax, val2
    call WriteHex
    call CrLf

    mov eax, 100000h
    sub eax, val3

    mov edx, OFFSET msg2
    call WriteString

    call WriteHex
    call CrLf

    mov ax, val2
    mov bx, val4
    sub ax, bx

    movzx eax, ax
    mov edx, OFFSET msg3
    call WriteString

    movzx eax, val2
    call WriteHex
    call CrLf

    mov bl, val1

    mov edx, OFFSET msg4
    call WriteString

    movzx eax, bl
    call WriteHex
    call CrLf


    exit
main ENDP
END main