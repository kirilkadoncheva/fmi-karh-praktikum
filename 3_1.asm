data	segment	para public 'data'
message	db	'Hello World! $'
data	ends

stk	segment	stack
	db	256 dup ('?')	;������� �� �����
stk	ends

code	segment	para public 'code';������ �� ������� �������
		
	assume cs:code,ds:data,ss:stk
main:	mov	ax,data	;������ �� �������� ����� � �������� ax
	mov	ds,ax		;ax � ds
	mov	ah,9
	mov	dx,offset message
	int	21h	;��������� ����������� �� ������
	
mov	ax,4c00h	; 4c00h � ax
	int	21h	;���������� ����� �� ����������

code	ends		;���� �� ������� �������

end	main		;���� �� ���������� � ������ ����� main


