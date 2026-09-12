Include Irvine32.inc

.data

text BYTE "After exchange: ",0


num1 Dword 0FF10h
num2 Dword 0E10Bh

.code
main PROC
    mov eax, num1
    mov ebx, num2


    XCHG eax, ebx
   

    mov edx, OFFSET text
    call writeString
    call crlf

    mov eax, ebx
    call writeHex
    call crlf

    exit
main ENDP
end main
