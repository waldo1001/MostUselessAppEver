codeunit 50124 "WLD SomeEventPublisher"
{
    [IntegrationEvent(true, true)]
    procedure SomePublisher(var Customer: record Customer)
    begin
    end;

    procedure SomeGlobalProc(var Customer: record Customer)
    begin
    end;
}