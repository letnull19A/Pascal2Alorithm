var
  a: array[1..10] of integer;
  i, g, sum: integer;

begin
  for i := 1 to 10 do
  begin
    a[i] := random(100);
    write(a[i]:6);
    
    if a[i] mod 2 > 0 then
      g := g + 1;
    
    if a[i] mod 2 = 0 then
      sum := sum + A[i];
  end;
  
  Writeln();
  writeln('Всего нечётных чисел ', g);
  writeln('Сумма чётных= ', sum);
end.