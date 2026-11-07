INCLUDE Irvine32.inc

.data
     msg BYTE "All are eaual",0
     msg1 BYTE "Enter 4 numbers: ",0
     msg5 BYTE "Numbers are not equal",0
     num1 DWORD ?
     num2 DWORD ?
     num3 DWORD ?
.code
main PROC
    mov edx, offset msg1
    call writeString
    call Crlf
    call readDec
    mov num1, eax

    call readDec
    mov num2, eax

    call readDec
    mov num3, eax

    call readDec
    
    cmp eax, num1
    je checkSec
    mov edx, offset msg5
    call writeString
    jmp khatam
checkSec:
    cmp eax, num2
    je checkThird
    mov edx, offset msg5
    call writeString
    jmp khatam

checkThird:
    cmp eax, num3
    jne print
    mov edx, offset msg
    call writeString
    jmp khatam

print:
    mov edx, offset msg5
    call writeString

khatam:
    

    exit
main ENDP
END main