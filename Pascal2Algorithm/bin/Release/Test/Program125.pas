program prog;

const
  lenght = 4;

var
  arr : array[1..lenght] of array[1..lenght] of integer;
  sum, i, j, counter : integer;

begin
  
  Writeln('Исходный массив:');
  
  for i:= 1 to lenght do
  begin
    
    for j:= 1 to lenght do
    begin
      
      arr[i, j]:= Random(-17, 17);
      Write(arr[i, j]:4);
      
      Inc(counter);
      
      if ((counter mod 2) = 0) then
        sum += arr[i, j];
      
    end;
    Writeln();
  end;
  
  Writeln('Сумма чётных индексов: ', sum);
  
end.