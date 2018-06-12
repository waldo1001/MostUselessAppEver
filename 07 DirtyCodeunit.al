codeunit 50105 "Dirty Codeunit"
{
trigger OnRun();
begin
end;

local procedure "just a name"();
begin
Message('let us show a message');
end;

local procedure "just a name2"();
var
mycust: Record customer;
mycode: Code[10];
mydec: Decimal;
myint: Integer;
begin
Message('let us show another message');
repeat
Message('Customer %1', mycust."No.");
until mycust.Next < 1;
end;

local procedure MyProcedure(): Boolean;
var
myInt: Integer;
begin
Message('from an unformatted codeunit, subscribed on table 18');
case myInt of
1:
exit(true);

2:
begin
    exit(true);
end;
3:
begin
    exit(false);
end;
4:
begin
    exit(true);
end;
5:
begin
    exit(true);
end;
6:
begin
    exit(true);
end;
7:
begin
    exit(true);
end;
8:
begin
    exit(true);
end;
9:
begin
    exit(true);
end;
10:
begin
    exit(true);
end;
11:
begin
    exit(true);
end;
12:
begin
    exit(true);
end;
13:
begin
    exit(true);
end;
14:
begin
    exit(true);
end;
end;
if (myInt > 1) then begin
exit(true);
end
else begin
exit(false);
end;

end;

local procedure OverloadedMethod(myVar: Text)
begin

end;

local procedure OverloadedMethod(Rec: Record Customer)
begin

end;

var
decDecimal: Decimal;
myInt: Integer;
}