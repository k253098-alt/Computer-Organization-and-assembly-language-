Include Irvine32.inc

.data
msg1 BYTE "Enter an alphabet: ",0
msg2 BYTE "It is an alphabet",0
msg3 BYTE "It is not an alphabet",0

.code 
main PROC
    mov edx, offset msg1
    call writeString
    call Crlf
    call readChar

    cmp al, 'A'
    jb notAlpha

    cmp al, 'Z'
    jbe Alpha

    cmp al, 'a'
    jb notAlpha
    cmp al, 'z'
    jbe Alpha

    jmp notAlpha

Alpha:
    mov edx, offset msg2
    call writeString
    call Crlf
    jmp Finish

notAlpha:
    mov edx, offset msg3
    call writeString
    call Crlf
    

Finish:
    exit

main ENDP
END main