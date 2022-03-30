program prog;
var
arr: array[1..7] of integer;
i, s, c: integer;
r: real;
begin
Writeln('Исходный массив:');
for i := 1 to 7 do
begin 
arr[i] := Random(-17, 17);
Write(arr[i]:3);
end;
Writeln;
Writeln('Изменённый массив:');
for i := 1 to 7 do
begin
arr[i] := arr[i] * 2;
Write(arr[i]:3);  
if arr[i] >= 0 then 
begin
s := s + arr[i];
c:=c+1;
end;
end;
Writeln;
r:=S/c;
Writeln('Среднее арифметическое: ', r);
end.