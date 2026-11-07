Include Irvine32.inc

.data
   arr DWORD 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
   min DWORD ?
   max DWORD ?
   msg BYTE "Min: ",0
   msg2 BYTE "Max: ",0
.code

main PROC
   mov min , 9999999
   mov max, 0
   push lengthof arr
   push offset arr

   call minMax

   exit
main ENDP

minMax PROC
    enter 0,0

    mov esi, [ebp + 8]
    mov ecx, [ebp + 12]

L1:

   mov ebx, [esi]
   cmp min, ebx
   jbe continue
    mov min, ebx

continue:

   cmp max, ebx
   jae next
   mov max, ebx

next:
   add esi, 4

   loop L1

   mov edx, offset msg
   call writeString
   mov eax, min
   call writeDec
   call Crlf
   mov edx, offset msg2
   call writeString
   mov eax, max
   call writeDec

   leave
   ret 8

   minMax ENDP
END main