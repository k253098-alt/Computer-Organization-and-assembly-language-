INCLUDE Irvine32.inc

.data
studentMsg BYTE "Student Records:", 0
msg BYTE "Enter student records:",0
msg1 BYTE "<",0
msg2 BYTE ">",0

name1 BYTE 30 DUP(0)
dept1 BYTE 30 DUP(0)

name2 BYTE 30 DUP(0)
dept2 BYTE 30 DUP(0)

name3 BYTE 30 DUP(0)
dept3 BYTE 30 DUP(0)

.code
main PROC
    mov edx, offset msg
    call writeString
    call Crlf
    ; Student 1
    mov edx, OFFSET name1
    mov ecx, SIZEOF name1
    call ReadString

    mov edx, OFFSET dept1
    mov ecx, SIZEOF dept1
    call ReadString

    ; Student 2
    mov edx, OFFSET name2
    mov ecx, SIZEOF name2
    call ReadString

    mov edx, OFFSET dept2
    mov ecx, SIZEOF dept2
    call ReadString

    ; Student 3
    mov edx, OFFSET name3
    mov ecx, SIZEOF name3
    call ReadString

    mov edx, OFFSET dept3
    mov ecx, SIZEOF dept3
    call ReadString

    ; Display
    mov edx, OFFSET studentMsg
    call WriteString
    call Crlf

    mov edx, offset msg1
    call writeString
    mov edx, OFFSET name1
    call WriteString
    mov edx, offset msg2
    call writeString
    mov edx, offset msg1
    call writeString
    mov edx, OFFSET dept1
    call WriteString
    mov edx, offset msg2
    call writeString
    call Crlf

    mov edx, offset msg1
    call writeString
    mov edx, OFFSET name2
    call WriteString
    mov edx, offset msg2
    call writeString
    mov edx, offset msg1
    call writeString
    mov edx, OFFSET dept2
    call WriteString
    mov edx, offset msg2
    call writeString
    call Crlf

    mov edx, offset msg1
    call writeString
    mov edx, OFFSET name3
    call WriteString
    mov edx, offset msg2
    call writeString
    mov edx, offset msg1
    call writeString
    mov edx, OFFSET dept3
    call WriteString
    mov edx, offset msg2
    call writeString
    call Crlf


    exit
main ENDP
END main