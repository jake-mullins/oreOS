; STACK
mov bp, 0x8000
mov sp, bp

mov al, 'H'
call print_char
mov al, 'e'
call print_char

call sub_10_and_20      
int 0x10                ; If regs don't clear, prints 'a'
                        ; If regs do clear, prints 'e'

jmp $

print_char:
    mov ah, 0x0e
    int 0x10
    ret

sub_10_and_20  :
    pusha
    
    mov ax, 10
    mov bx, 20
    cmp bx, ax
    
    mov ah, 0x0e
    mov al, 'a'
    int 0x10
    
    popa
    ret

; MAGIC
times 510-($-$$) db 0x00
dw 0xaa55