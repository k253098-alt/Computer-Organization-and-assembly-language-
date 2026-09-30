INCLUDE Irvine32.inc

.data
    arrD SDWORD 10, 20, 30, 40, 50

.code
main PROC

    mov esi, OFFSET arrD
    mov ecx, LENGTHOF arrD

L1:
    mov eax, [esi]
    call WriteInt
    call Crlf

    add esi, TYPE arrD
    loop L1

    exit

main ENDP
END main
