INCLUDE Irvine32.inc

.code
main PROC

    mov edx, eax

    add edx, 3
    add edx, ebx
    sub edx, ecx
    add edx, 0Ah
    sub edx, 65o
    add edx, 44d

    call DumpRegs
    exit

main ENDP
END main