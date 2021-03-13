masm
model	small
stack	256
.data
a	db	6
b   db  7
.code	 
main:
	mov	ax,@data
	mov	ds,ax

	xor	ax,ax
	mov	al, a
	add al, b
	add al, '0'
	mov dl, al
	mov dl, al
	mov ah, 02h 
	int 21h 

	mov	ax,4c00h	
	int	21h
end main			

