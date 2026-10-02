Include Irvine32.inc
.data
array DWORD 1h, 2h, 3h, 4h, 5h, 6h, 7h, 8h, 9h, 0Ah

.code
main PROC
    mov ecx, lengthof array
    mov esi, offset array
    mov eax, 0
    mov edx, 0

L1:
    mov ebx, [esi + (edx * TYPE array)]
    add eax, ebx
    inc edx

    loop L1

    call writeHex
    
    
    exit
main ENDP
END main
    
