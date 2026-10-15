Include  irvine32.inc
.data
msg1 BYTE "Sum is: ",0
sum DWORD ?
.code
main PROC
    mov eax, 10
    push eax

    mov eax, 20
    push eax

    mov eax, 30
    push eax

    mov eax, 40
    add sum, eax
    pop eax
    add sum, eax
    pop eax
    add sum, eax
    pop eax
    add sum, eax

    mov eax, sum
    mov edx, offset msg1
    call writeString
    call writeDec
    call Crlf
    exit

main ENDP
END main