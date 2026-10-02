Include Irvine32.inc
.data

arr BYTE 10h, 20h, 30h, 40h, 50h

.code
main PROC
    
    movzx eax, arr[0]
    call writeInt
    call Crlf

    movzx eax, arr[2]
    call writeInt

    exit

main ENDP
END main