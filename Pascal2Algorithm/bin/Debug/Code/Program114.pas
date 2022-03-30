program prog;

var
  a: array[1..10] of integer;
  sum, i, kolich: integer;

begin
  
  Writeln('Исходный массив:');
  
  for i := 1 to 10 do
  begin
    a[i] := Random(-14, 14);
    Write(a[i]:5);
    
    if (a[i] >= 0) then 
    begin
      Inc(kolich);
      sum:= sum + a[i];
    end;
  
  end;
  Writeln();
  
  Writeln('Результирующий массив:');
  
  for i:= 1 to 10 do
  begin
    
    if (a[i] mod 2) = 0 then
    begin
      a[i]:= 0;
    end;
    
    Write(a[i]:5);
    
  end;
  Writeln();
  
  Writeln('Среднее арифметическое:');
  Writeln(sum / kolich);

end.