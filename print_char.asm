;
; Prints message using BIOS routines
;

mov ah, 0x0e    ; Let CPU know it's time to do teletype output https://en.wikipedia.org/wiki/BIOS_interrupt_call, https://en.wikipedia.org/wiki/INT_10H

mov al, 'W'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 'h'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 'y'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, ' '     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 'a'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 'm'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, ' '     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 'I'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, ' '     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 'd'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 'o'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 'i'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 'n'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 'g'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, ' '     ; Set al to ascii value of W
int 0x10
mov al, 't'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 'h'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 'i'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, 's'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register
mov al, '?'     ; Set al to ascii value of W
int 0x10        ; Calls interrupt with id 0x10, using current values of register

jmp $           ; Jump to curr addr

;
;   MAGIC
;
times 510-($-$$) db 0   ; padding
dw 0xaa55               ; Magic number