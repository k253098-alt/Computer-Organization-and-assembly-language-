Include Irvine32.inc
.data

space BYTE " ",0

.code
main PROC
    mov ecx, 10
    mov eax, 2

L1: 
   call WriteDec
   mov edx, offset space
   call writeString

   add eax, 2

   loop L1

   exit 
main ENDP
END main