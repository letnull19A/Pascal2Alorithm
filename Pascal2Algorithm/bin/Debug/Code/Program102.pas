// #3
program prog;

var
  input : real;

function getSurfaceSquare(radius : real) : real;
begin
  getSurfaceSquare:= 4 * Pi * Power(radius, 2);
end;

function getEquatorLength(radius : real) : real;
begin
  getEquatorLength:= 2 * Pi * radius;
end;

begin
  
  Writeln('Введите радиус планеты: (км)');
  Readln(input);
  Writeln($'Площадь поверхности: {getSurfaceSquare(input)} кв. км');
  Writeln($'Длина экватора: {getEquatorLength(input)} км');
  
end.