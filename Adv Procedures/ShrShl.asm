
include Irvine32.inc
.data
num DWORD 2345ABCDh
rightNum DWORD ?
leftNum DWORD ?
rightBits BYTE 0
leftBits BYTE 0

.code
main PROC

mov eax,num
mov ecx,4
L1:
shr eax,1
;rcr ah,1
loop L1
call writeDec
call Crlf

mov eax,num
mov ecx,4
L2:
shl eax,1
;rcl ah,1
loop L2
call writeDec


exit
main ENDP
END main
