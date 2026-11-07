INCLUDE Irvine32.inc

.data
  num DWORD 25
.code
main PROC

    mov eax, num
    call Multiply

    call WriteDec
    call Crlf

    exit
main ENDP



Multiply PROC
    
    mov ebx, eax
    shl ebx, 3     ; multiply by 8
    add eax, ebx  ;adding eax will multiply by 9

    ret
Multiply ENDP
END main