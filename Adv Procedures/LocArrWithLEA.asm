INCLUDE Irvine32.inc
.code
main PROC
  call makeArray
  exit
main ENDP

makeArray PROC

   push ebp
   mov ebp, esp

   sub esp, 32
   lea esi, [ebp - 32]
   mov ecx, 30

L1:
   mov BYTE PTR [esi], '*'
   inc esi
   loop L1

   mov BYTE PTR [esi], 0
   lea edx, [ebp - 32]

   call WriteString
   call Crlf

   mov esp, ebp
   pop ebp
ret
makeArray ENDP
END main