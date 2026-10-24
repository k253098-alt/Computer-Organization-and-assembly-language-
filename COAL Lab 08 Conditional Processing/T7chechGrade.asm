
include Irvine32.inc
.data
msg1 byte "Enter marks: ",0
msg2 byte "Grade: A",0
msg3 byte "Grade: B",0
msg4 byte "Grade: C",0
msg5 byte "Grade: D",0
msg6 byte "Grade: F",0
msg7 byte "Invalid marks",0

.code
main PROC
    mov edx,offset msg1
    call WriteString
    call ReadInt

    cmp eax,0
    jl invalid
    cmp eax,100
    jg invalid

    cmp eax,90
    jge gradeA
    cmp eax,80
    jge gradeB
    cmp eax,70
    jge gradeC
    cmp eax,60
    jge gradeD
    jmp gradeF

gradeA:
    mov edx,offset msg2
    jmp display

gradeB:
    mov edx,offset msg3
    jmp display

gradeC:
    mov edx,offset msg4
    jmp display

gradeD:
    mov edx,offset msg5
    jmp display

gradeF:
    mov edx,offset msg6
    jmp display

invalid:
    mov edx,offset msg7

display:
    call WriteString
    call Crlf

exit
main ENDP
END main
