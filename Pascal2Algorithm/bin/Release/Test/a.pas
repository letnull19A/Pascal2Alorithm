program prog;

begin
  
  Writeln('Hello!');
  
  if (true) then
    Writeln('true')
  else
    Writeln('false');
  
  case true of
    true : true;
    false : false;
  end;
end.