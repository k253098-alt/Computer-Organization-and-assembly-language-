Include Irvine32.inc
.data
msg1 BYTE "Hello",0
msg2 BYTE "World",0
var DWORD 0

.code
main PROC
    
L1:
   mov eax, var
   cmp eax, 10
   ja endWhile
   cmp eax, 5
   jae else1
   mov edx, offset msg1
    call writeString
    call Crlf
    inc var
    jmp L1


else1: 
    mov edx, offset msg2
    call writeString
    call Crlf
    inc var
    jmp L1


endWhile:
   exit
main ENDP
END main

