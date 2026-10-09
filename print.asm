INCLUDE Irvine32.inc

.data
arr DWORD 10, 20, 30, 40, 50

.code
main PROC

    mov esi, 0
    mov ecx, LENGTHOF arr

L1:
    mov eax, arr[esi]
    call WriteDec
    call Crlf

    add esi, TYPE arr
    loop L1

    exit
main ENDP
END main