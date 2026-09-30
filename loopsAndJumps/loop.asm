Include Irvine32.inc

.code
main PROC
 mov eax, 0
 mov ebx, 0
 mov ecx, 5
 call DumpRegs
L1: 
   
   mov edx, ecx
   

   mov ecx, 10

L2:
 mov eax, ecx
 mov ecx, 2
L3:
   inc ebx
   call DumpRegs

   loop L3
   mov ecx, eax
 
   loop L2

   mov ecx, edx
   loop L1

   

   exit
main ENDP
END main
