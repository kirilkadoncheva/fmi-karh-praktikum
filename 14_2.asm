masm
model use16 small
.stack 100h
.data   
a dw 1
x dw 8
y dw 4
u dt 0
.code
main 	proc
        mov ax, @data
        mov ds, ax
        finit;���������� ����������� � ������� ���������
        fild a; ��������� ���������� �� � � st(0)
        fxam ; ���������� ���� �� �
        jc no_null
        jp no_null
        jnz no_null
        ;�� �<>0, ����������� �� ��������� u=x+y
        fild x
        fiadd y
        fbstp u	; ��������� �� BCD ����� � �������� pop
        jmp exit
        no_null:
        ;�� �=0, ����������� �� ��������� u=(x�y)/a
        fild x
        fisub y
        fidiv a
        fbstp u	; ��������� �� BCD ����� � �������� pop
exit:
        mov ax, 4c00h
        int 21h
main 	endp
end 	main

