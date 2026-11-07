Include Irvine32.inc
.data
arr DWORD 1, 5, 3, 6, 3, 7, 9, 0, 2


.code
main PROC
    mov ebx, lengthof arr
    ;dec ebx    ;because index start from 0
    dec ebx    ;because bubble sort requires < n-1
    mov ecx, ebx
    
L1:
    mov esi, 0
    push ecx

    L2: 
        mov eax, arr[esi * TYPE arr]
        inc esi
        cmp eax, arr[esi * TYPE arr]
        jbe skip
        
        push eax
        push ebx
        mov eax, arr[esi * TYPE arr]
        dec esi
        mov ebx, arr[esi * TYPE arr]
        
        mov arr[esi * TYPE arr], eax
        inc esi
        mov arr[esi * TYPE arr], ebx


        pop ebx
        pop eax

   skip:
        loop L2
        pop ecx
        

    loop L1
    

    mov ecx, lengthof arr
    mov esi, 0

L3: 
    mov eax, arr[esi * TYPE arr]
    call writeDec
    mov al, ' '
    call writeChar
    inc esi

    loop L3



    exit

main ENDP
END main