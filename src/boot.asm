org 0x7C00
bits 16
main:
    mov ah, 0x0e
    mov al, 'B'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, 't'
    int 0x10
    mov al, 'i'
    int 0x10
    mov al, 'n'
    int 0x10
    mov al, 'g'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, '.'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, '.'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, '.'
    int 0x10

    cli
    hlt
    jmp $

times 510-($-$$) db 0
dw 0xAA55
