program prog;

  var 
    bufferString, originalString, resultString : string;
    i : integer ; 

begin
  
  Writeln('Введите строку:');
  Readln(originalString);
  
  i:= 1;
  
  while (not(originalString[i] = ' ') and (i < Length(originalString))) do
  begin
    bufferString += originalString[i];
    //Delete(originalString, i, 1);
    Inc(i);
  end;
  
  Writeln($'Исходная строка: {originalString}');

  Delete(originalString, 1, Length(bufferString) + 1);
  
  resultString:= originalString + ' ' + bufferString;
  
  Writeln($'Результирующая строка: {resultString}');
  
end.