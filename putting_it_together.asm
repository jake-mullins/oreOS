[org 0x7c00]        ; Offset for code

; STACK
mov sp, 0x8000
mov bp, sp

mov bx, HELLO_MSG
call print_string

mov bx, GOODBYE_MSG
call print_string

jmp $

HELLO_MSG:
    db 'What',0x27,'s crack-a-lacking?',0x00    ; 0x27 is comma

; MAGIC
times 510-($-$$) db 0x00
dw 0xaa55