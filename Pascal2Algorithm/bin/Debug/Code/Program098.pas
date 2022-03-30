program prog;

var
  inputString, output, message : string;
  isEqual : boolean := true;
  i, j : integer;
  upperChars : array of char := ('А', 'Б', 'В', 'Г', 'Д', 'Е', 'Ё', 'Ж', 'З', 'И', 'Й', 'К', 'Л', 'М', 'Н', 'О', 'П', 'Р', 'С', 'Т', 'У', 'Ф', 'Х', 'Ц', 'Ч', 'Ш', 'Щ', 'Ъ', 'Ы', 'Ь', 'Э', 'Ю', 'Я');
  lowerChars : array of char := ('а', 'б', 'в', 'г', 'д', 'е', 'ё', 'ж', 'з', 'и', 'й', 'к', 'л', 'м', 'н', 'о', 'п', 'р', 'с', 'т', 'у', 'ф', 'х', 'ц', 'ч', 'ш', 'щ', 'ъ', 'ы', 'ь', 'э', 'ю', 'я');

begin

  Writeln('Введите слово:');
  Readln(inputString);
  
  for i := Length(inputString) downto 1 do
  begin
    
    if (inputString[i] = ' ') then
      Delete(inputString, i, 1);
    
    for j:= 0 to lowerChars.Length - 1 do
    begin
      if (inputString[i] = lowerChars[j]) then
          inputString[i]:= upperChars[j];
    end;
    
    output:= output + inputString[i];
  end;
  
  Writeln($'палиндромом слова {inputString} - {output}');
  
  i:= 1;
  
  while ((isEqual) and (i < Length(output))) do
  begin
    isEqual:= (output[i] = inputString[i]);
    Inc(i);
  end;
  
  message:= (isEqual) ?
     'Является' : 'Не является';
  
  Writeln(message);
  
end.