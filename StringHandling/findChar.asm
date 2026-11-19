Include irvine32.inc
.data

str1 byte "127&j~3#^&*#*45#^'",0
msg2 byte "character not found",0
msg3 byte "character found on index: ",0
msg4 byte "Enter character to search: ",0
charac dword ?

.code
main PROC
    push offset str1
    mov edx, offset msg4
    call writeString
    call readchar
    call crlf
    mov charac, eax
    push charac

    call findHash
    
    exit
main ENDP

findHash PROC
    enter 0,0
    mov esi, [ebp + 12]
    mov ecx, lengthof str1
    mov eax, 0
    mov ebx, [ebp+8]
    
L1:
    cmp byte ptr [esi], bl
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
   ret 8
findHash endp
end main