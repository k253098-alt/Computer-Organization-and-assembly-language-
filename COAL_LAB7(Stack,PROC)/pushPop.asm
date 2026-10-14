Include  irvine32.inc
.data
msg1 BYTE "Poped value: ",0
.code
main PROC
    mov eax, 10
    push eax

    mov eax, 20
    push eax

    mov eax, 30
    push eax

    mov eax, 40
    push eax

    pop eax

    mov edx, offset msg1
    call writeString
    call writeDec
    call Crlf

    pop eax
    mov edx, offset msg1
    call writeString
    call writeDec
    call Crlf
    
    pop eax
    mov edx, offset msg1
    call writeString
    call writeDec
    call Crlf
    
    pop eax
    mov edx, offset msg1
    call writeString
    call writeDec
    call Crlf
    exit

    main ENDP
    END main