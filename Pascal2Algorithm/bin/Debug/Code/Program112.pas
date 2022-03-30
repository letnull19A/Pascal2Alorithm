// #2

program prog;

const
  length2 = 4;
  length1 = 3;
  
var
  original : array[1..length1] of array[1..length2] of integer;
  min, max : integer;

begin
  
  min:= -30;
  max:= 30;
  
  Writeln('Сгенирированный массив:');
  
  for var i : integer := 1 to Length1 do
  begin
    
    for var j : integer := 1 to length2 do
    begin
      
      original[i, j]:= Random(min, max);
      Write(original[i, j]:5);
      
    end;
    
    Writeln();
    
  end;
  
  Writeln('Результирующий массив:');
  
  for var i : integer := 1 to length1 do
  begin
    
    for var j : integer := 1 to length2 do
    begin
      
      if (original[i, j] < 0) then
        original[i, j]:= Round(Power(original[i, j], 2));
      
      Write(original[i, j]:5);
    end;
    
    Writeln();
    
  end;
  
end.