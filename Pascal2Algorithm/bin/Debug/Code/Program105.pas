// #6
program prog;

var
  m, n : integer;

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
  
  Writeln('Введи N');
  Readln(n);
  Writeln('Введи M');
  Readln(m);
  
  Writeln($'Число сочетаний: { Factorial(n) / Factorial( Factorial(m) * (n - m) ) }');
  
end.