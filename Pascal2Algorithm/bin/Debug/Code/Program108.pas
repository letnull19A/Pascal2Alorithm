// #1
program prog;

const
  length = 10;

var origin : array[1..length] of integer;
    min, max, sum : integer;
 

begin
  
  min:= -17;
  max:= 17;
  
  Writeln('Сгенерированный массив:');
  
  for var i : integer := 1 to length do
  begin
    origin[i]:= Random(min, max);
    Write(origin[i]:5);
  end;
  Writeln();
  
  for var i : integer := 1 to length do
  begin
    
    if (origin[i] < 0) then
      sum:= sum + origin[i]
    else if (origin[i] >= 0) then
      origin[i]:= origin[i] * 2;
    
  end;
  
  Writeln($'Сумма отрицательных элементов: {sum}');
  
  Writeln('Результирующий массив:');
  
  for var i : integer := 1 to length do
  begin
    Write(origin[i]:5);
  end;
  Writeln();
  
end.