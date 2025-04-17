;; Sorry i couldnt do programming for a while cus school

	bits 16

	mov ax, 07C0h
	mov ds, ax
	mov ax, 07E0h
	mov ss, ax
	mov sp, 2000h

	call clearscreen

	push 0000h
	call movecursor
	add sp, 2

	push msg
	call print
	add sp, 2

	cli
	hlt

clearscreen:
	push bp
	mov bp, sp
	pusha

	mov ah, 07h
	mov al, 00h
    	mov bh, 07h
	mov cx, 00h
	mov dh, 18h
	mov dl, 4fh
	int 10h

	popa
	mov sp, bp
	pop bp
	ret

movecursor:
	push bp
	mov bp, sp
	pusha

	mov dx, [bp+4]
	mov ah, 02h
	mov bh, 00h
	int 10h

	popa
	mov sp, bp
	pop bp
	ret

print:
	push bp
	mov bp, sp
	pusha
	mov si, [bp+4]
	mov bh, 00h
	mov bl, 00h
	mov ah, 0Eh
 .char:
	mov al, [si]
	add si, 1
	or al, 0
	je .return
	int 10h
	jmp .char
 .return:
	popa
	mov sp, bp
	pop bp
	ret


msg:	db "Oh boy do I sure love assembly!", 0

	times 510-($-$$) db 0
	dw 0xAA55

