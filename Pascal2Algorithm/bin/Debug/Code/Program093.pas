program prog;

  type
    multitude = set of char;

  var
    current : multitude;
    input : string;
    titles : array of string :=
    (
    'Цифры от 0 до 9', 
    'Буквы от "A" до "F" и от "X" до "Z"',
    'Буквы от "G" до "N" и цифры от "0" до "9"',
    'Буквы от "A" до "Z" и цифры от "0" до "5"',
    'Буквы от "T" до "X" и знаки препинания',
    'Цифры от "5" до "9" и знаки арифметических операций',
    'Знаки арифметических операций и знаки препинания',
    'Знаки арифметических действий и операций отношения',
    'Цифры от "3" "9" и буквы от "A" до "F"',
    'Буквы от "F" до "M" и знаки операций отношения'
    );
    
    matchs : array of multitude := 
    (
    ['0'..'9'],
    ['A'..'F', 'X'..'Z'],
    ['G'..'N', '0'..'9'],
    ['A'..'Z', '0'..'5'],
    ['T'..'X', '.', ',', '!', '?'],
    ['5'..'9', '/', '+', '-', '*', '^'],
    ['/', '+', '-', '*', '^', '.', ',', '!', '?'],
    ['/', '+', '-', '*', '^', '>', '<', '='],
    ['A'..'F', '3'..'9'],
    ['F'..'M']
    );

begin
  
  Writeln('Введите непустую последовательность символов:');
  Readln(input);
  Writeln();
  
  for var i : integer := 1 to Length(input) do
    origin:= origin + [input[i]];
  
  for var i : integer := 0 to matchs.Length - 1 do
  begin
    
    Writeln(titles[i]);
    
    for var j : integer := 1 to Length(input) do
    begin
      
      if (input[j] in (origin * matchs[i])) then
        Write(input[j]);
    end;
    
    Writeln();
    Writeln();
  end;
end.