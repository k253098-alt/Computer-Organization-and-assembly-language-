INCLUDE Irvine32.inc

  y_parameter EQU [ebp + 12]
  x_parameter EQU [ebp + 8]
.data
   var1 DWORD 5
   var2 DWORD 6
.code
main PROC

    push var2
    push var1

    call AddTwo
    call WriteDec
    call Crlf
    exit

main ENDP
AddTwo PROC
    push ebp
    mov ebp, esp
    mov eax, y_parameter
    add eax, x_parameter
    pop ebp
    ret 8

AddTwo ENDP
END main