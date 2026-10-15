Include Irvine32.inc
.data
msg1 BYTE "Enter lines code by Ghulam Qadir: ", 0
msg2 BYTE "Enter lines code by Abdullah Shaikh: ",0
msg3 BYTE "Enter lines code by Waseem Rauf: ",0
msg4 BYTE "IEEE Xtreme Code Champion: ",0
msg5 BYTE " - The Logic Legend",0
msg6 BYTE "Ghulam Qadir",0
msg7 BYTE "Abdullah Shaikh",0
msg8 BYTE "Waseem Rauf",0

.code
main PROC
    call decideWinner
    exit
main ENDP

decideWinner PROC
   mov edx, offset msg1
   call writeString
   call ReadDec
   push eax

   mov edx, offset msg2
   call writeString
   call ReadDec
   push eax

   mov edx, offset msg3
   call writeString
   call ReadDec               ;eax = waseem, ebx = 
   call Crlf

   mov edx, offset msg4
   call writeString
   
   mov ebx, eax               ;eax = waseem, ebx = waseem
   pop eax               ;eax = ab shaik, ebx = waseem

   cmp eax, ebx
 JB skip
   mov ebx, eax              ;if ab shaikh greater   ebx = ab shaikh, eax = ab shaikh
   pop eax                  ;eax = G qadir,  ebx = ab shaikh

   cmp eax, ebx
 JB skip2
   mov edx, offset msg6      ;if g qadir greater, print g qadir
   call writeString
   jmp skip4

skip2:
   mov edx, offset msg7      ;if not g qadir, print ab shaikh
   call writeString
   jmp skip4

skip:
   pop eax                   ;if not not ab shaikh,    eax = g qadir,  ebx = waseem
   cmp eax, ebx
 JB skip3
   mov edx, offset msg6          ;if g qadir greater, print g qadir
   call writeString
   jmp skip4

skip3:
   mov edx, offset msg8          ;if not g qadir, print waseem
   call writeString

skip4:
   mov edx, offset msg5
   call writeString
   call Crlf
   
   ret

decideWinner ENDP
END main