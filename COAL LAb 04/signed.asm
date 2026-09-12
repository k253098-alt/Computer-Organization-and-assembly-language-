INCLUDE Irvine32.inc

.data
signed BYTE -10
unsigned BYTE 10
text BYTE "Singed number: ",0
text1 BYTE "UnSinged number: ",0

.code
main PROC 
mov al, signed
mov edx, OFFSET text
call WriteString
movsx eax, al
call writeInt 
call crlf

mov al, unsigned
mov edx, OFFSET text1
call WriteString
movzx eax, al
call writeInt 
call crlf

exit
main ENDP
END main