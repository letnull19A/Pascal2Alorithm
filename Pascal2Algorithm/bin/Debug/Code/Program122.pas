program prog;

uses GraphABC;

var i, steps, offset : integer;

begin
  
  SetWindowHeight(210); // По желанию
  SetWindowWidth(210); // По желанию
  
  SetPenWidth(3);
  SetPenColor(clDarkGray);
  
  steps := 7;
  offset:= 12;
  
  for i:= 1 to steps do
  begin
    
    Rectangle(
      10 + (i * offset), 
      10 + (i * offset), 
      200 - (i * offset), 
      200 - (i * offset));
    
  end;
end.