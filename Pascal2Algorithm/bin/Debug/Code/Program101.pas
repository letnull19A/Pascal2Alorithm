// #2
program prog;

const
  length = 4;

type
  simpleArray = array[1..length] of integer;
  
var
  original : simpleArray;

procedure MaxValueInArray(arr : simpleArray);
var max : integer;
begin
  
  max:= arr[1];
  
  for var i : integer:=1 to length do
  begin
    
    if (arr[i] > max) then max:= arr[i];
    
  end;
  
  Writeln($'Максимальное значение: {max}');
  
end;

begin
  
  Writeln('Введите значения:');
  
  for var i : integer := 1 to length do
    Readln(original[i]);
  
  MaxValueInArray(original);
  
end.