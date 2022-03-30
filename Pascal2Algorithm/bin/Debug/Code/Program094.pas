program prog;

  type
    multitude = set of char;

  var
    y1 : multitude := ['A', 'B', 'D', 'R', 'M'];
    y2 : multitude := ['R', 'A', 'H', 'D'];
    y3 : multitude := ['A', 'R'];
    x : multitude;
    current : char;

begin
  
  x:= (y1 * y2) + (y1 - y2);
  
  Writeln(x);
  
  for current:= 'A' to 'R' do
    if (current in x) then
      Write(current:5);
  
end.