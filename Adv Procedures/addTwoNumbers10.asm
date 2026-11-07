INCLUDE Irvine32.inc

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
    push eax
    call readDec
    push eax
    call readDec
    push eax
    call readDec
    push eax
    call AddNum

    call WriteDec
    call Crlf

    exit
main ENDP           

AddNum PROC
    push ebp
    mov ebp, esp
    mov eax, [ebp + 20]
    add eax, [ebp + 16]
    add eax, [ebp + 12]
    add eax, [ebp + 8]

    
    pop ebp
    ret 16

AddNum ENDP

END main
