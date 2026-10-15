Include irvine32.inc
.data
msg1 BYTE "Enter n: ",0
msg2 BYTE "Sum is: ",0
n DWORD ?
sum DWORD 0

.code
main PROC
    call findSum
    mov edx, offset msg2
    call writeString
    mov eax, sum
    call writeDec
    exit
main ENDP

findSum PROC
    mov edx, offset msg1
    call writeString
    call ReadInt
    mov n, eax
L1:
   mov eax, n
   add sum, eax
   dec n
   cmp n, 0
   jne L1

   ret
findSum ENDP
END main