Include irvine32.inc

.data

.code
main PROC

 mov eax, 10
 mov ebx, 10
 cmp eax, ebx
 call dumpRegs

 exit
 main ENDP
 end MAIN