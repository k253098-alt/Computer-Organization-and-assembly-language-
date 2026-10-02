Include Irvine32.inc

.Code
main PROC
    mov eax,5
    sub eax, 5
    call dumpRegs
    exit
main ENDP
END main