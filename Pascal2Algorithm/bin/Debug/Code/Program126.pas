// # 1 While (Эту строчку можно удалить)

program prog;

var
  s, e : integer;
  x : real;

begin
  
  s := -1;
  e := 1;
  x := s;
  
  while ((x >= -1) and (x <= 1)) do
  begin
    
    Writeln('x: ', x:4,' y = ', Sin(x) + 0.5 );
    x := x + 0.2;
    
  end;
  
end.