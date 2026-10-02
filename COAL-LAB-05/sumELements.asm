Include Irvine32.inc
.data 
array DWORD 100, 200, 300, 400

.code
main PROC
   mov esi, offset array
   mov eax, [esi]
   add eax, [esi + (2 * TYPE array)]

   call writeInt
   call Crlf

   mov eax, [esi + (1 * TYPE array)]
   add eax, [esi + (3 * TYPE array)]

   call writeInt
   call Crlf

   exit
main ENDP
END main
