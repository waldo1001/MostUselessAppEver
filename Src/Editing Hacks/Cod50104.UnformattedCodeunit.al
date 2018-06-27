codeunit 50104 "Unformatted Codeunit"
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
Message('Customer %1',mycust."No.");
until mycust.Next() < 1;
end;
[EventSubscriber(ObjectType::Table,18,'OnAfterInsertEvent','',true,true)]
local procedure MyProcedure();
var
myInt: Integer;
begin
Message('from an unformatted codeunit, subscribed on table 18');
end;
var
decDecimal: Decimal;
myInt: Integer;
}