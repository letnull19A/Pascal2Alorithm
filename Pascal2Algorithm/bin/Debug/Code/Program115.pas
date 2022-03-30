program prog;

var
  m : array[1..10] of array[1..10] of integer;
  i, j, sum : integer;

begin
  
  Writeln('Исходный массив:');
  
  for i:= 1 to 10 do
  begin
    for j:= 1 to 10 do
    begin
      
      m[i, j]:= Random(-16, 16);
      
      Write(m[i, j]:5);
      
      if (m[i, j] < 0) then
        sum:= sum + m[i, j];
      
    end;
    
    Writeln();
    
  end;
  
  Writeln('Сумма отрицательных элементов:', sum);
  
  Writeln('Результирующий массив:');
  
  for i:= 1 to 10 do
  begin
    for j:= 1 to 10 do
    begin
      
      if (m[i, j] > 0) then
        m[i, j]:= 0;
      
      Write(m[i, j]:5);
      
    end;
    
    Writeln();
    
  end;
  
end.