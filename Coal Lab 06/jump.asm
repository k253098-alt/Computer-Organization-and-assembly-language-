INCLUDE Irvine32.inc

.data
welcomeMsg  BYTE "Welcome to the Store!", 0
adMsg       BYTE "Advertisement: Buy 1 Get 1 Free!", 0
billMsg     BYTE "Please proceed to billing.", 0

.code
main PROC

    mov edx, OFFSET welcomeMsg
    call WriteString
    call Crlf

    jmp Billing

    mov edx, OFFSET adMsg
    call WriteString
    call Crlf

Billing:
    mov edx, OFFSET billMsg
    call WriteString
    call Crlf

    exit
main ENDP
END main