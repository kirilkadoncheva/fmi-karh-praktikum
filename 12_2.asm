;��������� �� ������ �� �������, �������� � �������� AX, � ��������� ������ �������. (�������� �� ������� ����.)
model small
stack 100h
.code
main:
       mov ax, 77h 	; ���������� ������ �� ����
       push ax		; ��������� ������� � �����
       mov ax, 234d	; ������� �� ���������
       mov CL, 10d	; ������� �� �������

labelDIV:
       mov ah, 00h
       div CL 		; AX/CL �> �������� � AL, �������� � AH
       push AX 		; ��������� �� �������� � �����
       cmp AL, 0 		; �������� �� ������ ������
       jne labelDIV

       mov ah, 02h

labelPRINT:
       pop DX
       cmp DX, 77h 	; �������� �� ����
       je ProgExit
       mov dl, dh
       add dl, 30h
       int 21h
       jmp labelPRINT

ProgExit:
       mov ax, 4c00h 
       int 21h
end 	main
