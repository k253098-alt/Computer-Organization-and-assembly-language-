Include irvine32.inc
.data

str1 byte "127&j~3#^&*#*#45^'",0
msg2 byte "# not found",0
msg3 byte "# found on index: ",0

.code
main PROC
    push offset str1
    call findHash
    
    exit
main ENDP

findHash PROC
    enter 0,0
    mov esi, [ebp + 8]
    mov ecx, lengthof str1
    mov eax, 0
    
L1:

    cmp byte ptr [esi], '#'
    jz found
    inc esi
    inc eax
    loop L1
    jmp notFound

found:
   mov edx, offset msg3
   call writeString
   call writeDec
   jmp finish

notFound:
   mov edx, offset msg2
   call writeString

finish:
   leave
findHash endp
end main