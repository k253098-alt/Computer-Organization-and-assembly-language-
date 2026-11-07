
INCLUDE Irvine32.inc

.data
  val1 SDWORD 20
  val2 SDWORD 10
  val3 SDWORD 2
  temp SDWORD ?

.code
main PROC
    mov eax, val2
    cdq
    idiv val3
    mov temp, eax
    mov eax, val1
    cdq
    idiv val2

    imul eax, temp
    mov val1, eax
    call WriteInt
    call Crlf

    exit
main ENDP
END main
