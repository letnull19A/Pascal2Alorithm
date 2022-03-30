// #1
program prog;

const
  count = 6;

var
  x, y: integer;

procedure DivAndMultiply(x, y: integer);
begin;
  Writeln($'Частное {x} и {y}: {x / y}');
  Writeln($'Умножение {x} и {y}: { x * y }');
end;

procedure AddAndSubtract(x, y: integer);
begin
  Writeln($'Сумма {x} и {y}: { x + y }');
  Writeln($'Разность {x} и {y}: { x - y }');
end;

begin
  
  for var i: integer := 1 to count do
  begin
    Writeln($'Шаг № {i}');
    
    Writeln('Введите x:');
    Readln(x);
    Writeln('Введите y:');
    Readln(y);
    
    DivAndMultiply(x, y);
    AddAndSubtract(x, y);
  end;
end.