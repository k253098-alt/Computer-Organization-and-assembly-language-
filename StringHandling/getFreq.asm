
INCLUDE Irvine32.inc

.data
target BYTE "AAEBDCFBBC",0
freqTable DWORD 256 DUP(0)

.code
main PROC
    push OFFSET freqTable
    push OFFSET target
    call Get_frequencies

    exit
main ENDP

Get_frequencies PROC
    enter 0,0

    mov esi, [ebp+8]
    mov edi, [ebp+12]

L1:
    movzx eax, BYTE PTR [esi]
    cmp eax, 0
    je finish

    inc DWORD PTR [edi+eax*4]

    inc esi
    jmp L1

finish:
    leave
    ret 8

Get_frequencies ENDP
END main
