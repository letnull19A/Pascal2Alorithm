// #1

program prog;

const length = 8;

var
  original : array[1..length] of integer;
  min, max, countOfNegative, multiply : integer;

begin
  
  min:= -10;
  max:= 10;
  
  multiply:= 1;
  
  Writeln('Исходный массив:');
  
  for var i : integer := 1 to length do
  begin
    
    original[i]:= Random(min, max);
    Write(original[i]:5);
    
    if (original[i] < 0) then Inc(countOfNegative);
    
  end;
  
  Writeln();
  
  Writeln('Результирующий массив:');
  
  for var i : integer := 1 to length do
  begin
    
    if (original[i] >= 0) then
    begin
      original[i] := original[i] * 2;
      multiply:= multiply * original[i];
      
    end;
    
    Write(original[i]:5);
    
  end;
  
  Writeln($'Произведение: {multiply}');
  
end.