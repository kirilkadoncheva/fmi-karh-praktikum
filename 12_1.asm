;---------12_1.asm----------------------------------
;�ணࠬ� �� �८�ࠧ㢠�� �� ��㧭�筮 ��⭠����筮 �᫮
;(� ᨬ����� ���) � ����筮 �।�⠢ﭥ.
;�室: ��⭠�e��筮 �᫮ �� ��� ���, �ꢥ��� � �� ����������.
;��室: १����� �� �८�ࠧ㢠���� � ॣ����� dl.
;------------------------------------------------------
data	segment	para public 'data'
message	db	0ah,0dh,'�ꢥ��� ��� ��⭠����筨 ���','$'
data	ends
stk	segment	stack
	db	256 dup ('?')
stk	ends
code	segment	para public 'code'
main	proc	
	assume cs:code,ds:data,ss:stk
	mov	ax,data	
	mov	ds,ax	;ax � ds
	mov	ah,9
	lea	dx,message
	int	21h
	xor	ax,ax	;������ �� ॣ����� ax
	mov	ah,1h	;1h � ॣ����� ah
	int	21h	;������� �� �४�ᢠ�� � ����� 21h
	mov	dl,al	;���ন��� �� ॣ����� al � ॣ����� dl
	sub	dl,30h;���������: (dl)=(dl)-30h
	cmp	dl,9h	;�� � �ࠢ�� (dl) � 9h
	jle	M1	;��室 �� �⨪�� M1, �� dl<9h ��� dl=9h
	sub	dl,7h	;���������: (dl)=(dl)-7h
M1:		
	mov	cl,4h	;�����ﭥ �� 4h � ॣ����� cl
	shl	dl,cl	;�����⢠�� ���ন��� �� dl � 4 ࠧ�鸞 ��
	int	21h	;��������� �� �४�ᢠ�� � ����� 21h
	sub	al,30h;���������: (dl)=(dl)-30h
	cmp	al,9h	;�� � �ࠢ�� (al) � 9h
	jle	M2	;��室 �� �⨪�� M2, �� al<9h ��� al=9h
	sub	al,7h	;���������: (al)=(al)-7h
M2:			
	add	dl,al	;�ꡨ࠭�: (dl)=(dl)+(al)
	mov	ax,4c00h	
	int	21h	
main	endp		;�ࠩ �� ��楤��� main
code	ends		;�ࠩ �� ������� ᥣ����
end	main		;�ࠩ �� �ணࠬ�� � �室�� �窠 main

