program prog;

var
  z: SET OF 0..9;
  k, i: integer;
  si: char;

begin
  writeln('Введите строку с различными буквами и цифрами с точкой в конце. ');
  repeat
    read(si);
    k := ord(si) - ord('0');
    if k in [0..9] then z := z + [k]
  until si = '.';
  if z = [] then writeln('В тексте нет цифр')
  else begin
    write('В тексте имеются следующие цифры:');
    for i := 1 to 9 do
      if i in z then write(i:2);
    writeln;
  end;
end.