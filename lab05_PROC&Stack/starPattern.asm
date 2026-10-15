Include Irvine32.inc
.data
   col DWORD 5
   msg BYTE "*",0
   inner DWORD 1

.code
main PROC
    
    call printStar

    exit
main ENDP


printStar PROC
   mov ecx, 5
L1:
   push ecx
   mov ecx, inner
  L2:
     mov edx, offset msg
     call writeString
 loop L2
     call Crlf
     pop ecx
     inc inner
  loop L1
  ret
printStar ENDP
END main