masm
model small
.data
string	db	80 dup (" ")
len_string=$-string
point_fname	dd	string
.stack	256
.code
main:
	mov	ax,@data 
	mov	ds,ax 
	mov	bx,0 
	mov	cx,len_string
	lds	dx,point_fname 
	mov	ah,3fh 
	int	21h
	jc	exit
	mov	bx,1 
	mov	cx,len_string
	lds	dx,point_fname 
	mov	ah,40h 
	int	21h 
	jc	exit 
	nop 
exit:
	mov	ax,4c00h 
	int	21h
end	main
