program prog;

const
  length = 20;
  
var
  origin : array[1..length] of integer;
  min, max, sum : integer;

begin
  
  min:= 200;
  max:= 300;
  
  Writeln('Исходный массив:');
  
  for var i : integer := 1 to length do
  begin
    
    origin[i]:= Random(min, max);
    Write(origin[i]:5);
    
  end;
  Writeln();
  
  for var i : integer := 1 to length do
  begin
    
    if ((origin[i] mod 2) = 3) then
    begin
      sum := sum + origin[i];
    end;
    
  end;
  
  Writeln($'Сумма по условию: {sum}');
  
end.