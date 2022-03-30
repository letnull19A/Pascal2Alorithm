program prog;

const
  length = 6;

var
  origin: array[1..length] of array[1..length] of integer;
  min, max, countOfNegative, countOfPositive: integer;

begin
  
  min:= -14;
  max:= 14;
  
  Writeln('Исходная матрица:');
  
  for var i: integer := 1 to length do
  begin
    
    for var j: integer := 1 to length do
    begin
      
      origin[i, j] := Random(min, max);
      Write(origin[i, j]:5);
      
      if (origin[i, j] < 0) then
        Inc(countOfPositive)
      else if (origin[i, j] >= 0) then
        Inc(countOfNegative);
    
    end;
    Writeln();
  
  end;
  
  Writeln($'Пложительных: {countOfPositive}');
  Writeln($'Отрицательных: {countOfNegative}');
  Writeln('Результирующая матрица:');
  
  for var i: integer := 1 to length do
  begin
    for j: integer := length downto 1 do
    begin
      
      if (i = j) then
        origin[i, j]:= 1;
      
      Write(origin[i, j]:5);
      
    end;
    Writeln();
  end;
    
      

end.