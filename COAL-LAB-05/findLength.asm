Include Irvine32.inc

.data

arrayW WORD 100h, 200h, 300h
arrayB BYTE 10h, 20h, 30h, 40h, 50h

.code
main PROC
    mov eax, lengthof arrayW
    call writeInt
    call Crlf

    mov eax, lengthof arrayB
    call writeInt

    
    exit
main ENDP
END main
