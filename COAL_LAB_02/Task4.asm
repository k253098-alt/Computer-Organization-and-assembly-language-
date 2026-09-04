INCLUDE Irvine32.inc

.code
main PROC

    mov eax, 15d
    add eax, 2Ah
    add eax, 1011b
    add eax, 12o

    call DumpRegs
    exit

main ENDP
END main