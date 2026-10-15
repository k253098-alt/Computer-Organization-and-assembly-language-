Include  irvine32.inc
.data
    arr1 DWORD 2, 3, 4, 5, 6
    arr2 DWORD 5, 6, 7, 8, 9
    msg2 BYTE "Sum of second array: ",0
    msg1 BYTE "Sum of first array: ",0
    msg3 BYTE "Sum of sums: ",0
    sum1 DWORD 0
    sum2 DWORD 0
    sum3 DWORD 0

.code
main PROC
    call add1
    mov eax, sum1
    mov edx, offset msg1
    call writeString
    call Crlf
    call writeDec
    call Crlf

    call add2
    mov eax, sum2
    mov edx, offset msg2
    call writeString
    call Crlf
    call writeDec
    call Crlf

    call add3
    mov edx, offset msg3
    call writeString
    call Crlf
    call writeDec
    call Crlf
    
exit
main ENDP

add1 PROC
   mov ecx, lengthof arr1
   mov esi, offset arr1
L1:
   mov eax, [esi]
   add sum1, eax
   add esi, type arr1
   loop L1
   ret

add1 endp

add2 PROC
   mov ecx, lengthof arr2
   mov esi, offset arr2
L2:
   mov eax, [esi]
   add sum2, eax
   add esi, type arr2
   loop L2
   ret

add2 endp


add3 PROC
   mov eax, sum1
   add eax, sum2
   ret

add3 endp
END main