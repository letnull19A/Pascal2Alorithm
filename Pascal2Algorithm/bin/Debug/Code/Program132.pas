﻿// #1 FOR

program prog;

var
  a, b, h, x: real;
  m: integer;

begin
  
  m := 10;
  a := (180 / 4);
  b := (180 / 2);
  
  h := (b - a) / m;
  
  x := a;
  
  Writeln('Цикл - REPEAT ... UNTIL');
  
  repeat
    
    Writeln('Угол: ', x:5, '  cos(x) + ctg(x) = ', Cos(x) + (Cos(x) / Sin(x)));
    
    x := h + x;
    
  until not((x >= a) and (x <= b));

end.