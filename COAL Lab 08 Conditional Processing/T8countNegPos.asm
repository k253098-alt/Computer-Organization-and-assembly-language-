
include Irvine32.inc
.data
arr SDWORD 5,-3,0,12,-8,0,7,-1,9,0
positive DWORD 0
negative DWORD 0
zero DWORD 0
msg1 BYTE "Positive: ",0
msg2 BYTE "Negative: ",0
msg3 BYTE "Zero: ",0

.code
main PROC
    mov ecx,lengthof arr
    mov esi,0

L1:
    mov eax,arr[esi * TYPE arr]
    cmp eax,0
    jg pos
    jl negt
    inc zero
    jmp next

pos:
    inc positive
    jmp next

negt:
    inc negative

next:
    inc esi
loop L1

    mov edx,offset msg1
    call WriteString
    mov eax,positive
    call WriteDec
    call Crlf

    mov edx,offset msg2
    call WriteString
    mov eax,negative
    call WriteDec
    call Crlf

    mov edx,offset msg3
    call WriteString
    mov eax,zero
    call WriteDec
    call Crlf

    exit
main ENDP
END main
