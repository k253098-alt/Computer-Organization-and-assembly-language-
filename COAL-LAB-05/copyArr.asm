Include Irvine32.inc

.data
arr1 BYTE 50, 60, 70, 80
arr2 BYTE 4 DUP(?)

.code
main PROC
;    mov esi, offset arr1
;    mov al, [esi+3]
;    mov arr2, al

;    mov al, [esi+2]
;    mov arr2+1, al

;    mov al, [esi+1]
;    mov arr2+2, al

;    mov al, [esi]
;    mov arr2+3, al


    mov al, arr1+3
    mov arr2, al

    mov al, arr1+2
    mov arr2+1, al

    mov al, arr1+1
    mov arr2+2, al

    mov al, arr1
    mov arr2+3, al

    mov ecx, lengthof arr1
    mov ebx,0

L1:
    movzx eax, arr2[ebx]
    call writeDec
    call Crlf
    inc ebx

    loop L1

    exit
main ENDP
END main

    