Include Irvine32.inc
.data
arr BYTE 15, 3, 22, 7, 9, 12

.code
main PROC
    mov esi, offset arr
    mov al, [esi+1]
    mov ah, [esi]
    mov [esi], al
    mov al, [esi + 4]
    mov [esi + 4], ah
    mov ah, [esi + 2]
    mov [esi + 2], al
    mov al, [esi + 3]
    mov [esi + 1], al
    mov al, [esi + 5]
    mov [esi + 5], ah
    mov [esi + 3], al

    mov ecx, lengthof arr
    mov ebx, 0
L1:
   movzx eax, BYTE PTR [esi + (ebx * TYPE arr)]
   call writeInt
   call Crlf
   inc ebx

   loop L1

   exit
main ENDP
END main



