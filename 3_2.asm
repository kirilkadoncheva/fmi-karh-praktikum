masm		;०�� �� ࠡ�� �� TASM: masm, �� MASM �ﬠ �㦤�
model	small	;����� �� ������
.data		;ᥣ���� �� �����
message	db	'Hello World!. $'
.stack	256	;ᥣ���� �� �⥪�
.code	;ᥣ���� �� ����
main:			;��砫� � �室�� �窠 main
	mov	ax,@data	;��०���� ���� �� ᥣ���� � ����� � ॣ����� ax
	mov	ds,ax	;ax � ds
	mov	ah,9
	mov	dx,offset message
	int	21h	;��������� �ꮡ饭��� �� ��࠭�
	mov	ax,4c00h	;��०���� 4c00h � ॣ����� ax
	int	21h	;��������� �४�ᢠ�� � ����� 21h
end	main		;�ࠩ �� �ணࠬ�� � �室�� �窠 main

