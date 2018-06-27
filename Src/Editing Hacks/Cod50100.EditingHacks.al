codeunit 50100 "Editing Hacks"
{

    local procedure One();
    begin
        Four();
        Three();
    end;

    local procedure Four();
    var
        cust: record Customer;
        EditingHacksMeth: Codeunit "Editing Hacks Meth";
    begin
        EditingHacksMeth.EditingHacks();
        MyPublisher();
    end;

    [IntegrationEvent(false, false)]
    local procedure MyPublisher();
    begin
    end;

    local procedure Three();
    begin

    end;

}