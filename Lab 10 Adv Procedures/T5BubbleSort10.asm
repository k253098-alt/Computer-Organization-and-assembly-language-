INCLUDE Irvine32.inc

.data
    arr DWORD 5, 2, 8, 1, 4
    msg BYTE "Sorted array: ",0
.code

main PROC
    push OFFSET arr
    push LENGTHOF arr

    call BubbleSort
    mov edx, OFFSET msg
    call WriteString
    call Crlf

    mov esi, OFFSET arr
    mov ecx, LENGTHOF arr

PrintArray:
    mov eax, [esi]
    call WriteDec
    call Crlf
    add esi, 4
    loop PrintArray

    exit
main ENDP

BubbleSort PROC
    push ebp
    mov ebp, esp
    mov ecx, [ebp+8]
    dec ecx

OuterLoop:
    push ecx
    mov esi, [ebp+12]
    mov ecx, [ebp+8]
    dec ecx

InnerLoop:
    mov eax, [esi]
    cmp eax, [esi+4]
    jbe NoSwap

    mov ebx, [esi+4]
    mov [esi], ebx
    mov [esi+4], eax

NoSwap:
    add esi, 4
    loop InnerLoop
    pop ecx
    loop OuterLoop
    pop ebp
    ret 8

BubbleSort ENDP
END main