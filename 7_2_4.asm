masm
model	small
stack	256
.data
b	db	6,7	;������������ �᫮ 76
c	db	4	;������������ �᫮ 4
proizv	db	4 dup (0)
.code
main:	
	mov	ax,@data
	mov	ds,ax
	xor	ax,ax
len	equ	2	;ࠧ��୮�� �� ��ࢨ� �����⥫
	xor	bx,bx
	xor	si,si
	mov	cx,len	;� cx �ꫦ���� �� ��-������� �����⥫
m1:
	mov	al,b[si]
	mul	c
	aam		;��४�� �� 㬭�������
	adc	al,dl	;���⠭� �� �।室��� �७��
	aaa	;��४�� �� १��� �� �ꡨ࠭� � �७��
	mov	dl,ah	; ������ﭥ �� ��७��
	mov	proizv[bx],al
	inc	si
	inc	bx
	loop m1
	mov	proizv[bx],dl	;���⠭� �� ��᫥���� �७��
	
	mov	ah,02h	
	mov	dl,proizv[bx]
	add	dl,30h	;�८�ࠧ㢠�� �� �᫮ � ᨬ���
	int	21h	
	dec bx
	loop showmul
	
	mov	ax,4c00h
	int	21h
end	main

