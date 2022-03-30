program prog;

var
  s: string;
  m: set of char;
  i: byte;
  c: char;

begin
  writeln('Введите строку из прописных латинских букв и знаков препинания(точка;запятая;воскл.знак; вопрос.знак)');
  readln(s);
  m := [];
  for i := 1 to length(s) do
    if s[i] in ['A'..'Z'] then include(m, s[i]);
  if m = [] then write('В строке нет букв A..Z ')
  else
  begin
    writeln('Множество букв A..Z ');
    for c := 'A' to 'Z' do
      if c in m then write(c);
  end;
  writeln;
  for i := 1 to length(s) do
    if s[i] in ['.', ',', '?', '!'] then include(m, s[i]);
  if m = [] then begin
    writeln('В строке нет знаков препинания')
  end
  else
  begin
    writeln('Множество знаков препинания');
    for c := '!' to '?' do
      if c in m then write(c);
  end;
  writeln;
end.