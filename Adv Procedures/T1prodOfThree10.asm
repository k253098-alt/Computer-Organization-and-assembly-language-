INCLUDE Irvine32.inc

.data
    num1 DWORD 2
    num2 DWORD 3
    num3 DWORD 4

.code
main PROC

    push num3
    push num2
    push num1
    call ThreeProd

    exit
main ENDP
ThreeProd PROC
   enter 0,0
   

    mov eax, [ebp+8]
    imul eax, [ebp+12]
    imul eax, [ebp+16]

    call WriteInt

    leave
    
    ret 12

ThreeProd ENDP

END main