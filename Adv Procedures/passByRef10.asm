Include Irvine32.inc

.data
    var1 DWORD ?
    var2 DWORD ?
    var3 DWORD ?
    var4 DWORD ?

    msg BYTE "Enter number: ",0
.code
main PROC
    mov edx, offset msg
    call writeString

    call readDec
    mov var1, eax
    push offset var1

    call readDec
    mov var2, eax
    push offset var2

    call readDec
    mov var3, eax
    push offset var3

    call readDec
    mov var4, eax
    push offset var4

    call AddNum

    call WriteDec
    call Crlf

    exit
main ENDP           

AddNum PROC
    push ebp
    mov ebp, esp
    
    mov esi, [ebp+8]
    mov eax, [esi]

    mov esi, [ebp+12]
    add eax, [esi]

    mov esi, [ebp+16]
    add eax, [esi]

    mov esi, [ebp+20]
    add eax, [esi]

    
    pop ebp
    ret 16

AddNum ENDP

END main
