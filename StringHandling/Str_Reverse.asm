
INCLUDE Irvine32.inc

.data
str1 BYTE "National University",0
msg BYTE "Reversed string: ",0

.code
main PROC
    push OFFSET str1
    call strRev
    mov edx, OFFSET msg
    call WriteString
    mov edx, OFFSET str1
    call WriteString

    exit
main ENDP

strRev PROC
    enter 0,0
    push esi
    push edi
    mov esi, [ebp+8]
    mov edi, esi

L1:
    cmp BYTE PTR [edi], 0
    je L2
    inc edi
    jmp L1

L2:
    dec edi

L3:
    cmp esi, edi
    jae finish
    mov al, [esi]
    mov bl, [edi]
    mov [esi], bl
    mov [edi], al
    inc esi
    dec edi
    jmp L3

finish:
    pop edi
    pop esi

    leave
    ret 4
strRev ENDP
END main