Include Irvine32.inc

.data
   arr DWORD 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
   min DWORD ?
   max DWORD ?
.code

main PROC
   mov min , arr[0]
   mov max, arr[0]
   push lengthof arr
   push offset arr

   call minMax

   exit
main ENDP

minMax PROC
    enter 0,0

    mov esi, [esp + 8]
    mov ecx, [esi + 12]

L1:

   mov ebx, arr[esi* type arr]
     