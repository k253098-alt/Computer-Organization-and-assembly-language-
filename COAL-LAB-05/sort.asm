Include Irvine32.inc

.data
  array BYTE 71, 53, 21, 62, 35
  sorted BYTE LENGTHOF array DUP(?)

.code
main PROC
    mov al, array[2]
    mov sorted[0], al

    mov al, array[4]
    mov sorted[1], al

    mov al, array[1]
    mov sorted[2], al

    mov al, array[3]
    mov sorted[3], al

    mov al, array[0]
    mov sorted[4], al

    mov ecx, lengthof sorted
    mov ebx,0
    L1:
       movzx eax, sorted[ebx]
       call writeDec
       call Crlf
       inc ebx
       loop L1

    call DumpRegs
    exit

main ENDP
END main

    


