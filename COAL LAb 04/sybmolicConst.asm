INCLUDE Irvine32.inc
.data

SecondsInDay = 24 * 60 * 60
msg BYTE "Seconds in one day = ", 0

.code
main PROC

    mov eax, SecondsInDay
    mov edx, OFFSET msg
    call WriteString

    call WriteInt
    call CrLf

    exit
main ENDP
END main