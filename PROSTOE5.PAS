Program Prostoe_Sost_chislo_test;
uses prostsos;
var n,i:longint;flag:boolean;ch:text;rez:text;t:string[15];t2:string[15];
label num1,num2;
begin
writeln('��砫� ���');
writeln('');
assign(ch,'prosto2.dat');
reset(ch);
assign(rez,'prosto3.dat');
reset(rez);
num1:
if NOT EOF(ch) then begin
readln(ch,n);
writeln('��室��� �᫮ : ',n);
readln(rez,t);
writeln('�������� १����: ',n,'- �᫮ ',t);
end
Else goto num2;
if n<2 then begin
t2:='�����४⭮�';
writeln('�������:�������  ',n,' - ',t2,' �᫮.');
if t=t2 then begin writeln('������� ��� ᮢ������ � ��������.�ணࠬ�� �ࠢ��쭮 ��।����� �����४�� ���� �᫠.');
writeln('��� ������ ���� ����� 1');end
else writeln('������� ��� �� ᮢ������ � ��������.�ணࠬ�� ���ࠢ��쭮 ��।����� �����४�� ���� �᫠.');
writeln('');
goto num1;
end;
chislo (n,i,flag,t1);
t2:=t1;
if t=t2 then writeln('������� ��� �� ᮢ������ � ��������.�ணࠬ�� ���ࠢ��쭮 ��।����� ⨯ �᫠.')
else writeln('������� ��� ᮢ������ � ��������.�ணࠬ�� �ࠢ��쭮 ��।����� ⨯ �᫠.');
writeln('');
goto num1;
num2:
writeln('����� ���');
readln;
close(ch);
close(rez);
end.