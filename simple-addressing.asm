[org 0x7c00]

mov ah, 0x0e	; Specifies scrolling teletype interrupt

; First shot
mov al, secret
int 0x10

mov al, [secret]
int 0x10

mov bx, secret
add bx, 0x7c00
mov al, [bx]
int 0x10

mov al, [0x7c1d]
int 0x10

jmp $

secret:
	db "Y"

; MAGIC
times 510-($-$$) db 00
dw 0xaa55
