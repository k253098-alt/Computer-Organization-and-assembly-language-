
INCLUDE Irvine32.inc

.data
  num WORD 25
  num2 WORD 15
  sum WORD ?
.code
main PROC

    mov ax, num
    mov bx, num2
    call addition

    movzx eax, ax
    call WriteDec
    call Crlf

    exit
main ENDP

addition PROC
    
    add eax, ebx

    ret
addition ENDP
END main