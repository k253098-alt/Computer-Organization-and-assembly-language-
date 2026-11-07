
INCLUDE Irvine32.inc

.data

  num BYTE 10011011b
  count byte ?
  msg2 BYTE "Enter rotation count: ",0
  msg3 BYTE "Original value: ",0
  msg4 BYTE "Rotated left and right: ",0

.code
main PROC
     mov edx, offset msg2
     call writeString
     call readDec
     mov count, al

     mov edx, offset msg3
     call writeString

     movzx eax, num
     call writeBin
     call Crlf

     mov cl, count
     mov al, num
     rol al, cl

     movzx eax, al
     mov edx, offset msg4
     call writeString
     call Crlf
     call writeBin
     call Crlf

     mov cl, count
     mov al, num
     ror al, cl
     movzx eax, al
     call WriteBin

    exit
main ENDP
END main
