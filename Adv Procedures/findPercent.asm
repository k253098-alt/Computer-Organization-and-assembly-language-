Include irvine32.inc
.data
ob byte  45, 18, 72, 33
total byte  50, 25, 80, 40
per byte lengthof ob dup(0)


.code
main PROC
   mov esi, 0
   mov ecx, lengthof ob
   
L1:
   mov edx, 0
   movzx ax, ob[esi* type ob]
   imul ax, 100
   div total[esi * type total]
   mov per[esi* type per], al
   inc esi

   movzx eax, al
   call writeDec
   call Crlf
   loop L1

   
   call Crlf
   exit
main ENDP
END main



ax = 0110010100111001

mov bx, ax
and al, 00011111
mov day, al
mov ax, bx
shr ax 5
and al, 00001111
mov month, al
mov ax, bx
shr ax, 9
mov year, ax