Include  irvine32.inc
.data
    msg1 BYTE "First Array : ",0
    msg2 BYTE "Second array after copying values : ",0
    arr1 WORD 101, 102, 103, 104, 105, 106, 107, 108, 109, 110
    arr2 WORD 10 DUP(?)
    space BYTE " ",0
.code
main PROC
    
    mov edx, offset msg1
    call writeString
    call Crlf
    
    mov ecx, lengthof arr1
    mov esi, offset arr1
display_Original:
    movzx eax, WORD ptr [esi]
    call writeDec
    mov edx, offset space
    call writeString
    add esi, TYPE arr1
    loop display_Original
    call Crlf

    mov ecx, lengthof arr1
    mov esi, offset arr1
push_Version:
    mov ax, [esi]
    push ax
    add esi, TYPE arr1
    loop push_Version

    

    mov ecx, lengthof arr2
    ;mov esi, offset arr2
    ;add esi, (lengthof arr1 -1)* TYPE arr1
    mov ebx, (lengthof arr1 -1)* TYPE arr1
pop_Version2:
    
    pop ax
    ;mov [esi],ax
    ;sub esi, TYPE arr2
    mov arr2[ebx], ax
    sub ebx, type arr2

    loop pop_Version2
    
    call Crlf
    mov edx, offset msg2
    call writeString
    call crlf

    mov ecx, lengthof arr2
    mov esi, offset arr2
display_Original2:
    movzx eax, WORD ptr [esi]
    call writeDec
    mov edx, offset space
    call writeString
    add esi, TYPE arr2
    loop display_Original2
    call Crlf

exit
main ENDP
END main