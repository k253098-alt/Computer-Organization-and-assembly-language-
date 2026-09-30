Include Irvine32.inc
.data
    COUNT = 4
    arrD SDWORD 12345678h, 1A4B2000h, 3434h, 7AB9h
    prompt BYTE "Enter a 32-bit singed integer: ",0

.code
main PROC
    mov esi, offset arrD
    mov ebx, TYPE arrD
    mov ecx, LENGTHOF arrD
    call DumpMem
    call DumpRegs

    call Crlf
    mov ecx, COUNT

L1:
    mov edx, offset prompt
    call WriteString
    call ReadInt
    call Crlf

    call WriteInt
    call Crlf
    call WriteHex
    call Crlf
    call WriteBin
    call Crlf
    call Crlf

    loop L1
    exit

main ENDP
END main