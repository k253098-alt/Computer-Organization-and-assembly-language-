INCLUDE Irvine32.inc
.code
main PROC
mov eax, 5
mov ebx, 1001b
add eax, ebx
call DumpRegs
exit
main ENDP
END main