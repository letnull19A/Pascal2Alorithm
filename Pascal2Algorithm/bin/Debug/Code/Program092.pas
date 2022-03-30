program prog1;

var
  a: Integer;
  c: string;
  g: string;

begin
  
  // 1
  WriteLn('как вас зовут ?'); 
  readln(c); 
  
  // 2
  Writeln('ты любишь играть в шахматы?( Если любишь, введи 1. Если нет, то введи 0.)'); 
  Read(a); 
  
  if a = 1 then
    WriteLn('да') 
  else 
    WriteLn('нет'); 
  
  // 3
  Writeln('у тебя есть хобби?( Если есть, введи 1. Если нет, то введи 0.)');
  Read(a); 
  
  if a = 1 then 
  begin
    WriteLn('да, я играю в шахматы'); 
    WriteLn('Молодец!')
  end 
  else 
    WriteLn('нет,у меня совсем нет свободного времени'); 
  
  // 4
  Writeln('ты любишь читать книги ?( Если любишь, введи 1. Если нет, то введи 0.)');
  Read(a); 
  
  if a = 1 then 
  begin
    WriteLn('да');
    WriteLn('Молодец, книги это залог хороших знаний!!')
  end 
  else 
  begin
    WriteLn('нет'); 
    Writeln('Плохо,тебе это срочно нужно исправлять'); 
  end; 
  
  // 5
  Writeln('ты хорошо учишься ?( Если да, введи 1. Если нет, то введи 0.)');
  Read(a); 
  
  if a = 1 then
  begin
    WriteLn('да');
    WriteLn('Молодец, я тобой горжусь!!'); 
  end 
  else 
  begin
    WriteLn('нет'); 
    WriteLn('Бездельник,как так можно, надо исправлять'); 
  end; 
  
  // 6
  Writeln('у тебя есть любимое занятие?( Если любишь, введи 1. Если нет, то введи 0.)');
  Read(a); 
  
  if a = 1 then
    WriteLn('да')
  else
    WriteLn('нет');
  
  // 7
  Writeln('Я вот люблю считать считать криптовалюту.'); 
  Writeln('Ой, я же совсем про это забыл! Было приятно пообщаться с тобой. Мне пора.');
end.