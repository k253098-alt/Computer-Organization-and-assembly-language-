
INCLUDE Irvine32.inc

.data
  num1 QWORD 1000000000
  num2 QWORD 2000000000
.code
main PROC
    call ExtendedAdd
    call WriteDec
    call Crlf

    mov eax, edx
    call WriteDec
    call Crlf

    exit
main ENDP

ExtendedAdd PROC
    mov eax, DWORD PTR num1
    mov edx, DWORD PTR num1+4

    add eax, DWORD PTR num2
    adc edx, DWORD PTR num2+4

    ret
ExtendedAdd ENDP
END main