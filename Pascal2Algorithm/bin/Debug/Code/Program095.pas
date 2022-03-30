program prog;

var
  N6: set of integer;
  N23: set of integer;
  k: integer;

begin
  N6 := [];
  N23 := [];
  for k := 1 to 20 do
  begin
    if (k mod 6 = 0) 
      then N6 := N6 + [k];
    if (k mod 2 = 0) or (k mod 3 = 0) 
      then N23 := N23 + [k];
  end;
  Writeln(' На 6 без остатка делятся числа: ');
  for k := 1 to 20 do
    if (k in N6)
      then write(k:3);
  Writeln;
  Writeln(' На 2 или 3 без остатка делятся числа: ');
  for k := 1 to 20 do
    if k in N6 then write(k:3);
end.