[org 0x7C00]

start:
    mov ah, 0x0e
    mov bx, bootStr

printStr:
    mov al, [bx]
    cmp al, 0
    je end
    int 0x10
    inc bx
    jmp printStr

end:
    cli
    hlt
    jmp $

bootStr:
    db "Booting . . .", 0

times 510-($-$$) db 0
dw 0xAA55
