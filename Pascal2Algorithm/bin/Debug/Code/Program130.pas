﻿// #1 FOR

program prog;

var
  a, b, h, x : real;
  m : integer;

begin
  
  m:= 10;
  a:= (180 / 4);
  b:= (180 / 2);
  
  h:= (b - a) / m;
  
  x:= a;
  
  Writeln('Цикл - FOR');
  
  for var i:= 1 to m + 1 do
  begin
    
    
    Writeln('Угол: ', x:5, '  cos(x) + ctg(x) = ', Cos(x) + (Cos(x) / Sin(x)));
    
    x:= h + x;
    
  end;
  
end.