INCLUDE Irvine32.inc

.data
  num SDWORD 25
  num2 SDWORD 15
  diff SDWORD ?
.code
main PROC

    mov eax, num
    mov ebx, num2
    call subtraction

    movsx eax, ax
    call WriteInt
    call Crlf

    exit
main ENDP



subtraction PROC
    
    sub eax, ebx

    ret
subtraction ENDP
END main