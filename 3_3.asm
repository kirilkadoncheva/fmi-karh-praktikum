Code segment
     assume cs:Code, ds:Data
begin:
       mov  ax, Data            ;���樠������  �� ᥣ���� � �����
       mov  ds, ax

       mov  ah, 09h             ;��⠭���� ����� �� �㭪���
       mov  dx, offset var      ;��⠭���� �⮩����� �� ��㬥��
       int  21h                 ;����饭�� �� MS DOS (�㭪�� 09h)

       mov  ah, 4Ch             ;��室 � MS DOS
       int  21h

Code ends
Data segment
     var db 'Hello, World!!!$',13,10;⥪�� �� ���������

Data ends
Stk    segment   stack
       dw   100 dup(?)          ;����� �� �⥪�
Stk    ends
end    begin
