Program Prostoe_sostavnoe_chislo;
uses prostsos;
var n,i:longint;flag:boolean;
label num1;
begin
num1:
writeln('������ �᫮ ');
readln(n);
if n<2 then begin
writeln('����񭭮� �᫮ ������ ���� ����� 1.');
goto num1;
end;
chislo(n,i,flag,t1);
readln;
end.