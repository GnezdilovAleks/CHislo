unit PROSTSOS;
interface
var n,i:longint;flag:boolean;t1:string[10];
Procedure chislo(n,i:longint;flag:boolean;t1:string);
Implementation
Procedure chislo;
begin
if n=2 then flag:=true
else if not odd(n) then flag:=false
else begin
flag:=true;
for i:=2 to n-1 do
if n mod i=0 then flag:=false;
end;
if flag then begin writeln('�������: ',n,' ���⮥ �᫮');
t1:='���⮥';
end
else begin writeln('�������: ',n,' ��⠢��� �᫮');
t1:='��⠢���';
end;
end;
end.