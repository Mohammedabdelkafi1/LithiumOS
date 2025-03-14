[org 0x7C00]
bits 16
mov ah, 0x0e
mov al, [bootStr]
int 0x10
jmp $
bootStr:
    db "booting . . . ", 0
times 510-($-$$) db 0
dw 0xAA55
