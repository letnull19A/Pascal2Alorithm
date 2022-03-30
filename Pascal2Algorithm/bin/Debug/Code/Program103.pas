// #4
program prog;

const
  length = 10;

type 
  Point = record
    x : real;
    y : real;
  end;
  
var
  points : array[1..length] of Point;
  
function getDistance(start, ends : Point) : real;
begin
  getDistance:= Sqrt( Power((start.x - ends.x), 2) + Power((start.y - ends.y), 2) );
end;

procedure GenerateCoords();
begin
  
  for var i : integer:= 1 to length do
  begin
    points[i].x:= Random(-10, 10);
    points[i].y:= Random(-10, 10);
  end;
  
end;

procedure DisplayCoords();
begin
  
  Writeln('x':5, 'y':5);
  for var i : integer := 1 to length do
  begin
    Writeln($'{points[i].x:5:0} {points[i].y:5:0}');
  end;
  
end;

function CalculatePerimeter() : real;
begin
  
  var
    distance : real;
  
  for var i : integer := 1 to length do
  begin
    
    var 
      current, next : Point;
      
    current:= points[i];
    
    if (i = length) then 
      next:= points[1]
    else
      next:= points[i];
    
    
    distance += getDistance(current, next);
    
  end;
  
  CalculatePerimeter:= distance;
  
end;

procedure DisplayResult();
begin
  Writeln($'Длина ломанной (Периметр): {CalculatePerimeter()}');
end;

begin
  
  GenerateCoords();
  
  DisplayCoords();
  
  DisplayResult();
  
end.