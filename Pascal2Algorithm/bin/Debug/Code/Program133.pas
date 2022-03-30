program prog;

var
  input, i: integer;

function GetSumOfNumber(num: integer): integer;
var
  _buffer: string;
var
  sum, a, err: integer;
begin
  
  _buffer := num.ToString();
  
  for var i: integer := 1 to _buffer.Length do
  begin
    
    Val(_buffer[i], a, err);
    
    sum := sum + a;
  
  end;
  
  GetSumOfNumber := sum;

end;

begin
  
  Writeln('Введите число:');
  Readln(input);
  
  for i := 100 to 999 do
  begin
    
    if (input = GetSumOfNumber(i)) then
      Writeln('Число ', input, ' совпало с суммой цифр числа: ', i);
  
  end;

end.