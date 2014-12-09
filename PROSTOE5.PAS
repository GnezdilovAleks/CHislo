Program Prostoe_Sost_chislo_test;
uses prostsos;
var n,i:longint;flag:boolean;ch:text;rez:text;t:string[15];t2:string[15];
label num1,num2;
begin
writeln('Начало теста');
writeln('');
assign(ch,'prosto2.dat');
reset(ch);
assign(rez,'prosto3.dat');
reset(rez);
num1:
if NOT EOF(ch) then begin
readln(ch,n);
writeln('Исходное число : ',n);
readln(rez,t);
writeln('Ожидаемый результат: ',n,'- число ',t);
end
Else goto num2;
if n<2 then begin
t2:='некорректное';
writeln('Результат:Введено  ',n,' - ',t2,' число.');
if t=t2 then begin writeln('Результат теста совпадает с ожидаемым.Программа правильно определила некорректный ввод числа.');
writeln('Оно должно быть больше 1');end
else writeln('Результат теста не совпадает с ожидаемым.Программа неправильно определила некорректный ввод числа.');
writeln('');
goto num1;
end;
chislo (n,i,flag,t1);
t2:=t1;
if t=t2 then writeln('Результат теста не совпадает с ожидаемым.Программа неправильно определила тип числа.')
else writeln('Результат теста совпадает с ожидаемым.Программа правильно определила тип числа.');
writeln('');
goto num1;
num2:
writeln('Конец теста');
readln;
close(ch);
close(rez);
end.