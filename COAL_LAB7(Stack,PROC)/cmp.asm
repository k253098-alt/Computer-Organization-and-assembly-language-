Include  irvine32.inc
.data
    var1 SDWORD -500
    var2  SDWORD 290
    larger SDWORD ?
    msg BYTE "Sum: ",0
    msg2 BYTE "Larger: ",0
.code
main PROC
    call compare
    call Crlf
    mov edx, offset msg
    call writeString
    call Crlf
    call writeInt

    
exit
main ENDP

compare PROC
    mov eax, var1
    mov larger, eax
    mov ebx, var2

    cmp eax, ebx
    ;ja L1
    jg L1
    mov larger, ebx
L1:
    mov eax, larger
    mov edx, offset msg2
    call writeString
    call Crlf
    call writeInt
   call addition
   ret


addition PROC
   mov eax, var1
   add eax, var2
   ret
addition endp
compare endp

END main