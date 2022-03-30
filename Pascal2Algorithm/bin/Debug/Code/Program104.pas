// #5
program prog;

var
  sum, count : integer;

function Factorial(number: integer): integer;
begin
  var
  _factorial, i: integer;
  
  _factorial := 1;
  
  for i := 1 to number do
    _factorial := _factorial * i;
  
  Factorial := _factorial;
end;

begin
  
  Writeln('Введите количество');
  Readln(count);
  
  for var i : integer := 1 to count do
    sum += Factorial(i);
  
  Writeln(sum);

end.