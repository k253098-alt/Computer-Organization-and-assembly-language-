Include  irvine32.inc
.data
    msg1 BYTE "Sum : ",0
   num1 SDWORD ?
   num2 SDWORD ?
   num3 SDWORD ?
   
.code
main PROC
    mov eax, 0
    call ReadInt
    mov num1, eax

    mov eax, 0
    call ReadInt
    mov num3, eax

    call ReadInt
    mov num2, eax

    call AddThreeNum
    mov edx, offset msg1
    call writeString
    call writeInt
    call Crlf

exit
main ENDP

AddThreeNum PROC

   mov eax, num1
   add eax, num2
   add eax, num3

   ret
AddThreeNum ENDP
END main