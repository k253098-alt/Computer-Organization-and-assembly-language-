Include Irvine32.inc
.data
msg BYTE "Code Review Evaluation by Ghulam Qadir:", 0
msg1 BYTE "Enter score for code Quality: ",0
msg2 BYTE "Enter score for Documentation: ",0
msg3 BYTE "Enter score for Testing: ",0
msg4 BYTE "Total Review Points: ",0
sum DWORD ?

.code
main PROC
    mov edx, offset msg
    call writeString
    call Crlf
    call Crlf
    call takeInput
    exit
main ENDP

takeInput PROC
   mov eax, 0
   mov edx, offset msg1
   call writeString
   call readDec
   push eax

   mov edx, offset msg2
   call writeString
   mov eax, 0
   call readDec
   push eax

   mov edx, offset msg3
   call writeString
   mov eax, 0
   call readDec
   
   call calcTotal
   ret
takeInput ENDP

calcTotal PROC
   
   mov sum, eax
   pop eax
   mov ebx, eax
   pop eax
   add sum, eax
   pop eax
   add eax, sum
   
   mov edx, offset msg4
   call writeString
   call writeDec

   mov eax, ebx
   push eax

   ret
calcTotal ENDP
END main 
