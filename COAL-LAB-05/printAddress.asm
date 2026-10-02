Include Irvine32.inc
.data

Bvar BYTE 29h
Wvar WORD 1029h
Dvar DWORD 32919310h

.code
main PROC
   mov esi, offset Bvar
   mov eax, esi
   call writeHex
   call Crlf

   mov esi, offset Wvar
   mov eax, esi
   call writeHex
   call Crlf

   mov esi, offset Dvar
   mov eax, esi
   call writeHex
   call Crlf

   exit

main ENDP
END main
