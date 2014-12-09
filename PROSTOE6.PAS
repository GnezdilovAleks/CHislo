Program Prostoe_sostavnoe_chislo;
uses prostsos;
var n,i:longint;flag:boolean;
label num1;
begin
num1:
writeln('Введите число ');
readln(n);
if n<2 then begin
writeln('Введённое число должно быть больше 1.');
goto num1;
end;
chislo(n,i,flag,t1);
readln;
end.