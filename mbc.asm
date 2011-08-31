; Sposto il cursore in alto a sx
mov     bh, 0x00        ; pagina 0
mov     dh, 0x00        ; riga 0
mov     dl, 0x00        ; colonna 0
mov     ah, 0x02        ; imposto la funzione
int     0x10

; Comincio a stampare
mov     cx, 0x0001
mov     bh, 0x00
mov     al, 0x48
mov     ah, 0x0a
int     0x10
