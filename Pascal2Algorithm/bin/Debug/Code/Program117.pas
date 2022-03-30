program prog;

const
  length = 12;

var
  matrix: array[1..length] of array[1..length] of integer;
  min, max, i, j, positive, negative, sum: integer;

begin
  
  min := -13;
  max := 13;
  
  Writeln('Исходный массив:');
  
  for i := 1 to Length do
  begin
    
    for j := 1 to length do
    begin
      
      matrix[i, j] := Random(min, max);
      Write(matrix[i, j]:5);
      
      if (matrix[i, j] >= 0) then 
      begin
        Inc(positive);
        sum := sum + matrix[i, j];
      end
      else Inc(negative);
    
    end;
    
    Writeln();
  
  end;
  
  Writeln('Отрицательных элементов: ', negative);
  Writeln('Среднее арифметическое положительных элементов: ', sum / positive);
  
  Writeln('Результирующий массив:');

  for i := 1 to Length do
  begin
    
    for j := 1 to length do
    begin
      
      if (matrix[i, j] >= 0) then
        matrix[i, j]:= 0;
    
      Write(matrix[i, j]:5);
    
    end;
    
    Writeln();
  
  end;

end.