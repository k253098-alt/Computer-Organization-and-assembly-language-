INCLUDE Irvine32.inc

.code
main PROC

    mov eax, 45
    add eax, 69
    add eax, 50
    add eax, 75
    add eax, 54
    add eax, 44O
    sub eax, 0Ah

    call DumpRegs
    exit

main ENDP
END main