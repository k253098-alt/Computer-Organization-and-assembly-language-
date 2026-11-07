INCLUDE Irvine32.inc

.data
    arr DWORD 4 DUP(?)
    msg BYTE "Enter 4 numbers: ",0
    primeMsg BYTE "All numbers are prime.",0
    notPrimeMsg BYTE "A number is not prime.",0
    largestMsg BYTE "Largest prime: ",0

.code
main PROC

    mov edx, OFFSET msg
    call WriteString

    mov esi, OFFSET arr
    mov ecx, 4

InputLoop:
    call ReadInt
    mov [esi], eax
    add esi, 4
    loop InputLoop

    mov esi, OFFSET arr
    mov ecx, 4

CheckLoop:
    mov eax, [esi]
    call CheckPrime

    cmp eax, 0
    je NotPrime

    add esi, 4
    loop CheckLoop

    mov edx, OFFSET primeMsg
    call WriteString
    call Crlf

    push OFFSET arr
    call LargestPrime

    jmp ExitProgram

NotPrime:
    mov edx, OFFSET notPrimeMsg
    call WriteString
    call Crlf

ExitProgram:
    exit
main ENDP

CheckPrime PROC
    cmp eax, 2
    jl NotPrime
    je IsPrime
    mov ebx, 2

PrimeLoop:
    mov edx, 0
    div ebx

    cmp edx, 0
    je NotPrime

    mov eax, ebx
    inc ebx

    cmp ebx, eax
    jge IsPrime
    jmp PrimeLoop

IsPrime:
    mov eax, 1
    ret

NotPrime:
    mov eax, 0
    ret

CheckPrime ENDP

LargestPrime PROC
    push ebp
    mov ebp, esp

    mov esi, [ebp+8]
    mov eax, [esi]
    mov ecx, 3

FindLargest:
    add esi, 4
    cmp eax, [esi]
    jae Next
    mov eax, [esi]

Next:
    loop FindLargest

    mov edx, OFFSET largestMsg
    call WriteString

    call WriteDec
    call Crlf
    pop ebp
    ret 4

LargestPrime ENDP
END main