mov bp, 0x8000      ; set stack to 32,768 bytes away
mov sp, bp          ; stack + base are the same

mov ah, 0x0e        ; printing time

push 'a'
push 'b'
push 'c'

pop bx              ; pop all of the allocated 16 bits into bx
mov al, bl          ; get char into buffer
int 0x10

pop bx
mov al, bl
int 0x10

mov al, [0x7ffe]    ; actual memory address
int 0x10

mov bx, 40

cmp bx, 4
jg block1
mov al, 'A'
jmp end

block1:
    cmp bx, 40
    jge block2
    mov al, 'B'
    jmp end
block2:
    mov al, 'C'

end:
    mov ah, 0x0e
    int 0x10

jmp $

; MAGIC
times 510-($-$$) db 0x00
dw 0xaa55