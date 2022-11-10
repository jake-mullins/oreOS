[org 0x7c00]

mov ah, 0x0e
mov al, 'A'
int 0x10

mov ah, 0x9   ; read string for int21
mov dx, msg
int 0x21

; loop:
;     mov al, [ebx]   ; read data at pointer 
;     int 0x10        ; print char to screen
; 
;     add ebx, $1     ; increment pointer
;     cmp al, al      ; if ah is 0x00
;     jne loop            

jmp $                   ; Infinite loop

    ; declare a string constant to be written to binary
    ; 0 is null terminator
msg db 'Booting OS','$'

; MAGIC
times 510-($-$$) db 00
dw 0xaa55