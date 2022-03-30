// #3

program prog;

const
  decade = 10;
  
var
  temperatureArray : array[1..decade] of integer;
  averageTemperature, sum : real;
  aboveCount : integer;

begin
  
  aboveCount:= 0;
  
  Writeln('Введите данные температур:');
  
  for var i : integer := 1 to decade do
  begin
  
    Writeln($'Запись №{i}');
    Readln(temperatureArray[i]);
    sum += temperatureArray[i];
  
  end;
  
  averageTemperature:= sum / decade;
  
  for var i : integer := 1 to decade do
  begin
    
    if (temperatureArray[i] > averageTemperature) then 
      Inc(aboveCount)
    
  end;
  
  Writeln($'Средняя температура: {averageTemperature}, Выше средней (количество): {aboveCount}');
  
end.