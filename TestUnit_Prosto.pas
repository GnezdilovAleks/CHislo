unit TestUnit_Prosto;

interface

uses TestFramework;

implementation

type
  TUnit1Test = class(TTestcase)
  published
    procedure testASureError; virtual;
    procedure TestProsto;
  end;

function Prosto(n:longint):boolean;
var n,i:integer;
begin
  for i:=3 to n-1 do
  begin
    Prosto:=false;
    if n mod i=0 then Exit;
    inc(i,2);
   end;
  Prosto:=true;
end;

procedure TUnit1Test.testASureError;
begin
  check(false, 'Unit1 error');
end;

procedure TUnit1Test.TestProsto;
begin
  Check (Prosto(5)=false,'Function not working');
end;

initialization
  // One possible way to register a test
  TestFramework.registerTest('', TUnit1test.Suite);
end.

