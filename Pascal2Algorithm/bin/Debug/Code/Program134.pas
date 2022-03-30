program prog;

var
  m : integer;

begin

  Readln(m);
  
  case (m) of
    12, 1, 2 : Writeln('Зима');
    3, 4, 5 : Writeln('Весна');
    6, 7, 8 : Writeln('Лето');
    9, 10, 11 : Writeln('Осень');
  end;
  
end.