MASM
MODEL	small
STACK	256
.data
mes	db	0ah,0dh,'Masiv - ','$'
mas	db	10 dup (?)	;��ᨢ
i	db	0
.code
main:
	mov	ax,@data
	mov	ds,ax
	xor	ax,ax	;������ �� ax
	mov	cx,10	;�⮩����� �� ���� �� 横ꫠ � cx
	mov	si,0	;������ �� ��砫��� ������� � si
go:		;横� �� ���樠������
	mov	bh,i	;i � bh
	mov	mas[si],bh	;����� � ��ᨢ� �� i
	inc	i	;���६��� i
	inc	si	;��室 �� ᫥����� ������� �� ��ᨢ�
	loop	go	;�� � ����� 横ꫠ
;��������� �� ��࠭� �� ����祭�� ��ᨢ
	mov	cx,10
	mov	si,0
	mov	ah,09h
	lea	dx,mes
	int	21h
show:
	mov	ah,02h	;�㭪�� �� ��������� �⮩����� �� al �� ��࠭�
	mov	dl,mas[si]
	add	dl,30h	;�८�ࠧ㢠�� �� �᫮ � ᨬ���
	int	21h
	inc	si
	loop	show
exit:
	mov	ax,4c00h
	int	21h
end	main

