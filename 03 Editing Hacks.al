codeunit 50100 "Editing Hacks"{
    
    local procedure One();
    begin
        Two();
        Three();
    end;
    
    local procedure Two();
    var
        cust: record Customer;
        EditingHacksMeth: Codeunit "Editing Hacks Meth";
    begin
        EditingHacksMeth.EditingHacks();
        MyPublisher;
    end;

    [IntegrationEvent(false,false)]
    local procedure MyPublisher(); 
    begin 

    end;

    local procedure Three();
    begin

    end;

}