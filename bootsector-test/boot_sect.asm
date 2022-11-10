loop:			; infinite loop
	jmp loop	

times 510-($-$$) db 0	; 0x00 fill 510 times for 512 byte limit

dw 0xaa55		; magical musical number

