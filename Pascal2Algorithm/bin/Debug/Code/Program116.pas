program prog;

var
  a: array[1..20] of integer;
  sum, i, kolich, mensh: integer;
  sredne : real;

begin
  
  Writeln('Исходный массив:');
  
  for i := 1 to 20 do
  begin
    a[i] := Random(150, 300);
    Write(a[i]:5);
    
    if (a[i] >= 0) then 
    begin
      Inc(kolich);
      sum:= sum + a[i];
    end;
  
  end;
  Writeln();
  
  sredne:= sum / kolich;
  
  Writeln('Результирующий массив:');
  
  for i:= 1 to 20 do
  begin
    
    if (a[i] < sredne) then
    begin
      mensh:= mensh + a[i];
    end;
    
    Write(a[i]:5);
    
  end;
  Writeln();
  
  Writeln('Сумма: ', mensh);

end.