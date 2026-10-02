Include Irvine32.inc

.data

arrayB BYTE 60, 70, 80
arrayW WORD 150, 250, 350
arrayD DWORD 600, 1200, 1800
msg BYTE "Sum is: ",0

.code
main PROC
    mov esi, offset arrayB 
    mov al, [esi]
    add al, [esi+(2 * TYPE arrayB)]

    mov edx, offset msg
    call writeString
    movzx eax, al
    call writeDec
    call crlf

    mov edx, offset msg
    call writeString
    mov esi, offset arrayW
    mov ax, [esi]
    add ax, [esi+(2 * TYPE arrayW)]
    movzx eax, ax
    call writeDec
    call crlf

    mov edx, offset msg
    call writeString
    mov esi, offset arrayD
    mov eax, [esi]
    add eax, [esi+(2 * TYPE arrayD)]
    call writeDec
    call crlf
    

    exit
main ENDP
END main

