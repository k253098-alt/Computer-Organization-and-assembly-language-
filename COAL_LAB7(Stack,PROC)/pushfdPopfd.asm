Include  irvine32.inc
.data
    msg1 BYTE "Before PUSHFD: ",0
    msg2 BYTE "After POPFD: ",0
.code
main PROC
    mov eax, 10
    sub eax, 10
    PUSHFD
    mov edx, offset msg1
    call writeString
    ;mov eax, 0
    call writeDec
    call Crlf

    PUSHFD
    mov eax, 20
    sub eax, 3

    POPFD
    mov edx, offset msg2
    call writeString
    ;mov eax, 1
    call writeDec
    call Crlf
    POPFD
    call dumpregs

    exit

    main ENDP
    END main