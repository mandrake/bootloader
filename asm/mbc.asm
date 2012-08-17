[org 0]

    jmp 07C0h:start

start:
    mov ax, cs
    mov ds, ax
    mov es, ax
    
read:

    mov ax, 1000h
    mov es, ax
    mov bx, 0
    
    mov ah, 2
    mov al, 1
    mov ch, 0
    mov cl, 2
    mov dh, 0
    mov dl, 80h
    int 13h
    
    jc  read
    
    jmp 1000h:0000

times 446-($-$$) db 0
