// # 2 Repeat ... Until (Эту строчку можно удалить)

program prog;

var
  s, e : integer;
  x : real;

begin
  
  s := -1;
  e := 1;
  x := s;
  
  repeat
    
    Writeln('x: ', x:4,' y = ', Sin(x) + 0.5 );
    x := x + 0.2;
    
  until not((x >= -1) and (x <= 1));
  
end.