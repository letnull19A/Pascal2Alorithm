program prog;
var
arr: array[1..5, 1..4] of integer; 
i, j: integer;
begin
Writeln('Массив:');
for i := 1 to 5 do
begin
for j := 1 to 4 do
begin
arr[i, j] := Random(-20, 20);
Write(arr[i, j]:5);
end;
Writeln;
end;
Writeln('Результат:');
for i := 1 to 5 do
begin
for j := 1 to 4 do
begin
if arr[i, j] < 5 then arr[i, j]:=111;
Write(arr[i, j]:5);
end;
Writeln;
end;
end.