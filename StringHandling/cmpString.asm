Include irvine32.inc
.data

str1 byte "127&j~3#^&*#*45#^'",0
str2 byte "127#*45#^'",0
msg2 byte "Strings are not identical",0
msg3 byte "Strings are identical",0


.code
main PROC
    mov edi, offset str1
    mov esi, offset str2
    push offset str1
    push offset str2

    call isCompare
    
    exit
main ENDP

isCompare PROC
    enter 0,0
    mov edi, [ebp + 12]
    mov esi, [ebp + 8]
    mov ecx, lengthof str1

    repe CMPSB
    je identical
    mov edx, offset msg2
    call writeString
    jmp finish
    
identical:
    mov edx, offset msg3
    call writeString
    jmp finish
finish:
   leave
   ret 8
isCompare endp
end main