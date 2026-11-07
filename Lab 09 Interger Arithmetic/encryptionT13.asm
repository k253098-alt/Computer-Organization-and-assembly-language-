Include irvine32.inc

.data
  key SBYTE 2, 4, -1, 0, 3, -5, -2, 4, 4, 6
  msg BYTE "Hamza Jutt",0

  .code
  main PROC
      mov ecx, lengthof msg-1
      mov esi, 0
      mov edi, 0
      mov edx, offset msg
      call writeString
      call Crlf

L1:
    push ecx
    mov cl, key[esi]

    cmp cl, 0
    jl negetive
    jmp positive
negetive:
    neg cl
    rol BYTE PTR [edx + edi], cl

    jmp next

positive:
    ror BYTE PTR [edx + edi], cl
next:
    pop ecx
    inc esi
    inc edi

    cmp esi, 10
    jnz continue
    mov esi, 0
continue:
       
    loop l1

    mov edx, offset msg
    call writeString
    call Crlf

    exit
main endp
end main