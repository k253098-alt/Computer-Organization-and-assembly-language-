Include Irvine32.inc

.data

a dword 10h
b dword 12h
c1 dword 30h
d dword 20h

.code
main PROC

mov eax, a
add eax, b
mov ebx, a
sub ebx, b
sub eax, ebx
mov ebx, c1
add eax, ebx
mov ecx, d
add eax, ecx

call Dumpregs
exit

main ENDP
END main

