INCLUDE Irvine32.inc
.code
main PROC
    call MySub
    call WriteDec
    call Crlf
    exit
main ENDP
MySub PROC

   push ebp
   mov ebp, esp
   sub esp, 8
   mov DWORD PTR [ebp - 4], 10
   mov DWORD PTR [ebp - 8], 20
   mov eax, [ebp - 4]
   add eax, [ebp - 8]

   mov esp, ebp
   pop ebp
ret
MySub ENDP
END main