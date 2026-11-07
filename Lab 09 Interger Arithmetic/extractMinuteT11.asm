INCLUDE Irvine32.inc
.data
    timeStamp WORD 5A3Ch
    bMinutes BYTE ?

.code
main PROC
    mov ax, timeStamp
    shr ax, 5
    and al, 00111111b
    mov bMinutes, al
    movzx eax, al
    call writeDec
    
    exit
main ENDP
END main