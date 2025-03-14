org 0x7C00

section .text
    mov si, msg

print_loop:
    lodsb
    or al, al
    jz done

    mov ah, 0x0E 
    mov bh, 0x00 
    int 0x10 

    jmp print_loop

done:
    hlt

msg db "Welcome To Lithium!", 0 

times 510-($-$$) db 0
dw 0xAA55
