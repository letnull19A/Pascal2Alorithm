program prog;
var
tem: array[1..10] of integer;
tempa, i, a: integer;
begin
for i := 1 to 10 do
begin
Writeln('Введите температуру:');
Readln(tempa);
tem[i]:=tempa;
if (tempa<10) then a:=a+1;
end;
Writeln('Температура опускалась ниже 10 градусов: ',a,' раз.');
end.