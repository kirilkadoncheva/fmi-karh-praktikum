masm
model	small
stack	256
.data	
b	db	17h	;���������� �᫮ 17h
c	db	45h	;���������� �᫮ 45h
sum	db	2 dup (0)
.code	
main:	
	mov	ax,@data
	mov	ds,ax
	xor	ax,ax
	mov	al,b
	add	al,c
	daa
	jnc	$+6	;��室, �� १��� <= 99
	mov	sum+1,ah	;���⠭� �� �७�� �� �ꡨ࠭� (१����� > 99)
	mov	sum,al	;������ ��������� ��� �� १���
	mov	ax,4c00h
	int	21h
end	main

