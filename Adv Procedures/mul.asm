Include irvine32.inc
.data
Price  WORD  120, 75, 1500, 300
Qty    BYTE  3, 10, 2, 25
Total  DWORD 0
prod DWORD ?

.code
main PROC
   mov esi, 0
   mov ecx, lengthof price
   
L1:
   movzx ax, Qty[esi* TYPE Qty]
   mul Price[esi* TYPE Price] 
   movzx eax, ax
   ;movzx eax, ax
   mov prod, eax
   mov WORD ptr [prod + 2], dx
   add Total, eax
   inc esi
   loop L1

   mov eax, Total
   call writeDec
   call Crlf
   exit
main ENDP
END main